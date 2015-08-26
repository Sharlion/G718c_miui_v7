.class public Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_ANR_EXT_RECORD_LOAD_DONE:I = 0xd

.field static final EVENT_ANR_LOAD_ALL_DONE:I = 0xc

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x9

.field static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x7

.field static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0xb

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordLoader"


# instance fields
.field Anriniap:I

.field EmailadnNumber:I

.field Emailiniap:I

.field IapforAnr:I

.field IapforEmail:I

.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field anrExtRecId:I

.field anradnNumber:I

.field ef:I

.field extInx:I

.field extRecId:I

.field extensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field pendingExtLoads:I

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field sfi:I

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->Emailiniap:I

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->Anriniap:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->sfi:I

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 99
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 377
    const/4 v12, 0x0

    .line 381
    .local v12, "ext1MaxRecSize":I
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 713
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    if-nez v1, :cond_1

    .line 715
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 718
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 720
    :cond_1
    :goto_1
    return-void

    .line 383
    :pswitch_1
    :try_start_1
    const-string v1, "AdnRecordLoader"

    const-string v2, "got EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 385
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 387
    .local v7, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 388
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 698
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v11

    .line 699
    .local v11, "exc":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 701
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "wzf-20131129-exception "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 708
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 392
    .end local v11    # "exc":Ljava/lang/RuntimeException;
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object/from16 v16, v0

    .line 400
    .local v16, "recordSize":[I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-nez v1, :cond_4

    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    const/4 v2, 0x2

    aget v2, v16, v2

    if-le v1, v2, :cond_4

    .line 401
    :cond_3
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error  1recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v16, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 405
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-lez v1, :cond_6

    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    const/4 v2, 0x2

    aget v2, v16, v2

    if-le v1, v2, :cond_6

    .line 406
    :cond_5
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error  2recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extRecId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v16, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 411
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-nez v1, :cond_8

    .line 412
    const/4 v1, 0x0

    aget v1, v16, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    invoke-virtual {v7, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(II)[B

    move-result-object v4

    .line 413
    .local v4, "data":[B
    if-nez v4, :cond_7

    .line 414
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 419
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 421
    .end local v4    # "data":[B
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_9

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_a

    .line 422
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 424
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    goto/16 :goto_0

    .line 428
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-eqz v1, :cond_0

    .line 429
    const/4 v1, 0x0

    aget v1, v16, v1

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEXT1String(I)[B

    move-result-object v4

    .line 431
    .restart local v4    # "data":[B
    if-nez v4, :cond_b

    .line 432
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 436
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 439
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 444
    .end local v4    # "data":[B
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "recordSize":[I
    :pswitch_2
    const-string v1, "AdnRecordLoader"

    const-string v2, "got EVENT_UPDATE_RECORD_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 446
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    .line 447
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 450
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 451
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 455
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 456
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 457
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn email record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 460
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 461
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 464
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string v1, "AdnRecordLoader"

    const-string v2, "got EVENT_UPDATE_ANR_RECORD_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 467
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 468
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn anr record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 471
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 472
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 475
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 476
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_f

    .line 477
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn anr record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 480
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 481
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 485
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 486
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 488
    .restart local v4    # "data":[B
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_10

    .line 489
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 499
    :cond_10
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    invoke-direct {v7, v1, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 500
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 503
    sget-boolean v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->is3GPB:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 506
    sget-boolean v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isReading3PB_EXT1:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 508
    sget v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1RecMaxSize:I

    .line 524
    :cond_11
    :goto_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    sget-boolean v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isReading3PB_EXT1:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    const/16 v2, 0x6f4a

    if-ne v1, v2, :cond_13

    .line 531
    :cond_12
    iget v1, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    if-le v12, v1, :cond_0

    .line 533
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 543
    :cond_13
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 515
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    const/16 v2, 0x6f4a

    if-ne v1, v2, :cond_11

    .line 517
    sget v12, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    goto :goto_2

    .line 553
    .end local v4    # "data":[B
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 554
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 555
    .restart local v4    # "data":[B
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 557
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_15

    .line 558
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 561
    :cond_15
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN extension EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    .line 568
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 573
    .end local v4    # "data":[B
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "wzf-EVENT_ADN_LOAD_ALL_DONE "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 575
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 577
    .local v10, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_16

    .line 578
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 581
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 583
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 585
    sget-boolean v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->is3GPB:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 588
    sget-boolean v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isReading3PB_EXT1:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 590
    sget v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1RecMaxSize:I

    .line 604
    :cond_17
    :goto_3
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, "s":I
    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 606
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v7, v2, v3, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 607
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ADN_LOAD_ALL_DONE-i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    const/16 v2, 0x6f3a

    if-ne v1, v2, :cond_18

    .line 612
    const/4 v1, 0x2

    new-array v15, v1, [B

    .line 613
    .local v15, "recid":[B
    const/4 v1, 0x0

    add-int/lit8 v2, v13, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v15, v1

    .line 614
    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-byte v2, v15, v1

    .line 615
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    .line 616
    .local v18, "srecid":Ljava/lang/String;
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ADN_LOAD_ALL_DONE-srecid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecid(Ljava/lang/String;)V

    .line 622
    .end local v15    # "recid":[B
    .end local v18    # "srecid":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 630
    sget-boolean v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isReading3PB_EXT1:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    const/16 v2, 0x6f4a

    if-ne v1, v2, :cond_1a

    .line 632
    :cond_19
    iget v1, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    if-le v12, v1, :cond_1b

    .line 634
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 644
    :cond_1a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 645
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 604
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 597
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v13    # "i":I
    .end local v17    # "s":I
    :cond_1c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    const/16 v2, 0x6f4a

    if-ne v1, v2, :cond_17

    .line 599
    sget v12, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    goto/16 :goto_3

    .line 654
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :pswitch_9
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "EVENT_ANR_LOAD_ALL_DONE "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 656
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v14, v0

    .line 658
    .local v14, "mAnrFileRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1d

    .line 659
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 661
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 663
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 665
    const/4 v8, 0x0

    .line 666
    .local v8, "anrRec":[B
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 667
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "anrRec":[B
    check-cast v8, [B

    .line 668
    .restart local v8    # "anrRec":[B
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    invoke-direct {v7, v1, v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(I[B)V

    .line 669
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 671
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    const/16 v5, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 666
    :cond_1e
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 680
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "anrRec":[B
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "i":I
    .end local v14    # "mAnrFileRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 681
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 682
    .restart local v4    # "data":[B
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 684
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1f

    .line 685
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 687
    :cond_1f
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR extention EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendAnrExtRecord([B)V

    .line 694
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public loadAllAnrFromEF(IILandroid/os/Message;)V
    .locals 2
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 140
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    .line 141
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    .line 142
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 148
    return-void
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 127
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    .line 128
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    .line 129
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 135
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 108
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    .line 109
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    .line 110
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    .line 111
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 117
    return-void
.end method

.method public updateAdnEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "ef"    # I
    .param p4, "extensionEF"    # I
    .param p5, "recordNumber"    # I
    .param p6, "extRecId"    # I
    .param p7, "pin2"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIII",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 185
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 187
    .local v8, "recordSize":[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p5, v1, :cond_2

    .line 188
    :cond_0
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAdnEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v8    # "recordSize":[I
    :catch_0
    move-exception v7

    .line 222
    .local v7, "exc":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 231
    .end local v7    # "exc":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 192
    .restart local v8    # "recordSize":[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v1, v8, v1

    invoke-virtual {p2, v1, p6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(II)[B

    move-result-object v4

    .line 193
    .local v4, "data":[B
    if-nez v4, :cond_3

    .line 194
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateAdnEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p3

    move v3, p5

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 200
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 203
    const/16 v1, 0xff

    if-ne p6, v1, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 204
    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "recordSize":[I
    check-cast v8, [I

    .line 205
    .restart local v8    # "recordSize":[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p6, v1, :cond_6

    .line 206
    :cond_5
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAdnEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extRecId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_6
    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEXT1String(I)[B

    move-result-object v4

    .line 211
    if-nez v4, :cond_7

    .line 212
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateAdnEF, data == null,1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p4

    move v3, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 219
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateAnrEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "ef"    # I
    .param p4, "extensionEF"    # I
    .param p5, "recordNumber"    # I
    .param p6, "anradnNumber"    # I
    .param p7, "sfi"    # I
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "anrExtRecId"    # I
    .param p10, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIIII",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 318
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 320
    .local v8, "recordSizeAnr":[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p5, v1, :cond_2

    .line 321
    :cond_0
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAnrEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v8    # "recordSizeAnr":[I
    :catch_0
    move-exception v7

    .line 355
    .local v7, "exc":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 358
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 364
    .end local v7    # "exc":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 325
    .restart local v8    # "recordSizeAnr":[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v2, v8, v1

    move-object v1, p2

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAnrString(IIIII)[B

    move-result-object v4

    .line 326
    .local v4, "data":[B
    if-nez v4, :cond_3

    .line 327
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateAnrEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p3

    move v3, p5

    move-object/from16 v5, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 333
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 336
    const/16 v1, 0xff

    move/from16 v0, p9

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 337
    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "recordSizeAnr":[I
    check-cast v8, [I

    .line 338
    .restart local v8    # "recordSizeAnr":[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget v1, v8, v1

    move/from16 v0, p9

    if-le v0, v1, :cond_6

    .line 339
    :cond_5
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAnrEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "anrExtRecId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSizeAnr[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_6
    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAnrEXT1String(I)[B

    move-result-object v4

    .line 344
    if-nez v4, :cond_7

    .line 345
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateAnrEF, data == null,1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p4

    move/from16 v3, p9

    move-object/from16 v5, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 352
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 165
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    .line 166
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    .line 167
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    .line 168
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 169
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 173
    return-void
.end method

.method public updateEmailEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "ef"    # I
    .param p4, "recordNumber"    # I
    .param p5, "EmailadnNumber"    # I
    .param p6, "sfi"    # I
    .param p7, "pin2"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIII",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 242
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 244
    .local v8, "recordSizeEmail":[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p4, v1, :cond_2

    .line 245
    :cond_0
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateEmailEF, recordSizeEmail.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSizeEmail[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v8    # "recordSizeEmail":[I
    :catch_0
    move-exception v7

    .line 260
    .local v7, "exc":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 269
    .end local v7    # "exc":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 249
    .restart local v8    # "recordSizeEmail":[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v1, v8, v1

    invoke-virtual {p2, v1, p4, p5, p6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEmailString(IIII)[B

    move-result-object v4

    .line 250
    .local v4, "data":[B
    if-nez v4, :cond_3

    .line 251
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateEmailEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p3

    move v3, p4

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 258
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateIapEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "Emailiniap"    # I
    .param p4, "Anriniap"    # I
    .param p5, "IapforEmail"    # I
    .param p6, "IapforAnr"    # I
    .param p7, "ef"    # I
    .param p8, "recordNumber"    # I
    .param p9, "pin2"    # Ljava/lang/String;
    .param p10, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIIIII",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "recordSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 279
    :try_start_0
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 281
    .local v8, "recordSizeIap":[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    move/from16 v0, p8

    if-le v0, v1, :cond_2

    .line 282
    :cond_0
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateIapEF, recordSizeIap.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSizeIap[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v8    # "recordSizeIap":[I
    :catch_0
    move-exception v7

    .line 298
    .local v7, "exc":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 307
    .end local v7    # "exc":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 286
    .restart local v8    # "recordSizeIap":[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v2, v8, v1

    move-object v1, p2

    move v3, p5

    move v4, p6

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildIapString(IIIII)[B

    move-result-object v4

    .line 287
    .local v4, "data":[B
    if-nez v4, :cond_3

    .line 288
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateIapEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v5, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 295
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
