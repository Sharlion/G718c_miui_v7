.class Landroid/net/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 4310
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 4313
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 4378
    const/4 v4, 0x0

    .line 4380
    :goto_0
    return v4

    .line 4315
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Stopping Soft AP"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$25400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4318
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v5, "wangzhaoxin SoftApStartedState stopMonitoringForAP"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$25500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4320
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiApMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$24900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiMonitor;->stopMonitoring()V

    .line 4325
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4331
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v5, "wangzhaoxin SoftApStartedState closeHostapdConnection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$25700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4332
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiApMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$24900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 4333
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiApNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$25800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 4336
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v5, 0xb

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4337
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$25900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4380
    :cond_0
    :goto_2
    :sswitch_1
    const/4 v4, 0x1

    goto :goto_0

    .line 4326
    :catch_0
    move-exception v1

    .line 4327
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Exception in stopAccessPoint()"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$25600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 4344
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Cannot start supplicant with a running soft AP"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$26000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4345
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x4

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_2

    .line 4348
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 4349
    .local v3, "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, v3, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    # invokes: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$26100(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4350
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$26300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 4356
    .end local v3    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4357
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v2, 0x0

    .line 4358
    .local v2, "mMacAddress":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4359
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 4360
    :cond_1
    # operator-- for: Landroid/net/wifi/WifiStateMachine;->mSoftapConnectionNum:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$25010()I

    .line 4361
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AP_STA_DISCONNECTED_EVENT mMacAddress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$26400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4362
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSoftapConnectionNum:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$25000()I

    move-result v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendSoftapConnectStatusChangedBroadcast(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/net/wifi/WifiStateMachine;->access$26500(Landroid/net/wifi/WifiStateMachine;ILjava/lang/String;)V

    goto :goto_2

    .line 4367
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "mMacAddress":Ljava/lang/String;
    :sswitch_5
    # operator++ for: Landroid/net/wifi/WifiStateMachine;->mSoftapConnectionNum:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$25008()I

    .line 4368
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4369
    .restart local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v2, 0x0

    .line 4370
    .restart local v2    # "mMacAddress":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 4371
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 4372
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AP_STA_CONNECTED_EVENT mMacAddress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$26600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4373
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSoftapConnectionNum:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$25000()I

    move-result v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendSoftapConnectStatusChangedBroadcast(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/net/wifi/WifiStateMachine;->access$26500(Landroid/net/wifi/WifiStateMachine;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4313
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_3
        0x24029 -> :sswitch_4
        0x2402a -> :sswitch_5
    .end sparse-switch
.end method
