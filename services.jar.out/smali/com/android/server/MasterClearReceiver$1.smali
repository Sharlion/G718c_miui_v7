.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;
    
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 57
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.UPDATE_FROM_SD_REAL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    const-string v7, "MasterClear"

    const-string v8, "Update System from SD!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/RecoverySystem;->updateSystemFromSD(Landroid/content/Context;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 65
    sget-boolean v7, Landroid/util/Config;->FEATURE_AUTORESTORE_USERDATA:Z

    if-eqz v7, :cond_0

    .line 67
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 68
    .local v5, "sStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getUsbStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 70
    .local v6, "storage":Landroid/os/storage/StorageVolume;
    const-string v7, "MasterClear"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restore="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v7, "MasterClear"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restore="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v9}, Landroid/os/RecoverySystem;->needRestoreDataFromSD(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v7, "mounted"

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/RecoverySystem;->needRestoreDataFromSD(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    const-string v7, "MasterClear"

    const-string v8, "Start auto restore activity!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.RESTORE_USER_DATA"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 115
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "sStorageManager":Landroid/os/storage/StorageManager;
    .end local v6    # "storage":Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "MasterClear"

    const-string v8, "Can\'t perform master clear/factory reset"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v8, "qrdupdate"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v8, "packagefile"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 93
    .local v4, "packagefile":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 94
    const-string v7, "MasterClear"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "qrdupdate install start ...:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v7, v4}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V

    goto/16 :goto_0

    .line 100
    .end local v4    # "packagefile":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v7, "/persist/language.conf"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "languageFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v7, "/persist/country.conf"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "countryFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 104
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 106
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 111
    :cond_5
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V

    .line 112
    const-string v7, "MasterClear"

    const-string v8, "Still running after master clear?!"

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
