.class public abstract Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBookMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.msim.IIccPhoneBookMSim"

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsInEfOnSubscription:I = 0x2

.field static final TRANSACTION_getAdnRecordsSize:I = 0x7

.field static final TRANSACTION_getAdnRecordsSizeOnSubscription:I = 0x8

.field static final TRANSACTION_getAnrRecordsSize:I = 0x1b

.field static final TRANSACTION_getAnrRecordsSizeOnSubscription:I = 0x1c

.field static final TRANSACTION_getEmailRecordsSize:I = 0x19

.field static final TRANSACTION_getEmailRecordsSizeOnSubscription:I = 0x1a

.field static final TRANSACTION_getExt1RecordsSize:I = 0x20

.field static final TRANSACTION_getExt1RecordsSizeOnSubscription:I = 0x1f

.field static final TRANSACTION_getExtensionSize:I = 0x24

.field static final TRANSACTION_getExtensionSizeOnSubscription:I = 0x23

.field static final TRANSACTION_getGetAdnFileld:I = 0x26

.field static final TRANSACTION_getGetAdnFileldOnSubscription:I = 0x25

.field static final TRANSACTION_getSimCardType:I = 0xd

.field static final TRANSACTION_getSimCardTypeOnSubscription:I = 0xe

.field static final TRANSACTION_getSimSize:I = 0x9

.field static final TRANSACTION_getSimSizeOnSubscription:I = 0xa

.field static final TRANSACTION_getSimTotalSize:I = 0x22

.field static final TRANSACTION_getSimTotalSizeOnSubscription:I = 0x21

.field static final TRANSACTION_getTagRecordsSize:I = 0x1d

.field static final TRANSACTION_getTagRecordsSizeOnSubscription:I = 0x1e

.field static final TRANSACTION_getUsimAdnRecordsSize:I = 0x11

.field static final TRANSACTION_getUsimAdnRecordsSizeOnSubscription:I = 0x12

.field static final TRANSACTION_getUsimSize:I = 0xf

.field static final TRANSACTION_getUsimSizeOnSubscription:I = 0x10

.field static final TRANSACTION_getsimcap:I = 0x17

.field static final TRANSACTION_getsimcapOnSubscription:I = 0x18

.field static final TRANSACTION_hasLoadContacts:I = 0x28

.field static final TRANSACTION_hasloadcontactsOnSubscription:I = 0x27

.field static final TRANSACTION_isANRSpaceFullOnSubscription:I = 0x29

.field static final TRANSACTION_isEmailSpaceFullOnSubscription:I = 0x2a

.field static final TRANSACTION_isSupportANR:I = 0x13

.field static final TRANSACTION_isSupportANROnSubscription:I = 0x14

.field static final TRANSACTION_isSupportEmail:I = 0x15

.field static final TRANSACTION_isSupportEmailOnSubscription:I = 0x16

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x5

.field static final TRANSACTION_updateAdnRecordsInEfByIndexOnSubscription:I = 0x6

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x3

.field static final TRANSACTION_updateAdnRecordsInEfBySearchOnSubscription:I = 0x4

.field static final TRANSACTION_updatepbRecordsInEfBySearch:I = 0xb

.field static final TRANSACTION_updatepbRecordsInEfBySearchOnSubscription:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 597
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 57
    :sswitch_0
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :sswitch_1
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v15

    .line 66
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_2
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsInEfOnSubscription(II)Ljava/util/List;

    move-result-object v15

    .line 78
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 80
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_3
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg5":Ljava/lang/String;
    move-object/from16 v1, p0

    .line 97
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 98
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v14, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 104
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_4
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 116
    .restart local v6    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 118
    .restart local v7    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg6":I
    move-object/from16 v1, p0

    .line 119
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14

    .line 120
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v14, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 121
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 126
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":I
    .end local v14    # "_result":Z
    :sswitch_5
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 136
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg4":Ljava/lang/String;
    move-object/from16 v1, p0

    .line 137
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v14

    .line 138
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v14, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 139
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 144
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_6
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 152
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 156
    .restart local v6    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg5":I
    move-object/from16 v1, p0

    .line 157
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfByIndexOnSubscription(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v14

    .line 158
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v14, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 159
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":I
    .end local v14    # "_result":Z
    :sswitch_7
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsSize(I)[I

    move-result-object v14

    .line 168
    .local v14, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 170
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 174
    .end local v2    # "_arg0":I
    .end local v14    # "_result":[I
    :sswitch_8
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 179
    .local v3, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsSizeOnSubscription(II)[I

    move-result-object v14

    .line 180
    .restart local v14    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 182
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 186
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":[I
    :sswitch_9
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSimSize(I)I

    move-result v14

    .line 190
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 196
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_a
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 201
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSimSizeOnSubscription(II)I

    move-result v14

    .line 202
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 208
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_b
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 220
    .restart local v6    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg10":Ljava/lang/String;
    move-object/from16 v1, p0

    .line 231
    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 238
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":Ljava/lang/String;
    .end local v11    # "_arg9":Ljava/lang/String;
    .end local v12    # "_arg10":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 246
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 248
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 250
    .restart local v6    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 252
    .restart local v7    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 254
    .restart local v8    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 256
    .restart local v9    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 258
    .restart local v10    # "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 260
    .restart local v11    # "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 262
    .restart local v12    # "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg11":I
    move-object/from16 v1, p0

    .line 263
    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updatepbRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 264
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 270
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":Ljava/lang/String;
    .end local v11    # "_arg9":Ljava/lang/String;
    .end local v12    # "_arg10":Ljava/lang/String;
    .end local v13    # "_arg11":I
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSimCardType()Z

    move-result v14

    .line 272
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v14, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 273
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 278
    .end local v14    # "_result":Z
    :sswitch_e
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSimCardTypeOnSubscription(I)Z

    move-result v14

    .line 282
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v14, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 283
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 288
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_f
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getUsimSize(I)I

    move-result v14

    .line 292
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 298
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_10
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 302
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 303
    .local v3, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getUsimSizeOnSubscription(II)I

    move-result v14

    .line 304
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 310
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_11
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 313
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getUsimAdnRecordsSize(I)I

    move-result v14

    .line 314
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 320
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_12
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 325
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getUsimAdnRecordsSizeOnSubscription(II)I

    move-result v14

    .line 326
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 332
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_13
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->isSupportANR()Z

    move-result v14

    .line 334
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    if-eqz v14, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 335
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 340
    .end local v14    # "_result":Z
    :sswitch_14
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->isSupportANROnSubscription(I)Z

    move-result v14

    .line 344
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    if-eqz v14, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 345
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 350
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_15
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->isSupportEmail()Z

    move-result v14

    .line 352
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v14, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 353
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 358
    .end local v14    # "_result":Z
    :sswitch_16
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->isSupportEmailOnSubscription(I)Z

    move-result v14

    .line 362
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    if-eqz v14, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 363
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 368
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_17
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getsimcap(Ljava/lang/String;)Lcom/android/internal/telephony/simcap;

    move-result-object v14

    .line 372
    .local v14, "_result":Lcom/android/internal/telephony/simcap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    if-eqz v14, :cond_a

    .line 374
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/telephony/simcap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 380
    :goto_b
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 378
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 384
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Lcom/android/internal/telephony/simcap;
    :sswitch_18
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 389
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getsimcapOnSubscription(Ljava/lang/String;I)Lcom/android/internal/telephony/simcap;

    move-result-object v14

    .line 390
    .restart local v14    # "_result":Lcom/android/internal/telephony/simcap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v14, :cond_b

    .line 392
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/telephony/simcap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 398
    :goto_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 396
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 402
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v14    # "_result":Lcom/android/internal/telephony/simcap;
    :sswitch_19
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getEmailRecordsSize(I)I

    move-result v14

    .line 406
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 412
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_1a
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 417
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getEmailRecordsSizeOnSubscription(II)I

    move-result v14

    .line 418
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 424
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_1b
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 427
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAnrRecordsSize(I)I

    move-result v14

    .line 428
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 434
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_1c
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 439
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAnrRecordsSizeOnSubscription(II)I

    move-result v14

    .line 440
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 446
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_1d
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 449
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getTagRecordsSize(I)I

    move-result v14

    .line 450
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 456
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_1e
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 461
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getTagRecordsSizeOnSubscription(II)I

    move-result v14

    .line 462
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 468
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_1f
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 473
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getExt1RecordsSizeOnSubscription(II)I

    move-result v14

    .line 474
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 480
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_20
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 483
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getExt1RecordsSize(I)I

    move-result v14

    .line 484
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 490
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_21
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 494
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 495
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSimTotalSizeOnSubscription(II)I

    move-result v14

    .line 496
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 502
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_22
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 505
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSimTotalSize(I)I

    move-result v14

    .line 506
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 512
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_23
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 516
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 517
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getExtensionSizeOnSubscription(II)I

    move-result v14

    .line 518
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 524
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_24
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 527
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getExtensionSize(I)I

    move-result v14

    .line 528
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 534
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_25
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 539
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getGetAdnFileldOnSubscription(II)I

    move-result v14

    .line 540
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 546
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_26
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 549
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getGetAdnFileld(I)I

    move-result v14

    .line 550
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 556
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_27
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 559
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->hasloadcontactsOnSubscription(I)Z

    move-result v14

    .line 560
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v14, :cond_c

    const/4 v1, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 561
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 566
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_28
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->hasLoadContacts()Z

    move-result v14

    .line 568
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v14, :cond_d

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 569
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 574
    .end local v14    # "_result":Z
    :sswitch_29
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 578
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->isANRSpaceFullOnSubscription(ILjava/lang/String;)Z

    move-result v14

    .line 580
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v14, :cond_e

    const/4 v1, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 581
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 586
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_2a
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 590
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 591
    .restart local v3    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->isEmailSpaceFullOnSubscription(ILjava/lang/String;)Z

    move-result v14

    .line 592
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    if-eqz v14, :cond_f

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 593
    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    .line 53
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
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
