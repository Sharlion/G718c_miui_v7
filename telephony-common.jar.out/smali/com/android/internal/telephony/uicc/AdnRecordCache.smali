.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE:I = 0x7

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final EVENT_UPDATE_ANR_DONE:I = 0x5

.field static final EVENT_UPDATE_EMAIL_DONE:I = 0x3

.field static final EVENT_UPDATE_IAP_DONE:I = 0x6

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordCache"

.field public static mExt1RecMaxSize:I


# instance fields
.field public final adnExt1_Index:I

.field public adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public final adn_Index:I

.field public final anrExt1_Index:I

.field anrLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public final anr_Index:I

.field public final email_Index:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mLock:Ljava/lang/Object;

.field public mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field pbrIndex:I

.field public final pbr_Index:I

.field protected recordSize:[I

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 3
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->anrLikeWaiters:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 91
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adn_Index:I

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnExt1_Index:I

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->anrExt1_Index:I

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->email_Index:I

    .line 95
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->anr_Index:I

    .line 96
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbr_Index:I

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 106
    const-string v0, "RIL_AdnRecordCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wzf-AdnRecordCache-mUsimPhoneBookManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 135
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 139
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 124
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 125
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 126
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 127
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 128
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 131
    return-void
.end method

.method private getEfFileRecordSizeAndWait(I)V
    .locals 6
    .param p1, "fileId"    # I

    .prologue
    .line 1109
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 1110
    .local v2, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v1, 0x0

    .line 1112
    .local v1, "recordSize":[I
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSizeAndWait, fileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1115
    :cond_0
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSizeAndWait, error, recordSizeMap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :goto_0
    return-void

    .line 1119
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "recordSize":[I
    check-cast v1, [I

    .line 1120
    .restart local v1    # "recordSize":[I
    if-eqz v1, :cond_2

    .line 1121
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, " contact framework , in getEfFileRecordSizeAndWait, recordSize != null,means that the recordSize of this file has been loaded before"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1124
    :cond_2
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework ,in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",will mFh.getEFLinearRecordSize,EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 1127
    :try_start_0
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, " contact framework ,in getEfFileRecordSizeAndWait,will mLock.wait()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted Exception in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getpbrNumbers()I
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getpbrNumbers()I

    move-result v0

    return v0
.end method

.method private isANRSpaceFullInCurPhonebook(I)Z
    .locals 9
    .param p1, "pbrIndex"    # I

    .prologue
    .line 1662
    const/4 v5, 0x1

    .line 1663
    .local v5, "isFull":Z
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isANRSpaceFullInCurPhonebook mUsimPhoneBookManager.isSupportANR() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isANRSpaceFullInCurPhonebook mUsimPhoneBookManager.isANRTYP2() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1667
    const/4 v2, 0x0

    .line 1668
    .local v2, "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v3, 0x0

    .line 1670
    .local v3, "anrListSize":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1671
    if-eqz v2, :cond_0

    .line 1673
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1675
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1677
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1678
    .local v1, "anrAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v0

    .line 1679
    .local v0, "adnAnrRecNum":I
    const/16 v6, 0xff

    if-eq v0, v6, :cond_1

    if-gtz v0, :cond_3

    .line 1681
    :cond_1
    const/4 v5, 0x0

    .line 1691
    .end local v0    # "adnAnrRecNum":I
    .end local v1    # "anrAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v2    # "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3    # "anrListSize":I
    .end local v4    # "i":I
    :cond_2
    :goto_1
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isANRSpaceFullInCurPhonebook isFull = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    return v5

    .line 1675
    .restart local v0    # "adnAnrRecNum":I
    .restart local v1    # "anrAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v2    # "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v3    # "anrListSize":I
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1688
    .end local v0    # "adnAnrRecNum":I
    .end local v1    # "anrAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v2    # "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3    # "anrListSize":I
    .end local v4    # "i":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isAdnFileFull(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1645
    .local p1, "adnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v1, 0x1

    .line 1647
    .local v1, "isFull":Z
    if-eqz p1, :cond_0

    .line 1648
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1649
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1650
    .local v2, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1652
    const/4 v1, 0x0

    .line 1657
    .end local v0    # "i":I
    .end local v2    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAdnFileFull, isFull = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    return v1

    .line 1648
    .restart local v0    # "i":I
    .restart local v2    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isEmailSpaceFullInCurPhonebook(I)Z
    .locals 9
    .param p1, "pbrIndex"    # I

    .prologue
    .line 1696
    const/4 v5, 0x1

    .line 1698
    .local v5, "isFull":Z
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1700
    const/4 v1, 0x0

    .line 1701
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v2, 0x0

    .line 1703
    .local v2, "emailListSize":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1704
    if-eqz v1, :cond_0

    .line 1706
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1708
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 1710
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1711
    .local v0, "emailAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    .line 1712
    .local v3, "emails":[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    .line 1713
    if-eqz v3, :cond_1

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1715
    :cond_1
    const/4 v5, 0x0

    .line 1725
    .end local v0    # "emailAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v2    # "emailListSize":I
    .end local v3    # "emails":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    :goto_1
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmailSpaceFullInCurPhonebook isFull = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    return v5

    .line 1708
    .restart local v0    # "emailAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v2    # "emailListSize":I
    .restart local v3    # "emails":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1722
    .end local v0    # "emailAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v2    # "emailListSize":I
    .end local v3    # "emails":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1240
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 1250
    :cond_0
    return-void

    .line 1244
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1245
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1247
    .local v2, "waiter":Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1248
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 177
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public GetAnriniap()I
    .locals 4

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnriniap()I

    move-result v0

    .line 1041
    .local v0, "Anriniap":I
    const-string v1, "RIL_AdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetAnriniap Anriniap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return v0
.end method

.method public GetEmailiniap()I
    .locals 4

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailiniap()I

    move-result v0

    .line 1014
    .local v0, "Emailiniap":I
    const-string v1, "RIL_AdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetEmailiniap Emailiniap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return v0
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 162
    sparse-switch p1, :sswitch_data_0

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEXT1efid()I

    move-result v0

    :goto_0
    return v0

    .line 163
    :sswitch_0
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 164
    :sswitch_1
    const/16 v0, 0x6f4a

    goto :goto_0

    .line 165
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 166
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 167
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_1
        0x6f3b -> :sswitch_3
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEfFileRecordSize(II)V
    .locals 6
    .param p1, "fileId"    # I
    .param p2, "extFileId"    # I

    .prologue
    .line 1088
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1089
    :try_start_0
    const-string v2, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSize, fileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getEfFileRecordSizeAndWait(I)V

    .line 1091
    const-string v2, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSize, extFileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getEfFileRecordSizeAndWait(I)V

    .line 1094
    const/16 v2, 0x6f4a

    if-ne p2, v2, :cond_0

    .line 1096
    sget v2, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    if-nez v2, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v1

    .line 1099
    .local v1, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1100
    .local v0, "ext1Size":[I
    const/4 v2, 0x2

    aget v2, v0, v2

    sput v2, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    .line 1104
    .end local v0    # "ext1Size":[I
    .end local v1    # "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    :cond_0
    const-string v2, "RIL_AdnRecordCache"

    const-string v4, " contact framework , in getEfFileRecordSize, end"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    monitor-exit v3

    .line 1106
    return-void

    .line 1105
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1263
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1437
    :goto_0
    :pswitch_0
    return-void

    .line 1266
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1267
    .local v9, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1269
    .local v10, "efId":I
    const-string v22, "RIL_AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " contact framework ,got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE efId = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",ar.exception = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :try_start_1
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v22, :cond_0

    .line 1276
    :try_start_2
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    move-object/from16 v0, v22

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 1277
    .local v18, "recordSize":[I
    const-string v22, "RIL_AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE,recordSize[0]="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v22, "RIL_AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE,recordSize[1]="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-string v22, "RIL_AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE,recordSize[2]="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v19

    .line 1281
    .local v19, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1296
    .end local v18    # "recordSize":[I
    .end local v19    # "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1297
    :try_start_4
    const-string v22, "RIL_AdnRecordCache"

    const-string v24, " contact framework ,handle EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE, will mLock.notify()"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notify()V

    .line 1299
    monitor-exit v23

    goto/16 :goto_0

    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v22
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1433
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "efId":I
    :catch_0
    move-exception v13

    .line 1434
    .local v13, "ex":Ljava/lang/Exception;
    const-string v22, "RIL_AdnRecordCache"

    const-string v23, "adncache Exception"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1282
    .end local v13    # "ex":Ljava/lang/Exception;
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v10    # "efId":I
    :catch_1
    move-exception v13

    .line 1283
    .restart local v13    # "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v22, "RIL_AdnRecordCache"

    const-string v23, "wzf-20140814-(ar.exception != null) EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE Exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1291
    .end local v13    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    .line 1293
    .restart local v13    # "ex":Ljava/lang/Exception;
    :try_start_7
    const-string v22, "RIL_AdnRecordCache"

    const-string v23, "wzf-20140814-comehere-EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 1288
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_0
    :try_start_8
    const-string v22, "RIL_AdnRecordCache"

    const-string v23, "wzf-20140814-(ar.exception == null)-EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE Exception"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 1305
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "efId":I
    :pswitch_2
    :try_start_9
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1306
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1309
    .local v11, "efid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 1311
    .local v21, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v21, :cond_1

    .line 1313
    const-string v22, "RIL_AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "20140813-wzf-EVENT_LOAD_ALL_ADN_LIKE_DONE-waiters.size:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_1
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1318
    const-string v22, "RIL_AdnRecordCache"

    const-string v23, "20140813-wzf-(ar.exception == null)-EVENT_LOAD_ALL_ADN_LIKE_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    goto/16 :goto_0

    .line 1322
    :cond_2
    const-string v22, "RIL_AdnRecordCache"

    const-string v23, "20140813-wzf-(ar.exception != null)-EVENT_LOAD_ALL_ADN_LIKE_DONE"

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1361
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "efid":I
    .end local v21    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1362
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1363
    .restart local v11    # "efid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .line 1364
    .local v17, "index":I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 1366
    .local v7, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 1368
    const/16 v22, 0x6f3a

    move/from16 v0, v22

    if-eq v11, v0, :cond_3

    const/16 v22, 0x6f3b

    move/from16 v0, v22

    if-ne v11, v0, :cond_6

    .line 1369
    :cond_3
    const/16 v22, 0x6f3b

    move/from16 v0, v22

    if-ne v11, v0, :cond_4

    .line 1370
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1372
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    add-int/lit8 v23, v17, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1378
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Message;

    .line 1379
    .local v20, "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1381
    const/16 v22, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1382
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1374
    .end local v20    # "response":Landroid/os/Message;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v22

    add-int/lit8 v23, v17, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1386
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "efid":I
    .end local v17    # "index":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1387
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1388
    .restart local v11    # "efid":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1389
    .local v3, "Anrnumber":I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v8, v0

    .line 1390
    .local v8, "anradn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_7

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v22

    add-int/lit8 v23, v3, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1393
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1394
    .local v6, "Response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1396
    const/16 v22, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v6, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1397
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1401
    .end local v3    # "Anrnumber":I
    .end local v6    # "Response":Landroid/os/Message;
    .end local v8    # "anradn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "efid":I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1402
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1403
    .restart local v11    # "efid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 1404
    .local v4, "Emailrecnmber":I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v12, v0

    .line 1405
    .local v12, "emailadn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v22

    add-int/lit8 v23, v4, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1408
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 1409
    .local v5, "REsponse":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1411
    const/16 v22, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v5, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1412
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1417
    .end local v4    # "Emailrecnmber":I
    .end local v5    # "REsponse":Landroid/os/Message;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "efid":I
    .end local v12    # "emailadn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1418
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1419
    .restart local v11    # "efid":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 1420
    .local v15, "iaprecnmber":I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v14, v0

    .line 1421
    .local v14, "iap":[B
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getiaplist(I)Ljava/util/ArrayList;

    move-result-object v22

    add-int/lit8 v23, v15, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Message;

    .line 1425
    .local v16, "iapresponse":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1427
    const/16 v22, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1428
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 1263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public requestAdnSize(I)I
    .locals 6
    .param p1, "efid"    # I

    .prologue
    .line 1557
    const/4 v0, 0x0

    .line 1558
    .local v0, "curSimSize":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1559
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1560
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1561
    .local v2, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1562
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1559
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1565
    .end local v1    # "i":I
    .end local v2    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAdnSize cursimsize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    return v0
.end method

.method public requestAdnTotalSize(I)I
    .locals 4
    .param p1, "efid"    # I

    .prologue
    .line 1548
    const/4 v0, 0x0

    .line 1549
    .local v0, "simTotalNumbers":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1550
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1552
    :cond_0
    const-string v1, "RIL_AdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAdnTotalSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    return v0
.end method

.method public requestEXT1Size(I)I
    .locals 6
    .param p1, "efid"    # I

    .prologue
    const/16 v4, 0xff

    .line 1529
    const/4 v2, 0x0

    .line 1530
    .local v2, "temp":I
    const/4 v1, 0x0

    .line 1531
    .local v1, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x6f3a

    if-ne p1, v3, :cond_2

    .line 1532
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1536
    :goto_0
    if-eqz v1, :cond_3

    .line 1537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1538
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1539
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1537
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1534
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 1542
    :cond_3
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestEXT1Size ext1 current size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return v2
.end method

.method public requestGetAdnFileld(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1464
    const-string v0, "RIL_AdnRecordCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wzf-requestGetAdnFileld-mUsimPhoneBookManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnFileld(I)I

    move-result v0

    return v0
.end method

.method public requestGetAllAdnFileld()[I
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllAdnFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllAnrFileld()[I
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllAnrFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllEmailFileld()[I
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllEmailFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllExt1Fileld()[I
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllExt1Fileld()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllIapFileld()[I
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllIapFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllSfiFileld()[I
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllSfiFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAnrFileld(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetEmailFileld(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetExt1Fileld(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getExt1Fileld(I)I

    move-result v0

    return v0
.end method

.method public requestGetIapFileld(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIapFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetSfiFileld(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSfiFileld(I)I

    move-result v0

    return v0
.end method

.method public requestIsANRTYP2()Z
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v0

    return v0
.end method

.method public requestIsEMAILTYP2()Z
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v0

    return v0
.end method

.method public requestIsSupANR(I)Z
    .locals 1
    .param p1, "pbrindex"    # I

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v0

    return v0
.end method

.method public requestIsSupEmail(I)Z
    .locals 1
    .param p1, "pbrindex"    # I

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v0

    return v0
.end method

.method public requestIsSupIAP(I)Z
    .locals 1
    .param p1, "pbrindex"    # I

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 7
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x4f30

    .line 1145
    if-ne p1, v5, :cond_3

    .line 1146
    const-string v2, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-requestLoadAllAdnLike-(efid == EF_PBR)-mUsimPhoneBookManager:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 1154
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_4

    .line 1156
    if-ne p1, v5, :cond_0

    .line 1158
    sput-boolean v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isReading3PB_EXT1:Z

    .line 1161
    :cond_0
    if-eqz p3, :cond_1

    .line 1162
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1163
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1165
    :cond_1
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-(result != null)-we have already loaded this efid-return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_2
    :goto_1
    return-void

    .line 1149
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_3
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-(efid == EF_ADN)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    .line 1170
    :cond_4
    if-nez v0, :cond_5

    if-ne p1, v5, :cond_5

    .line 1172
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-(result == null && efid == EF_PBR)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/16 p1, 0x6f3a

    .line 1174
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result p2

    .line 1180
    :cond_5
    const-string v2, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-requestLoadAllAdnLike-efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1183
    .local v1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_6

    .line 1186
    const-string v2, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-(waiters != null)-requestLoadAllAdnLike-There\'s a pending request for this EF already-we have already *started* loading this efid-waiters.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-(waiters != null)-requestLoadAllAdnLike-waiters.add(response)-return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1193
    :cond_6
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-(waiters== null)-Start loading efid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    .restart local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1200
    if-gez p2, :cond_7

    .line 1203
    if-eqz p3, :cond_2

    .line 1204
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1206
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1212
    :cond_7
    const/16 v2, 0x6f3a

    if-eq p1, v2, :cond_8

    const/16 v2, 0x6f3b

    if-ne p1, v2, :cond_9

    .line 1214
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1215
    if-nez v0, :cond_a

    .line 1217
    const-string v2, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wzf-requestLoadAllAdnLike-(efid == IccConstants.EF_ADN || efid == IccConstants.EF_FDN)-(result == null)-will getEfFileRecordSize,efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getEfFileRecordSize(II)V

    .line 1230
    :cond_9
    const-string v2, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " contact framework ,in requestLoadAllAdnLike,will AdnRecordLoader(mFh).loadAllFromEF,efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",extensionEf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1222
    :cond_a
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-3GCard-2GPB-NOT First=(result != null)-we have already loaded this efid-return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public requestPbrFileld()I
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimRecordSize()I

    move-result v0

    return v0
.end method

.method public requestUsimAdnSize()I
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1571
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 118
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    .line 121
    return-void
.end method

.method public searchANRSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "srecid"    # Ljava/lang/String;

    .prologue
    .line 1603
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1604
    .local v1, "recid":[B
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, -0x1

    .line 1607
    .local v0, "pbrIndex":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isANRSpaceFullInCurPhonebook(I)Z

    move-result v2

    return v2
.end method

.method public searchANRSpaceWithoutSrecid()Z
    .locals 5

    .prologue
    .line 1577
    const/4 v2, 0x0

    .line 1578
    .local v2, "pbrIndex":I
    const/4 v3, -0x1

    .line 1579
    .local v3, "pbrNumbers":I
    const/4 v0, -0x1

    .line 1580
    .local v0, "adnEfid":I
    const/4 v1, 0x0

    .line 1583
    .local v1, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getpbrNumbers()I

    move-result v3

    .line 1584
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1585
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1586
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isAdnFileFull(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1592
    :cond_0
    if-ne v2, v3, :cond_2

    .line 1594
    const/4 v4, 0x1

    .line 1598
    :goto_1
    return v4

    .line 1584
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1598
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isANRSpaceFullInCurPhonebook(I)Z

    move-result v4

    goto :goto_1
.end method

.method public searchAdnIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)I
    .locals 10
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "pbrIndex"    # I

    .prologue
    const/16 v9, 0x6f3b

    const/4 v6, -0x1

    .line 599
    const-string v5, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAdnIndex efid= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pbrIndex=  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/16 v5, 0x6f3a

    if-eq p1, v5, :cond_0

    if-ne p1, v9, :cond_3

    .line 602
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 617
    .local v4, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    :goto_0
    if-nez v4, :cond_4

    .line 619
    const-string v5, "RIL_AdnRecordCache"

    const-string v7, "searchAdnIndex oldAdnList is null "

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 651
    :cond_2
    :goto_1
    return v1

    .line 606
    .end local v4    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 608
    .restart local v4    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-nez v4, :cond_1

    .line 610
    const-string v5, "RIL_AdnRecordCache"

    const-string v7, "wzf-searchAdnIndex-(efid == EF_PBR)&(oldAdnList == null)"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/16 p1, 0x6f3a

    .line 612
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 622
    :cond_4
    const/4 v1, -0x1

    .line 623
    .local v1, "index":I
    const/4 v0, 0x1

    .line 624
    .local v0, "count":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 626
    if-ne p1, v9, :cond_6

    .line 628
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isFDNEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 630
    move v1, v0

    .line 645
    :cond_5
    :goto_3
    const-string v5, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAdnIndex index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    if-ne v1, v6, :cond_2

    .line 648
    const-string v5, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAdnIndex Adn record don\'t exist for oldAdn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 649
    goto :goto_1

    .line 636
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 638
    .local v3, "itoldadn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 639
    move v1, v0

    .line 640
    goto :goto_3

    .line 643
    .end local v3    # "itoldadn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public searchEmailSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "srecid"    # Ljava/lang/String;

    .prologue
    .line 1637
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1638
    .local v1, "recid":[B
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, -0x1

    .line 1641
    .local v0, "pbrIndex":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isEmailSpaceFullInCurPhonebook(I)Z

    move-result v2

    return v2
.end method

.method public searchEmailSpaceWithoutSrecid()Z
    .locals 5

    .prologue
    .line 1611
    const/4 v2, 0x0

    .line 1612
    .local v2, "pbrIndex":I
    const/4 v3, -0x1

    .line 1613
    .local v3, "pbrNumbers":I
    const/4 v0, -0x1

    .line 1614
    .local v0, "adnEfid":I
    const/4 v1, 0x0

    .line 1617
    .local v1, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getpbrNumbers()I

    move-result v3

    .line 1618
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1619
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1620
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isAdnFileFull(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1626
    :cond_0
    if-ne v2, v3, :cond_2

    .line 1628
    const/4 v4, 0x1

    .line 1632
    :goto_1
    return v4

    .line 1618
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1632
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isEmailSpaceFullInCurPhonebook(I)Z

    move-result v4

    goto :goto_1
.end method

.method public searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I
    .locals 15
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "index"    # [I
    .param p5, "extsize"    # I

    .prologue
    .line 495
    const/4 v9, 0x0

    .line 496
    .local v9, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v11, 0x0

    .line 498
    .local v11, "oldAnrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 500
    .local v4, "extensionEF":I
    const/4 v3, 0x0

    .line 501
    .local v3, "extCount":I
    const/4 v12, 0x1

    const/16 v13, 0xff

    aput v13, p4, v12

    .line 502
    const/4 v12, 0x2

    const/16 v13, 0xff

    aput v13, p4, v12

    .line 503
    const/4 v8, 0x0

    .line 504
    .local v8, "oldAdnHasEXT1":Z
    const/4 v10, 0x0

    .line 505
    .local v10, "oldAnrHasEXT1":Z
    const/4 v7, 0x0

    .line 506
    .local v7, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-gez v4, :cond_1

    .line 507
    const-string v12, "RIL_AdnRecordCache"

    const-string v13, "ext1 is not exist"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    :goto_0
    return-object p4

    .line 510
    :cond_1
    if-lez p5, :cond_0

    .line 511
    add-int/lit8 v3, p5, 0x1

    .line 512
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index extsize "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-array v5, v3, [I

    .line 518
    .local v5, "extnumber":[I
    const/16 v12, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 519
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 526
    :goto_1
    if-nez v9, :cond_3

    .line 527
    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, p4, v12

    goto :goto_0

    .line 521
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v13, 0x5

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 522
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v13, 0x5

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_1

    .line 530
    :cond_3
    const/4 v12, 0x4

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_4

    const/4 v12, 0x4

    aget v12, p4, v12

    if-lez v12, :cond_4

    if-nez v11, :cond_4

    .line 531
    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, p4, v12

    goto :goto_0

    .line 535
    :cond_4
    const/4 v12, 0x0

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_5

    const/4 v12, 0x0

    aget v12, p4, v12

    if-lez v12, :cond_5

    const/4 v13, 0x1

    const/4 v12, 0x0

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v12

    aput v12, p4, v13

    .line 536
    :cond_5
    const/4 v12, 0x1

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_6

    const/4 v12, 0x1

    aget v12, p4, v12

    if-lez v12, :cond_6

    .line 537
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index adn update ext1 index[adnExt1_Index] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v8, 0x1

    .line 539
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-ge v12, v13, :cond_6

    const/4 v12, 0x0

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtNumber(I)V

    .line 542
    :cond_6
    const/4 v12, 0x4

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_7

    const/4 v12, 0x4

    aget v12, p4, v12

    if-lez v12, :cond_7

    if-eqz v11, :cond_7

    const/4 v13, 0x2

    const/4 v12, 0x4

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v12

    aput v12, p4, v13

    .line 544
    :cond_7
    const/4 v12, 0x2

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_8

    const/4 v12, 0x2

    aget v12, p4, v12

    if-lez v12, :cond_8

    .line 545
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index anr update ext1 index[anrExt1_Index] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v10, 0x1

    .line 547
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-ge v12, v13, :cond_8

    const/4 v12, 0x4

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 550
    :cond_8
    if-nez v8, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-gt v12, v13, :cond_a

    :cond_9
    if-nez v10, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_0

    .line 551
    :cond_a
    const-string v12, "RIL_AdnRecordCache"

    const-string v13, "searchExt1Index insert ext1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_b

    const/16 v12, 0xff

    aput v12, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 553
    :cond_b
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_d

    .line 554
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v1

    .line 555
    .local v1, "adntemp":I
    const/16 v12, 0xff

    if-eq v1, v12, :cond_c

    const/4 v12, 0x1

    aput v12, v5, v1

    .line 553
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 557
    .end local v1    # "adntemp":I
    :cond_d
    if-eqz v11, :cond_f

    .line 558
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_f

    .line 559
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v2

    .line 560
    .local v2, "anrtemp":I
    const/16 v12, 0xff

    if-eq v2, v12, :cond_e

    const/4 v12, 0x1

    aput v12, v5, v2

    .line 558
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 563
    .end local v2    # "anrtemp":I
    :cond_f
    if-nez v8, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_12

    .line 564
    const/4 v6, 0x1

    :goto_5
    if-ge v6, v3, :cond_10

    .line 565
    aget v12, v5, v6

    const/16 v13, 0xff

    if-ne v12, v13, :cond_11

    .line 566
    aput v6, v5, v6

    .line 567
    const/4 v12, 0x1

    aget v13, v5, v6

    aput v13, p4, v12

    .line 571
    :cond_10
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index insert adn ext1 index[adnExt1_Index] ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v12, 0x1

    aget v12, p4, v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_12

    .line 573
    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, p4, v12

    .line 574
    const-string v12, "RIL_AdnRecordCache"

    const-string v13, "adn ext1 is full"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 564
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 578
    :cond_12
    if-nez v10, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_0

    .line 579
    const/4 v6, 0x1

    :goto_6
    if-ge v6, v3, :cond_13

    .line 580
    aget v12, v5, v6

    const/16 v13, 0xff

    if-ne v12, v13, :cond_14

    .line 581
    aput v6, v5, v6

    .line 582
    const/4 v12, 0x2

    aget v13, v5, v6

    aput v13, p4, v12

    .line 586
    :cond_13
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index insert adn ext1 index[anrExt1_Index] ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v12, 0x2

    aget v12, p4, v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_0

    .line 588
    const/4 v12, 0x2

    const/4 v13, -0x1

    aput v13, p4, v12

    .line 589
    const-string v12, "RIL_AdnRecordCache"

    const-string v13, "anr ext1 is full"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 579
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_6
.end method

.method public searchIndex(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)[I
    .locals 20
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "extsize"    # I
    .param p5, "srecid"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v3, 0x6

    new-array v7, v3, [I

    .line 241
    .local v7, "index":[I
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 242
    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 243
    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 244
    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 245
    const/4 v3, 0x4

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 246
    const/4 v3, 0x5

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getpbrNumbers()I

    move-result v17

    .line 248
    .local v17, "pbnumber":I
    if-nez p5, :cond_0

    const-string p5, ""

    .line 249
    :cond_0
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 251
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_1

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 254
    :cond_1
    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v7, v3

    .line 255
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex  index[pbr_Index]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v3, 0x0

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchAdnIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v4

    aput v4, v7, v3

    .line 258
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move-object v14, v7

    .line 440
    .end local v7    # "index":[I
    .local v14, "index":[I
    :goto_0
    return-object v14

    .line 263
    .end local v14    # "index":[I
    .restart local v7    # "index":[I
    :cond_2
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 265
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    .line 268
    :cond_3
    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 270
    const/4 v3, 0x1

    const/16 v4, 0xff

    aput v4, v7, v3

    .line 273
    :cond_4
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex  index[adn_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_5
    :goto_1
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 363
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v18

    .line 365
    .local v18, "recid":[B
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex recid[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "recid[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-byte v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v7, v3

    .line 367
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[adn_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v3, 0x0

    aget v3, v7, v3

    if-gez v3, :cond_15

    .line 369
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v7, v3

    move-object v14, v7

    .line 370
    .end local v7    # "index":[I
    .restart local v14    # "index":[I
    goto/16 :goto_0

    .line 277
    .end local v14    # "index":[I
    .end local v18    # "recid":[B
    .restart local v7    # "index":[I
    :cond_6
    const-string v16, ""

    .line 278
    .local v16, "oldemail":Ljava/lang/String;
    const-string v19, ""

    .line 279
    .local v19, "tag":Ljava/lang/String;
    const-string v15, ""

    .line 280
    .local v15, "number":Ljava/lang/String;
    const-string v9, ""

    .line 281
    .local v9, "anr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v16, v3, v4

    .line 282
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    .line 283
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 284
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v9

    .line 286
    :cond_a
    const-string v3, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 288
    :cond_b
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "searchIndex for update or delte and srecid is null  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchsrecid(Lcom/android/internal/telephony/uicc/AdnRecord;)Ljava/lang/String;

    move-result-object p5

    .line 290
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 292
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v7, v3

    move-object v14, v7

    .line 293
    .end local v7    # "index":[I
    .restart local v14    # "index":[I
    goto/16 :goto_0

    .line 298
    .end local v14    # "index":[I
    .restart local v7    # "index":[I
    :cond_c
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "searchIndex for insert "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_d

    .line 301
    const/4 v3, 0x5

    aput v12, v7, v3

    .line 302
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-searchIndex index[pbr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v3, 0x0

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchAdnIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v4

    aput v4, v7, v3

    .line 304
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-searchIndex index[adn_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 307
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "wzf-searchIndex-(newAdn.getEmails()!=null) "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupEmail(I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 310
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "wzf-searchIndex-Email is Supported ,Email value is valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 313
    const/4 v3, 0x3

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchemailindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 314
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-searchIndex-Email is TYPE2-index[email_Index]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_3
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[email_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupANR(I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 339
    const/4 v3, 0x4

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchanrindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 350
    :goto_4
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[anr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v3, 0x0

    aget v3, v7, v3

    if-lez v3, :cond_13

    const/4 v3, 0x3

    aget v3, v7, v3

    if-lez v3, :cond_13

    const/4 v3, 0x4

    aget v3, v7, v3

    if-lez v3, :cond_13

    .line 353
    :cond_d
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    move-object v14, v7

    .line 355
    .end local v7    # "index":[I
    .restart local v14    # "index":[I
    goto/16 :goto_0

    .line 318
    .end local v14    # "index":[I
    .restart local v7    # "index":[I
    :cond_e
    const/4 v3, 0x3

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    .line 319
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-searchIndex-Email is NOT TYPE2-index[email_Index]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 324
    :cond_f
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "wzf-searchIndex-NOT(Email is Supported , Email value is valid)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_3

    .line 330
    :cond_10
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "wzf-searchIndex-(newAdn.getEmails()==null) "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_3

    .line 343
    :cond_11
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto :goto_4

    .line 348
    :cond_12
    const/4 v3, 0x4

    const/16 v4, 0xff

    aput v4, v7, v3

    goto :goto_4

    .line 299
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 357
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    goto/16 :goto_1

    .line 372
    .end local v9    # "anr":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "number":Ljava/lang/String;
    .end local v16    # "oldemail":Ljava/lang/String;
    .end local v19    # "tag":Ljava/lang/String;
    .restart local v18    # "recid":[B
    :cond_15
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_19

    .line 373
    :cond_16
    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v7, v3

    .line 374
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v3, :cond_17

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    .line 375
    :cond_17
    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_18

    const/4 v3, 0x1

    const/16 v4, 0xff

    aput v4, v7, v3

    .end local v18    # "recid":[B
    :cond_18
    :goto_5
    move-object v14, v7

    .line 440
    .end local v7    # "index":[I
    .restart local v14    # "index":[I
    goto/16 :goto_0

    .line 378
    .end local v14    # "index":[I
    .restart local v7    # "index":[I
    .restart local v18    # "recid":[B
    :cond_19
    const/4 v3, 0x5

    const/4 v4, 0x1

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x1

    aput v4, v7, v3

    .line 380
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[pbr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v13, 0x0

    .line 383
    .local v13, "iap":[B
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupIAP(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v4, 0x5

    aget v4, v7, v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getiaplist(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v7, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "iap":[B
    check-cast v13, [B

    .line 387
    .restart local v13    # "iap":[B
    :cond_1a
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupEmail(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->GetEmailiniap()I

    move-result v11

    .line 390
    .local v11, "emailiniap":I
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex emailiniap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-nez v13, :cond_1d

    .line 392
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "searchIndex email type2 iap is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    .line 400
    .end local v11    # "emailiniap":I
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x3

    aget v3, v7, v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1b

    .line 401
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1b

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 403
    const/4 v3, 0x3

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchemailindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 412
    :cond_1b
    :goto_7
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[email_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupANR(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->GetAnriniap()I

    move-result v10

    .line 416
    .local v10, "anrliniap":I
    if-nez v13, :cond_21

    .line 417
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "searchIndex anr type2 iap is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v3, 0x4

    const/16 v4, 0xff

    aput v4, v7, v3

    .line 425
    .end local v10    # "anrliniap":I
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x4

    aget v3, v7, v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1c

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 427
    const/4 v3, 0x4

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchanrindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 436
    :cond_1c
    :goto_9
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[anr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 437
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    goto/16 :goto_5

    .line 395
    .restart local v11    # "emailiniap":I
    :cond_1d
    const/4 v3, 0x3

    aget-byte v4, v13, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_6

    .line 398
    .end local v11    # "emailiniap":I
    :cond_1e
    const/4 v3, 0x3

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_6

    .line 405
    :cond_1f
    const/4 v3, 0x3

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_7

    .line 410
    :cond_20
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_7

    .line 420
    .restart local v10    # "anrliniap":I
    :cond_21
    const/4 v3, 0x4

    aget-byte v4, v13, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v7, v3

    goto :goto_8

    .line 423
    .end local v10    # "anrliniap":I
    :cond_22
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_8

    .line 429
    :cond_23
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto :goto_9

    .line 434
    :cond_24
    const/4 v3, 0x4

    const/16 v4, 0xff

    aput v4, v7, v3

    goto :goto_9
.end method

.method public searchanrindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 8
    .param p1, "pbrIndex"    # I
    .param p2, "oldAnr"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 1019
    const-string v5, "RIL_AdnRecordCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY searchanrindex pbrIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/4 v2, 0x1

    .line 1021
    .local v2, "count":I
    const/4 v0, -0x1

    .line 1023
    .local v0, "anrIndex":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1024
    .local v4, "oldAnrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-nez v4, :cond_0

    .line 1025
    const-string v5, "RIL_AdnRecordCache"

    const-string v6, "MY searchanrindex oldAnrList is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1037
    .end local v0    # "anrIndex":I
    .local v1, "anrIndex":I
    :goto_0
    return v1

    .line 1028
    .end local v1    # "anrIndex":I
    .restart local v0    # "anrIndex":I
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1029
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isAnrEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1031
    move v0, v2

    .line 1036
    :cond_1
    const-string v5, "RIL_AdnRecordCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "searchanrindex anrIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1037
    .end local v0    # "anrIndex":I
    .restart local v1    # "anrIndex":I
    goto :goto_0

    .line 1034
    .end local v1    # "anrIndex":I
    .restart local v0    # "anrIndex":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public searchemailindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 7
    .param p1, "pbrIndex"    # I
    .param p2, "oldEmail"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 992
    const/4 v0, 0x1

    .line 993
    .local v0, "count":I
    const/4 v1, -0x1

    .line 994
    .local v1, "emailIndex":I
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY searchemailindex pbrIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 997
    .local v3, "oldEmailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-eqz v3, :cond_2

    .line 998
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 999
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmailEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1001
    move v1, v0

    .line 1009
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_0
    :goto_1
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchemailindex emailIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return v1

    .line 1004
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    const-string v4, "RIL_AdnRecordCache"

    const-string v5, "searchemailindex oldEmailList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public searchsrecid(Lcom/android/internal/telephony/uicc/AdnRecord;)Ljava/lang/String;
    .locals 9
    .param p1, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 477
    const-string v4, ""

    .line 478
    .local v4, "srecid":Ljava/lang/String;
    const/4 v1, -0x1

    .line 479
    .local v1, "index":I
    const/4 v0, 0x0

    .line 480
    .local v0, "count":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v3

    .line 481
    .local v3, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 482
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 483
    move v1, v0

    .line 488
    :cond_0
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    move-object v5, v4

    .line 491
    .end local v4    # "srecid":Ljava/lang/String;
    .local v5, "srecid":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 486
    .end local v5    # "srecid":Ljava/lang/String;
    .restart local v4    # "srecid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecid()Ljava/lang/String;

    move-result-object v4

    .line 490
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchsrecid srecid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 491
    .end local v4    # "srecid":Ljava/lang/String;
    .restart local v5    # "srecid":Ljava/lang/String;
    goto :goto_1
.end method

.method public updateAdnByIndex(IILcom/android/internal/telephony/uicc/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "efid"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "extensionIndex"    # I
    .param p5, "recordIndex"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 193
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v5

    .line 195
    .local v5, "extensionEF":I
    if-gez v5, :cond_0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF is not known ADN-like EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    .line 201
    .local v10, "pendingResponse":Landroid/os/Message;
    if-eqz v10, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p7

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 210
    .local v2, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v11, 0x0

    .line 212
    .local v11, "recordSize":[I
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 215
    :cond_2
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAdnByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_3
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSizeMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "recordSize":[I
    check-cast v11, [I

    .line 222
    .restart local v11    # "recordSize":[I
    if-nez v11, :cond_4

    .line 223
    const-string v1, "RIL_AdnRecordCache"

    const-string v3, " in updateAdnByIndex, error, recordSize == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v1, "in updateAdnByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_4
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x2

    move/from16 v0, p5

    invoke-virtual {p0, v3, p1, v0, p3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object v3, p3

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateAdnEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateAdnBySearch(IILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)[I
    .locals 27
    .param p1, "efid"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 810
    const/16 v16, 0x0

    .line 811
    .local v16, "extCount":I
    const/16 v20, 0x0

    .line 813
    .local v20, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .line 814
    .local v24, "recAndAnr":[I
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    .line 815
    const/4 v3, 0x1

    const/16 v5, 0xff

    aput v5, v24, v3

    .line 816
    const/4 v3, 0x2

    const/16 v5, 0xff

    aput v5, v24, v3

    .line 817
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 820
    .local v7, "extensionEF":I
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v20

    .line 822
    if-eqz v20, :cond_0

    .line 823
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->recordSize:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->recordSize:[I

    if-eqz v3, :cond_1

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->recordSize:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    add-int/lit8 v16, v3, 0x1

    .line 831
    :cond_1
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY updateAdnBySearch extCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 834
    .local v17, "extIndex":[I
    if-gez v7, :cond_2

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 836
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    .line 986
    :goto_1
    return-object v24

    .line 825
    .end local v17    # "extIndex":[I
    :catch_0
    move-exception v15

    .line 826
    .local v15, "e":Ljava/lang/Exception;
    const-string v3, "GSM"

    const-string v5, "ServiceManager.getService() exception"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v17    # "extIndex":[I
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v22

    .line 844
    .local v22, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_3

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 845
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v22

    .line 850
    :goto_2
    if-nez v22, :cond_5

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adn list not exist for EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 852
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto :goto_1

    .line 847
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v22

    goto :goto_2

    .line 857
    :cond_5
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    .line 858
    const/16 v9, 0xff

    .line 859
    .local v9, "extRecId":I
    const/16 v13, 0xff

    .line 860
    .local v13, "anrExtRecId":I
    const/16 v18, 0x0

    .line 861
    .local v18, "hasAdnExt":Z
    const/4 v14, 0x1

    .line 862
    .local v14, "count":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 863
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 864
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 865
    const/4 v3, 0x0

    aput v14, v24, v3

    .line 882
    :cond_6
    :goto_4
    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_16

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    .line 883
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 885
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_9

    .line 886
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_8

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    const/16 v5, 0xff

    if-eq v3, v5, :cond_8

    .line 887
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------update  adn..ext   recAndAnr[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oldAdnList.get(recAndAnr[0]-1)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v5

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    aput v3, v17, v5

    .line 889
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    aget v9, v17, v3

    .line 890
    const/4 v3, 0x1

    aput v9, v24, v3

    .line 892
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_9

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    const/16 v5, 0xff

    if-eq v3, v5, :cond_9

    .line 893
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------update  anr..ext   recAndAnr[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oldAdnList.get(recAndAnr[0]-1)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v5

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    aput v3, v17, v5

    .line 895
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    aget v13, v17, v3

    .line 896
    const/4 v3, 0x2

    aput v13, v24, v3

    .line 900
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_b

    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_13

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_13

    .line 901
    :cond_b
    const-string v3, "GSM"

    const-string v5, "MY  ---------insert  ext"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    const/16 v3, 0xff

    aput v3, v17, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 868
    .end local v19    # "i":I
    :cond_c
    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_d

    .line 869
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isFDNEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 870
    const/4 v3, 0x0

    aput v14, v24, v3

    goto/16 :goto_4

    .line 874
    :cond_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 875
    const/4 v3, 0x0

    aput v14, v24, v3

    goto/16 :goto_4

    .line 879
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 903
    .restart local v19    # "i":I
    :cond_f
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_10
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 905
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v26

    .line 906
    .local v26, "temp":I
    const/16 v3, 0xff

    move/from16 v0, v26

    if-eq v0, v3, :cond_10

    const/4 v3, 0x1

    aput v3, v17, v26

    goto :goto_6

    .line 908
    .end local v26    # "temp":I
    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_12
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 910
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v26

    .line 911
    .restart local v26    # "temp":I
    const/16 v3, 0xff

    move/from16 v0, v26

    if-eq v0, v3, :cond_12

    const/4 v3, 0x1

    aput v3, v17, v26

    goto :goto_7

    .line 914
    .end local v19    # "i":I
    .end local v26    # "temp":I
    :cond_13
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_14

    .line 915
    const/16 v19, 0x1

    .restart local v19    # "i":I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_14

    .line 916
    aget v3, v17, v19

    const/16 v5, 0xff

    if-ne v3, v5, :cond_17

    .line 917
    aput v19, v17, v19

    .line 918
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------insert  adn ..extIndex["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v17, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    aget v9, v17, v19

    .line 920
    const/4 v3, 0x1

    aput v9, v24, v3

    .line 925
    .end local v19    # "i":I
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_15

    .line 926
    const/16 v19, 0x1

    .restart local v19    # "i":I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_15

    .line 927
    aget v3, v17, v19

    const/16 v5, 0xff

    if-ne v3, v5, :cond_18

    .line 928
    aput v19, v17, v19

    .line 929
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------insert  anr ..extIndex["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v17, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    aget v13, v17, v19

    .line 931
    const/4 v3, 0x2

    aput v13, v24, v3

    .line 937
    .end local v19    # "i":I
    :cond_15
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------extRecId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " anrExtRecId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_16
    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_19

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adn record don\'t exist for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 941
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adn record don\'t exist for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 915
    .restart local v19    # "i":I
    :cond_17
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 926
    :cond_18
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    .line 946
    .end local v19    # "i":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Message;

    .line 948
    .local v23, "pendingResponse":Landroid/os/Message;
    if-eqz v23, :cond_1a

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have pending update for EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 950
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 954
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetAllAdnFileld()[I

    move-result-object v12

    .line 957
    .local v12, "adnEfid":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v4

    .line 958
    .local v4, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/16 v25, 0x0

    .line 960
    .local v25, "recordSize":[I
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, efid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-eqz v4, :cond_1b

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1c

    .line 963
    :cond_1b
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, error, recordSizeMap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in updateAdnBySearch,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 965
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 968
    :cond_1c
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSizeMap.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "recordSize":[I
    check-cast v25, [I

    .line 971
    .restart local v25    # "recordSize":[I
    if-nez v25, :cond_1d

    .line 972
    const-string v3, "RIL_AdnRecordCache"

    const-string v5, " in updateAdnBySearch, error, recordSize == null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const-string v3, "in updateAdnBySearch,recordSize error, recordSize == null"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 974
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 978
    :cond_1d
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSize[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSize[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSize[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v5, 0x0

    aget v8, v24, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aget v6, v24, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v5, v1, v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v5, p4

    move/from16 v6, p1

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateAdnEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1
.end method

.method public updateAnrByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 17
    .param p1, "efid"    # I
    .param p2, "index"    # [I
    .param p3, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 742
    const/4 v3, 0x5

    aget v3, p2, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 743
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 744
    .local v7, "extensionEF":I
    if-gez v7, :cond_0

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 749
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Message;

    .line 750
    .local v14, "pendingResponse":Landroid/os/Message;
    if-eqz v14, :cond_1

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have pending update for EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetAllSfiFileld()[I

    move-result-object v16

    .line 759
    .local v16, "sfi":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v4

    .line 760
    .local v4, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v15, 0x0

    .line 762
    .local v15, "recordSize":[I
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, efid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 765
    :cond_2
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, error, recordSizeMap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in updateAnrByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 769
    :cond_3
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSizeMap.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "recordSize":[I
    check-cast v15, [I

    .line 772
    .restart local v15    # "recordSize":[I
    if-nez v15, :cond_4

    .line 773
    const-string v3, "RIL_AdnRecordCache"

    const-string v5, " in updateAnrByIndex, error, recordSize == null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v3, "in updateAnrByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 778
    :cond_4
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSize[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSize[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v3, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSize[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v5, 0x4

    aget v8, p2, v5

    const/4 v5, 0x0

    aget v9, p2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    aget v10, v16, v5

    const/4 v5, 0x2

    aget v12, p2, v5

    const/4 v5, 0x5

    const/4 v6, 0x4

    aget v6, p2, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v5, p3

    move/from16 v6, p1

    move-object/from16 v11, p4

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateAnrEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateEmailByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "efid"    # I
    .param p2, "index"    # [I
    .param p3, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 660
    const/4 v1, 0x5

    aget v1, p2, v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 661
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    .line 662
    .local v10, "pendingResponse":Landroid/os/Message;
    if-eqz v10, :cond_0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 696
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetAllSfiFileld()[I

    move-result-object v12

    .line 671
    .local v12, "sfi":[I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 672
    .local v2, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v11, 0x0

    .line 674
    .local v11, "recordSize":[I
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 677
    :cond_1
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateEmailByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_2
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSizeMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "recordSize":[I
    check-cast v11, [I

    .line 684
    .restart local v11    # "recordSize":[I
    if-nez v11, :cond_3

    .line 685
    const-string v1, "RIL_AdnRecordCache"

    const-string v3, " in updateEmailByIndex, error, recordSize == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v1, "in updateEmailByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 690
    :cond_3
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x3

    aget v5, p2, v3

    const/4 v3, 0x0

    aget v6, p2, v3

    iget v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    aget v7, v12, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aget v4, p2, v4

    move-object/from16 v0, p3

    invoke-virtual {p0, v3, p1, v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v3, p3

    move v4, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEmailEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateIapByIndex(III[I[BLcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 14
    .param p1, "efid"    # I
    .param p2, "Emailiniap"    # I
    .param p3, "Anriniap"    # I
    .param p4, "index"    # [I
    .param p5, "iapRecord"    # [B
    .param p6, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p7, "pin2"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 701
    const/4 v1, 0x5

    aget v1, p4, v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 702
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-updateIapByIndex: this.pbrIndex= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 704
    .local v12, "pendingResponse":Landroid/os/Message;
    if-eqz v12, :cond_0

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p8

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 712
    .local v2, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v13, 0x0

    .line 714
    .local v13, "recordSize":[I
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 717
    :cond_1
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateIapByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_2
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSizeMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "recordSize":[I
    check-cast v13, [I

    .line 724
    .restart local v13    # "recordSize":[I
    if-nez v13, :cond_3

    .line 725
    const-string v1, "RIL_AdnRecordCache"

    const-string v3, " in updateIapByIndex, error, recordSize == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v1, "in updateIapByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 730
    :cond_3
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x3

    aget v6, p4, v3

    const/4 v3, 0x4

    aget v7, p4, v3

    const/4 v3, 0x0

    aget v9, p4, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aget v4, p4, v4

    move-object/from16 v0, p5

    invoke-virtual {p0, v3, p1, v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v3, p6

    move/from16 v4, p2

    move/from16 v5, p3

    move v8, p1

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateIapEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateusimphonebook(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[ILjava/lang/String;I)Z
    .locals 9
    .param p1, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "index"    # [I
    .param p4, "oldSrecid"    # Ljava/lang/String;
    .param p5, "adnSize"    # I

    .prologue
    .line 443
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateusimphonebook index[adnExt1_Index] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, p3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index[anrExt1_Index] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v5, -0x1

    .line 446
    .local v5, "usimindex":I
    const/4 v0, 0x1

    .line 447
    .local v0, "count":I
    const/4 v6, 0x5

    aget v4, p3, v6

    .line 448
    .local v4, "pbrIndex":I
    if-nez p4, :cond_2

    const-string v6, ""

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 449
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v3

    .line 450
    .local v3, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 451
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 452
    move v5, v0

    .line 465
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_0
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateusimphonebook usimindex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v6, 0x0

    .line 472
    :goto_1
    return v6

    .line 455
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v3    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    const/4 v6, 0x0

    aget v5, p3, v6

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_0

    .line 461
    add-int/2addr v5, p5

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 467
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_4

    const/4 v6, 0x1

    const/16 v7, 0xff

    aput v7, p3, v6

    .line 468
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_5

    const/4 v6, 0x2

    const/16 v7, 0xff

    aput v7, p3, v6

    .line 469
    :cond_5
    const/4 v6, 0x1

    aget v6, p3, v6

    if-lez v6, :cond_6

    const/4 v6, 0x1

    aget v6, p3, v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_6

    const/4 v6, 0x1

    aget v6, p3, v6

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtNumber(I)V

    .line 470
    :cond_6
    const/4 v6, 0x2

    aget v6, p3, v6

    if-lez v6, :cond_7

    const/4 v6, 0x2

    aget v6, p3, v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_7

    const/4 v6, 0x2

    aget v6, p3, v6

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 471
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 472
    const/4 v6, 0x1

    goto :goto_1
.end method
