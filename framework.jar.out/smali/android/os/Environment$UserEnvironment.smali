.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final mEmulatedDirForDirect:Ljava/io/File;

.field private final mExternalDirsForApp:[Ljava/io/File;

.field private final mExternalDirsForVold:[Ljava/io/File;


# direct methods
.method public constructor <init>(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v6, "EXTERNAL_STORAGE"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "rawExternalStorage":Ljava/lang/String;
    const-string v6, "EMULATED_STORAGE_SOURCE"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "rawEmulatedSource":Ljava/lang/String;
    const-string v6, "EMULATED_STORAGE_TARGET"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "rawEmulatedTarget":Ljava/lang/String;
    const-string v6, "MEDIA_STORAGE"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "rawMediaStorage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    const-string v5, "/data/media"

    .line 132
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 133
    .local v1, "externalForVold":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    .local v0, "externalForApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    const-string v6, "Environment"

    const-string v7, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v4, "/storage/sdcard0"

    .line 158
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    iput-object v6, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    iput-object v6, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    .line 175
    return-void
.end method


# virtual methods
.method public buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirsForVold()[Ljava/io/File;
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "cache"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "files"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalDirsForApp()[Ljava/io/File;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    return-object v0
.end method

.method public getExternalDirsForVold()[Ljava/io/File;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMediaDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    return-object v0
.end method
