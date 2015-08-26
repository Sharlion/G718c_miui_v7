.class Lcom/android/server/power/PowerManagerService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayPowerController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 1845
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProximityNegative()V
    .locals 4

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1866
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 1867
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$876(Lcom/android/server/power/PowerManagerService;I)I

    .line 1874
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpInternal(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;J)V

    .line 1876
    monitor-exit v1

    .line 1877
    return-void

    .line 1876
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProximityPositive()V
    .locals 3

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1857
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 1858
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$876(Lcom/android/server/power/PowerManagerService;I)I

    .line 1859
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)V

    .line 1860
    monitor-exit v1

    .line 1861
    return-void

    .line 1860
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStateChanged()V
    .locals 3

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1849
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$876(Lcom/android/server/power/PowerManagerService;I)I

    .line 1850
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)V

    .line 1851
    monitor-exit v1

    .line 1852
    return-void

    .line 1851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
