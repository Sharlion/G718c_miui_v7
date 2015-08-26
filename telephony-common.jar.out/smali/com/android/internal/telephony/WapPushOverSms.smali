.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mOriginatingAddress:Ljava/lang/String;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mimeType:Ljava/lang/String;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

.field private siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

.field private slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v2, 0x1388

    iput v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 82
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 87
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 176
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 82
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 194
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 195
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 196
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/WapPushOverSms;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    return-object v0
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 1
    .param p1, "pdu"    # [B

    .prologue
    .line 209
    const/4 v0, -0x1

    return v0
.end method

.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 31
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 222
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Rx: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v15, 0x0

    .line 226
    .local v15, "index":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "index":I
    .local v16, "index":I
    :try_start_0
    aget-byte v28, p1, v15
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 227
    .local v25, "transactionId":I
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "index":I
    .restart local v15    # "index":I
    :try_start_1
    aget-byte v28, p1, v16

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 229
    .local v21, "pduType":I
    const/16 v28, 0x6

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    const/16 v28, 0x7

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x10e004e

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    .line 233
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v15, v0, :cond_0

    .line 234
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "index":I
    .restart local v16    # "index":I
    :try_start_2
    aget-byte v28, p1, v15
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 235
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "index":I
    .restart local v15    # "index":I
    :try_start_3
    aget-byte v28, p1, v16

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 237
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "index = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " PDU Type = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " transactionID = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v28, 0x6

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    const/16 v28, 0x7

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 243
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 v28, 0x1

    .line 395
    .end local v21    # "pduType":I
    .end local v25    # "transactionId":I
    :goto_0
    return v28

    .line 247
    .restart local v21    # "pduType":I
    .restart local v25    # "transactionId":I
    :cond_0
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/16 v28, 0x1

    goto :goto_0

    .line 252
    :cond_1
    new-instance v20, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 260
    .local v20, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v28

    if-nez v28, :cond_2

    .line 261
    const-string v28, "WAP PUSH"

    const-string v29, "Received PDU. Header Length error."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 v28, 0x2

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v13, v0

    .line 265
    .local v13, "headerLength":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v28

    add-int v15, v15, v28

    .line 267
    move v14, v15

    .line 281
    .local v14, "headerStartIndex":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v28

    if-nez v28, :cond_3

    .line 282
    const-string v28, "WAP PUSH"

    const-string v29, "Received PDU. Header Content-Type error."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/16 v28, 0x2

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v19

    .line 287
    .local v19, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    .line 288
    .local v6, "binaryContentType":J
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v28

    add-int v15, v15, v28

    .line 290
    new-array v12, v13, [B

    .line 291
    .local v12, "header":[B
    const/16 v28, 0x0

    array-length v0, v12

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v14, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    if-eqz v19, :cond_6

    const-string v28, "application/vnd.wap.coc"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 296
    move-object/from16 v18, p1

    .line 309
    .local v18, "intentData":[B
    :goto_1
    add-int v28, v15, v13

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 310
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v15, v0

    .line 311
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 312
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v26

    .line 313
    .local v26, "wapAppId":Ljava/lang/String;
    if-nez v26, :cond_4

    .line 314
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 317
    :cond_4
    if-nez v19, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "contentType":Ljava/lang/String;
    :goto_2
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "appid found: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ":"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 322
    const/16 v24, 0x1

    .line 323
    .local v24, "processFurther":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v27, v0

    .line 325
    .local v27, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v27, :cond_8

    .line 326
    const-string v28, "WAP PUSH"

    const-string v29, "wap push manager not found!"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 345
    :cond_5
    :goto_3
    if-nez v24, :cond_9

    .line 346
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 298
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v18    # "intentData":[B
    .end local v24    # "processFurther":Z
    .end local v26    # "wapAppId":Ljava/lang/String;
    .end local v27    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_6
    add-int v10, v14, v13

    .line 299
    .local v10, "dataIndex":I
    :try_start_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    sub-int v28, v28, v10

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 300
    .restart local v18    # "intentData":[B
    const/16 v28, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 391
    .end local v6    # "binaryContentType":J
    .end local v10    # "dataIndex":I
    .end local v12    # "header":[B
    .end local v13    # "headerLength":I
    .end local v14    # "headerStartIndex":I
    .end local v18    # "intentData":[B
    .end local v19    # "mimeType":Ljava/lang/String;
    .end local v20    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v21    # "pduType":I
    :catch_0
    move-exception v4

    .line 394
    .end local v25    # "transactionId":I
    .local v4, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/16 v28, 0x2

    goto/16 :goto_0

    .end local v4    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6    # "binaryContentType":J
    .restart local v12    # "header":[B
    .restart local v13    # "headerLength":I
    .restart local v14    # "headerStartIndex":I
    .restart local v18    # "intentData":[B
    .restart local v19    # "mimeType":Ljava/lang/String;
    .restart local v20    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v21    # "pduType":I
    .restart local v25    # "transactionId":I
    .restart local v26    # "wapAppId":Ljava/lang/String;
    :cond_7
    move-object/from16 v9, v19

    .line 317
    goto/16 :goto_2

    .line 328
    .restart local v9    # "contentType":Ljava/lang/String;
    .restart local v24    # "processFurther":Z
    .restart local v27    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_8
    :try_start_6
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v17, "intent":Landroid/content/Intent;
    const-string v28, "transactionId"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string v28, "pduType"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string v28, "header"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 332
    const-string v28, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 333
    const-string v28, "contentTypeParameters"

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 335
    const-string v28, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v9, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v23

    .line 339
    .local v23, "procRet":I
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "procRet:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 340
    and-int/lit8 v28, v23, 0x1

    if-lez v28, :cond_5

    const v28, 0x8000

    and-int v28, v28, v23

    if-nez v28, :cond_5

    .line 342
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 348
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v23    # "procRet":I
    .end local v27    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v11

    .line 349
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v28, "WAP PUSH"

    const-string v29, "remote func failed..."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v24    # "processFurther":Z
    .end local v26    # "wapAppId":Ljava/lang/String;
    :cond_9
    const-string v28, "WAP PUSH"

    const-string v29, "fall back to existing handler"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-nez v19, :cond_a

    .line 355
    const-string v28, "WAP PUSH"

    const-string v29, "Header Content-Type error."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 362
    :cond_a
    const-string v28, "application/vnd.wap.mms-message"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 363
    const-string v22, "android.permission.RECEIVE_MMS"

    .line 364
    .local v22, "permission":Ljava/lang/String;
    const/16 v5, 0x12

    .line 370
    .local v5, "appOp":I
    :goto_5
    new-instance v17, Landroid/content/Intent;

    const-string v28, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v28, "transactionId"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string v28, "pduType"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v28, "header"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 375
    const-string v28, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 376
    const-string v28, "contentTypeParameters"

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 377
    const-string v28, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v8

    .line 382
    .local v8, "componentName":Landroid/content/ComponentName;
    if-eqz v8, :cond_b

    .line 384
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 385
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Delivering MMS to: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_b
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 390
    const/16 v28, -0x1

    goto/16 :goto_0

    .line 366
    .end local v5    # "appOp":I
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v22    # "permission":Ljava/lang/String;
    :cond_c
    const-string v22, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 367
    .restart local v22    # "permission":Ljava/lang/String;
    const/16 v5, 0x13

    .restart local v5    # "appOp":I
    goto/16 :goto_5

    .line 391
    .end local v5    # "appOp":I
    .end local v6    # "binaryContentType":J
    .end local v12    # "header":[B
    .end local v13    # "headerLength":I
    .end local v14    # "headerStartIndex":I
    .end local v15    # "index":I
    .end local v18    # "intentData":[B
    .end local v19    # "mimeType":Ljava/lang/String;
    .end local v20    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v21    # "pduType":I
    .end local v22    # "permission":Ljava/lang/String;
    .end local v25    # "transactionId":I
    .restart local v16    # "index":I
    :catch_2
    move-exception v4

    move/from16 v15, v16

    .end local v16    # "index":I
    .restart local v15    # "index":I
    goto/16 :goto_4
.end method

.method public dispatchWapPdu([BLjava/lang/String;)I
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    .line 203
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchWapPdu,mOriginatingAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 162
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 163
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 169
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method
