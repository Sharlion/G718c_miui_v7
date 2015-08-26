.class Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;
.super Ljava/lang/Thread;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->rebindWapPushManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field final synthetic val$wapPushConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->this$1:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->val$wapPushConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 136
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->this$1:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    # getter for: Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->access$100(Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->this$1:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    # getter for: Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->access$200(Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->val$wapPushConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 140
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WAP PUSH"

    const-string v2, "sleep interrupted."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
