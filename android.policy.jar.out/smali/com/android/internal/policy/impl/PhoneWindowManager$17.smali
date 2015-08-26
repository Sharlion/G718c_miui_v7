.class Lcom/android/internal/policy/impl/PhoneWindowManager$17;
.super Landroid/widget/ImageView;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->PlayGestureAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 4204
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 4206
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 4207
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAnimationWindowToken:Landroid/os/IBinder;

    .line 4208
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAnimationWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 4209
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAnimationWindowToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/WindowManagerPolicy$ScreenOnListener;

    move-result-object v2

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 4211
    :cond_0
    return-void
.end method
