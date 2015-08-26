.class public Landroid/telephony/CdmaEmergencyMessage;
.super Ljava/lang/Object;
.source "CdmaEmergencyMessage.java"

# interfaces
.implements Landroid/telephony/EmergencyMessage;


# static fields
.field public static final CMAS_AMBER:I = 0x1003

.field public static final CMAS_EXTREME:I = 0x1001

.field public static final CMAS_PRESIDENTIAL:I = 0x1000

.field public static final CMAS_SEVERE:I = 0x1002

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CdmaEmergencyMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_IDS:[[I

.field private static final SERVICE_CATEGORY_AMBER_ALERT:I = 0x1003

.field private static final SERVICE_CATEGORY_CMAS_TEST:I = 0x1004

.field private static final SERVICE_CATEGORY_EXTREME_THREAT:I = 0x1001

.field private static final SERVICE_CATEGORY_PRESIDENTIAL:I = 0x1000

.field private static final SERVICE_CATEGORY_SEVERE_THREAT:I = 0x1002


# instance fields
.field private cmasCategory:I

.field private cmasExpireTime:J

.field private cmasResponseType:I

.field private cmasSpecialHandling:I

.field private mBody:Ljava/lang/String;

.field private mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

.field private mLanguageCode:I

.field private mMessageIdentifier:I

.field private mPriority:I

.field private mServiceCategory:I

.field private mSeverity:Landroid/telephony/EmergencyMessage$Severity;

.field private mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

.field private messageRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v5, [I

    const/16 v2, 0x1000

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    const/16 v2, 0x1001

    aput v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v5, [I

    const/16 v3, 0x1002

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [I

    const/16 v3, 0x1003

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/CdmaEmergencyMessage;->MESSAGE_IDS:[[I

    .line 239
    new-instance v0, Landroid/telephony/CdmaEmergencyMessage$1;

    invoke-direct {v0}, Landroid/telephony/CdmaEmergencyMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/CdmaEmergencyMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "CdmaEmergencyMessage Uninitialized"

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "CdmaEmergencyMessage Uninitialized"

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    .line 204
    invoke-direct {p0, p1}, Landroid/telephony/CdmaEmergencyMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CdmaEmergencyMessage$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CdmaEmergencyMessage$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/telephony/CdmaEmergencyMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFromSmsMessage(Landroid/telephony/SmsMessage;)Landroid/telephony/CdmaEmergencyMessage;
    .locals 2
    .param p0, "src"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 184
    new-instance v0, Landroid/telephony/CdmaEmergencyMessage;

    invoke-direct {v0}, Landroid/telephony/CdmaEmergencyMessage;-><init>()V

    .line 185
    .local v0, "message":Landroid/telephony/CdmaEmergencyMessage;
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v1, :cond_0

    .line 200
    :cond_0
    return-object v0
.end method

.method public static getMessageIds(Landroid/telephony/EmergencyMessage$Alerts;)[I
    .locals 2
    .param p0, "alertType"    # Landroid/telephony/EmergencyMessage$Alerts;

    .prologue
    .line 208
    sget-object v0, Landroid/telephony/CdmaEmergencyMessage;->MESSAGE_IDS:[[I

    invoke-virtual {p0}, Landroid/telephony/EmergencyMessage$Alerts;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    .line 228
    invoke-static {}, Landroid/telephony/EmergencyMessage$Severity;->values()[Landroid/telephony/EmergencyMessage$Severity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mSeverity:Landroid/telephony/EmergencyMessage$Severity;

    .line 229
    invoke-static {}, Landroid/telephony/EmergencyMessage$Urgency;->values()[Landroid/telephony/EmergencyMessage$Urgency;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    .line 230
    invoke-static {}, Landroid/telephony/EmergencyMessage$Certainty;->values()[Landroid/telephony/EmergencyMessage$Certainty;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mLanguageCode:I

    .line 232
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getCertainty()Landroid/telephony/EmergencyMessage$Certainty;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    return-object v0
.end method

.method public getCmasExpireTime()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Landroid/telephony/CdmaEmergencyMessage;->cmasExpireTime:J

    return-wide v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mLanguageCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "en"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .locals 2

    .prologue
    .line 93
    const/16 v0, 0x1000

    iget v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_1

    .line 95
    const/16 v0, 0x1112

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    .line 145
    :cond_0
    :goto_0
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    return v0

    .line 97
    :cond_1
    const/16 v0, 0x1001

    iget v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_5

    .line 99
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->IMMEDIATE:Landroid/telephony/EmergencyMessage$Urgency;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->OBSERVED:Landroid/telephony/EmergencyMessage$Certainty;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    if-ne v0, v1, :cond_2

    .line 101
    const/16 v0, 0x1113

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 103
    :cond_2
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->IMMEDIATE:Landroid/telephony/EmergencyMessage$Urgency;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    if-ne v0, v1, :cond_3

    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->LIKELY:Landroid/telephony/EmergencyMessage$Certainty;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    if-ne v0, v1, :cond_3

    .line 105
    const/16 v0, 0x1114

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 107
    :cond_3
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->EXPECTED:Landroid/telephony/EmergencyMessage$Urgency;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    if-ne v0, v1, :cond_4

    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->OBSERVED:Landroid/telephony/EmergencyMessage$Certainty;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    if-ne v0, v1, :cond_4

    .line 109
    const/16 v0, 0x1115

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 111
    :cond_4
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->EXPECTED:Landroid/telephony/EmergencyMessage$Urgency;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->LIKELY:Landroid/telephony/EmergencyMessage$Certainty;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    if-ne v0, v1, :cond_0

    .line 113
    const/16 v0, 0x1116

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 116
    :cond_5
    const/16 v0, 0x1002

    iget v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_9

    .line 118
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->IMMEDIATE:Landroid/telephony/EmergencyMessage$Urgency;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    if-ne v0, v1, :cond_6

    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->OBSERVED:Landroid/telephony/EmergencyMessage$Certainty;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    if-ne v0, v1, :cond_6

    .line 120
    const/16 v0, 0x1117

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 122
    :cond_6
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->IMMEDIATE:Landroid/telephony/EmergencyMessage$Urgency;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    if-ne v0, v1, :cond_7

    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->LIKELY:Landroid/telephony/EmergencyMessage$Certainty;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    if-ne v0, v1, :cond_7

    .line 124
    const/16 v0, 0x1118

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto :goto_0

    .line 126
    :cond_7
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->EXPECTED:Landroid/telephony/EmergencyMessage$Urgency;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    if-ne v0, v1, :cond_8

    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->OBSERVED:Landroid/telephony/EmergencyMessage$Certainty;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    if-ne v0, v1, :cond_8

    .line 128
    const/16 v0, 0x1119

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto/16 :goto_0

    .line 130
    :cond_8
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->EXPECTED:Landroid/telephony/EmergencyMessage$Urgency;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->LIKELY:Landroid/telephony/EmergencyMessage$Certainty;

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    if-ne v0, v1, :cond_0

    .line 132
    const/16 v0, 0x111a

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto/16 :goto_0

    .line 135
    :cond_9
    const/16 v0, 0x1003

    iget v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_a

    .line 137
    const/16 v0, 0x111b

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto/16 :goto_0

    .line 139
    :cond_a
    const/16 v0, 0x1004

    iget v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    if-ne v0, v1, :cond_0

    .line 141
    const/16 v0, 0x111c

    iput v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mMessageIdentifier:I

    goto/16 :goto_0
.end method

.method public getMessageRef()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->messageRef:I

    return v0
.end method

.method public getPriorityIndicator()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mPriority:I

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    return v0
.end method

.method public getSeverity()Landroid/telephony/EmergencyMessage$Severity;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mSeverity:Landroid/telephony/EmergencyMessage$Severity;

    return-object v0
.end method

.method public getUrgency()Landroid/telephony/EmergencyMessage$Urgency;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaEmergencyMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 217
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mServiceCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mSeverity:Landroid/telephony/EmergencyMessage$Severity;

    invoke-virtual {v0}, Landroid/telephony/EmergencyMessage$Severity;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mUrgency:Landroid/telephony/EmergencyMessage$Urgency;

    invoke-virtual {v0}, Landroid/telephony/EmergencyMessage$Urgency;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mCertainty:Landroid/telephony/EmergencyMessage$Certainty;

    invoke-virtual {v0}, Landroid/telephony/EmergencyMessage$Certainty;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Landroid/telephony/CdmaEmergencyMessage;->mLanguageCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    return-void
.end method
