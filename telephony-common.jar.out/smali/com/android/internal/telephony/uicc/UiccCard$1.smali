.class Lcom/android/internal/telephony/uicc/UiccCard$1;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;

.field final synthetic val$isHotSwapSupported:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Z)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->val$isHotSwapSupported:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 262
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v3, "Reboot due to SIM swap"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 264
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->val$isHotSwapSupported:Z

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 268
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 275
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 276
    return-void

    .line 272
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
