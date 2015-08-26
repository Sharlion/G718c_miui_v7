.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field protected static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field protected static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field protected static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

.field protected static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field protected static sContext:Landroid/content/Context;

.field protected static sLooper:Landroid/os/Looper;

.field protected static sMadeDefaults:Z

.field private static sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

.field private static sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

.field protected static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected static sProxyPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 56
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 249
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 250
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 258
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 262
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 263
    return-object v0

    .line 252
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 253
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 262
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 267
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 269
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 270
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 232
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getProxyPhones()[Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static isSecondSlotAlwaysGsm()Z
    .locals 1

    .prologue
    .line 288
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    return v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-class v17, Lcom/android/internal/telephony/Phone;

    monitor-enter v17

    .line 78
    :try_start_0
    sget-boolean v16, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v16, :cond_d

    .line 79
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v16

    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 80
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 82
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v16, :cond_0

    .line 83
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v18, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 216
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 87
    :cond_0
    const/4 v15, 0x0

    .line 89
    .local v15, "retryCount":I
    :goto_0
    const/4 v8, 0x0

    .line 90
    .local v8, "hasException":Z
    add-int/lit8 v15, v15, 0x1

    .line 95
    :try_start_1
    new-instance v16, Landroid/net/LocalServerSocket;

    const-string v18, "com.android.internal.telephony"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_1
    if-nez v8, :cond_5

    .line 112
    :try_start_2
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v12

    .line 113
    .local v12, "phoneCount":I
    new-instance v16, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 114
    new-array v0, v12, [Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 115
    new-array v0, v12, [Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 117
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v12, :cond_a

    .line 119
    const/4 v14, 0x1

    .line 120
    .local v14, "preferredNetworkMode":I
    if-nez v9, :cond_1

    .line 121
    const-string v16, "ro.telephony.default_network"

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 125
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 126
    const/4 v14, 0x7

    .line 129
    :cond_2
    move v10, v14

    .line 131
    .local v10, "networkMode":I
    if-nez v9, :cond_7

    .line 132
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v18, "preferred_network_mode"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    .line 151
    :goto_3
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_3

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v10, v0, :cond_3

    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSecondSlotAlwaysGsm()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 152
    const-string v16, "PhoneFactory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Phone 1 recover network Mode from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to 1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "preferred_network_mode."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    :cond_3
    const-string v16, "PhoneFactory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Phone "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " network Mode set to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v4

    .line 161
    .local v4, "cdmaSubscription":I
    const-string v16, "PhoneFactory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cdma Subscription set to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4, v9}, Lcom/android/internal/telephony/RILFactory;->makeRIL(Landroid/content/Context;III)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v18

    aput-object v18, v16, v9

    .line 167
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v16, v16, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 169
    invoke-static {v10}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v13

    .line 170
    .local v13, "phoneType":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_9

    .line 171
    const-string v16, "PhoneFactory"

    const-string v18, "Creating GSMPhone"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v18, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v19, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v20, v20, v9

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct/range {v18 .. v19}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v18, v16, v9

    .line 117
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 96
    .end local v4    # "cdmaSubscription":I
    .end local v9    # "i":I
    .end local v10    # "networkMode":I
    .end local v12    # "phoneCount":I
    .end local v13    # "phoneType":I
    .end local v14    # "preferredNetworkMode":I
    :catch_0
    move-exception v7

    .line 97
    .local v7, "ex":Ljava/io/IOException;
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 102
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_5
    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 103
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v18, "PhoneFactory probably already running"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    :cond_6
    const-wide/16 v18, 0x7d0

    :try_start_5
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 107
    :catch_1
    move-exception v16

    goto/16 :goto_0

    .line 135
    .restart local v9    # "i":I
    .restart local v10    # "networkMode":I
    .restart local v12    # "phoneCount":I
    .restart local v14    # "preferredNetworkMode":I
    :cond_7
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "preferred_network_mode."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v10

    goto/16 :goto_3

    .line 138
    :catch_2
    move-exception v6

    .line 140
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    if-nez v9, :cond_8

    .line 141
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v18, "preferred_network_mode"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 144
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "preferred_network_mode."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 174
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v4    # "cdmaSubscription":I
    .restart local v13    # "phoneType":I
    :cond_9
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v13, v0, :cond_4

    .line 175
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    .line 183
    const-string v16, "PhoneFactory"

    const-string v18, "Creating CDMAPhone"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v18, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v19, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v20, v20, v9

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct/range {v18 .. v19}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v18, v16, v9

    goto/16 :goto_4

    .line 177
    :pswitch_0
    const-string v16, "PhoneFactory"

    const-string v18, "Creating CDMALTEPhone"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v18, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v19, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v20, v20, v9

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct/range {v18 .. v19}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v18, v16, v9

    goto/16 :goto_4

    .line 191
    .end local v4    # "cdmaSubscription":I
    .end local v10    # "networkMode":I
    .end local v13    # "phoneType":I
    .end local v14    # "preferredNetworkMode":I
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/TelephonyCapabilities;->isX5All()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 194
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/codeaurora/telephony/msim/MSimUiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/codeaurora/telephony/msim/MSimUiccController;

    move-result-object v16

    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    .line 195
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->make(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/codeaurora/telephony/msim/ModemStackController;

    move-result-object v16

    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    .line 197
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;

    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->make(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    move-result-object v16

    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    .line 203
    :cond_b
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v5

    .line 205
    .local v5, "componentName":Landroid/content/ComponentName;
    const-string v11, "NONE"

    .line 206
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 207
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 209
    :cond_c
    const-string v16, "PhoneFactory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "defaultSmsApplication: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 214
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 216
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "hasException":Z
    .end local v9    # "i":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "phoneCount":I
    .end local v15    # "retryCount":I
    :cond_d
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 217
    return-void

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 283
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
