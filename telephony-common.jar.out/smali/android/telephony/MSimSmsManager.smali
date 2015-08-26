.class public Landroid/telephony/MSimSmsManager;
.super Ljava/lang/Object;
.source "MSimSmsManager.java"


# static fields
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

.field protected static isMultiSimEnabled:Z

.field private static final sInstance:Landroid/telephony/MSimSmsManager;


# instance fields
.field private final DEFAULT_SUB:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/telephony/MSimSmsManager;

    invoke-direct {v0}, Landroid/telephony/MSimSmsManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimSmsManager;->sInstance:Landroid/telephony/MSimSmsManager;

    .line 65
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/telephony/MSimSmsManager;->isMultiSimEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/MSimSmsManager;->DEFAULT_SUB:I

    .line 533
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
    .line 869
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 872
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 873
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 875
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 877
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 881
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getIndexOnIcc()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 883
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 885
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 890
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method private createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 7
    .param p2, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 77
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 79
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 81
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getIndexOnIcc()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 87
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 89
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/MSimSmsManager;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Landroid/telephony/MSimSmsManager;->sInstance:Landroid/telephony/MSimSmsManager;

    return-object v0
.end method


# virtual methods
.method public copyMessageToIcc([B[BII)Z
    .locals 7
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subscription"    # I

    .prologue
    .line 551
    const/4 v6, 0x0

    .line 553
    .local v6, "success":Z
    if-nez p2, :cond_0

    .line 554
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pdu is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_0
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 558
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 559
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/ISmsMSim;->copyMessageToIccEf(Ljava/lang/String;I[B[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 566
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return v6

    .line 562
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 7
    .param p1, "messageIndex"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 610
    const/4 v6, 0x0

    .line 611
    .local v6, "success":Z
    const/16 v1, 0xaf

    new-array v4, v1, [B

    .line 612
    .local v4, "pdu":[B
    const/4 v1, -0x1

    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 615
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 616
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 617
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v2, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/ISmsMSim;->updateMessageOnIccEf(Ljava/lang/String;II[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 624
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v6

    .line 620
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disableCellBroadcast(II)Z
    .locals 3
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 768
    const/4 v1, 0x0

    .line 771
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 772
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 773
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/msim/ISmsMSim;->disableCellBroadcast(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 780
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v1

    .line 776
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subscription"    # I

    .prologue
    .line 841
    const/4 v1, 0x0

    .line 843
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 844
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 847
    :cond_0
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 848
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 849
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/ISmsMSim;->disableCellBroadcastRange(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 856
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return v1

    .line 852
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
    .line 224
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
    .line 215
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
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
    .line 228
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentNoHeadText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 3
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 736
    const/4 v1, 0x0

    .line 739
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 740
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 741
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/msim/ISmsMSim;->enableCellBroadcast(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 748
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v1

    .line 744
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subscription"    # I

    .prologue
    .line 803
    const/4 v1, 0x0

    .line 805
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 806
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 809
    :cond_0
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 810
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 811
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/ISmsMSim;->enableCellBroadcastRange(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 818
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return v1

    .line 814
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    const/4 v1, 0x0

    .line 671
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 672
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 673
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getAllMessagesFromIccEf(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 682
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    const-string v2, "persist.dsds.enabled"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    invoke-direct {p0, v1, p1}, Landroid/telephony/MSimSmsManager;->createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 688
    :goto_1
    return-object v2

    :cond_1
    invoke-static {v1}, Landroid/telephony/MSimSmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    .line 676
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method getImsSmsFormat(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 929
    const-string v0, "unknown"

    .line 931
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 932
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_0

    .line 933
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getImsSmsFormat(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 938
    .end local v1    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return-object v0

    .line 935
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getPreferredSmsSubscription()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 947
    const/4 v1, 0x0

    .line 949
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :try_start_0
    const-string v3, "isms_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 950
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getPreferredSmsSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 954
    :goto_0
    return v2

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 953
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 954
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimSmsCapability(I)[I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 704
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 706
    .local v0, "count":[I
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 707
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_0

    .line 708
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getSimSmsCapability(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 714
    .end local v1    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return-object v0

    .line 710
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method isImsSmsSupported(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 904
    const/4 v0, 0x0

    .line 906
    .local v0, "boSupported":Z
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 907
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_0

    .line 908
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->isImsSmsSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 913
    .end local v1    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v0

    .line 910
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 965
    const/4 v1, 0x0

    .line 967
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :try_start_0
    const-string v3, "isms_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 968
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ISmsMSim;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 972
    :goto_0
    return v2

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 971
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 972
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "subscription"    # I

    .prologue
    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 507
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_2
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 512
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_3

    .line 513
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff

    and-int v4, p3, v2

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_3
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I

    .prologue
    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    if-nez v1, :cond_2

    .line 383
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_2
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 388
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 389
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendRgData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_3
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "subscription"    # I
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 307
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 312
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 314
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_3

    .line 315
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_3
    :goto_0
    return-void

    .line 323
    :cond_4
    const/4 v5, 0x0

    .line 324
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 325
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 326
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 328
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 329
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 331
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/MSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 319
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "subscription"    # I
    .param p7, "extra"    # Landroid/os/Bundle;
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
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 345
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 350
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 351
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 352
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendMultipartTextExtra(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_3
    :goto_0
    return-void

    .line 359
    :cond_4
    const/4 v5, 0x0

    .line 360
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 361
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 362
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 364
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 365
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 367
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/telephony/MSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 355
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZII)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
    .param p9, "subscription"    # I
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
            ">;IZII)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 440
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 441
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 446
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 448
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_3

    .line 449
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v1    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_3
    :goto_0
    return-void

    .line 457
    :cond_4
    const/4 v6, 0x0

    .line 458
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 459
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 460
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 462
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 463
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 465
    .restart local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/telephony/MSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V

    goto :goto_0

    .line 453
    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendMultipartTextMessageExtra(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "subscription"    # I
    .param p7, "extra"    # Landroid/os/Bundle;
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
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p0 .. p7}, Landroid/telephony/MSimSmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/os/Bundle;)V

    .line 264
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I

    .prologue
    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 140
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_2

    .line 141
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_2
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I
    .param p7, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_1
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 247
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 248
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendTextExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_2
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
    .param p9, "subscription"    # I

    .prologue
    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_1
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 194
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_2

    .line 195
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_2
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNewSmsIndication(II)Z
    .locals 3
    .param p1, "indicator"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 585
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 586
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 587
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/msim/ISmsMSim;->setNewSmsIndication(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 593
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v1

    .line 589
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[BI)Z
    .locals 7
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B
    .param p4, "subscription"    # I

    .prologue
    .line 643
    const/4 v6, 0x0

    .line 646
    .local v6, "success":Z
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 647
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 648
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/ISmsMSim;->updateMessageOnIccEf(Ljava/lang/String;II[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 655
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v6

    .line 651
    :catch_0
    move-exception v1

    goto :goto_0
.end method
