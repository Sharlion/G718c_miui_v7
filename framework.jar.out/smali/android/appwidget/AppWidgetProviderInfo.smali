.class public Landroid/appwidget/AppWidgetProviderInfo;
.super Ljava/lang/Object;
.source "AppWidgetProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_ZTEWIDGET:Ljava/lang/String; = "is_ztewidget"

.field public static final RESIZE_BOTH:I = 0x3

.field public static final RESIZE_HORIZONTAL:I = 0x1

.field public static final RESIZE_NONE:I = 0x0

.field public static final RESIZE_VERTICAL:I = 0x2

.field public static final WIDGET_CATEGORY_HOME_SCREEN:I = 0x1

.field public static final WIDGET_CATEGORY_KEYGUARD:I = 0x2

.field public static ZTEWIDGET_LAUNCHER_MODE:Ljava/lang/String;

.field public static ZTEWIDGET_LIST_MODE:Ljava/lang/String;


# instance fields
.field public autoAdvanceViewId:I

.field public configure:Landroid/content/ComponentName;

.field public icon:I

.field public initialKeyguardLayout:I

.field public initialLayout:I

.field public isZTEWidget:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public minHeight:I

.field public minResizeHeight:I

.field public minResizeWidth:I

.field public minWidth:I

.field public previewImage:I

.field public provider:Landroid/content/ComponentName;

.field public resizeMode:I

.field public updatePeriodMillis:I

.field public widgetCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "is_ztewidget_list_mode"

    sput-object v0, Landroid/appwidget/AppWidgetProviderInfo;->ZTEWIDGET_LIST_MODE:Ljava/lang/String;

    .line 43
    const-string v0, "is_zte_launcher_mode"

    sput-object v0, Landroid/appwidget/AppWidgetProviderInfo;->ZTEWIDGET_LAUNCHER_MODE:Ljava/lang/String;

    .line 312
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo$1;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo$1;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 239
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->isZTEWidget:Ljava/lang/String;

    .line 248
    return-void
.end method


# virtual methods
.method public clone()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 284
    .local v0, "that":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 285
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 286
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 287
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 288
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 289
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 290
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 291
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 292
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_1
    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 293
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_2
    iput-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 294
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 295
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 296
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 297
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 298
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 300
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->isZTEWidget:Ljava/lang/String;

    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->isZTEWidget:Ljava/lang/String;

    .line 302
    return-object v0

    .line 284
    :cond_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1

    .line 293
    :cond_2
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidgetProviderInfo(provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 257
    :goto_0
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 270
    :goto_1
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->isZTEWidget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
