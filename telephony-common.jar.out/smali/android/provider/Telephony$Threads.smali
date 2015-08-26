.class public final Landroid/provider/Telephony$Threads;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final BROADCAST_THREAD:I = 0x1

.field public static final COMMON_THREAD:I

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri;

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1717
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    .line 1723
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 1729
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1735
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "obsolete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1749
    return-void
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;

    .prologue
    .line 1759
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1761
    .local v0, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1762
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "ccrecipient"    # Ljava/lang/String;
    .param p3, "bccrecipient"    # Ljava/lang/String;

    .prologue
    .line 1767
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1768
    .local v2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1769
    .local v1, "ccrecipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1770
    .local v0, "bccrecipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1771
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1772
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1773
    invoke-static {p0, v2, v1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)J

    move-result-wide v3

    return-wide v3
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "ccrecipient"    # Ljava/lang/String;
    .param p3, "bccrecipient"    # Ljava/lang/String;
    .param p4, "modeId"    # I

    .prologue
    .line 1778
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1779
    .local v2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1780
    .local v1, "ccrecipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1781
    .local v0, "bccrecipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1782
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1783
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1784
    invoke-static {p0, v2, v1, v0, p4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)J

    move-result-wide v3

    return-wide v3
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1801
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1803
    .local v10, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1804
    .local v9, "recipient":Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1805
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1808
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v10, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1811
    .end local v9    # "recipient":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1814
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1816
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1818
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1819
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1824
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 1821
    :cond_2
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1828
    :cond_3
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId failed with uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1824
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)J
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1834
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "ccrecipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "bccrecipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 1836
    .local v12, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1837
    .local v11, "recipient":Ljava/lang/String;
    invoke-static {v11}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    invoke-static {v11}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1841
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v12, v0, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1844
    .end local v11    # "recipient":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_3

    .line 1846
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1847
    .local v8, "ccrecipient":Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1848
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1850
    :cond_2
    const-string v0, "ccrecipient"

    invoke-virtual {v12, v0, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1853
    .end local v8    # "ccrecipient":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_5

    .line 1855
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1856
    .local v7, "bccrecipient":Ljava/lang/String;
    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1857
    invoke-static {v7}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1859
    :cond_4
    const-string v0, "bccrecipient"

    invoke-virtual {v12, v0, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 1863
    .end local v7    # "bccrecipient":Ljava/lang/String;
    :cond_5
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1865
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1868
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 1871
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1872
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1877
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 1874
    :cond_6
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1877
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1880
    :cond_7
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId failed with uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1877
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p4, "modeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .line 1886
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "ccrecipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "bccrecipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 1888
    .local v13, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1889
    .local v11, "recipient":Ljava/lang/String;
    invoke-static {v11}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    invoke-static {v11}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1893
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v13, v0, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1896
    .end local v11    # "recipient":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_3

    .line 1898
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1899
    .local v8, "ccrecipient":Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1900
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1902
    :cond_2
    const-string v0, "ccrecipient"

    invoke-virtual {v13, v0, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1905
    .end local v8    # "ccrecipient":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_5

    .line 1907
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1908
    .local v7, "bccrecipient":Ljava/lang/String;
    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1909
    invoke-static {v7}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1911
    :cond_4
    const-string v0, "bccrecipient"

    invoke-virtual {v13, v0, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 1914
    .end local v7    # "bccrecipient":Ljava/lang/String;
    :cond_5
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 1915
    .local v12, "s":Ljava/lang/String;
    const-string v0, "mode"

    invoke-virtual {v13, v0, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1917
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1919
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1922
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 1924
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1925
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1930
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 1927
    :cond_6
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1930
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1934
    :cond_7
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId failed with uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1930
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
