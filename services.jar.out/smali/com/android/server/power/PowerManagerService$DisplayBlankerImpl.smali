.class final Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayBlankerImpl"
.end annotation


# instance fields
.field private mBlanked:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 2837
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 2837
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public blankAllDisplays()V
    .locals 6

    .prologue
    .line 2843
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2844
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 2845
    const-string v2, "PowerManagerService"

    const-string v4, "blankAllDisplays, active wakelock as follows..."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2847
    .local v1, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2848
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "active wakelock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2852
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2854
    monitor-enter p0

    .line 2855
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 2856
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    .line 2857
    const/4 v2, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3000(Z)V

    .line 2858
    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3100(Z)V

    .line 2859
    monitor-exit p0

    .line 2860
    return-void

    .line 2859
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2877
    monitor-enter p0

    .line 2878
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blanked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2879
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unblankAllDisplays()V
    .locals 2

    .prologue
    .line 2864
    monitor-enter p0

    .line 2866
    const/4 v0, 0x0

    :try_start_0
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3100(Z)V

    .line 2867
    const/4 v0, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Z)V

    .line 2868
    const-string v0, "PowerManagerService"

    const-string v1, "unblankAllDisplays 1..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    .line 2870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 2871
    const-string v0, "PowerManagerService"

    const-string v1, "unblankAllDisplays2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    monitor-exit p0

    .line 2873
    return-void

    .line 2872
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
