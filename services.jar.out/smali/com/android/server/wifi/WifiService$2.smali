.class Lcom/android/server/wifi/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1302
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v6, 0x26002

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1304
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v6, 0x2600c

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1305
    :cond_2
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1306
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v6, 0x26003

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1307
    :cond_3
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1308
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1309
    .local v2, "pluggedType":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v7, 0x26004

    invoke-virtual {v5, v7, v2, v6, v10}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1310
    .end local v2    # "pluggedType":I
    :cond_4
    const-string v7, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1311
    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1313
    .local v3, "state":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v5, v5, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_0

    .line 1314
    .end local v3    # "state":I
    :cond_5
    const-string v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1315
    const-string v7, "phoneinECMState"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1316
    .local v1, "emergencyMode":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v7}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v7

    const v8, 0x26001

    if-eqz v1, :cond_6

    :goto_1
    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_1

    .line 1319
    .end local v1    # "emergencyMode":Z
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1320
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wb onReceive action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # invokes: Lcom/android/server/wifi/WifiService;->TrafficStatsForSoftap()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$1100(Lcom/android/server/wifi/WifiService;)V

    goto/16 :goto_0

    .line 1323
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.server.WifiManager.action.WIFI_AP_POWER_MODE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1324
    const/4 v4, 0x0

    .line 1326
    .local v4, "wifiSavedState":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_saved_state"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1330
    :goto_2
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive action = ACTION_WIFI_AP_POWER_MODE Close softap!!! wifiSavedState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v7, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v7, v10, v6}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1332
    if-ne v5, v4, :cond_0

    .line 1333
    iget-object v7, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v7, v5}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 1334
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "wifi_saved_state"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1337
    .end local v4    # "wifiSavedState":I
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.SOFTAP_CONNECTION_NUMBER_CHANGE_ACTION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1338
    iget-object v7, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    const-string v8, "softap_connection_number_change"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    # setter for: Lcom/android/server/wifi/WifiService;->mSoftapStaNum:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiService;->access$702(Lcom/android/server/wifi/WifiService;I)I

    .line 1339
    iget-object v7, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mSoftapStaNum:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiService;->access$700(Lcom/android/server/wifi/WifiService;)I

    move-result v7

    if-ne v7, v5, :cond_b

    .line 1340
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    const-wide/16 v7, 0x0

    # invokes: Lcom/android/server/wifi/WifiService;->setApPowerModeAlarm(ZJ)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;ZJ)V

    .line 1344
    :cond_a
    :goto_3
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mSoftapStaNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mSoftapStaNum:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiService;->access$700(Lcom/android/server/wifi/WifiService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1341
    :cond_b
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mSoftapStaNum:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$700(Lcom/android/server/wifi/WifiService;)I

    move-result v6

    if-nez v6, :cond_a

    .line 1342
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v7, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->timer:J
    invoke-static {v7}, Lcom/android/server/wifi/WifiService;->access$600(Lcom/android/server/wifi/WifiService;)J

    move-result-wide v7

    # invokes: Lcom/android/server/wifi/WifiService;->setApPowerModeAlarm(ZJ)V
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;ZJ)V

    goto :goto_3

    .line 1328
    .restart local v4    # "wifiSavedState":I
    :catch_0
    move-exception v7

    goto/16 :goto_2
.end method
