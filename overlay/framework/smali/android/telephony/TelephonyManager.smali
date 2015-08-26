.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$Listener;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sInstance:[Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/telephony/CallStateListener;",
            "Landroid/telephony/TelephonyManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 143
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/telephony/TelephonyManager;

    sput-object v1, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 147
    sget-object v1, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/telephony/TelephonyManager;

    invoke-direct {v2, v0}, Landroid/telephony/TelephonyManager;-><init>(I)V

    aput-object v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 280
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 286
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 592
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 595
    const-string v1, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 599
    const-string/jumbo v1, "telephony.lteOnCdmaProductType"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;-><init>(I)V

    .line 114
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 140
    iput p1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 125
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 130
    :goto_0
    iput p2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    .line 131
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_0

    .line 132
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 135
    :cond_0
    return-void

    .line 127
    :cond_1
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    new-instance v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static from(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 176
    if-ltz p1, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slot id out of range [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault(I)Landroid/telephony/TelephonyManager;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 159
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 160
    sget-object v1, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    monitor-enter v1

    .line 161
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/telephony/TelephonyManager;

    invoke-direct {v2, p0}, Landroid/telephony/TelephonyManager;-><init>(I)V

    aput-object v2, v0, p0

    .line 164
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:[Landroid/telephony/TelephonyManager;

    aget-object v0, v0, p0

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1397
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private static getITelephony(I)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 1401
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1402
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1404
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phone."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    .line 615
    const-string v2, ""

    .line 618
    .local v2, "productType":Ljava/lang/String;
    sget-boolean v5, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    if-eqz v5, :cond_1

    move v0, v4

    .line 621
    .local v0, "curVal":I
    :goto_0
    move v3, v0

    .line 622
    .local v3, "retVal":I
    if-ne v3, v6, :cond_0

    .line 623
    sget-object v5, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v6, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 624
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 625
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 626
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    const/4 v3, 0x1

    .line 636
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " product_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v3

    .line 618
    .end local v0    # "curVal":I
    .end local v3    # "retVal":I
    :cond_1
    const-string/jumbo v5, "telephony.lteOnCdmaDevice"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 629
    .restart local v0    # "curVal":I
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "retVal":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 632
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 836
    packed-switch p0, :pswitch_data_0

    .line 859
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 843
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 854
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 857
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 836
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 876
    packed-switch p0, :pswitch_data_0

    .line 914
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 878
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 880
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 882
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 884
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 886
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 888
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 890
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 892
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 894
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 896
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 898
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 900
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 902
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 904
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 906
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 908
    :pswitch_f
    const-string v0, "GSM"

    goto :goto_0

    .line 910
    :pswitch_10
    const-string v0, "TD-SCDMA"

    goto :goto_0

    .line 912
    :pswitch_11
    const-string v0, "IWLAN"

    goto :goto_0

    .line 876
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "networkMode"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 527
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 564
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 547
    goto :goto_0

    .line 558
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 561
    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 511
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 512
    .local v0, "mode":I
    if-ne v0, v2, :cond_0

    .line 513
    const/4 v1, 0x0

    .line 514
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 2

    .prologue
    .line 503
    const-string v0, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 573
    const-string v1, ""

    .line 574
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 576
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 578
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 579
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 580
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 585
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v5, v6

    .line 587
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :goto_0
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-object v1

    .line 582
    :catch_0
    move-exception v4

    .line 583
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v7

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 582
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 1293
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1294
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 1296
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iphonesubinfo."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 702
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "propVal":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 702
    .end local v0    # "propVal":Ljava/lang/String;
    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "propVal":Ljava/lang/String;
    :cond_1
    move-object p2, v0

    .line 705
    goto :goto_1
.end method


# virtual methods
.method public addCallStateListener(Landroid/telephony/CallStateListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/CallStateListener;

    .prologue
    .line 1975
    if-nez p1, :cond_1

    .line 1976
    :try_start_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Listener can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#addListener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1986
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 1978
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1979
    new-instance v1, Landroid/telephony/TelephonyManager$Listener;

    invoke-direct {v1, p1}, Landroid/telephony/TelephonyManager$Listener;-><init>(Landroid/telephony/CallStateListener;)V

    .line 1980
    .local v1, "l":Landroid/telephony/TelephonyManager$Listener;
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->addListener(Lcom/android/internal/telephony/ITelephonyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public answerRingingCall()V
    .locals 3

    .prologue
    .line 1667
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    :goto_0
    return-void

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#answerRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1624
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 3

    .prologue
    .line 1782
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1786
    :goto_0
    return-void

    .line 1783
    :catch_0
    move-exception v0

    .line 1784
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#cancelMissedCallsNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1614
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    :goto_0
    return-void

    .line 1615
    :catch_0
    move-exception v0

    .line 1616
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#dial"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1900
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1904
    :goto_0
    return v1

    .line 1901
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableApnType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1904
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 3

    .prologue
    .line 1922
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1926
    :goto_0
    return v1

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1926
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 401
    :try_start_0
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    goto :goto_0

    .line 402
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1889
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1893
    :goto_0
    return v1

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableApnType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1893
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 3

    .prologue
    .line 1911
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1915
    :goto_0
    return v1

    .line 1912
    :catch_0
    move-exception v0

    .line 1913
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1915
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 382
    :try_start_0
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    goto :goto_0

    .line 383
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public endCall()Z
    .locals 3

    .prologue
    .line 1656
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1660
    :goto_0
    return v1

    .line 1657
    :catch_0
    move-exception v0

    .line 1658
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1660
    const/4 v1, 0x0

    goto :goto_0
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
    const/4 v1, 0x0

    .line 1564
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1568
    :goto_0
    return-object v1

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1567
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1568
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1315
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1321
    :goto_0
    return v1

    .line 1316
    :catch_0
    move-exception v0

    .line 1318
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1319
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1321
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1459
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1464
    :goto_0
    return v1

    .line 1460
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1463
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1464
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1477
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1482
    :goto_0
    return v1

    .line 1478
    :catch_0
    move-exception v0

    .line 1480
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1481
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1482
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1493
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1498
    :goto_0
    return-object v1

    .line 1494
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1497
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1498
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 358
    :try_start_0
    iget v4, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 359
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 367
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 360
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 361
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 362
    goto :goto_0

    .line 364
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 365
    goto :goto_0

    .line 366
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 367
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1197
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1202
    :goto_0
    return-object v1

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1200
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1202
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType()I
    .locals 3

    .prologue
    .line 451
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 452
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 453
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 465
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 456
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 458
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 461
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 462
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 465
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1351
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1357
    :goto_0
    return v1

    .line 1352
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1355
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1357
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 781
    :try_start_0
    iget v3, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 782
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 783
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 793
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 788
    :catch_0
    move-exception v0

    .line 790
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 791
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 793
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1387
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1392
    :goto_0
    return v1

    .line 1388
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1391
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1392
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 333
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 337
    :goto_0
    return-object v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 336
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 316
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 319
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 320
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1103
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1108
    :goto_0
    return-object v1

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1106
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1108
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1265
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1270
    :goto_0
    return-object v1

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1268
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1270
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1249
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1254
    :goto_0
    return-object v1

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1252
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1254
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1282
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1287
    :goto_0
    return-object v1

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1285
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1287
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1141
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1146
    :goto_0
    return-object v1

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1144
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1146
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1121
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1126
    :goto_0
    return-object v1

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1124
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1126
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1060
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1066
    :goto_0
    return v1

    .line 1061
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1064
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1066
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1606
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1596
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1597
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1161
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1166
    :goto_0
    return-object v1

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1164
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1166
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 422
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 426
    :goto_0
    return-object v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 425
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 426
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 692
    const-string v0, "gsm.operator.iso-country"

    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 668
    const-string v0, "gsm.operator.numeric"

    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 656
    const-string v0, "gsm.operator.alpha"

    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 751
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    const/4 v2, 0x0

    .line 498
    :goto_0
    return v2

    .line 484
    :cond_0
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 485
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 486
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    goto :goto_0

    .line 489
    :cond_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 491
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 494
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 495
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 498
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1026
    const-string v0, "gsm.sim.operator.iso-country"

    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1006
    const-string v0, "gsm.sim.operator.numeric"

    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1018
    const-string v0, "gsm.sim.operator.alpha"

    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1039
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1044
    :goto_0
    return-object v1

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1042
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1044
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState()I
    .locals 4

    .prologue
    .line 972
    const-string v1, "gsm.sim.state"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    const/4 v1, 0x1

    .line 993
    :goto_0
    return v1

    .line 977
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 978
    const/4 v1, 0x2

    goto :goto_0

    .line 980
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 981
    const/4 v1, 0x3

    goto :goto_0

    .line 983
    :cond_2
    const-string v1, "PERSO_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 984
    const/4 v1, 0x4

    goto :goto_0

    .line 986
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 987
    const/4 v1, 0x5

    goto :goto_0

    .line 989
    :cond_4
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 990
    const/4 v1, 0x6

    goto :goto_0

    .line 993
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1085
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1090
    :goto_0
    return-object v1

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1088
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1090
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1233
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1238
    :goto_0
    return-object v1

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1236
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1238
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1178
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1183
    :goto_0
    return-object v1

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1181
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1183
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1215
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1220
    :goto_0
    return v1

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1218
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1220
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 804
    :try_start_0
    iget v3, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 805
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 806
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 816
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 811
    :catch_0
    move-exception v0

    .line 813
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 814
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 816
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1836
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1840
    :goto_0
    return v1

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1840
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 949
    :try_start_0
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 955
    :goto_0
    return v1

    .line 950
    :catch_0
    move-exception v0

    .line 952
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 953
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 955
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDataConnectivityPossible()Z
    .locals 3

    .prologue
    .line 1933
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1937
    :goto_0
    return v1

    .line 1934
    :catch_0
    move-exception v0

    .line 1935
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isDataConnectivityPossible"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1937
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 3

    .prologue
    .line 1749
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1753
    :goto_0
    return v1

    .line 1750
    :catch_0
    move-exception v0

    .line 1751
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isIdle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1753
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 4

    .prologue
    .line 679
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOffhook()Z
    .locals 3

    .prologue
    .line 1727
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1731
    :goto_0
    return v1

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isOffhook"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1731
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRadioOn()Z
    .locals 3

    .prologue
    .line 1760
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1764
    :goto_0
    return v1

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRadioOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1764
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 3

    .prologue
    .line 1738
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1742
    :goto_0
    return v1

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRinging"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1742
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimPinEnabled()Z
    .locals 3

    .prologue
    .line 1771
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1775
    :goto_0
    return v1

    .line 1772
    :catch_0
    move-exception v0

    .line 1773
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isSimPinEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1775
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 1536
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1537
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 1519
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1520
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 1437
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1440
    .local v6, "notifyNow":Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_0

    .line 1441
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 1444
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v2, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    .end local v6    # "notifyNow":Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 1437
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string v1, "<unknown>"

    goto :goto_0

    .line 1447
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1445
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public merge()V
    .locals 3

    .prologue
    .line 1687
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    :goto_0
    return-void

    .line 1688
    :catch_0
    move-exception v0

    .line 1689
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#merge"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 1707
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1711
    :goto_0
    return-void

    .line 1708
    :catch_0
    move-exception v0

    .line 1709
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#mute"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 3

    .prologue
    .line 1944
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1948
    :goto_0
    return v1

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1948
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playDtmfTone(CZ)V
    .locals 3
    .param p1, "digit"    # C
    .param p2, "timedShortCode"    # Z

    .prologue
    .line 1955
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->playDtmfTone(CZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    :goto_0
    return-void

    .line 1956
    :catch_0
    move-exception v0

    .line 1957
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#playDtmfTone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCallStateListener(Landroid/telephony/CallStateListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/CallStateListener;

    .prologue
    .line 1992
    :try_start_0
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager$Listener;

    .line 1993
    .local v1, "l":Landroid/telephony/TelephonyManager$Listener;
    if-eqz v1, :cond_0

    .line 1995
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$Listener;->clearQueue()V

    .line 1996
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->removeListener(Lcom/android/internal/telephony/ITelephonyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    .end local v1    # "l":Landroid/telephony/TelephonyManager$Listener;
    :cond_0
    :goto_0
    return-void

    .line 1998
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#removeListener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 1586
    :try_start_0
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    :goto_0
    return-void

    .line 1588
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1587
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2027
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2028
    return-void
.end method

.method public setDefaultDataSlotId()Z
    .locals 3

    .prologue
    .line 2017
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setDefaultDataSlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2021
    :goto_0
    return v1

    .line 2018
    :catch_0
    move-exception v0

    .line 2019
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setDefaultDataSlotId error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2021
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultVoiceSlotId()V
    .locals 3

    .prologue
    .line 2007
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setDefaultVoiceSlotId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    :goto_0
    return-void

    .line 2008
    :catch_0
    move-exception v0

    .line 2009
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setDefaultDataSlotId error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 3
    .param p1, "turnOn"    # Z

    .prologue
    .line 1857
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1861
    :goto_0
    return v1

    .line 1858
    :catch_0
    move-exception v0

    .line 1859
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadio"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1861
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadioPower(Z)Z
    .locals 3
    .param p1, "turnOn"    # Z

    .prologue
    .line 1868
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1872
    :goto_0
    return v1

    .line 1869
    :catch_0
    move-exception v0

    .line 1870
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadioPower"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1872
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showCallScreen()Z
    .locals 3

    .prologue
    .line 1634
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1638
    :goto_0
    return v1

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#showCallScreen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1638
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1645
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1649
    :goto_0
    return v1

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#showCallScreenWithDialpad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1649
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 1717
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    :goto_0
    return-void

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopDtmfTone()V
    .locals 3

    .prologue
    .line 1965
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->stopDtmfTone()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1969
    :goto_0
    return-void

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#stopDtmfTone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1792
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1796
    :goto_0
    return v1

    .line 1793
    :catch_0
    move-exception v0

    .line 1794
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPin"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1796
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1814
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1818
    :goto_0
    return-object v1

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1818
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1803
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1807
    :goto_0
    return v1

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPuk"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1807
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1825
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1829
    :goto_0
    return-object v1

    .line 1826
    :catch_0
    move-exception v0

    .line 1827
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1829
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public swap()V
    .locals 3

    .prologue
    .line 1697
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->swap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    :goto_0
    return-void

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#swap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleHold()V
    .locals 3

    .prologue
    .line 1677
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleHold()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    :goto_0
    return-void

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleHold"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleRadioOnOff()V
    .locals 3

    .prologue
    .line 1847
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    :goto_0
    return-void

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 3

    .prologue
    .line 1879
    :try_start_0
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getITelephony(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1883
    :goto_0
    return-void

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#updateServiceLocation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
