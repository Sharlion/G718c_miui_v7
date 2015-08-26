.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_INVALID_DISPLAY:I = -0x9

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_ANIMATING:I = 0x8

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static sWindowManagerService:Landroid/view/IWindowManager;

.field private static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final mDyingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNeedsEglTerminate:Z

.field private final mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    .line 122
    return-void
.end method

.method static synthetic access$000(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerGlobal;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerGlobal;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "required"    # Z

    .prologue
    .line 378
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 379
    .local v0, "index":I
    if-eqz p2, :cond_0

    if-gez v0, :cond_0

    .line 380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to window manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_0
    return v0
.end method

.method public static getInstance()Landroid/view/WindowManagerGlobal;
    .locals 2

    .prologue
    .line 125
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/view/WindowManagerGlobal;

    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    .line 129
    :cond_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getWindowManagerService()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 134
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 136
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    .line 139
    :cond_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v1

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 2
    .param p0, "root"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowSession()Landroid/view/IWindowSession;
    .locals 7

    .prologue
    .line 144
    const-class v5, Landroid/view/WindowManagerGlobal;

    monitor-enter v5

    .line 145
    :try_start_0
    sget-object v4, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 147
    :try_start_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 148
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 149
    .local v3, "windowManager":Landroid/view/IWindowManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v4

    sput-object v4, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    .line 151
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 152
    .local v0, "animatorScale":F
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v0    # "animatorScale":F
    .end local v3    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v4, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v5

    return-object v4

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "Failed to open window session"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public static peekWindowSession()Landroid/view/IWindowSession;
    .locals 2

    .prologue
    .line 162
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 163
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v1

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeViewLocked(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 347
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 348
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    .line 350
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 351
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 352
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 353
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 356
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    move-result v0

    .line 357
    .local v0, "deferred":Z
    if-eqz v3, :cond_1

    .line 358
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 359
    if-eqz v0, :cond_1

    .line 360
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "view must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 194
    :cond_0
    if-nez p3, :cond_1

    .line 195
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "display must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 197
    :cond_1
    instance-of v9, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v9, :cond_2

    .line 198
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Params must be WindowManager.LayoutParams"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    const/4 v10, 0x0

    invoke-static {p1, p2, v10}, Lmiui/util/ScreenshotDrawable;->processBlurBehindFlag(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    move-object v8, p2

    .line 201
    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 204
    .local v8, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "contextString":Ljava/lang/String;
    const-string v9, "com.android.launcher2.Launcher@"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "com.zte.search.MiSearch@"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "com.lqsoft.launcher"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 208
    :cond_3
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x4000000

    or-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 212
    :cond_4
    if-eqz p4, :cond_5

    .line 213
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    :cond_5
    const/4 v6, 0x0

    .line 219
    .local v6, "panelParentView":Landroid/view/View;
    iget-object v10, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 221
    :try_start_0
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v9, :cond_6

    .line 222
    new-instance v9, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v9, p0}, Landroid/view/WindowManagerGlobal$1;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 231
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v9}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 234
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v5

    .line 235
    .local v5, "index":I
    if-ltz v5, :cond_7

    .line 236
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v9, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 238
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewRootImpl;

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->doDie()V

    .line 248
    :cond_7
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x3e8

    if-lt v9, v11, :cond_a

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7cf

    if-gt v9, v11, :cond_a

    .line 250
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 251
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_a

    .line 252
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v9}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    iget-object v11, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v9, v11, :cond_8

    .line 253
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 251
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_9
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "View "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has already been added to the window manager."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 265
    .end local v5    # "index":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 258
    .restart local v5    # "index":I
    :cond_a
    :try_start_1
    new-instance v7, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-direct {v7, v9, v0}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 260
    .local v7, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {p1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    invoke-virtual {v7, p1, v8, v6}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    return-void

    .line 270
    :catch_0
    move-exception v3

    .line 272
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v10, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 273
    const/4 v9, 0x0

    :try_start_3
    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v5

    .line 274
    if-ltz v5, :cond_b

    .line 275
    const/4 v9, 0x1

    invoke-direct {p0, v5, v9}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 277
    :cond_b
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 278
    throw v3

    .line 277
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9
.end method

.method public changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opaque"    # Z

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 514
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 515
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    .line 516
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V

    .line 517
    monitor-exit v2

    goto :goto_0

    .line 520
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 514
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 520
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 323
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 325
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 328
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_2

    .line 329
    :cond_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 332
    .local v3, "root":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_1

    .line 333
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has leaked window "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " that was originally added here"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 336
    .local v2, "leak":Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 337
    const-string v4, "WindowManager"

    const-string v6, ""

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v2    # "leak":Landroid/view/WindowLeaked;
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 325
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_3
    monitor-exit v5

    .line 344
    return-void

    .line 343
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method doRemoveView(Landroid/view/ViewRootImpl;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 366
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 367
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 368
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 369
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 370
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 371
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 372
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 374
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    monitor-exit v3

    .line 375
    return-void

    .line 374
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 427
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 428
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v7, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 430
    .local v7, "pw":Ljava/io/PrintWriter;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 431
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 433
    .local v1, "count":I
    const-string v11, "Profile data in ms:"

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 436
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewRootImpl;

    .line 437
    .local v9, "root":Landroid/view/ViewRootImpl;
    invoke-static {v9}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "name":Ljava/lang/String;
    const-string v11, "\n\t%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 440
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 442
    .local v8, "renderer":Landroid/view/HardwareRenderer;
    if-eqz v8, :cond_0

    .line 443
    invoke-virtual {v8, v7}, Landroid/view/HardwareRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;)V

    .line 435
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 447
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "renderer":Landroid/view/HardwareRenderer;
    .end local v9    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    const-string v11, "\nView hierarchy:\n"

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    const/4 v10, 0x0

    .line 450
    .local v10, "viewsCount":I
    const/4 v2, 0x0

    .line 451
    .local v2, "displayListsSize":I
    const/4 v11, 0x2

    new-array v5, v11, [I

    .line 453
    .local v5, "info":[I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 454
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewRootImpl;

    .line 455
    .restart local v9    # "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v9, v5}, Landroid/view/ViewRootImpl;->dumpGfxInfo([I)V

    .line 457
    invoke-static {v9}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    .line 458
    .restart local v6    # "name":Ljava/lang/String;
    const-string v11, "  %s\n  %d views, %.2f kB of display lists"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x1

    aget v15, v5, v15

    int-to-float v15, v15

    const/high16 v16, 0x44800000    # 1024.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 460
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 462
    .restart local v8    # "renderer":Landroid/view/HardwareRenderer;
    if-eqz v8, :cond_2

    .line 463
    const-string v11, ", %d frames rendered"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->getFrameCount()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 465
    :cond_2
    const-string v11, "\n\n"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 467
    const/4 v11, 0x0

    aget v11, v5, v11

    add-int/2addr v10, v11

    .line 468
    const/4 v11, 0x1

    aget v11, v5, v11

    add-int/2addr v2, v11

    .line 453
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 471
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "renderer":Landroid/view/HardwareRenderer;
    .end local v9    # "root":Landroid/view/ViewRootImpl;
    :cond_3
    const-string v11, "\nTotal ViewRootImpl: %d\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 472
    const-string v11, "Total Views:        %d\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 473
    const-string v11, "Total DisplayList:  %.2f kB\n\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    int-to-float v15, v2

    const/high16 v16, 0x44800000    # 1024.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 474
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 478
    return-void

    .line 474
    .end local v1    # "count":I
    .end local v2    # "displayListsSize":I
    .end local v4    # "i":I
    .end local v5    # "info":[I
    .end local v10    # "viewsCount":I
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 476
    :catchall_1
    move-exception v11

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    throw v11
.end method

.method public endTrimMemory()V
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Landroid/view/HardwareRenderer;->endTrimMemory()V

    .line 412
    iget-boolean v0, p0, Landroid/view/WindowManagerGlobal;->mNeedsEglTerminate:Z

    if-eqz v0, :cond_0

    .line 413
    invoke-static {}, Landroid/opengl/ManagedEGLContext;->doTerminate()Z

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManagerGlobal;->mNeedsEglTerminate:Z

    .line 416
    :cond_0
    return-void
.end method

.method public getRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 180
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 181
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 182
    .local v1, "root":Landroid/view/ViewRootImpl;
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    monitor-exit v3

    .line 186
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :goto_1
    return-object v2

    .line 180
    .restart local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    monitor-exit v3

    .line 186
    const/4 v2, 0x0

    goto :goto_1

    .line 184
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getViewRootNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 168
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 169
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 170
    .local v2, "numRoots":I
    new-array v1, v2, [Ljava/lang/String;

    .line 171
    .local v1, "mViewRoots":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 172
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    monitor-exit v4

    return-object v1

    .line 175
    .end local v0    # "i":I
    .end local v1    # "mViewRoots":[Ljava/lang/String;
    .end local v2    # "numRoots":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeView(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "immediate"    # Z

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "view must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 309
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 310
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 312
    if-ne v0, p1, :cond_1

    .line 313
    monitor-exit v3

    return-void

    .line 316
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    .end local v0    # "curView":Landroid/view/View;
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 498
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 499
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 500
    .local v1, "count":I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 502
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 503
    .local v3, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 506
    return-void

    .line 505
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local p1    # "config":Landroid/content/res/Configuration;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :catchall_1
    move-exception v4

    move-object p1, v0

    .end local v0    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    goto :goto_1
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "stopped"    # Z

    .prologue
    .line 486
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 487
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 488
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 489
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1

    .line 490
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 491
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setStopped(Z)V

    .line 488
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_2
    monitor-exit v4

    .line 495
    return-void

    .line 494
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public startTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/16 v3, 0x50

    .line 386
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    if-ge p1, v3, :cond_0

    const/16 v1, 0x3c

    if-lt p1, v1, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-nez v1, :cond_3

    .line 394
    :cond_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 395
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 396
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 395
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 398
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManagerGlobal;->mNeedsEglTerminate:Z

    .line 401
    invoke-static {v3}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    .line 407
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 398
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 405
    :cond_3
    invoke-static {p1}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    goto :goto_1
.end method

.method public trimLocalMemory()V
    .locals 3

    .prologue
    .line 419
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 420
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 421
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->destroyHardwareLayers()V

    .line 420
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 423
    :cond_0
    monitor-exit v2

    .line 424
    return-void

    .line 423
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "view must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :cond_0
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_1

    .line 287
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Params must be WindowManager.LayoutParams"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v4, 0x1

    invoke-static {p1, p2, v4}, Lmiui/util/ScreenshotDrawable;->processBlurBehindFlag(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    move-object v2, p2

    .line 290
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 292
    .local v2, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 295
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    .line 296
    .local v0, "index":I
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 297
    .local v1, "root":Landroid/view/ViewRootImpl;
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 298
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 300
    monitor-exit v4

    .line 301
    return-void

    .line 300
    .end local v0    # "index":I
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
