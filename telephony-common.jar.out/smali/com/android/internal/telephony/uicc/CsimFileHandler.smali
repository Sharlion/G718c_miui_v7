.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "efid"    # I

    .prologue
    .line 38
    const/16 v1, 0x6f3a

    if-ne p1, v1, :cond_1

    .line 39
    const-string v1, "wangzhanfeng-20140120-CSIM-ADN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 40
    const-string v0, "3F007F10"

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 63
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 45
    .end local v0    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v1, "CsimFileHandler"

    const-string v2, "[DeftLog]getEFPath() EF_SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :sswitch_1
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_1
        0x6f28 -> :sswitch_1
        0x6f31 -> :sswitch_1
        0x6f32 -> :sswitch_1
        0x6f3a -> :sswitch_1
        0x6f3b -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_1
        0x6f41 -> :sswitch_1
        0x6f44 -> :sswitch_1
        0x6f5a -> :sswitch_1
    .end sparse-switch
.end method

.method public getRoamSmsEFPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "efid"    # I

    .prologue
    .line 72
    const-string v0, "CsimFileHandler"

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

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
