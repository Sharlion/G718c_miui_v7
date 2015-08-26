.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher"

.field private static final VDBG:Z


# instance fields
.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field protected final mScpResultsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 92
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 633
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private static checkDuplicatePortOmadmWappush([BI)Z
    .locals 6
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 601
    add-int/lit8 p1, p1, 0x4

    .line 602
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 603
    .local v1, "omaPdu":[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 606
    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 609
    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v4

    .line 613
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 616
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 620
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 622
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 5
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsCbProgramData()Ljava/util/ArrayList;

    move-result-object v1

    .line 163
    .local v1, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    if-nez v1, :cond_0

    .line 164
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "handleServiceCategoryProgramData: program data list is null!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "sender"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "program_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 171
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 574
    packed-switch p0, :pswitch_data_0

    .line 585
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 578
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 582
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 570
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 425
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected calculateNoHeadLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 431
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateNoHeadLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 11
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/16 v10, 0x1005

    const/16 v9, 0x1002

    const/4 v6, 0x1

    .line 179
    if-nez p1, :cond_1

    .line 180
    const-string v6, "CdmaSMSDispatcher"

    const-string v7, "dispatchMessage: message is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v6, 0x2

    .line 277
    :cond_0
    :goto_0
    return v6

    .line 184
    :cond_1
    const-string v7, "ril.cdma.inecmmode"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "inEcm":Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 186
    const/4 v6, -0x1

    goto :goto_0

    .line 189
    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v7, :cond_3

    .line 191
    const-string v7, "CdmaSMSDispatcher"

    const-string v8, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v3, p1

    .line 196
    check-cast v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 199
    .local v3, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 200
    const-string v7, "CdmaSMSDispatcher"

    const-string v8, "Broadcast type message"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v2

    .line 202
    .local v2, "message":Landroid/telephony/SmsCbMessage;
    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V

    goto :goto_0

    .line 209
    .end local v2    # "message":Landroid/telephony/SmsCbMessage;
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 210
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_0

    .line 215
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 216
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v4

    .line 217
    .local v4, "teleService":I
    const/4 v0, 0x0

    .line 219
    .local v0, "handled":Z
    const/16 v7, 0x1003

    if-eq v7, v4, :cond_6

    const/high16 v7, 0x40000

    if-ne v7, v4, :cond_8

    .line 222
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v5

    .line 223
    .local v5, "voicemailCount":I
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 224
    const/4 v0, 0x1

    .line 240
    .end local v5    # "voicemailCount":I
    :cond_7
    :goto_1
    if-nez v0, :cond_0

    .line 252
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v7, v8, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSelfRegMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 257
    const/4 v6, 0x3

    goto/16 :goto_0

    .line 225
    :cond_8
    if-eq v9, v4, :cond_9

    if-ne v10, v4, :cond_a

    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 228
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 229
    const/4 v0, 0x1

    goto :goto_1

    .line 230
    :cond_a
    const/16 v7, 0x1006

    if-ne v7, v4, :cond_b

    .line 231
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 232
    const/4 v0, 0x1

    goto :goto_1

    .line 233
    :cond_b
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v7

    if-nez v7, :cond_7

    .line 237
    const/4 v0, 0x1

    goto :goto_1

    .line 261
    :cond_c
    const/16 v7, 0x1004

    if-eq v7, v4, :cond_d

    const v7, 0xfdea

    if-ne v7, v4, :cond_e

    .line 263
    :cond_d
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 270
    :cond_e
    if-eq v9, v4, :cond_f

    if-eq v10, v4, :cond_f

    const v7, 0xfded

    if-eq v7, v4, :cond_f

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v7

    if-eq v6, v7, :cond_f

    .line 274
    const/4 v6, 0x4

    goto/16 :goto_0

    .line 277
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v6

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 104
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "3gpp2"

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 135
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 136
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 137
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    if-ne v5, v6, :cond_1

    .line 139
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 143
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 144
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 146
    const-string v5, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 135
    .restart local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 122
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 128
    :goto_0
    return-void

    .line 126
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const-string v0, "CdmaSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport() called for object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isIms()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    return v0
.end method

.method protected isSelfRegMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 9
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 283
    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 284
    .local v5, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    new-array v0, v6, [Ljava/lang/String;

    const-string v8, "10659401"

    aput-object v8, v0, v7

    .line 285
    .local v0, "addressSelfReg":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 287
    .local v2, "filter":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 289
    .end local v2    # "filter":Ljava/lang/String;
    :goto_1
    return v6

    .line 285
    .restart local v2    # "filter":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "filter":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 289
    goto :goto_1
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 15
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v11, 0x0

    .line 325
    .local v11, "index":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .local v12, "index":I
    aget-byte v1, p1, v11

    and-int/lit16 v13, v1, 0xff

    .line 326
    .local v13, "msgType":I
    if-eqz v13, :cond_0

    .line 327
    const-string v1, "CdmaSMSDispatcher"

    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, 0x1

    move v11, v12

    .line 365
    .end local v12    # "index":I
    .restart local v11    # "index":I
    :goto_0
    return v1

    .line 330
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :cond_0
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    aget-byte v1, p1, v12

    and-int/lit16 v6, v1, 0xff

    .line 331
    .local v6, "totalSegments":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    aget-byte v1, p1, v11

    and-int/lit16 v5, v1, 0xff

    .line 333
    .local v5, "segment":I
    if-lt v5, v6, :cond_1

    .line 334
    const-string v1, "CdmaSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x1

    move v11, v12

    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto :goto_0

    .line 339
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :cond_1
    const/4 v14, 0x0

    .line 340
    .local v14, "sourcePort":I
    const/4 v9, 0x0

    .line 341
    .local v9, "destinationPort":I
    if-nez v5, :cond_2

    .line 343
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v14, v1, 0x8

    .line 344
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v14, v1

    .line 345
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v9, v1, 0x8

    .line 346
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v9, v1

    .line 349
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v1, :cond_2

    .line 350
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    add-int/lit8 v11, v12, 0x4

    .line 357
    .end local v12    # "index":I
    .restart local v11    # "index":I
    :goto_1
    const-string v1, "CdmaSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p1

    array-length v1, v0

    sub-int/2addr v1, v11

    new-array v2, v1, [B

    .line 363
    .local v2, "userData":[B
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v11

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v1

    goto/16 :goto_0

    .end local v2    # "userData":[B
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :cond_2
    move v11, v12

    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 373
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 375
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 376
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 378
    .local v7, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 379
    return-void

    .line 373
    .end local v5    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v7    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I

    .prologue
    .line 441
    new-instance v11, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v11}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 442
    .local v11, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 443
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 444
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_2

    .line 446
    const/4 v1, 0x2

    iput v1, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 448
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110062

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 450
    .local v7, "ascii7bitForLongMsg":Z
    if-eqz v7, :cond_0

    .line 451
    const-string v1, "CdmaSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ascii7bitForLongMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v1, 0x2

    iput v1, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 457
    .end local v7    # "ascii7bitForLongMsg":Z
    .end local v8    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 463
    if-eqz p7, :cond_3

    if-eqz p8, :cond_3

    const/4 v1, 0x1

    :goto_1
    move/from16 v0, p9

    invoke-static {p1, v11, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 466
    .local v9, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 468
    .local v2, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-eqz p8, :cond_1

    if-eqz p10, :cond_4

    :cond_1
    const/4 v6, 0x1

    :goto_2
    move-object v1, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v10

    .line 470
    .local v10, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 471
    return-void

    .line 455
    .end local v2    # "map":Ljava/util/HashMap;
    .end local v9    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v10    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/4 v1, 0x4

    iput v1, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 463
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 468
    .restart local v2    # "map":Ljava/util/HashMap;
    .restart local v9    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/os/Bundle;)V
    .locals 6
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "extraInfo"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 477
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 478
    .local v3, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 479
    iput-object p4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 480
    if-ne p5, v4, :cond_0

    .line 482
    const/4 v5, 0x2

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 486
    :goto_0
    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 492
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    :goto_1
    invoke-static {p1, v3, v4, p9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 495
    .local v1, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 497
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, p6, p7, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 499
    .local v2, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 500
    return-void

    .line 484
    .end local v0    # "map":Ljava/util/HashMap;
    .end local v1    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v5, 0x4

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 492
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 563
    return-void
.end method

.method protected sendRgData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 384
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 387
    .local v1, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 388
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 390
    .local v2, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 391
    return-void

    .line 384
    .end local v0    # "map":Ljava/util/HashMap;
    .end local v1    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 6
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 521
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 524
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "pdu"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 526
    .local v1, "pdu":[B
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 528
    .local v2, "reply":Landroid/os/Message;
    const-string v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSms:  isIms()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRetryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mImsRetry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMessageRef="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v3

    if-nez v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 557
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isImsSmsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 549
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ImsSMSDispatcher;->enableSendSmsOverIms(Z)V

    goto :goto_0

    .line 552
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v3, v1, v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 555
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_0
.end method

.method sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 1
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 117
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 504
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I

    .prologue
    .line 399
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 401
    .local v6, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v1

    .line 402
    .local v1, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 404
    .local v7, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 405
    return-void

    .line 399
    .end local v1    # "map":Ljava/util/HashMap;
    .end local v6    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v7    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "extraInfo"    # Landroid/os/Bundle;

    .prologue
    .line 410
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher.sendText() priority"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 414
    .local v7, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 415
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p4, p5, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v8

    .line 417
    .local v8, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 418
    return-void

    .line 411
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v7    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v8    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 1
    .param p1, "mwi"    # I

    .prologue
    .line 299
    if-gez p1, :cond_1

    .line 300
    const/4 p1, -0x1

    .line 307
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeVoiceMailCount()V

    .line 310
    return-void

    .line 301
    :cond_1
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 304
    const/16 p1, 0x63

    goto :goto_0
.end method
