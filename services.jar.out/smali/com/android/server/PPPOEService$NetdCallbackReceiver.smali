.class Lcom/android/server/PPPOEService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "PPPOEService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEService;


# direct methods
.method private constructor <init>(Lcom/android/server/PPPOEService;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PPPOEService;Lcom/android/server/PPPOEService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/PPPOEService;
    .param p2, "x1"    # Lcom/android/server/PPPOEService$1;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEService$NetdCallbackReceiver;-><init>(Lcom/android/server/PPPOEService;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 143
    const-string v3, "PPPOEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetdCallbackReceiver onEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 211
    :cond_0
    :goto_0
    return v1

    .line 153
    :sswitch_0
    array-length v3, p3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    aget-object v3, p3, v1

    const-string v4, "Iface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid event from daemon (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_2
    aget-object v3, p3, v6

    const-string v4, "added"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    aget-object v3, p3, v6

    const-string v4, "removed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    aget-object v3, p3, v6

    const-string v4, "changed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    array-length v3, p3

    if-eq v3, v7, :cond_0

    .line 163
    :cond_3
    aget-object v3, p3, v6

    const-string v4, "linkstate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, p3

    if-ne v3, v7, :cond_5

    .line 164
    aget-object v3, p3, v8

    const-string v4, "ppp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    const/4 v3, 0x4

    aget-object v3, p3, v3

    const-string v4, "up"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;
    invoke-static {v3}, Lcom/android/server/PPPOEService;->access$100(Lcom/android/server/PPPOEService;)Landroid/net/wifi/PPPOEInfo$Status;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;
    invoke-static {v3}, Lcom/android/server/PPPOEService;->access$100(Lcom/android/server/PPPOEService;)Landroid/net/wifi/PPPOEInfo$Status;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v3, v4, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    aget-object v4, p3, v8

    # invokes: Lcom/android/server/PPPOEService;->setRouteAndDNS(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEService;->access$200(Lcom/android/server/PPPOEService;Ljava/lang/String;)V

    .line 170
    const-string v3, "PPPOEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quguotao onEvent mPppoeStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;
    invoke-static {v5}, Lcom/android/server/PPPOEService;->access$100(Lcom/android/server/PPPOEService;)Landroid/net/wifi/PPPOEInfo$Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v3, "PPPOEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quguotao onEvent cooked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    sget-object v4, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    # setter for: Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;
    invoke-static {v3, v4}, Lcom/android/server/PPPOEService;->access$102(Lcom/android/server/PPPOEService;Landroid/net/wifi/PPPOEInfo$Status;)Landroid/net/wifi/PPPOEInfo$Status;

    .line 173
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/PPPOEService;->mConnectedtime:J
    invoke-static {v3, v4, v5}, Lcom/android/server/PPPOEService;->access$302(Lcom/android/server/PPPOEService;J)J

    .line 174
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    const-string v4, "PPPOE_STATE_CONNECTED"

    # invokes: Lcom/android/server/PPPOEService;->notifyStatusChanged(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEService;->access$400(Lcom/android/server/PPPOEService;Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mDoCommand:Z
    invoke-static {v3}, Lcom/android/server/PPPOEService;->access$500(Lcom/android/server/PPPOEService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    const-string v4, "SUCCESS"

    const-string v5, "0"

    # invokes: Lcom/android/server/PPPOEService;->sendCommandComplete(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/PPPOEService;->access$600(Lcom/android/server/PPPOEService;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    # setter for: Lcom/android/server/PPPOEService;->mDoCommand:Z
    invoke-static {v3, v2}, Lcom/android/server/PPPOEService;->access$502(Lcom/android/server/PPPOEService;Z)Z

    goto/16 :goto_0

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;
    invoke-static {v2}, Lcom/android/server/PPPOEService;->access$100(Lcom/android/server/PPPOEService;)Landroid/net/wifi/PPPOEInfo$Status;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v2, v3, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    # setter for: Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;
    invoke-static {v2, v3}, Lcom/android/server/PPPOEService;->access$102(Lcom/android/server/PPPOEService;Landroid/net/wifi/PPPOEInfo$Status;)Landroid/net/wifi/PPPOEInfo$Status;

    .line 183
    iget-object v2, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    const-wide/16 v3, 0x0

    # setter for: Lcom/android/server/PPPOEService;->mConnectedtime:J
    invoke-static {v2, v3, v4}, Lcom/android/server/PPPOEService;->access$302(Lcom/android/server/PPPOEService;J)J

    .line 184
    iget-object v2, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    const-string v3, "PPPOE_STATE_DISCONNECTED"

    # invokes: Lcom/android/server/PPPOEService;->notifyStatusChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/PPPOEService;->access$400(Lcom/android/server/PPPOEService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid event from daemon (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :sswitch_1
    array-length v3, p3

    if-le v3, v7, :cond_0

    const-string v3, "pppoe"

    aget-object v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mDoCommand:Z
    invoke-static {v3}, Lcom/android/server/PPPOEService;->access$500(Lcom/android/server/PPPOEService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 199
    aget-object v0, p3, v7

    .line 200
    .local v0, "errCode":Ljava/lang/String;
    const-string v3, "PPPOEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pppoeExit mDoCommand errcode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    const-string v4, "FAILURE"

    # invokes: Lcom/android/server/PPPOEService;->sendCommandComplete(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/PPPOEService;->access$600(Lcom/android/server/PPPOEService;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v3, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    # setter for: Lcom/android/server/PPPOEService;->mDoCommand:Z
    invoke-static {v3, v2}, Lcom/android/server/PPPOEService;->access$502(Lcom/android/server/PPPOEService;Z)Z

    .line 204
    .end local v0    # "errCode":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    # setter for: Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;
    invoke-static {v2, v3}, Lcom/android/server/PPPOEService;->access$102(Lcom/android/server/PPPOEService;Landroid/net/wifi/PPPOEInfo$Status;)Landroid/net/wifi/PPPOEInfo$Status;

    .line 205
    iget-object v2, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    const-wide/16 v3, 0x0

    # setter for: Lcom/android/server/PPPOEService;->mConnectedtime:J
    invoke-static {v2, v3, v4}, Lcom/android/server/PPPOEService;->access$302(Lcom/android/server/PPPOEService;J)J

    .line 206
    iget-object v2, p0, Lcom/android/server/PPPOEService$NetdCallbackReceiver;->this$0:Lcom/android/server/PPPOEService;

    const-string v3, "PPPOE_STATE_DISCONNECTED"

    # invokes: Lcom/android/server/PPPOEService;->notifyStatusChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/PPPOEService;->access$400(Lcom/android/server/PPPOEService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x29a -> :sswitch_1
    .end sparse-switch
.end method
