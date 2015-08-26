.class public Lcom/android/server/SDUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDUpdateReceiver.java"


# static fields
.field private static BACKUP_SUCCESS_FLAG:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "SDUpdateReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    const-string v1, "/persist"

    const-string v2, "backup_result"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SDUpdateReceiver;->BACKUP_SUCCESS_FLAG:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SDUpdateReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SDUpdateReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/SDUpdateReceiver;->setSDUpdateFlag(Ljava/lang/String;)V

    return-void
.end method

.method private setSDUpdateFlag(Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    sget-object v2, Lcom/android/server/SDUpdateReceiver;->BACKUP_SUCCESS_FLAG:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-object v2, Lcom/android/server/SDUpdateReceiver;->BACKUP_SUCCESS_FLAG:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 66
    :cond_0
    sget-object v2, Lcom/android/server/SDUpdateReceiver;->BACKUP_SUCCESS_FLAG:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :try_start_1
    const-string v2, "SDUpdateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFile() mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 777 /data/upversion/backup_result"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 71
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/android/server/SDUpdateReceiver;->BACKUP_SUCCESS_FLAG:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 72
    .local v1, "output":Ljava/io/BufferedWriter;
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .end local v1    # "output":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SDUpdateReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 77
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 78
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v2, "SDUpdateReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string v1, "SDUpdateReceiver"

    const-string v2, "!!! receive update intent !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/android/server/SDUpdateReceiver$1;

    const-string v1, "sdupdate"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/SDUpdateReceiver$1;-><init>(Lcom/android/server/SDUpdateReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    .line 56
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method
