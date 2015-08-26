.class public Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "SimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SimPhoneBookIM"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 43
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 48
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 53
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    const-string v1, "SimPhoneBookIM"

    const-string v2, "SimPhoneBookInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "SimPhoneBookIM"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .param p1, "efid"    # I

    .prologue
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdnRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 63
    sget-object v4, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->checkThread()V

    .line 65
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mRecordSize:[I

    .line 68
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 69
    .local v2, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 71
    .local v1, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 72
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 76
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mRecordSize:[I

    return-object v3

    .line 76
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getAnrRecordsSize(I)I
    .locals 4
    .param p1, "efid"    # I

    .prologue
    const/4 v3, 0x2

    .line 157
    const/16 v0, 0x14

    .line 158
    .local v0, "recordAnrSize":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    aget v1, v1, v3

    if-lez v1, :cond_1

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getExtensionSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    aget v2, v2, v3

    if-lt v1, v2, :cond_0

    .line 160
    const/16 v0, 0xa

    .line 165
    :cond_0
    :goto_0
    const-string v1, "SimPhoneBookIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrRecordsSize recordAnrSize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v0

    .line 163
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public getEmailRecordsSize(I)I
    .locals 3
    .param p1, "efid"    # I

    .prologue
    const/4 v2, 0x0

    .line 126
    const/4 v0, 0x0

    .line 146
    .local v0, "recordEmailSize":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->emailSizeInfo:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->emailSizeInfo:[I

    aget v1, v1, v2

    if-lez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsEMAILTYP2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->emailSizeInfo:[I

    aget v1, v1, v2

    add-int/lit8 v0, v1, -0x2

    .line 153
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailRecordsSize: recordEmailSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 154
    return v0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->emailSizeInfo:[I

    aget v0, v1, v2

    goto :goto_0
.end method

.method public getExt1RecordsSize(I)I
    .locals 4
    .param p1, "efid"    # I

    .prologue
    const/4 v2, 0x2

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "ext1recordSize":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    aget v1, v1, v2

    if-lez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    aget v0, v1, v2

    .line 174
    :cond_0
    const-string v1, "SimPhoneBookIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExt1RecordsSize ext1recordSize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v0
.end method

.method public getExtensionSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v0

    return v0
.end method

.method public getSimSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getAdnSize(I)I

    move-result v0

    return v0
.end method

.method public getSimTotalSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getAdnTotalSize(I)I

    move-result v0

    return v0
.end method

.method public getTagRecordsSize(I)I
    .locals 4
    .param p1, "efid"    # I

    .prologue
    const/4 v3, 0x0

    .line 97
    const/4 v0, 0x0

    .line 118
    .local v0, "recordAdnSize":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->adnSizeInfo:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->adnSizeInfo:[I

    aget v1, v1, v3

    const/16 v2, 0xe

    if-le v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->adnSizeInfo:[I

    aget v1, v1, v3

    add-int/lit8 v0, v1, -0xe

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTagRecordsSize: recordAdnSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 123
    return v0
.end method

.method public getUsimAdnRecordsSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getPbrFileld()I

    move-result v0

    return v0
.end method

.method public getUsimSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getUsimAdnSize()I

    move-result v0

    return v0
.end method

.method public isANRSpaceFull(Ljava/lang/String;)Z
    .locals 2
    .param p1, "srecid"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x1

    .line 186
    .local v0, "isANRSpaceFull":Z
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->searchANRSpaceWithoutSrecid()Z

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 192
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->searchANRSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEmailSpaceFull(Ljava/lang/String;)Z
    .locals 2
    .param p1, "srecid"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x1

    .line 200
    .local v0, "isEmailSpaceFull":Z
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->searchEmailSpaceWithoutSrecid()Z

    move-result v0

    .line 209
    :goto_0
    return v0

    .line 206
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->searchEmailSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSupportANR()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsSupANR(I)Z

    move-result v0

    return v0
.end method

.method public isSupportEmail()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsSupEmail(I)Z

    move-result v0

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v0, "SimPhoneBookIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "SimPhoneBookIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method
