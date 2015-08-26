.class Landroid/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2129
    iput-object p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Landroid/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2129
    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$702(Landroid/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2129
    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2135
    iget-object v1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2136
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2140
    :goto_0
    return-void

    .line 2139
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v3, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method
