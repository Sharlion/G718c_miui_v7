.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "efid"    # I

    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 75
    const-string v1, "SIMFileHandler"

    const-string v2, "Error: EF Path being returned in null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :sswitch_0
    const-string v1, "SIMFileHandler"

    const-string v2, "[DeftLog]getEFPath() EF_SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "3F007F10"

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v0, "3F007F20"

    goto :goto_0

    .line 71
    :sswitch_2
    const-string v0, "3F007F20"

    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f11 -> :sswitch_2
        0x6f13 -> :sswitch_2
        0x6f14 -> :sswitch_2
        0x6f15 -> :sswitch_2
        0x6f16 -> :sswitch_2
        0x6f17 -> :sswitch_2
        0x6f18 -> :sswitch_2
        0x6f38 -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_1
        0x6f46 -> :sswitch_1
        0x6f60 -> :sswitch_2
        0x6fad -> :sswitch_1
        0x6fc5 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
    .end sparse-switch
.end method

.method public getRoamSmsEFPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "efid"    # I

    .prologue
    .line 84
    const-string v0, "SIMFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DeftLog] efid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v0, "3F007F25"

    return-object v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
