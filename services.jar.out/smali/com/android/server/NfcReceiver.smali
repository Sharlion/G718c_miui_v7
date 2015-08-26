.class public Lcom/android/server/NfcReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcReceiver.java"


# static fields
.field public static final ACTION_CLOSE_NFC:Ljava/lang/String; = "android.intent.action.CLOSE_NFC"

.field private static final TAG:Ljava/lang/String; = "NfcReceiver"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_NFC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NfcReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 38
    iget-object v0, p0, Lcom/android/server/NfcReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 40
    const-string v0, "NfcReceiver"

    const-string v1, "new NfcAdapter is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/NfcReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 45
    const-string v0, "NfcReceiver"

    const-string v1, "NFC is already closed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "NfcReceiver"

    const-string v1, "Diag close NFC fuction!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/server/NfcReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method
