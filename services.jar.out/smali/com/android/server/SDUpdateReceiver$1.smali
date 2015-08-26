.class Lcom/android/server/SDUpdateReceiver$1;
.super Ljava/lang/Thread;
.source "SDUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SDUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SDUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/SDUpdateReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/SDUpdateReceiver$1;->this$0:Lcom/android/server/SDUpdateReceiver;

    iput-object p3, p0, Lcom/android/server/SDUpdateReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/SDUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/server/SDUpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.UPDATE_FROM_SD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/server/SDUpdateReceiver$1;->this$0:Lcom/android/server/SDUpdateReceiver;

    const-string v2, "true"

    # invokes: Lcom/android/server/SDUpdateReceiver;->setSDUpdateFlag(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/SDUpdateReceiver;->access$000(Lcom/android/server/SDUpdateReceiver;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UPDATE_FROM_SD_REAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "sdIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/SDUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    const-string v1, "SDUpdateReceiver"

    const-string v2, "!!! UPDATE_FROM_SD !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "sdIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
