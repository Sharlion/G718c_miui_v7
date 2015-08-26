.class public Lcom/android/internal/app/RestoreDataActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RestoreDataActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final POSITIVE_BUTTON:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 71
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 72
    invoke-static {p0}, Landroid/os/RecoverySystem;->startRestoreActivity(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Landroid/os/RecoverySystem;->rmUpdateFlagFile(Landroid/content/Context;)V

    .line 74
    const-string v0, "RestoreDataActivity"

    const-string v1, "restoresucc!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/RestoreDataActivity;->finish()V

    .line 84
    return-void

    .line 78
    :cond_0
    invoke-static {p0}, Landroid/os/RecoverySystem;->rmUpdateFlagFile(Landroid/content/Context;)V

    .line 79
    const-string v0, "RestoreDataActivity"

    const-string v1, "restorefails!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v1, "RestoreDataActivity"

    const-string v2, "onCreate!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/internal/app/RestoreDataActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 45
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108008a

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 46
    const v1, 0x1040019

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RestoreDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 47
    const v1, 0x104001a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RestoreDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 48
    const v1, 0x104001b

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RestoreDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 49
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RestoreDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 51
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    iget-object v1, p0, Lcom/android/internal/app/RestoreDataActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/app/RestoreDataActivity;->setupAlert()V

    .line 54
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 88
    const-string v0, "RestoreDataActivity"

    const-string v1, "restorefails!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 59
    return-void
.end method
