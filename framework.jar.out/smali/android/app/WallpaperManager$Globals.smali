.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_LOCKSCREEN:I = 0x2

.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultLockscreenWallpaper:Landroid/graphics/Bitmap;

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mLockscreen:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 250
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 251
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 252
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 277
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 232
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 232
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 232
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$302(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 232
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockscreenWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentLockscreenLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 403
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v5, "params":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5}, Landroid/app/IWallpaperManager;->getLockscreen(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 405
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 406
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 407
    .local v6, "width":I
    const-string v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 410
    .local v3, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 411
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 418
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 427
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :goto_0
    return-object v7

    .line 414
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :cond_0
    :goto_1
    move-object v7, v8

    .line 427
    goto :goto_0

    .line 417
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catchall_0
    move-exception v7

    .line 418
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 421
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 424
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 419
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 340
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v5, "params":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 342
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 343
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 344
    .local v6, "width":I
    const-string v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 347
    .local v3, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 348
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 355
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 364
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :goto_0
    return-object v7

    .line 351
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :cond_0
    :goto_1
    move-object v7, v8

    .line 364
    goto :goto_0

    .line 354
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catchall_0
    move-exception v7

    .line 355
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 358
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 361
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 356
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method private getDefaultLockscreenWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 434
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v9, "/persist/default_wallpaper/default_wallpaper.jpg"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v2, "defaultWallpaper":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v9, "/persist/default_wallpaper/lockscreen_wallpaper.jpg"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v1, "defaultLockscreenWallpaper":Ljava/io/File;
    const/4 v5, 0x0

    .line 438
    .local v5, "is":Ljava/io/InputStream;
    const-string v9, "lisha"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDefaultWallpaperLocked"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v9, "lisha"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDefaultLockscreenWallpaperLocked"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 443
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 457
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v5, :cond_1

    .line 458
    :try_start_2
    iget-object v9, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v9}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v8

    .line 459
    .local v8, "width":I
    iget-object v9, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v9}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 462
    .local v4, "height":I
    :try_start_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 463
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x0

    invoke-static {v5, v9, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v8, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 469
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 478
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "defaultLockscreenWallpaper":Ljava/io/File;
    .end local v2    # "defaultWallpaper":Ljava/io/File;
    .end local v4    # "height":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "width":I
    :goto_1
    return-object v9

    .line 445
    .restart local v1    # "defaultLockscreenWallpaper":Ljava/io/File;
    .restart local v2    # "defaultWallpaper":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10804ea

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v5

    goto :goto_0

    .line 454
    :catch_0
    move-exception v3

    .line 455
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 475
    .end local v1    # "defaultLockscreenWallpaper":Ljava/io/File;
    .end local v2    # "defaultWallpaper":Ljava/io/File;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v9

    :cond_1
    :goto_2
    move-object v9, v10

    .line 478
    goto :goto_1

    .line 465
    .restart local v1    # "defaultLockscreenWallpaper":Ljava/io/File;
    .restart local v2    # "defaultWallpaper":Ljava/io/File;
    .restart local v4    # "height":I
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v8    # "width":I
    :catch_2
    move-exception v3

    .line 466
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Can\'t decode stream"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 469
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 470
    :catch_3
    move-exception v9

    goto :goto_2

    .line 468
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v9

    .line 469
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 472
    :goto_3
    :try_start_a
    throw v9
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 470
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v10

    goto :goto_1

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v11

    goto :goto_3
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 485
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v9, "/persist/default_wallpaper/default_wallpaper.jpg"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v2, "defaultWallpaper":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v9, "/carrier/Customization/DefaultBackground.jpg"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .local v1, "carrierdefaultWallpaper":Ljava/io/File;
    const/4 v5, 0x0

    .line 491
    .local v5, "is":Ljava/io/InputStream;
    const-string/jumbo v9, "taoyong"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDefaultWallpaperLocked"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDefaultWallpaperLocked"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 498
    :try_start_1
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v11, "in the getDefaultWallpaperLocked of not N861"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 502
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 530
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v5, :cond_1

    .line 531
    :try_start_2
    iget-object v9, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v9}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v8

    .line 532
    .local v8, "width":I
    iget-object v9, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v9}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 535
    .local v4, "height":I
    :try_start_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 536
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x0

    invoke-static {v5, v9, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 537
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v8, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 542
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 551
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "carrierdefaultWallpaper":Ljava/io/File;
    .end local v2    # "defaultWallpaper":Ljava/io/File;
    .end local v4    # "height":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "width":I
    :goto_1
    return-object v9

    .line 505
    .restart local v1    # "carrierdefaultWallpaper":Ljava/io/File;
    .restart local v2    # "defaultWallpaper":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x1080278

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v5

    goto :goto_0

    .line 524
    :catch_0
    move-exception v3

    .line 525
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 548
    .end local v1    # "carrierdefaultWallpaper":Ljava/io/File;
    .end local v2    # "defaultWallpaper":Ljava/io/File;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v9

    :cond_1
    :goto_2
    move-object v9, v10

    .line 551
    goto :goto_1

    .line 538
    .restart local v1    # "carrierdefaultWallpaper":Ljava/io/File;
    .restart local v2    # "defaultWallpaper":Ljava/io/File;
    .restart local v4    # "height":I
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v8    # "width":I
    :catch_2
    move-exception v3

    .line 539
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Can\'t decode stream"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 542
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 543
    :catch_3
    move-exception v9

    goto :goto_2

    .line 541
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v9

    .line 542
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 545
    :goto_3
    :try_start_a
    throw v9
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 543
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v10

    goto :goto_1

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v11

    goto :goto_3
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    .line 328
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 330
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockscreenWallpaper:Landroid/graphics/Bitmap;

    .line 335
    monitor-exit p0

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLockscreenChanged()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    return-void
.end method

.method public peekLockscreenBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnLockDefault"    # Z

    .prologue
    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekLockscreenBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 397
    :goto_0
    return-object v1

    .line 377
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockscreenWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockscreenWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 381
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentLockscreenLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    :goto_1
    if-eqz p2, :cond_3

    .line 389
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 390
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultLockscreenWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockscreenWallpaper:Landroid/graphics/Bitmap;

    .line 391
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockscreenWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current lockscreen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 393
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultLockscreenWallpaper:Landroid/graphics/Bitmap;

    .line 397
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 322
    :goto_0
    return-object v1

    .line 305
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 308
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :goto_1
    if-eqz p2, :cond_3

    .line 315
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 316
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 317
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 319
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 322
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
