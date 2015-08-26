.class public Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "CdmaLteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;
    }
.end annotation


# instance fields
.field private mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

.field private final mCellInfoLte:Landroid/telephony/CellInfoLte;

.field private mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .prologue
    .line 57
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 53
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 54
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v1}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct {v1}, Landroid/telephony/CellIdentityLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 64
    const-string v0, "CdmaLteServiceStateTracker Constructors"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .prologue
    const v4, 0xffff

    const/4 v1, 0x1

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v1

    .line 586
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 588
    if-eqz p1, :cond_0

    .line 590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 593
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_0

    .line 590
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 600
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 647
    const-string v0, "CdmaLteServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaLtePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 611
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 619
    :goto_0
    return-object v0

    .line 613
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v2

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllCellInfo: arrayList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while being destroyed. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 79
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 104
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 81
    :sswitch_0
    const-string v2, "handleMessage EVENT_POLL_STATE_GPRS"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 83
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 86
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 88
    .local v1, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 90
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    .line 91
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsMinInfoReady:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateOtaspState()V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollState()V

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x1b -> :sswitch_1
    .end sparse-switch
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 16
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 113
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 114
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v13, v1

    check-cast v13, [Ljava/lang/String;

    .line 116
    .local v13, "states":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v15, v13

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " states="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 120
    const/4 v14, 0x0

    .line 121
    .local v14, "type":I
    const/4 v12, -0x1

    .line 122
    .local v12, "regState":I
    array-length v1, v13

    if-lez v1, :cond_1

    .line 124
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 127
    array-length v1, v13

    const/4 v15, 0x4

    if-lt v1, v15, :cond_0

    const/4 v1, 0x3

    aget-object v1, v13, v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x3

    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 134
    :cond_0
    :goto_0
    array-length v1, v13

    const/16 v15, 0xa

    if-lt v1, v15, :cond_1

    .line 141
    const/4 v11, 0x0

    .line 144
    .local v11, "operatorNumeric":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 145
    const/4 v1, 0x0

    const/4 v15, 0x3

    invoke-virtual {v11, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 158
    .local v2, "mcc":I
    :goto_1
    const/4 v1, 0x3

    :try_start_2
    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    .line 168
    .local v3, "mnc":I
    :goto_2
    const/4 v1, 0x6

    :try_start_3
    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v6

    .line 175
    .local v6, "tac":I
    :goto_3
    const/4 v1, 0x7

    :try_start_4
    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v5

    .line 182
    .local v5, "pci":I
    :goto_4
    const/16 v1, 0x8

    :try_start_5
    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v4

    .line 189
    .local v4, "eci":I
    :goto_5
    const/16 v1, 0x9

    :try_start_6
    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v7

    .line 196
    .local v7, "csgid":I
    :goto_6
    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct/range {v1 .. v6}, Landroid/telephony/CellIdentityLte;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlePollStateResultMessage: mNewLteCellIdentity="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 204
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v4    # "eci":I
    .end local v5    # "pci":I
    .end local v6    # "tac":I
    .end local v7    # "csgid":I
    .end local v11    # "operatorNumeric":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v14}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    .line 206
    .local v8, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v8}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlPollStateResultMessage: CdmaLteSST setDataRegState="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " regState="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " dataRadioTechnology="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 218
    .end local v8    # "dataRegState":I
    .end local v12    # "regState":I
    .end local v13    # "states":[Ljava/lang/String;
    .end local v14    # "type":I
    :goto_7
    return-void

    .line 130
    .restart local v12    # "regState":I
    .restart local v13    # "states":[Ljava/lang/String;
    .restart local v14    # "type":I
    :catch_0
    move-exception v10

    .line 131
    .local v10, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .restart local v11    # "operatorNumeric":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 148
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 149
    const/4 v1, 0x0

    const/4 v15, 0x3

    invoke-virtual {v11, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v2

    .restart local v2    # "mcc":I
    goto/16 :goto_1

    .line 150
    .end local v2    # "mcc":I
    :catch_2
    move-exception v10

    .line 151
    .local v10, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlePollStateResultMessage: bad mcc operatorNumeric="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " ex="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 153
    const-string v11, ""

    .line 154
    const v2, 0x7fffffff

    .restart local v2    # "mcc":I
    goto/16 :goto_1

    .line 159
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 160
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlePollStateResultMessage: bad mnc operatorNumeric="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " e="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 162
    const v3, 0x7fffffff

    .restart local v3    # "mnc":I
    goto/16 :goto_2

    .line 169
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 170
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlePollStateResultMessage: bad tac states[6]="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v15, 0x6

    aget-object v15, v13, v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " e="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 172
    const v6, 0x7fffffff

    .restart local v6    # "tac":I
    goto/16 :goto_3

    .line 176
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 177
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlePollStateResultMessage: bad pci states[7]="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v15, 0x7

    aget-object v15, v13, v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " e="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 179
    const v5, 0x7fffffff

    .restart local v5    # "pci":I
    goto/16 :goto_4

    .line 183
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 184
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handlePollStateResultMessage: bad eci states[8]="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v15, 0x8

    aget-object v15, v13, v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " e="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 186
    const v4, 0x7fffffff

    .restart local v4    # "eci":I
    goto/16 :goto_5

    .line 190
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v9

    .line 194
    .restart local v9    # "e":Ljava/lang/Exception;
    const v7, 0x7fffffff

    .restart local v7    # "csgid":I
    goto/16 :goto_6

    .line 216
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v4    # "eci":I
    .end local v5    # "pci":I
    .end local v6    # "tac":I
    .end local v7    # "csgid":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "operatorNumeric":Ljava/lang/String;
    .end local v12    # "regState":I
    .end local v13    # "states":[Ljava/lang/String;
    .end local v14    # "type":I
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    goto/16 :goto_7
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 572
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 637
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    .line 551
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    move-result v1

    .line 553
    .local v1, "ssChanged":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 554
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_0

    .line 555
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellInfoLte;->setTimeStamp(J)V

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/telephony/CellInfoLte;->setTimeStampType(I)V

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellSignalStrengthLte;->initialize(Landroid/telephony/SignalStrength;I)V

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v0, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 565
    .end local v0    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_1
    monitor-exit v3

    .line 566
    return v1

    .line 565
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 225
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 276
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 230
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 239
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 38

    .prologue
    .line 280
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pollStateDone: lte 1 ss=["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "] newSS=["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-eqz v32, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-nez v32, :cond_15

    const/16 v19, 0x1

    .line 287
    .local v19, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-nez v32, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-eqz v32, :cond_16

    const/4 v15, 0x1

    .line 290
    .local v15, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    if-eqz v32, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    if-nez v32, :cond_17

    const/4 v10, 0x1

    .line 294
    .local v10, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    if-nez v32, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    if-eqz v32, :cond_18

    const/4 v12, 0x1

    .line 298
    .local v12, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_19

    const/4 v11, 0x1

    .line 301
    .local v11, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1a

    const/16 v22, 0x1

    .line 304
    .local v22, "hasVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1b

    const/4 v14, 0x1

    .line 307
    .local v14, "hasDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1c

    const/4 v13, 0x1

    .line 309
    .local v13, "hasChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v32

    if-nez v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v32

    if-eqz v32, :cond_1d

    const/16 v21, 0x1

    .line 311
    .local v21, "hasRoamingOn":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v32

    if-eqz v32, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v32

    if-nez v32, :cond_1e

    const/16 v20, 0x1

    .line 313
    .local v20, "hasRoamingOff":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1f

    const/16 v16, 0x1

    .line 315
    .local v16, "hasLocationChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    if-nez v32, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0xe

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0xd

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0xd

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0xe

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_20

    :cond_1
    const/4 v9, 0x1

    .line 322
    .local v9, "has4gHandoff":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0xe

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0xd

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0xe

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0xd

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_21

    const/16 v18, 0x1

    .line 328
    .local v18, "hasMultiApnSupport":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_22

    const/16 v17, 0x1

    .line 333
    .local v17, "hasLostMultiApnSupport":Z
    :goto_d
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pollStateDone: hasRegistered="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasDeegistered="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasCdmaDataConnectionAttached="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasCdmaDataConnectionDetached="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasCdmaDataConnectionChanged="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasVoiceRadioTechnologyChanged= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasDataRadioTechnologyChanged="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasChanged="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasRoamingOn="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasRoamingOff="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasLocationChanged="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " has4gHandoff = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasMultiApnSupport="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasLostMultiApnSupport="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 352
    :cond_3
    const v32, 0xc3c4

    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 357
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    .line 358
    .local v31, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 359
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v28, v0

    .line 364
    .local v28, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 365
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 369
    if-eqz v22, :cond_5

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 373
    :cond_5
    if-eqz v14, :cond_6

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v34

    invoke-static/range {v34 .. v34}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v32

    if-eqz v32, :cond_6

    const/16 v32, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handleIwlan()V

    .line 384
    :cond_6
    if-eqz v19, :cond_7

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 388
    :cond_7
    if-eqz v13, :cond_a

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v32

    if-nez v32, :cond_8

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v32

    const/16 v33, 0x100b

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_23

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    const-string v33, "Sprint"

    invoke-virtual/range {v32 .. v33}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 439
    :cond_8
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v32, "gsm.operator.numeric"

    const-string v33, ""

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 444
    .local v26, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v25

    .line 445
    .local v25, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.operator.numeric"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-nez v25, :cond_24

    .line 448
    const-string v32, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.operator.iso-country"

    const-string v34, ""

    invoke-virtual/range {v32 .. v34}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 473
    :cond_9
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v33, v0

    const-string v34, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v32

    if-eqz v32, :cond_25

    const-string v32, "true"

    :goto_10
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateSpnDisplay()V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 485
    .end local v25    # "operatorNumeric":Ljava/lang/String;
    .end local v26    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_a
    if-eqz v12, :cond_b

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 489
    :cond_b
    if-nez v11, :cond_c

    if-eqz v14, :cond_d

    .line 490
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v32

    if-eqz v32, :cond_26

    const/16 v32, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_26

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const-string v33, "iwlanAvailable"

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIwlanRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 503
    :cond_d
    :goto_11
    if-nez v10, :cond_e

    if-eqz v9, :cond_f

    .line 504
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 507
    :cond_f
    if-eqz v21, :cond_10

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 511
    :cond_10
    if-eqz v20, :cond_11

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 515
    :cond_11
    if-eqz v16, :cond_12

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 519
    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v5, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 521
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v7, Landroid/telephony/CellInfoLte;

    .line 523
    .local v7, "cil":Landroid/telephony/CellInfoLte;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_27

    const/4 v6, 0x1

    .line 524
    .local v6, "cidChanged":Z
    :goto_12
    if-nez v19, :cond_13

    if-nez v15, :cond_13

    if-eqz v6, :cond_14

    .line 526
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    mul-long v29, v34, v36

    .line 527
    .local v29, "timeStamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    if-nez v32, :cond_28

    const/16 v27, 0x1

    .line 528
    .local v27, "registered":Z
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 530
    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/telephony/CellInfoLte;->setRegisterd(Z)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 533
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "pollStateDone: hasRegistered="

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " hasDeregistered="

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " cidChanged="

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, " mCellInfo="

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .end local v27    # "registered":Z
    .end local v29    # "timeStamp":J
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 541
    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    return-void

    .line 284
    .end local v5    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v6    # "cidChanged":Z
    .end local v7    # "cil":Landroid/telephony/CellInfoLte;
    .end local v9    # "has4gHandoff":Z
    .end local v10    # "hasCdmaDataConnectionAttached":Z
    .end local v11    # "hasCdmaDataConnectionChanged":Z
    .end local v12    # "hasCdmaDataConnectionDetached":Z
    .end local v13    # "hasChanged":Z
    .end local v14    # "hasDataRadioTechnologyChanged":Z
    .end local v15    # "hasDeregistered":Z
    .end local v16    # "hasLocationChanged":Z
    .end local v17    # "hasLostMultiApnSupport":Z
    .end local v18    # "hasMultiApnSupport":Z
    .end local v19    # "hasRegistered":Z
    .end local v20    # "hasRoamingOff":Z
    .end local v21    # "hasRoamingOn":Z
    .end local v22    # "hasVoiceRadioTechnologyChanged":Z
    .end local v28    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v31    # "tss":Landroid/telephony/ServiceState;
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 287
    .restart local v19    # "hasRegistered":Z
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 290
    .restart local v15    # "hasDeregistered":Z
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 294
    .restart local v10    # "hasCdmaDataConnectionAttached":Z
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 298
    .restart local v12    # "hasCdmaDataConnectionDetached":Z
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 301
    .restart local v11    # "hasCdmaDataConnectionChanged":Z
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 304
    .restart local v22    # "hasVoiceRadioTechnologyChanged":Z
    :cond_1b
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 307
    .restart local v14    # "hasDataRadioTechnologyChanged":Z
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 309
    .restart local v13    # "hasChanged":Z
    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 311
    .restart local v21    # "hasRoamingOn":Z
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 313
    .restart local v20    # "hasRoamingOff":Z
    :cond_1f
    const/16 v16, 0x0

    goto/16 :goto_a

    .line 315
    .restart local v16    # "hasLocationChanged":Z
    :cond_20
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 322
    .restart local v9    # "has4gHandoff":Z
    :cond_21
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 328
    .restart local v18    # "hasMultiApnSupport":Z
    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_d

    .line 432
    .restart local v17    # "hasLostMultiApnSupport":Z
    .restart local v28    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v31    # "tss":Landroid/telephony/ServiceState;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 452
    .restart local v25    # "operatorNumeric":Ljava/lang/String;
    .restart local v26    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_24
    const-string v23, ""

    .line 453
    .local v23, "isoCountryCode":Ljava/lang/String;
    const/16 v32, 0x0

    const/16 v33, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 455
    .local v24, "mcc":Ljava/lang/String;
    const/16 v32, 0x0

    const/16 v33, 0x3

    :try_start_1
    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v23

    .line 463
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.operator.iso-country"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNeedFixZone:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 457
    :catch_0
    move-exception v8

    .line 458
    .local v8, "ex":Ljava/lang/NumberFormatException;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "countryCodeForMcc error"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_14

    .line 459
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    .line 460
    .local v8, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "countryCodeForMcc error"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_14

    .line 473
    .end local v8    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v23    # "isoCountryCode":Ljava/lang/String;
    .end local v24    # "mcc":Ljava/lang/String;
    :cond_25
    const-string v32, "false"

    goto/16 :goto_10

    .line 499
    .end local v25    # "operatorNumeric":Ljava/lang/String;
    .end local v26    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 523
    .restart local v5    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v7    # "cil":Landroid/telephony/CellInfoLte;
    :cond_27
    const/4 v6, 0x0

    goto/16 :goto_12

    .line 527
    .restart local v6    # "cidChanged":Z
    .restart local v29    # "timeStamp":J
    :cond_28
    const/16 v27, 0x0

    goto/16 :goto_13

    .line 541
    .end local v6    # "cidChanged":Z
    .end local v7    # "cil":Landroid/telephony/CellInfoLte;
    .end local v29    # "timeStamp":J
    :catchall_0
    move-exception v32

    :try_start_2
    monitor-exit v33
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v32
.end method

.method protected updatePhoneObject()V
    .locals 2

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 629
    .local v0, "voiceRat":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 630
    const/4 v0, 0x6

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneBase;->updatePhoneObject(I)V

    .line 633
    return-void
.end method
