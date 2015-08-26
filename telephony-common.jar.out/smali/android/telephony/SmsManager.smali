.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final CAMA_CALLBACK_NUMBER_TAG:Ljava/lang/String; = "callbacknumber"

.field public static final PRIORITY_TAG:Ljava/lang/String; = "priority"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field public static final VALID_PEROID_TAG:Ljava/lang/String; = "vp"

.field private static final sInstance:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 952
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 953
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 954
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 956
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 957
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 958
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 959
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method public static getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    const/4 v1, 0x0

    .line 656
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 657
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 658
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 664
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 660
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 516
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static getDefault(I)Landroid/telephony/SmsManager;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method


# virtual methods
.method public copyMessageToIcc([B[BI)Z
    .locals 4
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 538
    const/4 v1, 0x0

    .line 540
    .local v1, "success":Z
    if-nez p2, :cond_0

    .line 541
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 544
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 545
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 546
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 553
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 549
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 5
    .param p1, "messageIndex"    # I

    .prologue
    .line 596
    const/4 v2, 0x0

    .line 597
    .local v2, "success":Z
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .line 598
    .local v1, "pdu":[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 601
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 602
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 603
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, p1, v4, v1}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 610
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 606
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public disableCdmaBroadcast(I)Z
    .locals 3
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 858
    const/4 v1, 0x0

    .line 861
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 862
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 863
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCdmaBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 869
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 865
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCdmaBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 924
    const/4 v1, 0x0

    .line 926
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 927
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 930
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 931
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 932
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCdmaBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 938
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 934
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 3
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 730
    const/4 v1, 0x0

    .line 733
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 734
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 735
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 741
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 737
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 801
    const/4 v1, 0x0

    .line 803
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 804
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 807
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 808
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 809
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 815
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 811
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideConcatMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentConcatText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideNoHeadMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentNoHeadText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCdmaBroadcast(I)Z
    .locals 3
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 832
    const/4 v1, 0x0

    .line 835
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 836
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 837
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCdmaBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 843
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 839
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCdmaBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 891
    const/4 v1, 0x0

    .line 893
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 894
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 898
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 899
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCdmaBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 905
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 901
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcast(I)Z
    .locals 3
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 699
    const/4 v1, 0x0

    .line 702
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 703
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 704
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 710
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 706
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 764
    const/4 v1, 0x0

    .line 766
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 767
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 770
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 771
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 772
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 778
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 774
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method getImsSmsFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1003
    const-string v0, "unknown"

    .line 1005
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1006
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1007
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getImsSmsFormat()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1012
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1009
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSimSmsCapability()[I
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSimSmsCapability()[I

    move-result-object v0

    return-object v0
.end method

.method isImsSmsSupported()Z
    .locals 3

    .prologue
    .line 978
    const/4 v0, 0x0

    .line 980
    .local v0, "boSupported":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 981
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 982
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->isImsSmsSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 987
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 984
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 495
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_2
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 500
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 501
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff

    and-int v4, p3, v2

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    if-nez v1, :cond_2

    .line 439
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_2
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 444
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 445
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendRgData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 285
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 290
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 291
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 292
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 300
    :cond_4
    const/4 v5, 0x0

    .line 301
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 302
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 303
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 305
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 306
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 308
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 296
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 364
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 369
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 370
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 371
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 380
    :cond_4
    const/4 v5, 0x0

    .line 381
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 382
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 383
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 385
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 386
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 388
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V

    goto :goto_0

    .line 376
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 402
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 407
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 408
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 409
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendMultipartTextExtra(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 416
    :cond_4
    const/4 v5, 0x0

    .line 417
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 418
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 419
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 421
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 422
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 424
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 412
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessageExtra(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_1
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 116
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 117
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 168
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 169
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_1
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 192
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 193
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendTextExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNewSmsIndication(I)Z
    .locals 3
    .param p1, "indicator"    # I

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 572
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 573
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setNewSmsIndication(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 580
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 576
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 3
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .prologue
    .line 628
    const/4 v1, 0x0

    .line 631
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 632
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 633
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 640
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 636
    :catch_0
    move-exception v2

    goto :goto_0
.end method
