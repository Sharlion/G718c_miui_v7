.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p2, "x1"    # Landroid/net/MobileDataStateTracker$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 224
    const-string v11, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "apnName":Ljava/lang/String;
    const-string v11, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 421
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v2    # "apnType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v1    # "apnName":Ljava/lang/String;
    .restart local v2    # "apnType":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Broadcast received: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " apnType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " apnName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    # setter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v11, v12}, Landroid/net/MobileDataStateTracker;->access$502(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 236
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p2

    # invokes: Landroid/net/MobileDataStateTracker;->updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V
    invoke-static {v11, v0}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/NetworkInfo;->setIsConnectedToProvisioningNetwork(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    const-string v13, ""

    # invokes: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v13, v1}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v2    # "apnType":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 244
    const-string v11, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .restart local v2    # "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/NetworkInfo;->setIsConnectedToProvisioningNetwork(Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Broadcast received: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " apnType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v11, "slot_id"

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v12

    invoke-virtual {v12}, Lmiui/telephony/MultiSimManager;->getPreferredDataSlotId()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 291
    .local v8, "slotId":I
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v11

    invoke-virtual {v11}, Lmiui/telephony/MultiSimManager;->getPreferredDataSlotId()I

    move-result v3

    .line 292
    .local v3, "dds":I
    if-eq v8, v3, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ignore data connection state as slotId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not current dds: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    .line 303
    .local v6, "oldSubtype":I
    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 304
    .local v5, "newSubType":I
    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v10

    .line 306
    .local v10, "subTypeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 307
    if-eq v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 308
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$900(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v11

    const v12, 0x70003

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v14}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v11, v12, v6, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 310
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 313
    .end local v4    # "msg":Landroid/os/Message;
    :cond_4
    const-class v11, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v12, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 315
    .local v9, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v11, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 316
    .local v7, "reason":Ljava/lang/String;
    const-string v11, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1    # "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    const-string/jumbo v12, "networkRoaming"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v12

    const-string/jumbo v11, "networkUnvailable"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 327
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received state="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", old="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v13}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", reason="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v7, :cond_6

    const-string v11, "(unspecified)"

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v12, v11}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v11

    if-eq v11, v9, :cond_8

    .line 331
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # setter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v11, v9}, Landroid/net/MobileDataStateTracker;->access$502(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 332
    sget-object v11, Landroid/net/MobileDataStateTracker$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 380
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;)Landroid/net/SamplingDataTracker;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/SamplingDataTracker;->resetSamplingData()V

    goto/16 :goto_0

    .line 323
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    :cond_6
    move-object v11, v7

    .line 327
    goto :goto_2

    .line 334
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v11}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 335
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 338
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v7, v1}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 347
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v7, v1}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 350
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v7, v1}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 353
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p2

    # invokes: Landroid/net/MobileDataStateTracker;->updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V
    invoke-static {v11, v0}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v7, v1}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 383
    :cond_8
    const-string v11, "linkPropertiesChanged"

    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v11, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/LinkProperties;

    # setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v12, v11}, Landroid/net/MobileDataStateTracker;->access$1102(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 386
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$1100(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v11

    if-nez v11, :cond_9

    .line 387
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v12, "No link property in LINK_PROPERTIES change event."

    # invokes: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/MobileDataStateTracker;->access$1200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v12, Landroid/net/LinkProperties;

    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    # setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v11, v12}, Landroid/net/MobileDataStateTracker;->access$1102(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 391
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v13}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v7, v13}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$900(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v11

    const v12, 0x70001

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v13}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 395
    .restart local v4    # "msg":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 398
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v3    # "dds":I
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "newSubType":I
    .end local v6    # "oldSubtype":I
    .end local v7    # "reason":Ljava/lang/String;
    .end local v8    # "slotId":I
    .end local v9    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v10    # "subTypeName":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 400
    const-string v11, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .restart local v2    # "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 403
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v12, "Broadcast received: ACTION_ANY_DATA_CONNECTION_FAILED ignore, mApnType=%s != received apnType=%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v2, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/NetworkInfo;->setIsConnectedToProvisioningNetwork(Z)V

    .line 411
    const-string/jumbo v11, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 412
    .restart local v7    # "reason":Ljava/lang/String;
    const-string v11, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .restart local v1    # "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Broadcast received: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " reason="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_c

    const-string/jumbo v11, "null"

    :goto_4
    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v12, v11}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v7, v1}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object v11, v7

    .line 414
    goto :goto_4

    .line 419
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v7    # "reason":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Broadcast received: ignore "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
