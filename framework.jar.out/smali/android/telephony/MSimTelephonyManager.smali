.class public Landroid/telephony/MSimTelephonyManager;
.super Ljava/lang/Object;
.source "MSimTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MSimTelephonyManager$1;,
        Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    }
.end annotation


# static fields
.field protected static multiSimConfig:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/MSimTelephonyManager;

.field protected static sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 85
    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    .line 90
    :goto_0
    const-string/jumbo v1, "telephony.msim.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    move-result-object v1

    sput-object v1, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    .line 93
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    return-void

    .line 87
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const-string/jumbo v0, "phone_msim"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getCurrentSubscription(I)Landroid/os/Bundle;
    .locals 4
    .param p0, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 1193
    const/4 v1, 0x0

    .line 1195
    .local v1, "iTelephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :try_start_0
    const-string/jumbo v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1196
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCurrentSubscription(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1200
    :goto_0
    return-object v2

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1199
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1200
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method private getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 1

    .prologue
    .line 850
    const-string/jumbo v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1130
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    .line 1133
    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1134
    :catch_0
    move-exception v2

    .line 1139
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 277
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    .line 281
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 263
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 267
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 269
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1010
    const/4 v1, 0x0

    .line 1011
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1014
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 1016
    aget-object v1, v2, p1

    .line 1019
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 1159
    const-string v0, ""

    .line 1160
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1161
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1164
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1168
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1169
    const-string v2, ""

    .line 1170
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 1171
    aget-object v2, v4, v1

    .line 1173
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1176
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    if-eqz v4, :cond_3

    .line 1180
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 1181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1184
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 973
    const-string v3, ""

    .line 974
    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 975
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 978
    const-string p2, ""

    .line 981
    :cond_0
    if-eqz v2, :cond_1

    .line 982
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 985
    :cond_1
    if-gez p1, :cond_2

    .line 1002
    :goto_0
    return-void

    .line 987
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 988
    const-string v4, ""

    .line 989
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 990
    aget-object v4, v1, v0

    .line 992
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 995
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 996
    if-eqz v1, :cond_5

    .line 997
    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 998
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1001
    :cond_5
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllCellInfo(I)Ljava/util/List;
    .locals 3
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 959
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getAllCellInfo(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 963
    :goto_0
    return-object v1

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 962
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 963
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 797
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 803
    :goto_0
    return v1

    .line 798
    :catch_0
    move-exception v0

    .line 800
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 801
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 803
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 903
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 908
    :goto_0
    return v1

    .line 904
    :catch_0
    move-exception v0

    .line 906
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 907
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 908
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 921
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 926
    :goto_0
    return v1

    .line 922
    :catch_0
    move-exception v0

    .line 924
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 925
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 926
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 937
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriText(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 942
    :goto_0
    return-object v1

    .line 938
    :catch_0
    move-exception v0

    .line 940
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 941
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 942
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 732
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 737
    :goto_0
    return-object v1

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 735
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 737
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 225
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 226
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getActivePhoneType(I)I

    move-result v2

    .line 239
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 230
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 232
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0

    .line 236
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 819
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 825
    :goto_0
    return v1

    .line 820
    :catch_0
    move-exception v0

    .line 822
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 823
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 825
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 419
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 420
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 421
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 431
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    .line 426
    :catch_0
    move-exception v0

    .line 428
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 429
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 431
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 840
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 845
    :goto_0
    return v1

    .line 841
    :catch_0
    move-exception v0

    .line 843
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 844
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 845
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1054
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDefaultDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1058
    :goto_0
    return v1

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1057
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1058
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1028
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDefaultSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1032
    :goto_0
    return v1

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1031
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1032
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 191
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceSvn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 171
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccCardState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 1309
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getIccCardState(I)I

    move-result v2

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_0
    return-object v1

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MSimTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccCardState exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 672
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 677
    :goto_0
    return-object v1

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 675
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 677
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 650
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 655
    :goto_0
    return-object v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 653
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 655
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 602
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getLteOnCdmaMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 608
    :goto_0
    return v1

    .line 603
    :catch_0
    move-exception v0

    .line 605
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 606
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 608
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;
    .locals 1

    .prologue
    .line 786
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v0

    return-object v0
.end method

.method public getMeid(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 200
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    .line 201
    .local v0, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getMeid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 208
    .end local v0    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v1

    .line 208
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getMsisdn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 698
    :goto_0
    return-object v1

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 696
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 698
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMultiSimConfiguration()Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    .line 134
    :goto_0
    return-object v1

    .line 129
    :cond_0
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0

    .line 131
    :cond_1
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0

    .line 134
    :cond_2
    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 346
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 317
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 301
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 376
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 377
    .local v1, "iTelephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 378
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 388
    .end local v1    # "iTelephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    .line 383
    :catch_0
    move-exception v0

    .line 385
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 386
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 388
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x1

    .line 146
    .local v0, "phoneCount":I
    sget-object v1, Landroid/telephony/MSimTelephonyManager$1;->$SwitchMap$android$telephony$MSimTelephonyManager$MultiSimVariants:[I

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMultiSimConfiguration()Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    return v0

    .line 149
    :pswitch_0
    const/4 v0, 0x2

    .line 150
    goto :goto_0

    .line 152
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 256
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPreferredDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1041
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1045
    :goto_0
    return v1

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1044
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1045
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1097
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredVoiceSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1101
    :goto_0
    return v1

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1100
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1101
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSignalLevel(I)I
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 1215
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getSignalLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1218
    :goto_0
    return v1

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSimTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSignalLevel::exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 568
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 542
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 557
    const-string v0, "gsm.sim.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 581
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 586
    :goto_0
    return-object v1

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 584
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 586
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 508
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    const/4 v1, 0x1

    .line 526
    :goto_0
    return v1

    .line 513
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    const/4 v1, 0x2

    goto :goto_0

    .line 516
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    const/4 v1, 0x3

    goto :goto_0

    .line 519
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    const/4 v1, 0x4

    goto :goto_0

    .line 522
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 523
    const/4 v1, 0x5

    goto :goto_0

    .line 526
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmscAddress(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 1290
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getSmscAddress(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1293
    :goto_0
    return-object v1

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSimTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmscAddress exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 630
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 635
    :goto_0
    return-object v1

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 633
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 635
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 772
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 777
    :goto_0
    return-object v1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 775
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 777
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 712
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 717
    :goto_0
    return-object v1

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 715
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 717
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 752
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 757
    :goto_0
    return v1

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 755
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 757
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 442
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 443
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 444
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getVoiceNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 454
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    .line 449
    :catch_0
    move-exception v0

    .line 451
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 452
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 454
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 484
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 490
    :goto_0
    return v1

    .line 485
    :catch_0
    move-exception v0

    .line 487
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 488
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 490
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 113
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 330
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSubActive(I)Z
    .locals 3
    .param p1, "sub"    # I

    .prologue
    const/4 v1, 0x0

    .line 1254
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1255
    const/4 v1, 0x1

    .line 1261
    :goto_0
    return v1

    .line 1256
    :cond_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isSubActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1257
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1260
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1261
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isTddOnlyMode(Landroid/content/Context;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1266
    if-nez p1, :cond_1

    .line 1267
    const-string v4, "MsimTelephonyManager"

    const-string v5, "isTddOnlyMode :: wpr mContext is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_0
    :goto_0
    return v3

    .line 1270
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "nt_mode_tddonly"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1272
    .local v2, "tddonly":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lte_func_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1274
    .local v1, "ltemode":I
    const-string/jumbo v5, "ril.card.type"

    const-string/jumbo v6, "sim"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, "cardtype":Ljava/lang/String;
    const-string v5, "MsimTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTddOnlyMode :: wpr tddonly is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const-string v5, "MsimTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTddOnlyMode :: wpr ltemode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTddOnlyMode :: wpr cardtype is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    if-ne v4, v2, :cond_0

    if-ne v4, v1, :cond_0

    const-string/jumbo v5, "usim"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 1281
    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 884
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 887
    .local v6, "notifyNow":Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    iget-object v2, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v6    # "notifyNow":Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 884
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 886
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 891
    :catch_0
    move-exception v0

    goto :goto_2

    .line 889
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setDefaultDataSubscription(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 1084
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setDefaultDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1088
    :goto_0
    return v1

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1087
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1088
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setDomesticDataRoamingEnabled(ZI)V
    .locals 4
    .param p1, "status"    # Z
    .param p2, "subscription"    # I

    .prologue
    .line 1223
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setDomesticDataRoamingEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSimTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDomesticDataRoamingEnabled::exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDomesticVoiceRoaming(ZI)V
    .locals 4
    .param p1, "status"    # Z
    .param p2, "subscription"    # I

    .prologue
    .line 1230
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setDomesticVoiceRoaming(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSimTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDomesticVoiceRoaming::exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInternationalDataRoamingEnabled(ZI)V
    .locals 4
    .param p1, "status"    # Z
    .param p2, "subscription"    # I

    .prologue
    .line 1238
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setInternationalDataRoamingEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :goto_0
    return-void

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSimTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternationalDataRoamingEnabled::exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInternationalVoiceRoaming(ZI)V
    .locals 4
    .param p1, "status"    # Z
    .param p2, "subscription"    # I

    .prologue
    .line 1246
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setInternationalVoiceRoaming(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :goto_0
    return-void

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSimTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternationalVoiceRoaming::exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNetworkMode(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 1208
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setNetworkMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    :goto_0
    return-void

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSimTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNetworkMode::exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 1070
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setPreferredDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1074
    :goto_0
    return v1

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1073
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1074
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setSmscAddress(ILjava/lang/String;)V
    .locals 4
    .param p1, "subscription"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .prologue
    .line 1299
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setSmscAddress(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSimTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSmscAddress exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
