.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_DefaultRouteSet:I = 0x1a

.field static final TRANSACTION_MifareCLTRouteSet:I = 0x1b

.field static final TRANSACTION_MifareDesfireRouteSet:I = 0x19

.field static final TRANSACTION_deselectSecureElement:I = 0x13

.field static final TRANSACTION_disable:I = 0x6

.field static final TRANSACTION_disableNdefPush:I = 0x9

.field static final TRANSACTION_dispatch:I = 0xd

.field static final TRANSACTION_enable:I = 0x7

.field static final TRANSACTION_enableNdefPush:I = 0x8

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcAlaInterface:I = 0x4

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getSecureElementList:I = 0x10

.field static final TRANSACTION_getSelectedSecureElement:I = 0x11

.field static final TRANSACTION_getState:I = 0x5

.field static final TRANSACTION_isNdefPushEnabled:I = 0xa

.field static final TRANSACTION_jcopOsUpdate:I = 0x18

.field static final TRANSACTION_selectSecureElement:I = 0x12

.field static final TRANSACTION_setAppCallback:I = 0xc

.field static final TRANSACTION_setEmvCoPollProfile:I = 0x15

.field static final TRANSACTION_setForegroundDispatch:I = 0xb

.field static final TRANSACTION_setP2pModes:I = 0xf

.field static final TRANSACTION_setReaderMode:I = 0xe

.field static final TRANSACTION_setScreenOffCondition:I = 0x17

.field static final TRANSACTION_setVzwAidList:I = 0x16

.field static final TRANSACTION_storeSePreference:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/nfc/INfcAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v4

    .line 52
    .local v4, "_result":Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 58
    .end local v4    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string v7, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v4

    .line 60
    .local v4, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 66
    .end local v4    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string v7, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v4

    .line 70
    .local v4, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_4
    const-string v7, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAlaInterface()Landroid/nfc/INfcAla;

    move-result-object v4

    .line 78
    .local v4, "_result":Landroid/nfc/INfcAla;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/nfc/INfcAla;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 84
    .end local v4    # "_result":Landroid/nfc/INfcAla;
    :sswitch_5
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v4

    .line 86
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v4    # "_result":I
    :sswitch_6
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v6

    .line 95
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v4

    .line 96
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v4, :cond_4

    move v7, v6

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_5
    move v0, v7

    .line 94
    goto :goto_1

    .line 102
    :sswitch_7
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v4

    .line 104
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v4, :cond_6

    move v7, v6

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v4

    .line 112
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v4, :cond_7

    move v7, v6

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v4

    .line 120
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v4, :cond_8

    move v7, v6

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v4

    .line 128
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v4, :cond_9

    move v7, v6

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 137
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 143
    .local v0, "_arg0":Landroid/app/PendingIntent;
    :goto_2
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 145
    .local v1, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 146
    sget-object v5, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/TechListParcel;

    .line 151
    .local v2, "_arg2":Landroid/nfc/TechListParcel;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":[Landroid/content/IntentFilter;
    .end local v2    # "_arg2":Landroid/nfc/TechListParcel;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_2

    .line 149
    .restart local v1    # "_arg1":[Landroid/content/IntentFilter;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_3

    .line 157
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":[Landroid/content/IntentFilter;
    .end local v2    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_c
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v0

    .line 160
    .local v0, "_arg0":Landroid/nfc/IAppCallback;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 166
    .end local v0    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_d
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 169
    sget-object v5, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 174
    .local v0, "_arg0":Landroid/nfc/Tag;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":Landroid/nfc/Tag;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/nfc/Tag;
    goto :goto_4

    .line 180
    .end local v0    # "_arg0":Landroid/nfc/Tag;
    :sswitch_e
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 184
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v1

    .line 186
    .local v1, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 189
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 194
    .local v3, "_arg3":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 192
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/os/Bundle;
    goto :goto_5

    .line 200
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_f
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_10
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSecureElementList()[I

    move-result-object v4

    .line 213
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 219
    .end local v4    # "_result":[I
    :sswitch_11
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSelectedSecureElement()I

    move-result v4

    .line 221
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 227
    .end local v4    # "_result":I
    :sswitch_12
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->selectSecureElement(I)I

    move-result v4

    .line 231
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_13
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->deselectSecureElement()I

    move-result v4

    .line 239
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v4    # "_result":I
    :sswitch_14
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->storeSePreference(I)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 254
    .end local v0    # "_arg0":I
    :sswitch_15
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    move v0, v6

    .line 258
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 259
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setEmvCoPollProfile(ZI)I

    move-result v4

    .line 260
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :cond_e
    move v0, v7

    .line 256
    goto :goto_6

    .line 266
    :sswitch_16
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    sget-object v5, Lcom/vzw/nfc/RouteEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vzw/nfc/RouteEntry;

    .line 269
    .local v0, "_arg0":[Lcom/vzw/nfc/RouteEntry;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z

    move-result v4

    .line 270
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v4, :cond_f

    move v7, v6

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 276
    .end local v0    # "_arg0":[Lcom/vzw/nfc/RouteEntry;
    .end local v4    # "_result":Z
    :sswitch_17
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    move v0, v6

    .line 279
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapter$Stub;->setScreenOffCondition(Z)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_10
    move v0, v7

    .line 278
    goto :goto_7

    .line 285
    :sswitch_18
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->jcopOsUpdate()I

    move-result v4

    .line 287
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v4    # "_result":I
    :sswitch_19
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 297
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    move v1, v6

    .line 299
    .local v1, "_arg1":Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    move v2, v6

    .line 301
    .local v2, "_arg2":Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    move v3, v6

    .line 302
    .local v3, "_arg3":Z
    :goto_a
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->MifareDesfireRouteSet(IZZZ)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_11
    move v1, v7

    .line 297
    goto :goto_8

    .restart local v1    # "_arg1":Z
    :cond_12
    move v2, v7

    .line 299
    goto :goto_9

    .restart local v2    # "_arg2":Z
    :cond_13
    move v3, v7

    .line 301
    goto :goto_a

    .line 308
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_1a
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    move v1, v6

    .line 314
    .restart local v1    # "_arg1":Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    move v2, v6

    .line 316
    .restart local v2    # "_arg2":Z
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    move v3, v6

    .line 317
    .restart local v3    # "_arg3":Z
    :goto_d
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->DefaultRouteSet(IZZZ)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_14
    move v1, v7

    .line 312
    goto :goto_b

    .restart local v1    # "_arg1":Z
    :cond_15
    move v2, v7

    .line 314
    goto :goto_c

    .restart local v2    # "_arg2":Z
    :cond_16
    move v3, v7

    .line 316
    goto :goto_d

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_1b
    const-string v5, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    move v1, v6

    .line 329
    .restart local v1    # "_arg1":Z
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    move v2, v6

    .line 331
    .restart local v2    # "_arg2":Z
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    move v3, v6

    .line 332
    .restart local v3    # "_arg3":Z
    :goto_10
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->MifareCLTRouteSet(IZZZ)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_17
    move v1, v7

    .line 327
    goto :goto_e

    .restart local v1    # "_arg1":Z
    :cond_18
    move v2, v7

    .line 329
    goto :goto_f

    .restart local v2    # "_arg2":Z
    :cond_19
    move v3, v7

    .line 331
    goto :goto_10

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method