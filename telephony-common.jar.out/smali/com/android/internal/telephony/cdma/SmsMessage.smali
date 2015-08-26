.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B

.field private static final VDBG:Z


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 121
    return-void
.end method

.method static ParseExtraInfo(Lcom/android/internal/telephony/cdma/sms/BearerData;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "bearerData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1257
    if-nez p1, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    const-string v3, "priority"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1259
    .local v1, "priority":I
    if-eq v1, v6, :cond_2

    .line 1261
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1262
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1263
    const-string v3, "hubo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "priority get is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_2
    const-string v3, "vp"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1266
    .local v2, "validPeroid":I
    if-eq v2, v6, :cond_3

    .line 1268
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 1269
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    .line 1270
    const-string v3, "hubo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validityPeriod get is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_3
    const-string v3, "callbacknumber"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, "callBackNumber":Ljava/lang/String;
    const-string v3, "hubo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callBackNumber get is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    if-eqz v0, :cond_0

    .line 1279
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_0
.end method

.method public static calculateConcatLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 597
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcConcatTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 591
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateNoHeadLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 601
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcNoHeadTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private convertDtmfToAscii(B)B
    .locals 1
    .param p1, "dtmfDigit"    # B

    .prologue
    .line 1436
    packed-switch p1, :pswitch_data_0

    .line 1457
    const/16 v0, 0x20

    .line 1461
    .local v0, "asciiDigit":B
    :goto_0
    return v0

    .line 1439
    .end local v0    # "asciiDigit":B
    :pswitch_0
    const/16 v0, 0x30

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1441
    .end local v0    # "asciiDigit":B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1442
    .end local v0    # "asciiDigit":B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1443
    .end local v0    # "asciiDigit":B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1444
    .end local v0    # "asciiDigit":B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1445
    .end local v0    # "asciiDigit":B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1446
    .end local v0    # "asciiDigit":B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1447
    .end local v0    # "asciiDigit":B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1448
    .end local v0    # "asciiDigit":B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1449
    .end local v0    # "asciiDigit":B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1450
    .end local v0    # "asciiDigit":B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1451
    .end local v0    # "asciiDigit":B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1452
    .end local v0    # "asciiDigit":B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1453
    .end local v0    # "asciiDigit":B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1454
    .end local v0    # "asciiDigit":B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1455
    .end local v0    # "asciiDigit":B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static createFromCBSPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 5
    .param p0, "pdu"    # [B

    .prologue
    const/4 v4, 0x0

    .line 144
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 146
    .local v1, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing : "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-object v4

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 5
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 270
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 272
    .local v0, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIndexOnIcc:I

    .line 277
    aget-byte v3, p1, v4

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 278
    const-string v3, "SmsMessage"

    const-string v4, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    .line 297
    .end local v0    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v0

    .line 281
    .restart local v0    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_0
    aget-byte v3, p1, v4

    and-int/lit8 v3, v3, 0x7

    iput v3, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    .line 287
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v2, v3, 0xff

    .line 291
    .local v2, "size":I
    new-array v1, v2, [B

    .line 292
    .local v1, "pdu":[B
    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V

    .line 296
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 6
    .param p0, "pdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 132
    .local v2, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    .end local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v2

    .line 134
    .restart local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed: "

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 136
    goto :goto_0

    .line 137
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed with out of memory: "

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 139
    goto :goto_0
.end method

.method private createPdu()V
    .locals 8

    .prologue
    .line 1389
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1390
    .local v3, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1391
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1392
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1395
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1396
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1397
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1399
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1400
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1401
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1402
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1403
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1404
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1406
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1408
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1409
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1410
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1412
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1413
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1414
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1424
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    :goto_0
    return-void

    .line 1425
    :catch_0
    move-exception v4

    .line 1426
    .local v4, "ex":Ljava/io/IOException;
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    .line 1125
    const-class v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v3

    :try_start_0
    const-string v2, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1126
    .local v0, "msgId":I
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, "nextMsgId":Ljava/lang/String;
    const-string v2, "persist.radio.cdma.msgid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v2, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    const-string v2, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string v2, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    :cond_0
    monitor-exit v3

    return v0

    .line 1125
    .end local v1    # "nextMsgId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z

    .prologue
    .line 476
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "priority"    # I

    .prologue
    .line 509
    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "extraInfo"    # Landroid/os/Bundle;

    .prologue
    .line 482
    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    const/4 v3, 0x0

    .line 417
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 418
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 419
    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 420
    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 422
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 423
    .local v1, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 425
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 426
    .local v2, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 427
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 428
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 429
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 431
    invoke-static {p1, p4, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    .line 338
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "priority"    # I

    .prologue
    .line 364
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 365
    :cond_0
    const/4 v1, 0x0

    .line 371
    :goto_0
    return-object v1

    .line 368
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 369
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 370
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 371
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "extraInfo"    # Landroid/os/Bundle;

    .prologue
    .line 384
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 385
    :cond_0
    const/4 v1, 0x0

    .line 391
    :goto_0
    return-object v1

    .line 388
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 389
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 390
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 391
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "statusReportRequested"    # Z

    .prologue
    const/4 v4, 0x0

    .line 456
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 458
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 459
    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 461
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 462
    .local v1, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 464
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 465
    .local v2, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 466
    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 467
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 468
    iput-object p2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 470
    invoke-static {p1, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "SmsMessage"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 10
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 162
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 163
    .local v7, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 164
    .local v5, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 165
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 172
    .local v8, "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 174
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_1

    .line 175
    const/4 v9, 0x1

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 185
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 188
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "addressDigitMode":I
    and-int/lit16 v9, v1, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 190
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 191
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 192
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 193
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 194
    .local v2, "count":B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 195
    new-array v4, v2, [B

    .line 197
    .local v4, "data":[B
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 198
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 201
    if-nez v1, :cond_0

    .line 202
    aget-byte v9, v4, v6

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v9

    aput-byte v9, v4, v6

    .line 197
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 178
    .end local v1    # "addressDigitMode":I
    .end local v2    # "count":B
    .end local v4    # "data":[B
    .end local v6    # "index":I
    :cond_1
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v9, :cond_2

    .line 180
    const/4 v9, 0x2

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 182
    :cond_2
    const/4 v9, 0x0

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 206
    .restart local v1    # "addressDigitMode":I
    .restart local v2    # "count":B
    .restart local v4    # "data":[B
    .restart local v6    # "index":I
    :cond_3
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 208
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 209
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 210
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 212
    if-gez v2, :cond_4

    .line 213
    const/4 v2, 0x0

    .line 218
    :cond_4
    new-array v4, v2, [B

    .line 220
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_5

    .line 221
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 224
    :cond_5
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 234
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .local v3, "countInt":I
    if-gez v3, :cond_6

    .line 236
    const/4 v3, 0x0

    .line 239
    :cond_6
    new-array v4, v3, [B

    .line 240
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_7

    .line 241
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 240
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 244
    :cond_7
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 247
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 248
    iput-object v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 249
    iput-object v0, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 250
    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 253
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 255
    return-object v7
.end method

.method private parsePdu([B)V
    .locals 10
    .param p1, "pdu"    # [B

    .prologue
    .line 673
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 674
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 677
    .local v3, "dis":Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 678
    .local v4, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 681
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 682
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 683
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 685
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 686
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 687
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 688
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 690
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 691
    .local v6, "length":I
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 694
    array-length v7, p1

    if-le v6, v7, :cond_0

    .line 695
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > pdu len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    .end local v6    # "length":I
    :catch_0
    move-exception v5

    .line 720
    .local v5, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 699
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v6    # "length":I
    :cond_0
    :try_start_1
    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 700
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 702
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 704
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 705
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 706
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 709
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 711
    .local v2, "bearerDataLength":I
    array-length v7, p1

    if-le v2, v7, :cond_1

    .line 712
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > pdu len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    .end local v2    # "bearerDataLength":I
    .end local v6    # "length":I
    :catch_1
    move-exception v5

    .line 723
    .local v5, "ex":Ljava/lang/Exception;
    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 728
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 729
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 730
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 732
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 733
    return-void

    .line 716
    .restart local v2    # "bearerDataLength":I
    .restart local v6    # "length":I
    :cond_1
    :try_start_2
    new-array v7, v2, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 717
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 718
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private parsePduFromEfRecord([B)V
    .locals 24
    .param p1, "pdu"    # [B

    .prologue
    .line 739
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 740
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 741
    .local v8, "dis":Ljava/io/DataInputStream;
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 742
    .local v9, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 743
    .local v2, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 746
    .local v17, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 748
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v21

    if-lez v21, :cond_9

    .line 749
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 750
    .local v14, "parameterId":I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v15

    .line 751
    .local v15, "parameterLen":I
    new-array v13, v15, [B

    .line 753
    .local v13, "parameterData":[B
    packed-switch v14, :pswitch_data_0

    .line 853
    new-instance v21, Ljava/lang/Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "unsupported parameterId ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    .end local v13    # "parameterData":[B
    .end local v14    # "parameterId":I
    .end local v15    # "parameterLen":I
    :catch_0
    move-exception v10

    .line 859
    .local v10, "ex":Ljava/lang/Exception;
    const-string v21, "SmsMessage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 864
    iput-object v2, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 865
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 866
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 867
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSmsFromEf()V

    .line 873
    return-void

    .line 760
    .restart local v13    # "parameterData":[B
    .restart local v14    # "parameterId":I
    .restart local v15    # "parameterLen":I
    :pswitch_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 761
    const-string v21, "SmsMessage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "teleservice = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 768
    :pswitch_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    goto/16 :goto_0

    .line 772
    :pswitch_2
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 773
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 774
    .local v3, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 775
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 776
    const/4 v12, 0x0

    .line 777
    .local v12, "numberType":I
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 778
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 779
    iput v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 781
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 782
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 785
    :cond_1
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 787
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 788
    .local v7, "data":[B
    const/4 v4, 0x0

    .line 790
    .local v4, "b":B
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 792
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 793
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    and-int/lit8 v21, v21, 0xf

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 796
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v7, v11

    .line 792
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 798
    .end local v11    # "index":I
    :cond_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 799
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 800
    const/4 v11, 0x0

    .restart local v11    # "index":I
    :goto_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 801
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 802
    aput-byte v4, v7, v11

    .line 800
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 805
    .end local v11    # "index":I
    :cond_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 806
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v12, v0, :cond_5

    .line 807
    const-string v21, "SmsMessage"

    const-string v22, "TODO: Originating Addr is email id"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_4
    :goto_4
    iput-object v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 818
    const-string v21, "SmsMessage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Originating Addr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 809
    :cond_5
    const-string v21, "SmsMessage"

    const-string v22, "TODO: Originating Addr is data network address"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 812
    :cond_6
    const-string v21, "SmsMessage"

    const-string v22, "Originating Addr is of incorrect type"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 815
    :cond_7
    const-string v21, "SmsMessage"

    const-string v22, "Incorrect Digit mode"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 822
    .end local v3    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v4    # "b":B
    .end local v7    # "data":[B
    .end local v12    # "numberType":I
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 823
    new-instance v18, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 824
    .local v18, "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 825
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 826
    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    .line 827
    .local v19, "subAddrLen":I
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 828
    .local v20, "subdata":[B
    const/4 v11, 0x0

    .restart local v11    # "index":I
    :goto_5
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 829
    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 831
    .restart local v4    # "b":B
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v20, v11

    .line 828
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 833
    .end local v4    # "b":B
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto/16 :goto_0

    .line 836
    .end local v11    # "index":I
    .end local v18    # "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v19    # "subAddrLen":I
    .end local v20    # "subdata":[B
    :pswitch_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 837
    new-instance v16, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 838
    .local v16, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    goto/16 :goto_0

    .line 841
    .end local v16    # "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 842
    new-instance v6, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v6, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 843
    .local v6, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 844
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 845
    iget-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 846
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    goto/16 :goto_0

    .line 849
    .end local v6    # "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 850
    iput-object v13, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto/16 :goto_0

    .line 856
    .end local v13    # "parameterData":[B
    .end local v14    # "parameterId":I
    .end local v15    # "parameterLen":I
    :cond_9
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 857
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .prologue
    .line 1142
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 12
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "priority"    # I

    .prologue
    .line 1166
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 1168
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v2, :cond_0

    const/4 v7, 0x0

    .line 1251
    :goto_0
    return-object v7

    .line 1170
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1171
    .local v1, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v9, 0x2

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1173
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v9

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1175
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1176
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1177
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1178
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1179
    const/4 v9, -0x1

    if-eq p3, v9, :cond_1

    .line 1180
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1181
    iput p3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1184
    :cond_1
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1186
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 1187
    .local v4, "encodedBearerData":[B
    const-string v9, "CDMA:SMS"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1188
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MO (encoded) BearerData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MO raw BearerData = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_2
    if-nez v4, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    .line 1196
    :cond_3
    const/16 v8, 0x1002

    .line 1208
    .local v8, "teleservice":I
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1209
    .local v5, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v9, 0x0

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1210
    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1211
    iput-object v2, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1212
    const/4 v9, 0x1

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1213
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1225
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x64

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1226
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1227
    .local v3, "dos":Ljava/io/DataOutputStream;
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1228
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1229
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1230
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1231
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1232
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1233
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1234
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1235
    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v10, 0x0

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v11, v11

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1237
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1238
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1239
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1240
    array-length v9, v4

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1241
    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v3, v4, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1242
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1244
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1245
    .local v7, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1246
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1248
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v6

    .line 1249
    .local v6, "ex":Ljava/io/IOException;
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "creating SubmitPdu failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 12
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "extraInfo"    # Landroid/os/Bundle;

    .prologue
    .line 1287
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WQ2--privateGetSubmitPdu destAddrStr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 1305
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const-string v9, "SmsMessage"

    const-string v10, "WQ2--privateGetSubmitPdu destAddr end"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    if-nez v2, :cond_0

    const/4 v7, 0x0

    .line 1380
    :goto_0
    return-object v7

    .line 1308
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1309
    .local v1, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v9, 0x2

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1311
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v9

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1313
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1314
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1315
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1316
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1319
    invoke-static {v1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->ParseExtraInfo(Lcom/android/internal/telephony/cdma/sms/BearerData;Landroid/os/Bundle;)V

    .line 1321
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1324
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 1325
    .local v4, "encodedBearerData":[B
    const-string v9, "CDMA:SMS"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1326
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MO (encoded) BearerData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MO raw BearerData = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_1
    if-nez v4, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    .line 1334
    :cond_2
    const/16 v8, 0x1002

    .line 1337
    .local v8, "teleservice":I
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1338
    .local v5, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v9, 0x0

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1339
    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1340
    iput-object v2, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1341
    const/4 v9, 0x1

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1342
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1354
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x64

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1355
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1356
    .local v3, "dos":Ljava/io/DataOutputStream;
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1357
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1358
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1359
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1360
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1361
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1362
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1363
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1364
    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v10, 0x0

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v11, v11

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1366
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1367
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1368
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1369
    array-length v9, v4

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1370
    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v3, v4, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1371
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1373
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1374
    .local v7, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1375
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1377
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v6

    .line 1378
    .local v6, "ex":Ljava/io/IOException;
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "creating SubmitPdu failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const/4 v7, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCmasCategory()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->cmasCategory:I

    return v0
.end method

.method public getCmasExpireTime()J
    .locals 2

    .prologue
    .line 646
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->cmasExpireTime:J

    return-wide v0
.end method

.method public getCmasResponseType()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->cmasResponseType:I

    return v0
.end method

.method public getCmasSpecialHandling()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->cmasSpecialHandling:I

    return v0
.end method

.method getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1479
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1481
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1482
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1483
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1484
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1487
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    .line 1097
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1099
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_0
.end method

.method public getMessageCodingScheme()I
    .locals 1

    .prologue
    .line 1108
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageRef()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    return v0
.end method

.method getMessageType()I
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x1

    .line 631
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getPriorityIndicator()I
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    .line 491
    const-string v0, "SmsMessage"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public getSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method getTeleService()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    .line 527
    const-string v0, "SmsMessage"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 517
    const-string v0, "SmsMessage"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    .line 578
    const-string v0, "SmsMessage"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseBroadcastSms()Landroid/telephony/SmsCbMessage;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x2

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    .line 994
    .local v11, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    if-nez v11, :cond_0

    .line 995
    const-string v0, "SmsMessage"

    const-string v1, "BearerData.decode() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_0
    return-object v9

    .line 999
    :cond_0
    const-string v0, "CDMA:SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    const-string v0, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_1
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1004
    .local v12, "plmn":Ljava/lang/String;
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, v12}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v4, "location":Landroid/telephony/SmsCbLocation;
    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v2, 0x1

    iget v3, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget v8, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iget-object v10, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    move-object v9, v0

    goto :goto_0
.end method

.method protected parseSms()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_1

    .line 882
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BZI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 907
    const-string v0, "CDMA:SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 908
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT raw BearerData = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT (decoded) BearerData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_3

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 920
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_4

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v0, v3, :cond_4

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 930
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-ne v3, v0, :cond_5

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->priority:I

    .line 937
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_6

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->callBackNumber:Ljava/lang/String;

    .line 941
    const-string v0, "wangjun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS callBackNumber address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->callBackNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_7

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    .line 952
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasExpireTime:J

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->cmasExpireTime:J

    .line 953
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasCategory:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->cmasCategory:I

    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasResponseType:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->cmasResponseType:I

    .line 955
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasSpecialHandling:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->cmasSpecialHandling:I

    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_a

    .line 969
    const-string v1, "SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-nez v0, :cond_9

    const-string v0, "also missing"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " userData)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iput v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 981
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 983
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    .line 969
    :cond_9
    const-string v0, "does have"

    goto :goto_1

    .line 974
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 975
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 977
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v3, :cond_8

    .line 978
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method public parseSmsFromEf()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_1

    .line 1017
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1029
    const-string v0, "CDMA:SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT raw BearerData = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT (decoded) BearerData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_3

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1041
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_4

    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1043
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS originating address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-ne v5, v0, :cond_5

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->priority:I

    .line 1054
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_6

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    .line 1058
    :cond_6
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS SC timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_9

    .line 1070
    const-string v1, "SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-nez v0, :cond_8

    const-string v0, "also missing"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mUserData)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iput v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 1082
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1083
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS message body: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    .line 1070
    :cond_8
    const-string v0, "does have"

    goto :goto_1

    .line 1075
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 1076
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 1078
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v5, :cond_7

    goto :goto_2

    .line 1085
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-eqz v0, :cond_0

    .line 1086
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS payload: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected processCdmaCTWdpHeader(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 12
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1503
    const/4 v7, 0x0

    .line 1504
    .local v7, "subparamId":I
    const/4 v6, 0x0

    .line 1505
    .local v6, "subParamLen":I
    const/4 v5, 0x0

    .line 1506
    .local v5, "msgID":I
    const/4 v2, 0x0

    .line 1508
    .local v2, "decodeSuccess":Z
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1511
    .local v4, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 1512
    if-eqz v7, :cond_0

    .line 1513
    const-string v9, "SmsMessage"

    const-string v10, "Invalid WDP SubparameterId"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :goto_0
    return v8

    .line 1516
    .restart local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_0
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1517
    if-eq v6, v11, :cond_1

    .line 1518
    const-string v9, "SmsMessage"

    const-string v10, "Invalid WDP subparameter length"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :catch_0
    move-exception v3

    .line 1549
    .local v3, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v8, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CT WDP Header decode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    move v8, v2

    .line 1551
    goto :goto_0

    .line 1521
    .restart local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_1
    :try_start_1
    iget-object v10, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1522
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    shl-int/lit8 v5, v10, 0x8

    .line 1523
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    or-int/2addr v5, v10

    .line 1524
    iget-object v10, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    if-ne v11, v9, :cond_2

    :goto_2
    iput-boolean v9, v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1525
    iget-object v9, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v9, :cond_3

    .line 1526
    const-string v9, "SmsMessage"

    const-string v10, "Invalid WDP UserData header value"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v9, v8

    .line 1524
    goto :goto_2

    .line 1529
    :cond_3
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1530
    iget-object v9, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput v5, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1531
    iput v5, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 1534
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 1535
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    mul-int/lit8 v6, v9, 0x8

    .line 1536
    iget-object v9, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1537
    const/4 v0, 0x5

    .line 1538
    .local v0, "consumedBits":I
    iget-object v9, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v9, :cond_4

    .line 1539
    const-string v9, "SmsMessage"

    const-string v10, "Invalid WDP encoding"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1542
    :cond_4
    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1543
    add-int/lit8 v0, v0, 0x8

    .line 1544
    add-int/lit8 v1, v6, -0xd

    .line 1545
    .local v1, "dataBits":I
    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1546
    iget-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1547
    const/4 v2, 0x1

    goto/16 :goto_1
.end method
