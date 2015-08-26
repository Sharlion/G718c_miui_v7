.class public Landroid/telephony/SmsCbMessage;
.super Ljava/lang/Object;
.source "SmsCbMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE:I = 0x3

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE_IMMEDIATE:I = 0x0

.field public static final GEOGRAPHICAL_SCOPE_LA_WIDE:I = 0x2

.field public static final GEOGRAPHICAL_SCOPE_PLMN_WIDE:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String; = "SMSCB"

.field public static final MESSAGE_FORMAT_3GPP:I = 0x1

.field public static final MESSAGE_FORMAT_3GPP2:I = 0x2

.field public static final MESSAGE_PRIORITY_EMERGENCY:I = 0x3

.field public static final MESSAGE_PRIORITY_INTERACTIVE:I = 0x1

.field public static final MESSAGE_PRIORITY_NORMAL:I = 0x0

.field public static final MESSAGE_PRIORITY_URGENT:I = 0x2


# instance fields
.field private final mBody:Ljava/lang/String;

.field private mCmasExpireTime:J

.field private mCmasSpecialHandling:I

.field private final mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final mGeographicalScope:I

.field private final mLanguage:Ljava/lang/String;

.field private final mLocation:Landroid/telephony/SmsCbLocation;

.field private final mMessageFormat:I

.field private mMessageIdentifier:I

.field private final mPriority:I

.field private final mSerialNumber:I

.field private final mServiceCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Landroid/telephony/SmsCbMessage$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V
    .locals 0
    .param p1, "messageFormat"    # I
    .param p2, "geographicalScope"    # I
    .param p3, "serialNumber"    # I
    .param p4, "location"    # Landroid/telephony/SmsCbLocation;
    .param p5, "serviceCategory"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "body"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "etwsWarningInfo"    # Landroid/telephony/SmsCbEtwsInfo;
    .param p10, "cmasWarningInfo"    # Landroid/telephony/SmsCbCmasInfo;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    .line 181
    iput p2, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    .line 182
    iput p3, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    .line 183
    iput-object p4, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    .line 184
    iput p5, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    .line 185
    iput-object p6, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 186
    iput-object p7, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 187
    iput p8, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    .line 188
    iput-object p9, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 189
    iput-object p10, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    .line 197
    new-instance v1, Landroid/telephony/SmsCbLocation;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbLocation;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 203
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 217
    :pswitch_0
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 218
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 220
    :goto_0
    return-void

    .line 206
    :pswitch_1
    new-instance v1, Landroid/telephony/SmsCbEtwsInfo;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbEtwsInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 207
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_0

    .line 212
    :pswitch_2
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 213
    new-instance v1, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbCmasInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsCbMessage;
    .locals 1
    .param p0, "pdu"    # [B

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public appendToBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 516
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public getCmasCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    packed-switch v0, :pswitch_data_0

    .line 365
    const-string v0, "Reserved"

    :goto_0
    return-object v0

    .line 353
    :pswitch_0
    const-string v0, "Geo"

    goto :goto_0

    .line 354
    :pswitch_1
    const-string v0, "Met"

    goto :goto_0

    .line 355
    :pswitch_2
    const-string v0, "Safety"

    goto :goto_0

    .line 356
    :pswitch_3
    const-string v0, "Security"

    goto :goto_0

    .line 357
    :pswitch_4
    const-string v0, "Rescue"

    goto :goto_0

    .line 358
    :pswitch_5
    const-string v0, "Fire"

    goto :goto_0

    .line 359
    :pswitch_6
    const-string v0, "Health"

    goto :goto_0

    .line 360
    :pswitch_7
    const-string v0, "Env"

    goto :goto_0

    .line 361
    :pswitch_8
    const-string v0, "Transport"

    goto :goto_0

    .line 362
    :pswitch_9
    const-string v0, "Infra"

    goto :goto_0

    .line 363
    :pswitch_a
    const-string v0, "CBRNE"

    goto :goto_0

    .line 364
    :pswitch_b
    const-string v0, "Other"

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getCmasCertainty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    packed-switch v0, :pswitch_data_0

    .line 415
    const-string v0, "UNDEFINED"

    :goto_0
    return-object v0

    .line 413
    :pswitch_0
    const-string v0, "OBSERVED"

    goto :goto_0

    .line 414
    :pswitch_1
    const-string v0, "LIKELY"

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCmasExpireTime()J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Landroid/telephony/SmsCbMessage;->mCmasExpireTime:J

    return-wide v0
.end method

.method public getCmasResponseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    packed-switch v0, :pswitch_data_0

    .line 379
    const-string v0, "Reserved"

    :goto_0
    return-object v0

    .line 371
    :pswitch_0
    const-string v0, "Shelter"

    goto :goto_0

    .line 372
    :pswitch_1
    const-string v0, "Evacuate"

    goto :goto_0

    .line 373
    :pswitch_2
    const-string v0, "Prepare"

    goto :goto_0

    .line 374
    :pswitch_3
    const-string v0, "Execute"

    goto :goto_0

    .line 375
    :pswitch_4
    const-string v0, "Monitor"

    goto :goto_0

    .line 376
    :pswitch_5
    const-string v0, "Avoid"

    goto :goto_0

    .line 377
    :pswitch_6
    const-string v0, "Assess"

    goto :goto_0

    .line 378
    :pswitch_7
    const-string v0, "None"

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getCmasSeverity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    packed-switch v0, :pswitch_data_0

    .line 399
    const-string v0, "UNDEFINED"

    :goto_0
    return-object v0

    .line 397
    :pswitch_0
    const-string v0, "EXTREME"

    goto :goto_0

    .line 398
    :pswitch_1
    const-string v0, "SEVERE"

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCmasSpecialHandling()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mCmasSpecialHandling:I

    packed-switch v0, :pswitch_data_0

    .line 391
    const-string v0, "RESERVED"

    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    const-string v0, "Presidential-Level Alert"

    goto :goto_0

    .line 387
    :pswitch_1
    const-string v0, "Extreme Threat to Life and Property"

    goto :goto_0

    .line 388
    :pswitch_2
    const-string v0, "Severe Threat to Life and Property"

    goto :goto_0

    .line 389
    :pswitch_3
    const-string v0, "AMBER (Child Abduction Emergency)"

    goto :goto_0

    .line 390
    :pswitch_4
    const-string v0, "CMAS Test Message"

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCmasUrgency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    packed-switch v0, :pswitch_data_0

    .line 407
    const-string v0, "UNDEFINED"

    :goto_0
    return-object v0

    .line 405
    :pswitch_0
    const-string v0, "IMMEDIATE"

    goto :goto_0

    .line 406
    :pswitch_1
    const-string v0, "EXPECTED"

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method public getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method public getGeographicalScope()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/telephony/SmsCbLocation;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageFormat()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    return v0
.end method

.method public getMessageIdentifier()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 421
    const-string v0, "SMSCB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCmasWarningInfo.mUrgency ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v2, v2, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v0, "SMSCB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCmasWarningInfo.mCertainty ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v2, v2, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v0, "SMSCB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceCategory ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/16 v0, 0x1000

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_2

    .line 425
    const/16 v0, 0x1112

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    .line 451
    :cond_0
    :goto_0
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    if-nez v0, :cond_1

    .line 452
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    .line 454
    :cond_1
    const-string v0, "SMSCB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMessageIdentifier ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    return v0

    .line 426
    :cond_2
    const/16 v0, 0x1001

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_6

    .line 427
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    if-nez v0, :cond_3

    .line 428
    const/16 v0, 0x1113

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    if-ne v3, v0, :cond_4

    .line 430
    const/16 v0, 0x1114

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 431
    :cond_4
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    if-ne v3, v0, :cond_5

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    if-nez v0, :cond_5

    .line 432
    const/16 v0, 0x1115

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 433
    :cond_5
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    if-ne v3, v0, :cond_0

    .line 434
    const/16 v0, 0x1116

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 436
    :cond_6
    const/16 v0, 0x1002

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_a

    .line 437
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    if-nez v0, :cond_7

    .line 438
    const/16 v0, 0x1117

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto/16 :goto_0

    .line 439
    :cond_7
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    if-ne v3, v0, :cond_8

    .line 440
    const/16 v0, 0x1118

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto/16 :goto_0

    .line 441
    :cond_8
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    if-ne v3, v0, :cond_9

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    if-nez v0, :cond_9

    .line 442
    const/16 v0, 0x1119

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto/16 :goto_0

    .line 443
    :cond_9
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    iget v0, v0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    if-ne v3, v0, :cond_0

    .line 444
    const/16 v0, 0x111a

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto/16 :goto_0

    .line 446
    :cond_a
    const/16 v0, 0x1003

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_b

    .line 447
    const/16 v0, 0x111b

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto/16 :goto_0

    .line 448
    :cond_b
    const/16 v0, 0x1004

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_0

    .line 449
    const/16 v0, 0x111c

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageIdentifier:I

    goto/16 :goto_0
.end method

.method public getMessagePriority()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    return v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    return v0
.end method

.method public isCmasMessage()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyMessage()Z
    .locals 2

    .prologue
    .line 491
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEtwsMessage()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbMessage{geographicalScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v2}, Landroid/telephony/SmsCbEtwsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 230
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbLocation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    .line 240
    const/16 v0, 0x45

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbEtwsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 250
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_1

    .line 244
    const/16 v0, 0x43

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbCmasInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 248
    :cond_1
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
