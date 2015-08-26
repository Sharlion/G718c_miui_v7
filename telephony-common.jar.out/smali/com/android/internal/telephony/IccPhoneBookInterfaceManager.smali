.class public abstract Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManager.java"


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_ANR_UPDATE_DONE:I = 0x7

.field protected static final EVENT_EMAIL_UPDATE_DONE:I = 0x6

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_IAP_UPDATE_DONE:I = 0x8

.field protected static final EVENT_ICC_CHANGED:I = 0x4

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field protected static final EVENT_USIM_UPDATE_DONE:I = 0x5

.field protected static final mLock:Ljava/lang/Object;


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field protected adnSizeInfo:[I

.field protected anrSizeInfo:[I

.field protected anrsuccess:Z

.field protected emailSizeInfo:[I

.field protected emailsuccess:Z

.field protected ext1SizeInfo:[I

.field protected iapsuccess:Z

.field protected mBaseHandler:Landroid/os/Handler;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mIs3gCard:Z

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mRecordSize:[I

.field protected records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field simSize:I

.field protected success:Z

.field usimSize:I

.field protected usimsuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    .line 88
    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    .line 89
    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    .line 90
    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    .line 91
    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simSize:I

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimSize:I

    .line 96
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 200
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 201
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 205
    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    .line 208
    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 209
    return-void
.end method

.method private updateAdnEmailRecordsInEfByIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 19
    .param p1, "newTag"    # Ljava/lang/String;
    .param p2, "newPhoneNumber"    # Ljava/lang/String;
    .param p3, "newEmail"    # Ljava/lang/String;
    .param p4, "newAnr"    # Ljava/lang/String;
    .param p5, "index"    # [I
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v4, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 797
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 801
    :cond_0
    const/16 v18, 0x0

    .line 802
    .local v18, "usimsuccess":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    aget v17, p5, v4

    .line 803
    .local v17, "pbrIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wzf-updateAdnEmailRecordsInEfByIndex pbrIndex = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAdnFileld(I)I

    move-result v5

    .line 806
    .local v5, "adnefid":I
    const-string v9, ""

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 807
    if-nez v18, :cond_1

    const/4 v4, 0x0

    .line 855
    :goto_0
    return v4

    .line 808
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupEmail(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    aget v4, p5, v4

    const/16 v6, 0xff

    if-eq v4, v6, :cond_2

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnEmailRecordsInEfByIndex index[adnCache.email_Index] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x3

    aget v6, p5, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetEmailFileld(I)I

    move-result v14

    .line 811
    .local v14, "emailefid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmailRecordsInEfByIndex(I[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 816
    .end local v14    # "emailefid":I
    :goto_1
    if-nez v18, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 813
    :cond_2
    const-string p3, ""

    .line 814
    const/16 v18, 0x1

    goto :goto_1

    .line 817
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    aget v4, p5, v4

    const/16 v6, 0xff

    if-eq v4, v6, :cond_4

    .line 818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnEmailRecordsInEfByIndex index[adnCache.anr_Index] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x4

    aget v6, p5, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 819
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnrFileld(I)I

    move-result v13

    .line 820
    .local v13, "anrefid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAnrRecordsInEfByIndex(I[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 825
    .end local v13    # "anrefid":I
    :goto_2
    if-nez v18, :cond_5

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 822
    :cond_4
    const-string p4, ""

    .line 823
    const/16 v18, 0x1

    goto :goto_2

    .line 827
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupIAP(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsEMAILTYP2()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsANRTYP2()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 828
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wzf-updateAdnEmailRecordsInEfByIndex iap pbrIndex= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 829
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetIapFileld(I)I

    move-result v7

    .line 830
    .local v7, "iapefid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->GetEmailiniap()I

    move-result v8

    .line 831
    .local v8, "emailiniap":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->GetAnriniap()I

    move-result v9

    .line 832
    .local v9, "anriniap":I
    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    const/16 v6, 0xff

    aput v6, p5, v4

    .line 833
    :cond_7
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/16 v6, 0xff

    aput v6, p5, v4

    .line 834
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v16

    .line 835
    .local v16, "iapSizeInfo":[I
    const/4 v15, 0x0

    .line 836
    .local v15, "iapSize":I
    const/4 v11, 0x0

    .line 837
    .local v11, "iapRecord":[B
    if-eqz v16, :cond_c

    .line 838
    const/4 v4, 0x0

    aget v15, v16, v4

    .line 839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wzf-updateAdnEmailRecordsInEfByIndex iap-iapSize: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 840
    if-lez v15, :cond_b

    .line 841
    new-array v11, v15, [B

    .line 842
    const/4 v4, -0x1

    if-eq v8, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    aget v4, p5, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v11, v8

    .line 843
    :cond_9
    const/4 v4, -0x1

    if-eq v9, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    aget v4, p5, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v11, v9

    :cond_a
    move-object/from16 v6, p0

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    .line 844
    invoke-direct/range {v6 .. v12}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIapRecordsInEfByIndex(III[I[BLjava/lang/String;)Z

    move-result v18

    .line 854
    .end local v7    # "iapefid":I
    .end local v8    # "emailiniap":I
    .end local v9    # "anriniap":I
    .end local v11    # "iapRecord":[B
    .end local v15    # "iapSize":I
    .end local v16    # "iapSizeInfo":[I
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wzf-updateAdnEmailRecordsInEfByIndex usimsuccess = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move/from16 v4, v18

    .line 855
    goto/16 :goto_0

    .line 846
    .restart local v7    # "iapefid":I
    .restart local v8    # "emailiniap":I
    .restart local v9    # "anriniap":I
    .restart local v11    # "iapRecord":[B
    .restart local v15    # "iapSize":I
    .restart local v16    # "iapSizeInfo":[I
    :cond_b
    const/16 v18, 0x0

    goto :goto_3

    .line 849
    :cond_c
    const/16 v18, 0x0

    goto :goto_3

    .line 852
    .end local v7    # "iapefid":I
    .end local v8    # "emailiniap":I
    .end local v9    # "anriniap":I
    .end local v11    # "iapRecord":[B
    .end local v15    # "iapSize":I
    .end local v16    # "iapSizeInfo":[I
    :cond_d
    const/16 v18, 0x1

    goto :goto_3
.end method

.method private updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # [I
    .param p5, "srecid"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 984
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index[adnCache.adn_Index]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    aget v2, p4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 987
    sget-object v10, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 988
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 989
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 990
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 991
    .local v9, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 992
    .local v8, "response":Landroid/os/Message;
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    move-object/from16 v0, p5

    invoke-direct {v4, p2, p3, v1, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    .local v4, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v1, :cond_1

    .line 994
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    aget v3, p4, v2

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    aget v5, p4, v2

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    aget v6, p4, v2

    move v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(IILcom/android/internal/telephony/uicc/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    .line 995
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 999
    :goto_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    return v1

    .line 997
    :cond_1
    :try_start_1
    const-string v1, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 999
    .end local v4    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "response":Landroid/os/Message;
    .end local v9    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateAnrRecordsInEfByIndex(I[ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "index"    # [I
    .param p3, "newAnr"    # Ljava/lang/String;
    .param p4, "pin2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 625
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnrRecordsInEfByIndex: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 634
    sget-object v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 635
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 636
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrsuccess:Z

    .line 637
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 638
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 639
    .local v5, "response":Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    const-string v2, ""

    const-string v4, ""

    invoke-direct {v3, v1, v2, p3, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 641
    monitor-exit v7

    .line 651
    :goto_0
    return v0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAnrByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 645
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 649
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrsuccess:Z

    goto :goto_0

    .line 647
    :cond_2
    :try_start_1
    const-string v0, "Failure while trying to update anr due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 649
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateEfForIccType(I)I
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wzf-20131130-updateEfForIccType-mIs3gCard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1087
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    if-eqz v0, :cond_0

    .line 1088
    const-string v0, "Translate EF_ADN to EF_PBR"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1089
    const/16 p1, 0x4f30

    .line 1091
    .end local p1    # "efid":I
    :cond_0
    return p1
.end method

.method private updateEmailRecordsInEfByIndex(I[ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "efid"    # I
    .param p2, "index"    # [I
    .param p3, "newEmail"    # Ljava/lang/String;
    .param p4, "pin2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    const/4 v6, 0x0

    .line 567
    .local v6, "newEmails":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 568
    aput-object p3, v6, v0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmailRecordsInEfByIndex: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 571
    sget-object v8, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 573
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailsuccess:Z

    .line 574
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 575
    .local v7, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 576
    .local v5, "response":Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    const-string v2, ""

    const-string v4, ""

    invoke-direct {v3, v1, v2, v6, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 578
    monitor-exit v8

    .line 587
    :goto_0
    return v0

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateEmailByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 582
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 586
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailsuccess:Z

    goto :goto_0

    .line 584
    :cond_2
    :try_start_1
    const-string v0, "Failure while trying to update to email due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 586
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v7    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateIapRecordsInEfByIndex(III[I[BLjava/lang/String;)Z
    .locals 11
    .param p1, "efid"    # I
    .param p2, "Emailiniap"    # I
    .param p3, "Anriniap"    # I
    .param p4, "index"    # [I
    .param p5, "iapRecord"    # [B
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIapRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 601
    sget-object v10, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->iapsuccess:Z

    .line 604
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 605
    .local v9, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 606
    .local v8, "response":Landroid/os/Message;
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    aget v2, p4, v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    aget v3, p4, v3

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 607
    .local v6, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget v0, p4, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 608
    const/4 v0, 0x0

    monitor-exit v10

    .line 618
    :goto_0
    return v0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateIapByIndex(III[I[BLcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 612
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 616
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->iapsuccess:Z

    goto :goto_0

    .line 614
    :cond_2
    :try_start_1
    const-string v0, "Failure while trying to update iap due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 616
    .end local v6    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "response":Landroid/os/Message;
    .end local v9    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public changeEfForIccType(I)I
    .locals 4
    .param p1, "efid"    # I

    .prologue
    .line 1231
    const/16 v2, 0x6f3a

    if-ne p1, v2, :cond_1

    .line 1240
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wzf-20131130-changeEfForIccType-mIs3gCard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1241
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1245
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetAdnFileld(I)I

    move-result p1

    .line 1246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wzf-changeEfForIccType-Translate ADN to efid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1248
    if-nez p1, :cond_0

    .line 1250
    const-string v2, "wzf-changeEfForIccType (efid == 0)"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    const/16 p1, 0x6f3a

    :cond_0
    move v0, p1

    .line 1263
    .end local p1    # "efid":I
    .local v0, "efid":I
    :goto_0
    return v0

    .line 1257
    .end local v0    # "efid":I
    .restart local p1    # "efid":I
    :catch_0
    move-exception v1

    .line 1259
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "there is no card"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1262
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wzf-changeEfForIccType-efid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v0, p1

    .line 1263
    .end local p1    # "efid":I
    .restart local v0    # "efid":I
    goto :goto_0
.end method

.method protected checkThread()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->cleanUp()V

    .line 213
    return-void
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1033
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1034
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1044
    sget-object v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1045
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 1046
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1047
    .local v1, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1048
    .local v0, "response":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " contact framework ,in getAdnRecordsInEf,adnCache="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1049
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_1

    .line 1050
    const-string v2, " contact framework ,in getAdnRecordsInEf,will adnCache.requestLoadAllAdnLike,EVENT_LOAD_DONE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1051
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 1052
    const-string v2, " contact framework ,in getAdnRecordsInEf,will waitForResult"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1057
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getRecordsLengthFromEF()V

    .line 1059
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    return-object v2

    .line 1055
    :cond_1
    :try_start_1
    const-string v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public abstract getAdnRecordsSize(I)[I
.end method

.method public getAdnSize(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestAdnSize(I)I

    move-result v0

    .line 1118
    :goto_0
    return v0

    .line 1117
    :cond_0
    const-string v0, " getAdnSize Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdnTotalSize(I)I
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 1123
    const/4 v0, -0x1

    .line 1124
    .local v0, "mRecordTotalSize":I
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v1, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestAdnTotalSize(I)I

    move-result v0

    .line 1129
    :goto_0
    return v0

    .line 1127
    :cond_0
    const-string v1, " getAdnTotalSize Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAdnlikeRecordsSize(I)[I
    .locals 5
    .param p1, "efid"    # I

    .prologue
    .line 306
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 307
    .local v2, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v0, 0x0

    .line 308
    .local v0, "recordSize":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-20140401-getAdnlikeRecordsSize, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 309
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 311
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-20140401-getAdnlikeRecordsSize, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recordSizeMap.size()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object v1, v0

    .line 323
    .end local v0    # "recordSize":[I
    .local v1, "recordSize":[I
    :goto_0
    return-object v1

    .line 314
    .end local v1    # "recordSize":[I
    .restart local v0    # "recordSize":[I
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "recordSize":[I
    check-cast v0, [I

    .line 315
    .restart local v0    # "recordSize":[I
    if-nez v0, :cond_2

    .line 317
    const-string v3, "wzf-20140401-getAdnlikeRecordsSize,error, recordSize == null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object v1, v0

    .line 318
    .end local v0    # "recordSize":[I
    .restart local v1    # "recordSize":[I
    goto :goto_0

    .line 320
    .end local v1    # "recordSize":[I
    .restart local v0    # "recordSize":[I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-20140401-getAdnlikeRecordsSize, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-20140401-getAdnlikeRecordsSize, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-20140401-getAdnlikeRecordsSize, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object v1, v0

    .line 323
    .end local v0    # "recordSize":[I
    .restart local v1    # "recordSize":[I
    goto :goto_0
.end method

.method public abstract getAnrRecordsSize(I)I
.end method

.method public abstract getEmailRecordsSize(I)I
.end method

.method public abstract getExt1RecordsSize(I)I
.end method

.method public getExt1Size(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestEXT1Size(I)I

    move-result v0

    .line 1109
    :goto_0
    return v0

    .line 1108
    :cond_0
    const-string v0, " getExt1Size Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGetAdnFileld(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetAdnFileld(I)I

    move-result v0

    .line 1194
    :goto_0
    return v0

    .line 1193
    :cond_0
    const-string v0, " getGetAdnFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGetAnrFileld(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetAnrFileld(I)I

    move-result v0

    .line 1224
    :goto_0
    return v0

    .line 1223
    :cond_0
    const-string v0, " getGetAnrFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGetEmailFileld(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetEmailFileld(I)I

    move-result v0

    .line 1204
    :goto_0
    return v0

    .line 1203
    :cond_0
    const-string v0, " getGetEmailFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGetIapFileld(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetIapFileld(I)I

    move-result v0

    .line 1214
    :goto_0
    return v0

    .line 1213
    :cond_0
    const-string v0, " getGetIapFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsANRTYP2()Z
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v0

    .line 1175
    :goto_0
    return v0

    .line 1174
    :cond_0
    const-string v0, " getIsANRTYP2 Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsEMAILTYP2()Z
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v0

    .line 1184
    :goto_0
    return v0

    .line 1183
    :cond_0
    const-string v0, " getIsEMAILTYP2 Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsSupANR(I)Z
    .locals 1
    .param p1, "pbrindex"    # I

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupANR(I)Z

    move-result v0

    .line 1147
    :goto_0
    return v0

    .line 1146
    :cond_0
    const-string v0, " getIsSupANR Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsSupEmail(I)Z
    .locals 1
    .param p1, "pbrindex"    # I

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupEmail(I)Z

    move-result v0

    .line 1156
    :goto_0
    return v0

    .line 1155
    :cond_0
    const-string v0, " getIsSupEmail Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsSupIAP(I)Z
    .locals 1
    .param p1, "pbrindex"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupIAP(I)Z

    move-result v0

    .line 1165
    :goto_0
    return v0

    .line 1164
    :cond_0
    const-string v0, " getIsSupIAP Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPbrFileld()I
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestPbrFileld()I

    move-result v0

    .line 1100
    :goto_0
    return v0

    .line 1099
    :cond_0
    const-string v0, " getPbrFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordsLengthFromEF()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 329
    const-string v4, "getRecordsLengthFromEF"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "adnEfid":I
    const/16 v4, 0x6f3a

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->changeEfForIccType(I)I

    move-result v0

    .line 334
    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnlikeRecordsSize(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    .line 336
    :cond_0
    const/4 v3, 0x0

    .line 337
    .local v3, "extensionEF":I
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v4, :cond_4

    .line 338
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 343
    :goto_0
    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnlikeRecordsSize(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    .line 345
    :cond_1
    const/4 v2, 0x0

    .line 346
    .local v2, "emailEfid":I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetEmailFileld(I)I

    move-result v2

    .line 348
    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnlikeRecordsSize(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    .line 350
    :cond_2
    const/4 v1, 0x0

    .line 351
    .local v1, "anrEfid":I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnrFileld(I)I

    move-result v1

    .line 353
    if-lez v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    if-nez v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnlikeRecordsSize(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    .line 355
    :cond_3
    return-void

    .line 340
    .end local v1    # "anrEfid":I
    .end local v2    # "emailEfid":I
    :cond_4
    const-string v4, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSimCardType()Z
    .locals 1

    .prologue
    .line 1267
    const-string v0, "getSimCardType"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1278
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    return v0
.end method

.method public abstract getSimTotalSize(I)I
.end method

.method public abstract getTagRecordsSize(I)I
.end method

.method public abstract getUsimAdnRecordsSize(I)I
.end method

.method public getUsimAdnSize()I
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestUsimAdnSize()I

    move-result v0

    .line 1137
    :goto_0
    return v0

    .line 1136
    :cond_0
    const-string v0, " getUsimAdnSize Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getsimcap(Ljava/lang/String;)Lcom/android/internal/telephony/simcap;
    .locals 16
    .param p1, "srecid"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v11, Lcom/android/internal/telephony/simcap;

    invoke-direct {v11}, Lcom/android/internal/telephony/simcap;-><init>()V

    .line 360
    .local v11, "msimcap":Lcom/android/internal/telephony/simcap;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 361
    :cond_0
    const/16 v1, 0x6f3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->changeEfForIccType(I)I

    move-result v2

    .line 362
    .local v2, "adnEfid":I
    const/4 v1, 0x6

    new-array v10, v1, [I

    .line 363
    .local v10, "index":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 369
    const/4 v13, 0x0

    .line 370
    .local v13, "oldEmails":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/String;

    .line 371
    const/4 v1, 0x0

    const-string v6, ""

    aput-object v6, v13, v1

    .line 372
    const/4 v12, 0x0

    .line 373
    .local v12, "newEmails":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 374
    const/4 v1, 0x0

    const-string v6, ""

    aput-object v6, v12, v1

    .line 375
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    const-string v6, ""

    const-string v15, ""

    invoke-direct {v3, v1, v6, v13, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .local v3, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    const-string v6, ""

    const-string v15, ""

    invoke-direct {v4, v1, v6, v12, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .local v4, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v5, 0x0

    .line 378
    .local v5, "ext1Size":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v1, :cond_2

    .line 379
    const-string v1, "Failure while trying to update anr due to uninitialised adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 476
    :cond_1
    :goto_0
    return-object v11

    .line 382
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    if-eqz v1, :cond_4

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    const/4 v6, 0x2

    aget v5, v1, v6

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0x3

    iput v1, v11, Lcom/android/internal/telephony/simcap;->ext1length:I

    .line 389
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestAdnTotalSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simSize:I

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestAdnSize(I)I

    move-result v8

    .line 391
    .local v8, "curSimSize":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simSize:I

    iput v1, v11, Lcom/android/internal/telephony/simcap;->simSize:I

    .line 392
    iput v8, v11, Lcom/android/internal/telephony/simcap;->curSimSize:I

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestUsimAdnSize()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimSize:I

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestPbrFileld()I

    move-result v9

    .line 395
    .local v9, "curUsimSize":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimSize:I

    iput v1, v11, Lcom/android/internal/telephony/simcap;->usimSize:I

    .line 396
    iput v9, v11, Lcom/android/internal/telephony/simcap;->curUsimSize:I

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchIndex(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)[I

    move-result-object v10

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    aget v14, v10, v1

    .line 401
    .local v14, "pbrIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getsimcap pbrIndex = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 402
    const/16 v1, 0x6f3a

    if-eq v2, v1, :cond_3

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAdnFileld(I)I

    move-result v2

    .line 405
    :cond_3
    iput v5, v11, Lcom/android/internal/telephony/simcap;->ext1Size:I

    .line 406
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v7

    .line 407
    .local v7, "curExt1Size":I
    iput v7, v11, Lcom/android/internal/telephony/simcap;->curExt1Size:I

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getsimcap 233 msimcap.curExt1Size = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v11, Lcom/android/internal/telephony/simcap;->curExt1Size:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "ext1Size = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    if-nez v1, :cond_5

    .line 411
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->taglength:I

    .line 418
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    if-nez v1, :cond_8

    .line 419
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->numberlength:I

    .line 437
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupEmail(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    if-nez v1, :cond_d

    .line 441
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->emaillength:I

    .line 455
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    if-nez v1, :cond_11

    .line 459
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->anrlength:I

    goto/16 :goto_0

    .line 386
    .end local v7    # "curExt1Size":I
    .end local v8    # "curSimSize":I
    .end local v9    # "curUsimSize":I
    .end local v14    # "pbrIndex":I
    :cond_4
    const/4 v5, 0x0

    .line 387
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->ext1length:I

    goto/16 :goto_1

    .line 412
    .restart local v7    # "curExt1Size":I
    .restart local v8    # "curSimSize":I
    .restart local v9    # "curUsimSize":I
    .restart local v14    # "pbrIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    const/16 v6, 0xe

    if-gt v1, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aget v1, v10, v1

    if-lez v1, :cond_7

    .line 413
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0xe

    iput v1, v11, Lcom/android/internal/telephony/simcap;->taglength:I

    goto :goto_2

    .line 415
    :cond_7
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->taglength:I

    goto :goto_2

    .line 420
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    if-lez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aget v1, v10, v1

    if-lez v1, :cond_c

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    if-nez v1, :cond_9

    .line 422
    const/16 v1, 0xa

    iput v1, v11, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto :goto_3

    .line 423
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v1

    if-lt v1, v5, :cond_a

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 424
    const/16 v1, 0xa

    iput v1, v11, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_3

    .line 426
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v1

    if-le v1, v5, :cond_b

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 427
    const/16 v1, 0xa

    iput v1, v11, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_3

    .line 430
    :cond_b
    const/16 v1, 0x14

    iput v1, v11, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_3

    .line 434
    :cond_c
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_3

    .line 442
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    aget v1, v10, v1

    if-lez v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    if-lez v1, :cond_f

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsEMAILTYP2()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0x2

    iput v1, v11, Lcom/android/internal/telephony/simcap;->emaillength:I

    goto/16 :goto_4

    .line 446
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    iput v1, v11, Lcom/android/internal/telephony/simcap;->emaillength:I

    goto/16 :goto_4

    .line 449
    :cond_f
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->emaillength:I

    goto/16 :goto_4

    .line 452
    :cond_10
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->emaillength:I

    goto/16 :goto_4

    .line 460
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    aget v1, v10, v1

    if-lez v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    if-lez v1, :cond_15

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    if-nez v1, :cond_12

    .line 462
    const/16 v1, 0xa

    iput v1, v11, Lcom/android/internal/telephony/simcap;->anrlength:I

    goto/16 :goto_0

    .line 463
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v1

    if-lt v1, v5, :cond_13

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 464
    const/16 v1, 0xa

    iput v1, v11, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_0

    .line 465
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v1

    if-le v1, v5, :cond_14

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 466
    const/16 v1, 0xa

    iput v1, v11, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_0

    .line 468
    :cond_14
    const/16 v1, 0x14

    iput v1, v11, Lcom/android/internal/telephony/simcap;->anrlength:I

    goto/16 :goto_0

    .line 471
    :cond_15
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->anrlength:I

    goto/16 :goto_0

    .line 474
    :cond_16
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/internal/telephony/simcap;->anrlength:I

    goto/16 :goto_0
.end method

.method public hasLoadContacts()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1284
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v0, "icccontacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v2, :cond_0

    .line 1287
    const-string v2, " hasLoadContacts Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1309
    .end local v0    # "icccontacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    return v1

    .line 1290
    .restart local v0    # "icccontacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1291
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    .line 1295
    :goto_1
    if-eqz v0, :cond_3

    .line 1296
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1297
    const-string v1, "hasLoadContacts true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1298
    const/4 v1, 0x1

    goto :goto_0

    .line 1293
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    const/16 v3, 0x6f3a

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "icccontacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "icccontacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_1

    .line 1300
    :cond_2
    const-string v2, "hasLoadContacts  icccontacts isEmpty "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1304
    :cond_3
    const-string v2, "hasLoadContacts icccontacts is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    .end local v0    # "icccontacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_4
    const-string v2, "hasLoadContacts uicc is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract isANRSpaceFull(Ljava/lang/String;)Z
.end method

.method public abstract isEmailSpaceFull(Ljava/lang/String;)Z
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected publish()V
    .locals 1

    .prologue
    .line 489
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 490
    return-void
.end method

.method public searchANRSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "srecid"    # Ljava/lang/String;

    .prologue
    .line 885
    const/4 v0, 0x1

    .line 887
    .local v0, "isANRSpaceFull":Z
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_0

    .line 888
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchANRSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 894
    .end local v0    # "isANRSpaceFull":Z
    .local v1, "isANRSpaceFull":I
    :goto_0
    return v1

    .line 890
    .end local v1    # "isANRSpaceFull":I
    .restart local v0    # "isANRSpaceFull":Z
    :cond_0
    const-string v2, " adnCache is null,can\'t searchANRSpaceWithSrecid"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v0

    .line 891
    .restart local v1    # "isANRSpaceFull":I
    goto :goto_0
.end method

.method public searchANRSpaceWithoutSrecid()Z
    .locals 3

    .prologue
    .line 872
    const/4 v0, 0x1

    .line 874
    .local v0, "isANRSpaceFull":Z
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_0

    .line 875
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchANRSpaceWithoutSrecid()Z

    move-result v0

    move v1, v0

    .line 881
    .end local v0    # "isANRSpaceFull":Z
    .local v1, "isANRSpaceFull":I
    :goto_0
    return v1

    .line 877
    .end local v1    # "isANRSpaceFull":I
    .restart local v0    # "isANRSpaceFull":Z
    :cond_0
    const-string v2, " adnCache is null,can\'t searchANRSpaceWithoutSrecid"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v0

    .line 878
    .restart local v1    # "isANRSpaceFull":I
    goto :goto_0
.end method

.method public searchEmailSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "srecid"    # Ljava/lang/String;

    .prologue
    .line 911
    const/4 v0, 0x1

    .line 913
    .local v0, "isEmailSpaceFull":Z
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_0

    .line 914
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchEmailSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 920
    .end local v0    # "isEmailSpaceFull":Z
    .local v1, "isEmailSpaceFull":I
    :goto_0
    return v1

    .line 916
    .end local v1    # "isEmailSpaceFull":I
    .restart local v0    # "isEmailSpaceFull":Z
    :cond_0
    const-string v2, " adnCache is null,can\'t searchEmailSpaceWithSrecid"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v0

    .line 917
    .restart local v1    # "isEmailSpaceFull":I
    goto :goto_0
.end method

.method public searchEmailSpaceWithoutSrecid()Z
    .locals 3

    .prologue
    .line 898
    const/4 v0, 0x1

    .line 900
    .local v0, "isEmailSpaceFull":Z
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchEmailSpaceWithoutSrecid()Z

    move-result v0

    move v1, v0

    .line 907
    .end local v0    # "isEmailSpaceFull":Z
    .local v1, "isEmailSpaceFull":I
    :goto_0
    return v1

    .line 903
    .end local v1    # "isEmailSpaceFull":I
    .restart local v0    # "isEmailSpaceFull":Z
    :cond_0
    const-string v2, " adnCache is null,can\'t searchEmailSpaceWithoutSrecid"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v0

    .line 904
    .restart local v1    # "isEmailSpaceFull":I
    goto :goto_0
.end method

.method public setIccCard(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 8
    .param p1, "card"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Card update received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 218
    if-nez p1, :cond_1

    .line 219
    const-string v6, "Card is null. Cleanup"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->cleanUp()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const/4 v5, 0x0

    .line 225
    .local v5, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    .line 226
    .local v3, "numApps":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangzhanfeng-20131130-setIccCard-numApps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "isCurrentAppFound":Z
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangzhanfeng-20131130-setIccCard-i: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 233
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangzhanfeng-20131130-setIccCard-app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 234
    if-eqz v0, :cond_8

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    .line 239
    .local v4, "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v6, :cond_3

    .line 242
    :cond_2
    const-string v6, "Card is 3G"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 243
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    .line 251
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangzhanfeng-20131130-setIccCard-type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangzhanfeng-20131130-setIccCard-mIs3gCard: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 255
    if-nez v2, :cond_5

    .line 260
    if-nez v5, :cond_4

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v6, :cond_4

    .line 262
    const-string v6, "wangzhanfeng-20131130-setIccCard-(validApp == null && type != AppType.APPTYPE_UNKNOWN) "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 263
    move-object v5, v0

    .line 266
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-ne v6, v0, :cond_5

    .line 268
    const-string v6, "Existing app found"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 269
    const/4 v2, 0x1

    .line 276
    :cond_5
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    .line 287
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangzhanfeng-20131130-setIccCard-mCurrentApp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangzhanfeng-20131130-setIccCard-isCurrentAppFound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangzhanfeng-20131130-setIccCard-validApp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 290
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v6, :cond_7

    if-nez v2, :cond_0

    .line 291
    :cond_7
    const-string v6, "wangzhanfeng-20131130-setIccCard-(mCurrentApp == null || !isCurrentAppFound) "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 292
    if-eqz v5, :cond_0

    .line 293
    const-string v6, "wangzhanfeng-20131130-setIccCard-(validApp != null)"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting currentApp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 295
    iput-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 296
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangzhanfeng-20131130-setIccCard-SetmAdnCache-mAdnCache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 10
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 956
    sget-object v9, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 957
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 959
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 960
    .local v8, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 961
    .local v7, "response":Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v3, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/4 v2, 0x0

    const/16 v4, 0xff

    move v1, p1

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(IILcom/android/internal/telephony/uicc/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    .line 964
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 968
    :goto_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    return v0

    .line 966
    :cond_1
    :try_start_1
    const-string v0, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 968
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "response":Landroid/os/Message;
    .end local v8    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_0
    const/4 v2, 0x0

    .line 531
    .local v2, "pbrIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 535
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 537
    sget-object v8, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 538
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 540
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 541
    .local v7, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 542
    .local v6, "response":Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v3, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .local v3, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v4, p4, p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .local v4, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(IILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)[I

    .line 546
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 550
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    return v0

    .line 548
    :cond_1
    :try_start_1
    const-string v0, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 550
    .end local v3    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v4    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v6    # "response":Landroid/os/Message;
    .end local v7    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 1
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 480
    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    goto :goto_0
.end method

.method public updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "oldEmail"    # Ljava/lang/String;
    .param p5, "oldAnr"    # Ljava/lang/String;
    .param p6, "newTag"    # Ljava/lang/String;
    .param p7, "newPhoneNumber"    # Ljava/lang/String;
    .param p8, "newEmail"    # Ljava/lang/String;
    .param p9, "newAnr"    # Ljava/lang/String;
    .param p10, "srecid"    # Ljava/lang/String;
    .param p11, "pin2"    # Ljava/lang/String;

    .prologue
    .line 657
    const-string v4, "updatepbRecordsInEfBySearch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 664
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srecid= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pin2= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch oldTag= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oldPhoneNumber= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oldEmail= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oldAnr= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch newTag= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newPhoneNumber= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newEmail= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newAnr= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 668
    move-object/from16 v24, p10

    .line 669
    .local v24, "oldSrecid":Ljava/lang/String;
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    if-nez p4, :cond_3

    const-string p4, ""

    :cond_3
    if-nez p5, :cond_4

    const-string p5, ""

    .line 670
    :cond_4
    if-nez p6, :cond_5

    const-string p6, ""

    :cond_5
    if-nez p7, :cond_6

    const-string p7, ""

    :cond_6
    if-nez p8, :cond_7

    const-string p8, ""

    :cond_7
    if-nez p9, :cond_8

    const-string p9, ""

    .line 672
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->changeEfForIccType(I)I

    move-result p1

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-updatepbRecordsInEfBySearch efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 675
    const/4 v4, 0x6

    new-array v13, v4, [I

    .line 676
    .local v13, "index":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 682
    const/16 v23, 0x0

    .line 683
    .local v23, "oldEmails":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 684
    const/4 v4, 0x0

    aput-object p4, v23, v4

    .line 685
    const/16 v22, 0x0

    .line 686
    .local v22, "newEmails":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 687
    const/4 v4, 0x0

    aput-object p8, v22, v4

    .line 688
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v23

    move-object/from16 v3, p5

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .local v6, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, v22

    move-object/from16 v3, p9

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .local v7, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-nez v4, :cond_9

    .line 692
    const-string v4, "Failure while trying to update anr due to uninitialised adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 693
    const-string v4, ""

    .line 787
    :goto_0
    return-object v4

    .line 696
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v21

    .line 697
    .local v21, "extensionEF":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-updatepbRecordsInEfBySearch extensionEF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 698
    const/4 v8, 0x0

    .line 699
    .local v8, "ext1Size":I
    if-lez v21, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    if-eqz v4, :cond_a

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    const/4 v5, 0x2

    aget v8, v4, v5

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-updatepbRecordsInEfBySearch ext1Size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 705
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move/from16 v5, p1

    move-object/from16 v9, p10

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchIndex(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)[I

    move-result-object v13

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-updatepbRecordsInEfBySearch index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 709
    const/4 v4, 0x2

    new-array v0, v4, [B

    move-object/from16 v25, v0

    .line 710
    .local v25, "recid":[B
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    aget v5, v13, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v25, v4

    .line 711
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x5

    aget v5, v13, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v25, v4

    .line 713
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p10

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-updatepbRecordsInEfBySearch srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 715
    if-nez p10, :cond_b

    .line 717
    const-string p10, ""

    .line 719
    :cond_b
    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_d

    .line 721
    const-string v4, "wzf-updatepbRecordsInEfBySearch-(efid !=IccConstants.EF_FDN)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    aget v4, v13, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 727
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.adn_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.adnExt1_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.anrExt1_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.pbr_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x5

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 731
    const-string p10, ""

    move-object/from16 v4, p10

    .line 732
    goto/16 :goto_0

    .line 737
    :cond_d
    const-string v4, "wzf-updatepbRecordsInEfBySearch-(efid ==IccConstants.EF_FDN)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    aget v4, v13, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 740
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.adn_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.pbr_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x5

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 742
    const-string p10, ""

    move-object/from16 v4, p10

    .line 743
    goto/16 :goto_0

    .line 747
    :cond_f
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_10

    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v4, :cond_12

    :cond_10
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    .line 749
    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 751
    .local v26, "success":Z
    if-nez v26, :cond_11

    const-string p10, ""

    .line 752
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "success= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v4, p10

    .line 753
    goto/16 :goto_0

    .line 758
    .end local v26    # "success":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    aget v4, v13, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    .line 760
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updatepbRecordsInEfBySearch index[adnCache.email_Index]= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 761
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updatepbRecordsInEfBySearch index[adnCache.anr_Index]= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 762
    const-string p10, ""

    move-object/from16 v4, p10

    .line 763
    goto/16 :goto_0

    :cond_14
    move-object/from16 v14, p0

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v19, v13

    move-object/from16 v20, p11

    .line 765
    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnEmailRecordsInEfByIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v27

    .line 766
    .local v27, "usimsuccess":Z
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_17

    .line 769
    const/16 v20, 0x0

    .line 770
    .local v20, "adnSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    if-nez v4, :cond_15

    .line 772
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    .line 774
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    if-eqz v4, :cond_16

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    const/4 v5, 0x2

    aget v20, v4, v5

    .line 778
    :cond_16
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, v22

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    invoke-direct/range {v14 .. v19}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .local v14, "newusimAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-object/from16 v16, v6

    move-object/from16 v17, v14

    move-object/from16 v18, v13

    move-object/from16 v19, v24

    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateusimphonebook(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[ILjava/lang/String;I)Z

    .line 782
    .end local v14    # "newusimAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v20    # "adnSize":I
    :cond_17
    if-nez v27, :cond_18

    .line 784
    const-string p10, ""

    .line 786
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "usimsuccess= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v4, p10

    .line 787
    goto/16 :goto_0
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "status"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 1074
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1076
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
