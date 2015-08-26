.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private doWithCheckLoadTotallyDone(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v1, "[DeftLog]doWithCheckLoadTotallyDone()"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadMainDone:Z
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadRoamDone:Z
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v1, "[DeftLog]doWithCheckLoadTotallyDone() !mLoadMainDone || !mLoadRoamDone"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 336
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadMainSms:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadMainSms:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadRoamSms:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadRoamSms:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 322
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private doWithLoadMainSmsDone(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 235
    .local v0, "appType":I
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v5, "[DeftLog]doWithLoadMainSmsDone()"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 237
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 238
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 240
    :try_start_0
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 243
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 244
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->SimSmsRecordSize:I
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$002(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 247
    iget-object v6, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadMainSms:Ljava/util/List;
    invoke-static {v6, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$302(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 250
    iget-object v6, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 261
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v6, "[DeftLog]sendMessage() MainSmsDone EVENT_CHECK_LOAD_TOTALLY_DONE"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v6, 0x1

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadMainDone:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 263
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x16

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 264
    .local v2, "checkMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    monitor-exit v5

    .line 266
    return-void

    .line 254
    .end local v2    # "checkMsg":Landroid/os/Message;
    :cond_1
    const-string v4, "SMS"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v6, "Cannot load Sms records"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private doWithLoadRoamSmsDone(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 272
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 274
    .local v0, "appType":I
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v4, "[DeftLog]doWithLoadRoamSmsDone()"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 276
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 277
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 279
    :try_start_0
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 281
    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v6, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v6, v3, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadRoamSms:Ljava/util/List;
    invoke-static {v5, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 283
    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 296
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v5, "[DeftLog]sendMessage() RoamSmsDone EVENT_CHECK_LOAD_TOTALLY_DONE"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v5, 0x1

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadRoamDone:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 298
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x16

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 299
    .local v2, "checkMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    monitor-exit v4

    .line 301
    return-void

    .line 287
    .end local v2    # "checkMsg":Landroid/os/Message;
    :cond_1
    const-string v3, "SMS"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v5, "Cannot load Sms records"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 129
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 130
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 131
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    :goto_1
    iput-boolean v2, v5, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 132
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    move v2, v3

    .line 131
    goto :goto_1

    .line 137
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 138
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 140
    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 142
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 143
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->SimSmsRecordSize:I
    invoke-static {v2, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$002(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 146
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 149
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 158
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 151
    :cond_2
    :try_start_2
    const-string v2, "SMS"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v4, "Cannot load Sms records"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 154
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 164
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->doWithLoadMainSmsDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 168
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->doWithLoadRoamSmsDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 172
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->doWithCheckLoadTotallyDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 178
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 179
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 180
    :try_start_3
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    .line 181
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 182
    .restart local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->SimSmsRecordSize:I
    invoke-static {v2, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$002(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 183
    const-string v2, "IccSmsInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_LOAD_CDMA_DONE, records.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 186
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 187
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->cdmaLoaded:Z
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Z)Z

    .line 191
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_3
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 189
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v4, "Cannot load Sms cdma records"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 195
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 197
    :try_start_5
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    .line 198
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 199
    .restart local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->SimSmsRecordSize:I
    invoke-static {v2, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$002(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 200
    const-string v2, "IccSmsInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_LOAD_GSM_DONE, records.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->cdmaLoaded:Z
    invoke-static {}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200()Z

    move-result v2

    if-nez v2, :cond_5

    .line 202
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 207
    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 211
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_5
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->cdmaLoaded:Z
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Z)Z

    .line 212
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit v3

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    .line 204
    .restart local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_5
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 209
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v4, "Cannot load Sms gsm records"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    .line 219
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 220
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 221
    :try_start_7
    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_7

    :goto_6
    iput-boolean v2, v5, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 222
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v4

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v2

    :cond_7
    move v2, v3

    .line 221
    goto :goto_6

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
    .end sparse-switch
.end method
