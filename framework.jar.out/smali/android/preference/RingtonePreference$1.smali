.class Landroid/preference/RingtonePreference$1;
.super Ljava/lang/Object;
.source "RingtonePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/RingtonePreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/RingtonePreference;


# direct methods
.method constructor <init>(Landroid/preference/RingtonePreference;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Landroid/preference/RingtonePreference$1;->this$0:Landroid/preference/RingtonePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 165
    # setter for: Landroid/preference/RingtonePreference;->mSelectedItem:I
    invoke-static {p2}, Landroid/preference/RingtonePreference;->access$002(I)I

    .line 166
    iget-object v0, p0, Landroid/preference/RingtonePreference$1;->this$0:Landroid/preference/RingtonePreference;

    # invokes: Landroid/preference/RingtonePreference;->startActivity()V
    invoke-static {v0}, Landroid/preference/RingtonePreference;->access$100(Landroid/preference/RingtonePreference;)V

    .line 167
    return-void
.end method
