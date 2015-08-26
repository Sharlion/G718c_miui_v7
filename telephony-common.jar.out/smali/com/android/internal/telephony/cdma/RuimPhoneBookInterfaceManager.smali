.class public Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "RuimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RuimPhoneBookIM"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 47
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 52
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    const-string v1, "RuimPhoneBookIM"

    const-string v2, "RuimPhoneBookInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "RuimPhoneBookIM"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .param p1, "efid"    # I

    .prologue
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdnRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 62
    sget-object v4, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 64
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mRecordSize:[I

    .line 67
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .local v2, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 70
    .local v1, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 72
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 76
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mRecordSize:[I

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

    .line 121
    const/16 v0, 0x14

    .line 122
    .local v0, "recordAnrSize":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    aget v1, v1, v3

    if-lez v1, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->getExtensionSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    aget v2, v2, v3

    if-lt v1, v2, :cond_0

    .line 124
    const/16 v0, 0xa

    .line 129
    :cond_0
    :goto_0
    const-string v1, "RuimPhoneBookIM"

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

    .line 131
    return v0

    .line 127
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public getEmailRecordsSize(I)I
    .locals 4
    .param p1, "efid"    # I

    .prologue
    const/4 v2, 0x0

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "recordEmailSize":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->emailSizeInfo:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->emailSizeInfo:[I

    aget v1, v1, v2

    if-lez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->getIsEMAILTYP2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->emailSizeInfo:[I

    aget v1, v1, v2

    add-int/lit8 v0, v1, -0x2

    .line 116
    :cond_0
    :goto_0
    const-string v1, "RuimPhoneBookIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmailRecordsSize: recordEmailSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->emailSizeInfo:[I

    aget v0, v1, v2

    goto :goto_0
.end method

.method public getExt1RecordsSize(I)I
    .locals 4
    .param p1, "efid"    # I

    .prologue
    const/4 v2, 0x2

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "ext1recordSize":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    aget v1, v1, v2

    if-lez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->ext1SizeInfo:[I

    aget v0, v1, v2

    .line 139
    :cond_0
    const-string v1, "RuimPhoneBookIM"

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

    .line 140
    return v0
.end method

.method public getExtensionSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v0

    return v0
.end method

.method public getSimSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->getAdnSize(I)I

    move-result v0

    return v0
.end method

.method public getSimTotalSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->getAdnTotalSize(I)I

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

    .line 99
    .local v0, "recordAdnSize":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->adnSizeInfo:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->adnSizeInfo:[I

    aget v1, v1, v3

    const/16 v2, 0xe

    if-le v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->adnSizeInfo:[I

    aget v1, v1, v3

    add-int/lit8 v0, v1, -0xe

    .line 103
    :cond_0
    const-string v1, "RuimPhoneBookIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTagRecordsSize: recordAdnSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0
.end method

.method public getUsimAdnRecordsSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->getPbrFileld()I

    move-result v0

    return v0
.end method

.method public getUsimSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->getUsimAdnSize()I

    move-result v0

    return v0
.end method

.method public isANRSpaceFull(Ljava/lang/String;)Z
    .locals 2
    .param p1, "srecid"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v0, 0x1

    .line 152
    .local v0, "isANRSpaceFull":Z
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->searchANRSpaceWithoutSrecid()Z

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 158
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->searchANRSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEmailSpaceFull(Ljava/lang/String;)Z
    .locals 2
    .param p1, "srecid"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x1

    .line 166
    .local v0, "isEmailSpaceFull":Z
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->searchEmailSpaceWithoutSrecid()Z

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 172
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->searchEmailSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSupportANR()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->getIsSupANR(I)Z

    move-result v0

    return v0
.end method

.method public isSupportEmail()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->getIsSupEmail(I)Z

    move-result v0

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "RuimPhoneBookIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "RuimPhoneBookIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method
