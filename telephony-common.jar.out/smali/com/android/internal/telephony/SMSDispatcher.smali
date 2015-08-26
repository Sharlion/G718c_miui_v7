.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x8

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x9

.field protected static final EVENT_HANDLE_STATUS_REPORT:I = 0xa

.field protected static final EVENT_ICC_CHANGED:I = 0xf

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0xc

.field protected static final EVENT_IMS_STATE_DONE:I = 0xd

.field protected static final EVENT_NEW_ICC_SMS:I = 0xe

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_RADIO_ON:I = 0xb

.field private static final EVENT_SAVE_SMS_TO_SIM_DONE:I = 0x15

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final EVENT_SMS_ON_ICC:I = 0x10

.field static final EVENT_STOP_SENDING:I = 0x7

.field protected static final EVENT_UPDATE_ICC_MWI:I = 0x14

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field public static final RECEIVE_EMERGENCY_BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field public static final RECEIVE_SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SEND_SMS_NO_CONFIRMATION_PERMISSION:Ljava/lang/String; = "android.permission.SEND_SMS_NO_CONFIRMATION"

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field protected static final mRawUri:Landroid/net/Uri;

.field private static sConcatenatedRef:I


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field protected mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mRemainingMessages:I

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSmsCapable:Z

.field protected mSmsReceiveDisabled:Z

.field protected mSmsSendDisabled:Z

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockFull:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field public setNewSmsIndication:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 189
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 207
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 236
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->setNewSmsIndication:I

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 1745
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 253
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 254
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 256
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 257
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 258
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 260
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sms_short_code_rule"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111003c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 268
    const-string v0, "telephony.sms.receive"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    .line 270
    const-string v0, "telephony.sms.send"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 272
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmsReceiveDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmsSendDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0

    :cond_1
    move v1, v2

    .line 270
    goto :goto_1
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 236
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->setNewSmsIndication:I

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 1745
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 286
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 287
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 289
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 290
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 292
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sms_short_code_rule"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111003c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 298
    const-string v0, "telephony.sms.send"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 300
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmsSendDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    :cond_0
    move v0, v2

    .line 298
    goto :goto_0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 496
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 497
    const v1, 0x1000001a

    const-string v2, "SMSDispatcher"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    .line 498
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 500
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x5

    .line 1282
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v1, v2, :cond_1

    .line 1285
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1286
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 1294
    :goto_1
    return v1

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMSDispatcher"

    const-string v2, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1293
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 1294
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 1303
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1305
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1306
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1309
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "appPackage":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1307
    .restart local p1    # "appPackage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1308
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager Name Not Found for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 240
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 241
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p0, "ss"    # I
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 670
    if-eqz p1, :cond_0

    .line 672
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 673
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1500
    if-nez p1, :cond_0

    .line 1502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1504
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1505
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1507
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1508
    return-void
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 14
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v6, -0x1

    .line 1455
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1457
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1458
    .local v1, "destinationAddress":Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1460
    .local v2, "scAddress":Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1461
    .local v3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1462
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1465
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 1467
    .local v13, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v13, :cond_1

    .line 1468
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "count":I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 1469
    const/4 v12, 0x0

    .line 1470
    .local v12, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_0

    .line 1471
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 1473
    .restart local v12    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    invoke-static {v13, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 1468
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1478
    .end local v9    # "count":I
    .end local v10    # "i":I
    .end local v12    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    iget-boolean v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    move-object v0, p0

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V

    .line 1480
    :cond_2
    return-void
.end method


# virtual methods
.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    .prologue
    .line 1650
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1651
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    const-string v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method protected abstract calculateNoHeadLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 1211
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return v6

    .line 1215
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1216
    .local v3, "rule":I
    const/4 v5, 0x0

    .line 1217
    .local v5, "smsCategory":I
    if-eq v3, v6, :cond_2

    if-ne v3, v11, :cond_5

    .line 1218
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1219
    .local v4, "simCountryIso":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 1220
    :cond_3
    const-string v8, "SMSDispatcher"

    const-string v9, "Can\'t get SIM country Iso: trying network country Iso"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1224
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1226
    .end local v4    # "simCountryIso":Ljava/lang/String;
    :cond_5
    if-eq v3, v10, :cond_6

    if-ne v3, v11, :cond_9

    .line 1227
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, "networkCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v10, :cond_8

    .line 1229
    :cond_7
    const-string v8, "SMSDispatcher"

    const-string v9, "Can\'t get Network country Iso: trying SIM country Iso"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1233
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v5

    .line 1237
    .end local v1    # "networkCountryIso":Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_0

    if-eq v5, v6, :cond_0

    if-eq v5, v10, :cond_0

    .line 1244
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2

    .line 1246
    .local v2, "premiumSmsPermission":I
    if-nez v2, :cond_a

    .line 1248
    const/4 v2, 0x1

    .line 1251
    :cond_a
    packed-switch v2, :pswitch_data_0

    .line 1264
    if-ne v5, v11, :cond_b

    .line 1265
    const/16 v0, 0x8

    .line 1269
    .local v0, "event":I
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1270
    goto :goto_0

    .line 1253
    .end local v0    # "event":I
    :pswitch_0
    const-string v7, "SMSDispatcher"

    const-string v8, "User approved this app to send to premium SMS"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1257
    :pswitch_1
    const-string v6, "SMSDispatcher"

    const-string v8, "User denied this app from sending to premium SMS"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const/4 v6, 0x7

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1259
    goto/16 :goto_0

    .line 1267
    :cond_b
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto :goto_1

    .line 1251
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    const-wide/16 v3, 0x1388

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 514
    const-string v0, "needWakeLock"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const-string v0, "SMSDispatcher"

    const-string v1, " needWakeLock = true "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 524
    :cond_0
    invoke-virtual {p0, v2, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p0

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 528
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 546
    return-void
.end method

.method protected dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V
    .locals 3
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    .prologue
    .line 1802
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1804
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1805
    const-string v1, "SMSDispatcher"

    const-string v2, "Dispatching emergency SMS CB"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1814
    :goto_0
    return-void

    .line 1809
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1810
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1811
    const-string v1, "SMSDispatcher"

    const-string v2, "Dispatching SMS CB"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public dispatchBroadcastPdus([[BZ)V
    .locals 5
    .param p1, "pdus"    # [[B
    .param p2, "isEmergencyMessage"    # Z

    .prologue
    const/16 v4, 0x10

    .line 1788
    if-eqz p2, :cond_0

    .line 1789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1790
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1791
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " emergency SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1799
    :goto_0
    return-void

    .line 1794
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1796
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 15
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v14

    .line 702
    .local v14, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v14, :cond_0

    iget-object v0, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v0, :cond_4

    .line 704
    :cond_0
    const/4 v0, 0x1

    new-array v12, v0, [[B

    .line 705
    .local v12, "pdus":[[B
    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v11

    .line 708
    .local v11, "messagebody":Ljava/lang/String;
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchNormalMessage pdu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchNormalMessage messagebody"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    if-eqz v14, :cond_3

    iget-object v0, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v0, :cond_3

    .line 715
    iget-object v0, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v1, 0xb84

    if-eq v0, v1, :cond_1

    iget-object v0, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v1, 0x3e80

    if-ne v0, v1, :cond_2

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v0

    .line 739
    .end local v11    # "messagebody":Ljava/lang/String;
    .end local v12    # "pdus":[[B
    :goto_0
    return v0

    .line 724
    .restart local v11    # "messagebody":Ljava/lang/String;
    .restart local v12    # "pdus":[[B
    :cond_2
    iget-object v0, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v12, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 734
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 731
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->isSelfRegMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    invoke-virtual {p0, v12, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdusExtra([[BZ)V

    goto :goto_1

    .line 737
    .end local v11    # "messagebody":Ljava/lang/String;
    .end local v12    # "pdus":[[B
    :cond_4
    iget-object v10, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 738
    .local v10, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget-object v13, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 739
    .local v13, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v4, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v5, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    if-eqz v13, :cond_5

    iget v8, v13, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    :goto_2
    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v8, -0x1

    goto :goto_2
.end method

.method protected dispatchPdus([[B)V
    .locals 3
    .param p1, "pdus"    # [[B

    .prologue
    .line 800
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 802
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 804
    return-void
.end method

.method protected dispatchPdusExtra([[BZ)V
    .locals 3
    .param p1, "pdus"    # [[B
    .param p2, "isSelfRegMessage"    # Z

    .prologue
    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 810
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    if-eqz p2, :cond_0

    .line 812
    const-string v1, "needWakeLock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 813
    const-string v1, "android.provider.Telephony.SELF_REG_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    :cond_0
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 816
    return-void
.end method

.method protected dispatchPdusVVM([[B)V
    .locals 7
    .param p1, "pdus"    # [[B

    .prologue
    const-wide/16 v5, 0x1388

    const/4 v4, 0x1

    .line 821
    const-string v1, "SMSDispatcher"

    const-string v2, " dispatchPdusVVM begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    .local v0, "vvmIntent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 824
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    const-string v1, "needWakeLock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 829
    const-string v1, "needWakeLock"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    const-string v1, "SMSDispatcher"

    const-string v2, " needWakeLock = true dispatchPdusVVM"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 832
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 838
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coremobility.app.vnotes"

    const-string v3, "com.coremobility.integration.message.CM_SMSReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 840
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 841
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 842
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 4
    .param p1, "pdus"    # [[B
    .param p2, "port"    # I

    .prologue
    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 854
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 855
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 856
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 858
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 334
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 1783
    :goto_0
    return-object v0

    .line 1782
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 6
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 1597
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 11
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "isExpectMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 1603
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1604
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1607
    .local v9, "packageNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1608
    .local v4, "appInfo":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lez v0, :cond_0

    .line 1611
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v9, v0

    const/16 v1, 0x40

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1618
    :cond_0
    :goto_0
    const-string v0, "destAddr"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1619
    .local v5, "destAddr":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SMSDispatcher$1;)V

    return-object v0

    .line 1612
    .end local v5    # "destAddr":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1637
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    const-string v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    const-string v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    const-string v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1625
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1626
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    const-string v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    return-object v0
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 18
    .param p1, "isPremium"    # Z
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1347
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1396
    :goto_0
    return-void

    .line 1352
    :cond_0
    if-eqz p1, :cond_1

    .line 1353
    const v4, 0x104046c

    .line 1358
    .local v4, "detailsId":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1359
    .local v2, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 1360
    .local v12, "r":Landroid/content/res/Resources;
    const v14, 0x104046a

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 1363
    .local v10, "messageText":Landroid/text/Spanned;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1365
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x10900aa

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1367
    .local v8, "layout":Landroid/view/View;
    new-instance v9, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const v14, 0x102033c

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1371
    .local v9, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    const v14, 0x1020336

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1372
    .local v11, "messageView":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    const v14, 0x1020337

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1376
    .local v5, "detailsLayout":Landroid/view/ViewGroup;
    const v14, 0x1020339

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1378
    .local v6, "detailsView":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1380
    const v14, 0x102033a

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 1382
    .local v13, "rememberChoice":Landroid/widget/CheckBox;
    invoke-virtual {v13, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1384
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x104046d

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x104046e

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1391
    .local v3, "d":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d3

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 1392
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1394
    const/4 v14, -0x1

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    .line 1395
    const/4 v14, -0x2

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 1355
    .end local v2    # "appLabel":Ljava/lang/CharSequence;
    .end local v3    # "d":Landroid/app/AlertDialog;
    .end local v4    # "detailsId":I
    .end local v5    # "detailsLayout":Landroid/view/ViewGroup;
    .end local v6    # "detailsView":Landroid/widget/TextView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    .end local v10    # "messageText":Landroid/text/Spanned;
    .end local v11    # "messageView":Landroid/widget/TextView;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "rememberChoice":Landroid/widget/CheckBox;
    :cond_1
    const v4, 0x104046b

    .restart local v4    # "detailsId":I
    goto/16 :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 383
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 490
    :pswitch_0
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleMessage() ignoring message of unexpected type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 390
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 392
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_1

    .line 393
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_1
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Landroid/telephony/SmsMessage;

    .line 400
    .local v9, "sms":Landroid/telephony/SmsMessage;
    sget-boolean v12, Landroid/util/Config;->ZTE_UNICOM:Z

    if-eqz v12, :cond_2

    .line 403
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v12

    sget-object v13, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v12, v13, :cond_3

    const/4 v4, 0x1

    .line 404
    .local v4, "isClass0":Z
    :goto_1
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "New received SMS isClass0 : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->SMSIndicator:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->setNewSmsIndication:I

    .line 406
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setNewSmsIndication : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->setNewSmsIndication:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->setNewSmsIndication:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    if-nez v4, :cond_2

    .line 409
    const-string v12, "SMSDispatcher"

    const-string v13, "save sms to sim"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v6

    .line 411
    .local v6, "pdu":[B
    const/4 v12, 0x0

    aget-byte v5, v6, v12

    .line 412
    .local v5, "len":I
    array-length v12, v6

    sub-int/2addr v12, v5

    add-int/lit8 v12, v12, -0x1

    new-array v10, v12, [B

    .line 413
    .local v10, "temppdu":[B
    add-int/lit8 v12, v5, 0x1

    const/4 v13, 0x0

    array-length v14, v6

    sub-int/2addr v14, v5

    add-int/lit8 v14, v14, -0x1

    invoke-static {v6, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pdu"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v12, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 418
    .local v7, "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v13, 0x0

    iget-object v14, v9, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-object v14, v14, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15, v7}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 423
    .end local v4    # "isClass0":Z
    .end local v5    # "len":I
    .end local v6    # "pdu":[B
    .end local v7    # "response":Landroid/os/Message;
    .end local v10    # "temppdu":[B
    :cond_2
    :try_start_0
    iget-object v12, v9, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v8

    .line 424
    .local v8, "result":I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_0

    .line 427
    const/4 v12, 0x1

    if-ne v8, v12, :cond_4

    const/4 v3, 0x1

    .line 428
    .local v3, "handled":Z
    :goto_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v12}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 430
    .end local v3    # "handled":Z
    .end local v8    # "result":I
    :catch_0
    move-exception v2

    .line 431
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v12, "SMSDispatcher"

    const-string v13, "Exception dispatching message"

    invoke-static {v12, v13, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 403
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 427
    .restart local v8    # "result":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 439
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "result":I
    .end local v9    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 443
    :pswitch_3
    const-string v12, "SMSDispatcher"

    const-string v13, "SMS retry.."

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 448
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 452
    :pswitch_5
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 456
    :pswitch_6
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 461
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 462
    .local v11, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v11}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 463
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 467
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 465
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_3

    .line 473
    .end local v11    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 474
    .restart local v11    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v12, v11, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v12, :cond_6

    .line 476
    :try_start_1
    iget-object v12, v11, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 481
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 477
    :catch_1
    move-exception v2

    .line 478
    .local v2, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v12, "SMSDispatcher"

    const-string v13, "failed to send RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 486
    .end local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v11    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1339
    :goto_0
    return-void

    .line 1322
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1323
    .local v0, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1324
    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x1040467

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 1326
    .local v3, "messageText":Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p1, v5}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1328
    .local v2, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040466

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040468

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040469

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1337
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1338
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v11, 0x3

    const/4 v10, -0x1

    .line 558
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 559
    .local v6, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 561
    .local v4, "sentIntent":Landroid/app/PendingIntent;
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_4

    .line 562
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SmsResponse;

    iget v7, v7, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    iput v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 567
    :goto_0
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_6

    .line 570
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 574
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->writeSentMessage(Landroid/content/Context;)V

    .line 577
    :cond_0
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_1

    .line 579
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_1
    if-eqz v4, :cond_3

    .line 584
    :try_start_0
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v7, v10, :cond_2

    .line 585
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 588
    :cond_2
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v7, :cond_5

    .line 589
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v3, "sendNext":Landroid/content/Intent;
    const-string v7, "SendNextMsg"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 591
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v3    # "sendNext":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 564
    :cond_4
    const-string v7, "SMSDispatcher"

    const-string v8, "SmsResponse was null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_5
    const/4 v7, -0x1

    :try_start_1
    invoke-virtual {v4, v7}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 595
    :catch_0
    move-exception v7

    goto :goto_1

    .line 600
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 602
    .local v5, "ss":I
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v7, :cond_7

    if-eqz v5, :cond_7

    .line 606
    iput v11, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 608
    const-string v7, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRetryCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mImsRetry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mMessageRef="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SS= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v5, :cond_8

    .line 618
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v5, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 619
    :cond_8
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_9

    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v7, v11, :cond_9

    .line 630
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 631
    invoke-virtual {p0, v11, v6}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 632
    .local v2, "retryMsg":Landroid/os/Message;
    const-wide/16 v7, 0x7d0

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 633
    .end local v2    # "retryMsg":Landroid/os/Message;
    :cond_9
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_3

    .line 634
    const/4 v0, 0x1

    .line 636
    .local v0, "error":I
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_a

    .line 638
    const/4 v0, 0x6

    .line 642
    :cond_a
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 643
    .local v1, "fillIn":Landroid/content/Intent;
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_b

    .line 644
    const-string v8, "errorCode"

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SmsResponse;

    iget v7, v7, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    :cond_b
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v7, v10, :cond_c

    .line 647
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 650
    :cond_c
    iget v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v7, :cond_d

    .line 651
    const-string v7, "SendNextMsg"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    :cond_d
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 655
    .end local v1    # "fillIn":Landroid/content/Intent;
    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 363
    const-string v0, "SMSDispatcher"

    const-string v1, "handleStatusReport() called with no subclass."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public isIms()Z
    .locals 3

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    .line 1774
    :goto_0
    return v0

    .line 1773
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isSelfRegMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZ)I
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "referenceNumber"    # I
    .param p4, "sequenceNumber"    # I
    .param p5, "messageCount"    # I
    .param p6, "timestamp"    # J
    .param p8, "destPort"    # I
    .param p9, "isCdmaWapPush"    # Z

    .prologue
    .line 791
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .locals 20
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
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
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 971
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    .line 972
    .local v19, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 973
    .local v18, "msgCount":I
    const/4 v7, 0x0

    .line 975
    .local v7, "encoding":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 977
    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 978
    .local v16, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 979
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v15

    .line 980
    .local v15, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_1

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    if-ne v7, v2, :cond_1

    .line 983
    :cond_0
    iget v7, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 985
    :cond_1
    aput-object v15, v16, v17

    .line 978
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 988
    .end local v15    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 989
    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 990
    .local v14, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v19

    iput v0, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 991
    add-int/lit8 v2, v17, 0x1

    iput v2, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 992
    move/from16 v0, v18

    iput v0, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 999
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1000
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1001
    .local v6, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v14, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1004
    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    .line 1005
    aget-object v2, v16, v17

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1006
    aget-object v2, v16, v17

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1009
    :cond_3
    const/4 v8, 0x0

    .line 1010
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_4

    .line 1011
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 1014
    .restart local v8    # "sentIntent":Landroid/app/PendingIntent;
    :cond_4
    const/4 v9, 0x0

    .line 1015
    .local v9, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_5

    .line 1016
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 1019
    .restart local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v2, v18, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 988
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1019
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1024
    .end local v6    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v14    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "extraInfo"    # Landroid/os/Bundle;
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
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1031
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 1032
    .local v16, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1033
    .local v15, "msgCount":I
    const/4 v6, 0x0

    .line 1035
    .local v6, "encoding":I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1037
    new-array v13, v15, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1038
    .local v13, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v15, :cond_2

    .line 1040
    const/4 v12, 0x0

    .line 1041
    .local v12, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v12

    .line 1043
    iget v1, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 1046
    :cond_0
    iget v6, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1048
    :cond_1
    aput-object v12, v13, v14

    .line 1038
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1051
    .end local v12    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_7

    .line 1052
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1053
    .local v11, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v16

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1054
    add-int/lit8 v1, v14, 0x1

    iput v1, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1055
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1062
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1063
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1064
    .local v5, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v11, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1067
    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 1068
    aget-object v1, v13, v14

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1069
    aget-object v1, v13, v14

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1072
    :cond_3
    const/4 v7, 0x0

    .line 1073
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_4

    .line 1074
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1077
    .restart local v7    # "sentIntent":Landroid/app/PendingIntent;
    :cond_4
    const/4 v8, 0x0

    .line 1078
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_5

    .line 1079
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 1082
    .restart local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v15, -0x1

    if-ne v14, v1, :cond_6

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/os/Bundle;)V

    .line 1051
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1082
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 1085
    .end local v5    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v11    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    return-void
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/os/Bundle;)V
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    .line 1125
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1126
    .local v3, "map":Ljava/util/HashMap;
    const-string v9, "pdu"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v5, v9

    check-cast v5, [B

    .line 1128
    .local v5, "pdu":[B
    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1129
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    iget-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v9, :cond_2

    .line 1130
    if-eqz v7, :cond_0

    .line 1132
    const/4 v9, 0x4

    :try_start_0
    invoke-virtual {v7, v9}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1135
    :cond_0
    :goto_0
    const-string v9, "SMSDispatcher"

    const-string v10, "Device does not support sending sms."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_1
    :goto_1
    return-void

    .line 1139
    :cond_2
    if-nez v5, :cond_3

    .line 1140
    if-eqz v7, :cond_1

    .line 1142
    const/4 v9, 0x3

    :try_start_1
    invoke-virtual {v7, v9}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1143
    :catch_0
    move-exception v9

    goto :goto_1

    .line 1149
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1150
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1152
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v9, v4

    if-nez v9, :cond_5

    .line 1154
    :cond_4
    const-string v9, "SMSDispatcher"

    const-string v10, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    if-eqz v7, :cond_1

    .line 1157
    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v7, v9}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1158
    :catch_1
    move-exception v2

    .line 1159
    .local v2, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v9, "SMSDispatcher"

    const-string v10, "failed to send error result"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1169
    .end local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_5
    const/4 v9, 0x0

    :try_start_3
    aget-object v9, v4, v9

    const/16 v10, 0x40

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 1185
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1187
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1188
    invoke-virtual {p0, v12, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1170
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v1

    .line 1171
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "SMSDispatcher"

    const-string v10, "Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    if-eqz v7, :cond_1

    .line 1174
    const/4 v9, 0x1

    :try_start_4
    invoke-virtual {v7, v9}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 1175
    :catch_3
    move-exception v2

    .line 1176
    .restart local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v9, "SMSDispatcher"

    const-string v10, "failed to send error result"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1192
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 1195
    .local v8, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v8, :cond_7

    .line 1196
    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1198
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 1133
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageNames":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "ss":I
    :catch_4
    move-exception v9

    goto/16 :goto_0
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1443
    :goto_0
    return-void

    .line 1441
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null. Retry failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract sendRgData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1422
    return-void
.end method

.method protected storeVoiceMailCount()V
    .locals 7

    .prologue
    .line 747
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v2

    .line 750
    .local v2, "mwi":I
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Storing Voice Mail Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in preferences."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 755
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 756
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "vm_count_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 757
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "vm_id_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 758
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 760
    return-void
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 326
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 327
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 328
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active phone changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method
