.class public Landroid/os/StatFs;
.super Ljava/lang/Object;
.source "StatFs.java"


# instance fields
.field private f_availblk:J

.field private mStat:Llibcore/io/StructStatVfs;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    .line 43
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Llibcore/io/StructStatVfs;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/StatFs;->adjustavailblk(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private static doStat(Ljava/lang/String;)Llibcore/io/StructStatVfs;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Llibcore/io/StructStatVfs;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Llibcore/io/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public adjustavailblk(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x4000

    const-wide/16 v4, 0x100

    const-wide/16 v2, 0x0

    .line 60
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v0, v0, Llibcore/io/StructStatVfs;->f_bavail:J

    iput-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    .line 61
    const-string v0, "/data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 65
    iget-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    sub-long/2addr v0, v6

    iput-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    .line 83
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-wide v2, p0, Landroid/os/StatFs;->f_availblk:J

    goto :goto_0

    .line 74
    :cond_1
    iget-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 76
    iget-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    goto :goto_0

    .line 80
    :cond_2
    iput-wide v2, p0, Landroid/os/StatFs;->f_availblk:J

    goto :goto_0
.end method

.method public getAvailableBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    iget-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    long-to-int v0, v0

    return v0
.end method

.method public getAvailableBlocksLong()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    return-wide v0
.end method

.method public getAvailableBytes()J
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p0, Landroid/os/StatFs;->f_availblk:J

    iget-object v2, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v2, v2, Llibcore/io/StructStatVfs;->f_bsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getBlockCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v0, v0, Llibcore/io/StructStatVfs;->f_blocks:J

    long-to-int v0, v0

    return v0
.end method

.method public getBlockCountLong()J
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v0, v0, Llibcore/io/StructStatVfs;->f_blocks:J

    return-wide v0
.end method

.method public getBlockSize()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v0, v0, Llibcore/io/StructStatVfs;->f_bsize:J

    long-to-int v0, v0

    return v0
.end method

.method public getBlockSizeLong()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v0, v0, Llibcore/io/StructStatVfs;->f_bsize:J

    return-wide v0
.end method

.method public getFreeBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v0, v0, Llibcore/io/StructStatVfs;->f_bfree:J

    long-to-int v0, v0

    return v0
.end method

.method public getFreeBlocksLong()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v0, v0, Llibcore/io/StructStatVfs;->f_bfree:J

    return-wide v0
.end method

.method public getFreeBytes()J
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v0, v0, Llibcore/io/StructStatVfs;->f_bfree:J

    iget-object v2, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v2, v2, Llibcore/io/StructStatVfs;->f_bsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v0, v0, Llibcore/io/StructStatVfs;->f_blocks:J

    iget-object v2, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    iget-wide v2, v2, Llibcore/io/StructStatVfs;->f_bsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public restat(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Llibcore/io/StructStatVfs;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatVfs;

    .line 94
    invoke-virtual {p0, p1}, Landroid/os/StatFs;->adjustavailblk(Ljava/lang/String;)V

    .line 96
    return-void
.end method
