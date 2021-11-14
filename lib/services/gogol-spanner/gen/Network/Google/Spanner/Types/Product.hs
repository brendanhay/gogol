{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Spanner.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Spanner.Types.Product where

import Network.Google.Prelude
import Network.Google.Spanner.Types.Sum

-- | Parameter names and values that bind to placeholders in the SQL string.
-- A parameter placeholder consists of the \`\'\` character followed by the
-- parameter name (for example, \`\'firstName\`). Parameter names must
-- conform to the naming requirements of identifiers as specified at
-- https:\/\/cloud.google.com\/spanner\/docs\/lexical#identifiers.
-- Parameters can appear anywhere that a literal value is expected. The
-- same parameter name can be used more than once, for example: \`\"WHERE
-- id > \'msg_id AND id \< \'msg_id + 100\"\` It is an error to execute a
-- SQL statement with unbound parameters.
--
-- /See:/ 'executeSQLRequestParams' smart constructor.
newtype ExecuteSQLRequestParams =
  ExecuteSQLRequestParams'
    { _esqlrpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecuteSQLRequestParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esqlrpAddtional'
executeSQLRequestParams
    :: HashMap Text JSONValue -- ^ 'esqlrpAddtional'
    -> ExecuteSQLRequestParams
executeSQLRequestParams pEsqlrpAddtional_ =
  ExecuteSQLRequestParams' {_esqlrpAddtional = _Coerce # pEsqlrpAddtional_}


-- | Properties of the object.
esqlrpAddtional :: Lens' ExecuteSQLRequestParams (HashMap Text JSONValue)
esqlrpAddtional
  = lens _esqlrpAddtional
      (\ s a -> s{_esqlrpAddtional = a})
      . _Coerce

instance FromJSON ExecuteSQLRequestParams where
        parseJSON
          = withObject "ExecuteSQLRequestParams"
              (\ o ->
                 ExecuteSQLRequestParams' <$> (parseJSONObject o))

instance ToJSON ExecuteSQLRequestParams where
        toJSON = toJSON . _esqlrpAddtional

-- | The request for RestoreDatabase.
--
-- /See:/ 'restoreDatabaseRequest' smart constructor.
data RestoreDatabaseRequest =
  RestoreDatabaseRequest'
    { _rdrBackup :: !(Maybe Text)
    , _rdrEncryptionConfig :: !(Maybe RestoreDatabaseEncryptionConfig)
    , _rdrDatabaseId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreDatabaseRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrBackup'
--
-- * 'rdrEncryptionConfig'
--
-- * 'rdrDatabaseId'
restoreDatabaseRequest
    :: RestoreDatabaseRequest
restoreDatabaseRequest =
  RestoreDatabaseRequest'
    { _rdrBackup = Nothing
    , _rdrEncryptionConfig = Nothing
    , _rdrDatabaseId = Nothing
    }


-- | Name of the backup from which to restore. Values are of the form
-- \`projects\/\/instances\/\/backups\/\`.
rdrBackup :: Lens' RestoreDatabaseRequest (Maybe Text)
rdrBackup
  = lens _rdrBackup (\ s a -> s{_rdrBackup = a})

-- | Optional. An encryption configuration describing the encryption type and
-- key resources in Cloud KMS used to encrypt\/decrypt the database to
-- restore to. If this field is not specified, the restored database will
-- use the same encryption configuration as the backup by default, namely
-- encryption_type = \`USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION\`.
rdrEncryptionConfig :: Lens' RestoreDatabaseRequest (Maybe RestoreDatabaseEncryptionConfig)
rdrEncryptionConfig
  = lens _rdrEncryptionConfig
      (\ s a -> s{_rdrEncryptionConfig = a})

-- | Required. The id of the database to create and restore to. This database
-- must not already exist. The \`database_id\` appended to \`parent\` forms
-- the full database name of the form
-- \`projects\/\/instances\/\/databases\/\`.
rdrDatabaseId :: Lens' RestoreDatabaseRequest (Maybe Text)
rdrDatabaseId
  = lens _rdrDatabaseId
      (\ s a -> s{_rdrDatabaseId = a})

instance FromJSON RestoreDatabaseRequest where
        parseJSON
          = withObject "RestoreDatabaseRequest"
              (\ o ->
                 RestoreDatabaseRequest' <$>
                   (o .:? "backup") <*> (o .:? "encryptionConfig") <*>
                     (o .:? "databaseId"))

instance ToJSON RestoreDatabaseRequest where
        toJSON RestoreDatabaseRequest'{..}
          = object
              (catMaybes
                 [("backup" .=) <$> _rdrBackup,
                  ("encryptionConfig" .=) <$> _rdrEncryptionConfig,
                  ("databaseId" .=) <$> _rdrDatabaseId])

-- | The (sparse) mapping from time index to an IndexedHotKey message,
-- representing those time intervals for which there are hot keys.
--
-- /See:/ 'metricIndexedHotKeys' smart constructor.
newtype MetricIndexedHotKeys =
  MetricIndexedHotKeys'
    { _mihkAddtional :: HashMap Text IndexedHotKey
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricIndexedHotKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mihkAddtional'
metricIndexedHotKeys
    :: HashMap Text IndexedHotKey -- ^ 'mihkAddtional'
    -> MetricIndexedHotKeys
metricIndexedHotKeys pMihkAddtional_ =
  MetricIndexedHotKeys' {_mihkAddtional = _Coerce # pMihkAddtional_}


mihkAddtional :: Lens' MetricIndexedHotKeys (HashMap Text IndexedHotKey)
mihkAddtional
  = lens _mihkAddtional
      (\ s a -> s{_mihkAddtional = a})
      . _Coerce

instance FromJSON MetricIndexedHotKeys where
        parseJSON
          = withObject "MetricIndexedHotKeys"
              (\ o ->
                 MetricIndexedHotKeys' <$> (parseJSONObject o))

instance ToJSON MetricIndexedHotKeys where
        toJSON = toJSON . _mihkAddtional

-- | Cloud Labels are a flexible and lightweight mechanism for organizing
-- cloud resources into groups that reflect a customer\'s organizational
-- needs and deployment strategies. Cloud Labels can be used to filter
-- collections of resources. They can be used to control how resource
-- metrics are aggregated. And they can be used as arguments to policy
-- management rules (e.g. route, firewall, load balancing, etc.). * Label
-- keys must be between 1 and 63 characters long and must conform to the
-- following regular expression: \`[a-z]([-a-z0-9]*[a-z0-9])?\`. * Label
-- values must be between 0 and 63 characters long and must conform to the
-- regular expression \`([a-z]([-a-z0-9]*[a-z0-9])?)?\`. * No more than 64
-- labels can be associated with a given resource. See
-- https:\/\/goo.gl\/xmQnxf for more information on and examples of labels.
-- If you plan to use labels in your own code, please note that additional
-- characters may be allowed in the future. And so you are advised to use
-- an internal label representation, such as JSON, which doesn\'t rely upon
-- specific characters being disallowed. For example, representing labels
-- as the string: name + \"_\" + value would prove problematic if we were
-- to allow \"_\" in a future release.
--
-- /See:/ 'instanceLabels' smart constructor.
newtype InstanceLabels =
  InstanceLabels'
    { _ilAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilAddtional'
instanceLabels
    :: HashMap Text Text -- ^ 'ilAddtional'
    -> InstanceLabels
instanceLabels pIlAddtional_ =
  InstanceLabels' {_ilAddtional = _Coerce # pIlAddtional_}


ilAddtional :: Lens' InstanceLabels (HashMap Text Text)
ilAddtional
  = lens _ilAddtional (\ s a -> s{_ilAddtional = a}) .
      _Coerce

instance FromJSON InstanceLabels where
        parseJSON
          = withObject "InstanceLabels"
              (\ o -> InstanceLabels' <$> (parseJSONObject o))

instance ToJSON InstanceLabels where
        toJSON = toJSON . _ilAddtional

-- | Metadata type for the operation returned by CreateDatabase.
--
-- /See:/ 'createDatabaseMetadata' smart constructor.
newtype CreateDatabaseMetadata =
  CreateDatabaseMetadata'
    { _cdmDatabase :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateDatabaseMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdmDatabase'
createDatabaseMetadata
    :: CreateDatabaseMetadata
createDatabaseMetadata = CreateDatabaseMetadata' {_cdmDatabase = Nothing}


-- | The database being created.
cdmDatabase :: Lens' CreateDatabaseMetadata (Maybe Text)
cdmDatabase
  = lens _cdmDatabase (\ s a -> s{_cdmDatabase = a})

instance FromJSON CreateDatabaseMetadata where
        parseJSON
          = withObject "CreateDatabaseMetadata"
              (\ o ->
                 CreateDatabaseMetadata' <$> (o .:? "database"))

instance ToJSON CreateDatabaseMetadata where
        toJSON CreateDatabaseMetadata'{..}
          = object
              (catMaybes [("database" .=) <$> _cdmDatabase])

-- | Transactions: Each session can have at most one active transaction at a
-- time (note that standalone reads and queries use a transaction
-- internally and do count towards the one transaction limit). After the
-- active transaction is completed, the session can immediately be re-used
-- for the next transaction. It is not necessary to create a new session
-- for each transaction. Transaction Modes: Cloud Spanner supports three
-- transaction modes: 1. Locking read-write. This type of transaction is
-- the only way to write data into Cloud Spanner. These transactions rely
-- on pessimistic locking and, if necessary, two-phase commit. Locking
-- read-write transactions may abort, requiring the application to retry.
-- 2. Snapshot read-only. This transaction type provides guaranteed
-- consistency across several reads, but does not allow writes. Snapshot
-- read-only transactions can be configured to read at timestamps in the
-- past. Snapshot read-only transactions do not need to be committed. 3.
-- Partitioned DML. This type of transaction is used to execute a single
-- Partitioned DML statement. Partitioned DML partitions the key space and
-- runs the DML statement over each partition in parallel using separate,
-- internal transactions that commit independently. Partitioned DML
-- transactions do not need to be committed. For transactions that only
-- read, snapshot read-only transactions provide simpler semantics and are
-- almost always faster. In particular, read-only transactions do not take
-- locks, so they do not conflict with read-write transactions. As a
-- consequence of not taking locks, they also do not abort, so retry loops
-- are not needed. Transactions may only read\/write data in a single
-- database. They may, however, read\/write data in different tables within
-- that database. Locking Read-Write Transactions: Locking transactions may
-- be used to atomically read-modify-write data anywhere in a database.
-- This type of transaction is externally consistent. Clients should
-- attempt to minimize the amount of time a transaction is active. Faster
-- transactions commit with higher probability and cause less contention.
-- Cloud Spanner attempts to keep read locks active as long as the
-- transaction continues to do reads, and the transaction has not been
-- terminated by Commit or Rollback. Long periods of inactivity at the
-- client may cause Cloud Spanner to release a transaction\'s locks and
-- abort it. Conceptually, a read-write transaction consists of zero or
-- more reads or SQL statements followed by Commit. At any time before
-- Commit, the client can send a Rollback request to abort the transaction.
-- Semantics: Cloud Spanner can commit the transaction if all read locks it
-- acquired are still valid at commit time, and it is able to acquire write
-- locks for all writes. Cloud Spanner can abort the transaction for any
-- reason. If a commit attempt returns \`ABORTED\`, Cloud Spanner
-- guarantees that the transaction has not modified any user data in Cloud
-- Spanner. Unless the transaction commits, Cloud Spanner makes no
-- guarantees about how long the transaction\'s locks were held for. It is
-- an error to use Cloud Spanner locks for any sort of mutual exclusion
-- other than between Cloud Spanner transactions themselves. Retrying
-- Aborted Transactions: When a transaction aborts, the application can
-- choose to retry the whole transaction again. To maximize the chances of
-- successfully committing the retry, the client should execute the retry
-- in the same session as the original attempt. The original session\'s
-- lock priority increases with each consecutive abort, meaning that each
-- attempt has a slightly better chance of success than the previous. Under
-- some circumstances (e.g., many transactions attempting to modify the
-- same row(s)), a transaction can abort many times in a short period
-- before successfully committing. Thus, it is not a good idea to cap the
-- number of retries a transaction can attempt; instead, it is better to
-- limit the total amount of wall time spent retrying. Idle Transactions: A
-- transaction is considered idle if it has no outstanding reads or SQL
-- queries and has not started a read or SQL query within the last 10
-- seconds. Idle transactions can be aborted by Cloud Spanner so that they
-- don\'t hold on to locks indefinitely. In that case, the commit will fail
-- with error \`ABORTED\`. If this behavior is undesirable, periodically
-- executing a simple SQL query in the transaction (e.g., \`SELECT 1\`)
-- prevents the transaction from becoming idle. Snapshot Read-Only
-- Transactions: Snapshot read-only transactions provides a simpler method
-- than locking read-write transactions for doing several consistent reads.
-- However, this type of transaction does not support writes. Snapshot
-- transactions do not take locks. Instead, they work by choosing a Cloud
-- Spanner timestamp, then executing all reads at that timestamp. Since
-- they do not acquire locks, they do not block concurrent read-write
-- transactions. Unlike locking read-write transactions, snapshot read-only
-- transactions never abort. They can fail if the chosen read timestamp is
-- garbage collected; however, the default garbage collection policy is
-- generous enough that most applications do not need to worry about this
-- in practice. Snapshot read-only transactions do not need to call Commit
-- or Rollback (and in fact are not permitted to do so). To execute a
-- snapshot transaction, the client specifies a timestamp bound, which
-- tells Cloud Spanner how to choose a read timestamp. The types of
-- timestamp bound are: - Strong (the default). - Bounded staleness. -
-- Exact staleness. If the Cloud Spanner database to be read is
-- geographically distributed, stale read-only transactions can execute
-- more quickly than strong or read-write transaction, because they are
-- able to execute far from the leader replica. Each type of timestamp
-- bound is discussed in detail below. Strong: Strong reads are guaranteed
-- to see the effects of all transactions that have committed before the
-- start of the read. Furthermore, all rows yielded by a single read are
-- consistent with each other -- if any part of the read observes a
-- transaction, all parts of the read see the transaction. Strong reads are
-- not repeatable: two consecutive strong read-only transactions might
-- return inconsistent results if there are concurrent writes. If
-- consistency across reads is required, the reads should be executed
-- within a transaction or at an exact read timestamp. See
-- TransactionOptions.ReadOnly.strong. Exact Staleness: These timestamp
-- bounds execute reads at a user-specified timestamp. Reads at a timestamp
-- are guaranteed to see a consistent prefix of the global transaction
-- history: they observe modifications done by all transactions with a
-- commit timestamp \<= the read timestamp, and observe none of the
-- modifications done by transactions with a larger commit timestamp. They
-- will block until all conflicting transactions that may be assigned
-- commit timestamps \<= the read timestamp have finished. The timestamp
-- can either be expressed as an absolute Cloud Spanner commit timestamp or
-- a staleness relative to the current time. These modes do not require a
-- \"negotiation phase\" to pick a timestamp. As a result, they execute
-- slightly faster than the equivalent boundedly stale concurrency modes.
-- On the other hand, boundedly stale reads usually return fresher results.
-- See TransactionOptions.ReadOnly.read_timestamp and
-- TransactionOptions.ReadOnly.exact_staleness. Bounded Staleness: Bounded
-- staleness modes allow Cloud Spanner to pick the read timestamp, subject
-- to a user-provided staleness bound. Cloud Spanner chooses the newest
-- timestamp within the staleness bound that allows execution of the reads
-- at the closest available replica without blocking. All rows yielded are
-- consistent with each other -- if any part of the read observes a
-- transaction, all parts of the read see the transaction. Boundedly stale
-- reads are not repeatable: two stale reads, even if they use the same
-- staleness bound, can execute at different timestamps and thus return
-- inconsistent results. Boundedly stale reads execute in two phases: the
-- first phase negotiates a timestamp among all replicas needed to serve
-- the read. In the second phase, reads are executed at the negotiated
-- timestamp. As a result of the two phase execution, bounded staleness
-- reads are usually a little slower than comparable exact staleness reads.
-- However, they are typically able to return fresher results, and are more
-- likely to execute at the closest replica. Because the timestamp
-- negotiation requires up-front knowledge of which rows will be read, it
-- can only be used with single-use read-only transactions. See
-- TransactionOptions.ReadOnly.max_staleness and
-- TransactionOptions.ReadOnly.min_read_timestamp. Old Read Timestamps and
-- Garbage Collection: Cloud Spanner continuously garbage collects deleted
-- and overwritten data in the background to reclaim storage space. This
-- process is known as \"version GC\". By default, version GC reclaims
-- versions after they are one hour old. Because of this, Cloud Spanner
-- cannot perform reads at read timestamps more than one hour in the past.
-- This restriction also applies to in-progress reads and\/or SQL queries
-- whose timestamp become too old while executing. Reads and SQL queries
-- with too-old read timestamps fail with the error
-- \`FAILED_PRECONDITION\`. Partitioned DML Transactions: Partitioned DML
-- transactions are used to execute DML statements with a different
-- execution strategy that provides different, and often better,
-- scalability properties for large, table-wide operations than DML in a
-- ReadWrite transaction. Smaller scoped statements, such as an OLTP
-- workload, should prefer using ReadWrite transactions. Partitioned DML
-- partitions the keyspace and runs the DML statement on each partition in
-- separate, internal transactions. These transactions commit automatically
-- when complete, and run independently from one another. To reduce lock
-- contention, this execution strategy only acquires read locks on rows
-- that match the WHERE clause of the statement. Additionally, the smaller
-- per-partition transactions hold locks for less time. That said,
-- Partitioned DML is not a drop-in replacement for standard DML used in
-- ReadWrite transactions. - The DML statement must be fully-partitionable.
-- Specifically, the statement must be expressible as the union of many
-- statements which each access only a single row of the table. - The
-- statement is not applied atomically to all rows of the table. Rather,
-- the statement is applied atomically to partitions of the table, in
-- independent transactions. Secondary index rows are updated atomically
-- with the base table rows. - Partitioned DML does not guarantee
-- exactly-once execution semantics against a partition. The statement will
-- be applied at least once to each partition. It is strongly recommended
-- that the DML statement should be idempotent to avoid unexpected results.
-- For instance, it is potentially dangerous to run a statement such as
-- \`UPDATE table SET column = column + 1\` as it could be run multiple
-- times against some rows. - The partitions are committed automatically -
-- there is no support for Commit or Rollback. If the call returns an
-- error, or if the client issuing the ExecuteSql call dies, it is possible
-- that some rows had the statement executed on them successfully. It is
-- also possible that statement was never executed against other rows. -
-- Partitioned DML transactions may only contain the execution of a single
-- DML statement via ExecuteSql or ExecuteStreamingSql. - If any error is
-- encountered during the execution of the partitioned DML operation (for
-- instance, a UNIQUE INDEX violation, division by zero, or a value that
-- cannot be stored due to schema constraints), then the operation is
-- stopped at that point and an error is returned. It is possible that at
-- this point, some partitions have been committed (or even committed
-- multiple times), and other partitions have not been run at all. Given
-- the above, Partitioned DML is good fit for large, database-wide,
-- operations that are idempotent, such as deleting old rows from a very
-- large table.
--
-- /See:/ 'transactionOptions' smart constructor.
data TransactionOptions =
  TransactionOptions'
    { _toReadWrite :: !(Maybe ReadWrite)
    , _toPartitionedDml :: !(Maybe PartitionedDml)
    , _toReadOnly :: !(Maybe ReadOnly)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransactionOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toReadWrite'
--
-- * 'toPartitionedDml'
--
-- * 'toReadOnly'
transactionOptions
    :: TransactionOptions
transactionOptions =
  TransactionOptions'
    {_toReadWrite = Nothing, _toPartitionedDml = Nothing, _toReadOnly = Nothing}


-- | Transaction may write. Authorization to begin a read-write transaction
-- requires \`spanner.databases.beginOrRollbackReadWriteTransaction\`
-- permission on the \`session\` resource.
toReadWrite :: Lens' TransactionOptions (Maybe ReadWrite)
toReadWrite
  = lens _toReadWrite (\ s a -> s{_toReadWrite = a})

-- | Partitioned DML transaction. Authorization to begin a Partitioned DML
-- transaction requires
-- \`spanner.databases.beginPartitionedDmlTransaction\` permission on the
-- \`session\` resource.
toPartitionedDml :: Lens' TransactionOptions (Maybe PartitionedDml)
toPartitionedDml
  = lens _toPartitionedDml
      (\ s a -> s{_toPartitionedDml = a})

-- | Transaction will not write. Authorization to begin a read-only
-- transaction requires \`spanner.databases.beginReadOnlyTransaction\`
-- permission on the \`session\` resource.
toReadOnly :: Lens' TransactionOptions (Maybe ReadOnly)
toReadOnly
  = lens _toReadOnly (\ s a -> s{_toReadOnly = a})

instance FromJSON TransactionOptions where
        parseJSON
          = withObject "TransactionOptions"
              (\ o ->
                 TransactionOptions' <$>
                   (o .:? "readWrite") <*> (o .:? "partitionedDml") <*>
                     (o .:? "readOnly"))

instance ToJSON TransactionOptions where
        toJSON TransactionOptions'{..}
          = object
              (catMaybes
                 [("readWrite" .=) <$> _toReadWrite,
                  ("partitionedDml" .=) <$> _toPartitionedDml,
                  ("readOnly" .=) <$> _toReadOnly])

-- | The response for ListBackups.
--
-- /See:/ 'listBackupsResponse' smart constructor.
data ListBackupsResponse =
  ListBackupsResponse'
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrBackups :: !(Maybe [Backup])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBackupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrNextPageToken'
--
-- * 'lbrBackups'
listBackupsResponse
    :: ListBackupsResponse
listBackupsResponse =
  ListBackupsResponse' {_lbrNextPageToken = Nothing, _lbrBackups = Nothing}


-- | \`next_page_token\` can be sent in a subsequent ListBackups call to
-- fetch more of the matching backups.
lbrNextPageToken :: Lens' ListBackupsResponse (Maybe Text)
lbrNextPageToken
  = lens _lbrNextPageToken
      (\ s a -> s{_lbrNextPageToken = a})

-- | The list of matching backups. Backups returned are ordered by
-- \`create_time\` in descending order, starting from the most recent
-- \`create_time\`.
lbrBackups :: Lens' ListBackupsResponse [Backup]
lbrBackups
  = lens _lbrBackups (\ s a -> s{_lbrBackups = a}) .
      _Default
      . _Coerce

instance FromJSON ListBackupsResponse where
        parseJSON
          = withObject "ListBackupsResponse"
              (\ o ->
                 ListBackupsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "backups" .!= mempty))

instance ToJSON ListBackupsResponse where
        toJSON ListBackupsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrNextPageToken,
                  ("backups" .=) <$> _lbrBackups])

-- | The response for GetDatabaseDdl.
--
-- /See:/ 'getDatabaseDdlResponse' smart constructor.
newtype GetDatabaseDdlResponse =
  GetDatabaseDdlResponse'
    { _gddrStatements :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetDatabaseDdlResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddrStatements'
getDatabaseDdlResponse
    :: GetDatabaseDdlResponse
getDatabaseDdlResponse = GetDatabaseDdlResponse' {_gddrStatements = Nothing}


-- | A list of formatted DDL statements defining the schema of the database
-- specified in the request.
gddrStatements :: Lens' GetDatabaseDdlResponse [Text]
gddrStatements
  = lens _gddrStatements
      (\ s a -> s{_gddrStatements = a})
      . _Default
      . _Coerce

instance FromJSON GetDatabaseDdlResponse where
        parseJSON
          = withObject "GetDatabaseDdlResponse"
              (\ o ->
                 GetDatabaseDdlResponse' <$>
                   (o .:? "statements" .!= mempty))

instance ToJSON GetDatabaseDdlResponse where
        toJSON GetDatabaseDdlResponse'{..}
          = object
              (catMaybes [("statements" .=) <$> _gddrStatements])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | The request for CreateInstance.
--
-- /See:/ 'createInstanceRequest' smart constructor.
data CreateInstanceRequest =
  CreateInstanceRequest'
    { _cirInstanceId :: !(Maybe Text)
    , _cirInstance :: !(Maybe Instance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirInstanceId'
--
-- * 'cirInstance'
createInstanceRequest
    :: CreateInstanceRequest
createInstanceRequest =
  CreateInstanceRequest' {_cirInstanceId = Nothing, _cirInstance = Nothing}


-- | Required. The ID of the instance to create. Valid identifiers are of the
-- form \`a-z*[a-z0-9]\` and must be between 2 and 64 characters in length.
cirInstanceId :: Lens' CreateInstanceRequest (Maybe Text)
cirInstanceId
  = lens _cirInstanceId
      (\ s a -> s{_cirInstanceId = a})

-- | Required. The instance to create. The name may be omitted, but if
-- specified must be \`\/instances\/\`.
cirInstance :: Lens' CreateInstanceRequest (Maybe Instance)
cirInstance
  = lens _cirInstance (\ s a -> s{_cirInstance = a})

instance FromJSON CreateInstanceRequest where
        parseJSON
          = withObject "CreateInstanceRequest"
              (\ o ->
                 CreateInstanceRequest' <$>
                   (o .:? "instanceId") <*> (o .:? "instance"))

instance ToJSON CreateInstanceRequest where
        toJSON CreateInstanceRequest'{..}
          = object
              (catMaybes
                 [("instanceId" .=) <$> _cirInstanceId,
                  ("instance" .=) <$> _cirInstance])

-- | The request for BatchCreateSessions.
--
-- /See:/ 'batchCreateSessionsRequest' smart constructor.
data BatchCreateSessionsRequest =
  BatchCreateSessionsRequest'
    { _bcsrSessionCount :: !(Maybe (Textual Int32))
    , _bcsrSessionTemplate :: !(Maybe Session)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateSessionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcsrSessionCount'
--
-- * 'bcsrSessionTemplate'
batchCreateSessionsRequest
    :: BatchCreateSessionsRequest
batchCreateSessionsRequest =
  BatchCreateSessionsRequest'
    {_bcsrSessionCount = Nothing, _bcsrSessionTemplate = Nothing}


-- | Required. The number of sessions to be created in this batch call. The
-- API may return fewer than the requested number of sessions. If a
-- specific number of sessions are desired, the client can make additional
-- calls to BatchCreateSessions (adjusting session_count as necessary).
bcsrSessionCount :: Lens' BatchCreateSessionsRequest (Maybe Int32)
bcsrSessionCount
  = lens _bcsrSessionCount
      (\ s a -> s{_bcsrSessionCount = a})
      . mapping _Coerce

-- | Parameters to be applied to each created session.
bcsrSessionTemplate :: Lens' BatchCreateSessionsRequest (Maybe Session)
bcsrSessionTemplate
  = lens _bcsrSessionTemplate
      (\ s a -> s{_bcsrSessionTemplate = a})

instance FromJSON BatchCreateSessionsRequest where
        parseJSON
          = withObject "BatchCreateSessionsRequest"
              (\ o ->
                 BatchCreateSessionsRequest' <$>
                   (o .:? "sessionCount") <*> (o .:? "sessionTemplate"))

instance ToJSON BatchCreateSessionsRequest where
        toJSON BatchCreateSessionsRequest'{..}
          = object
              (catMaybes
                 [("sessionCount" .=) <$> _bcsrSessionCount,
                  ("sessionTemplate" .=) <$> _bcsrSessionTemplate])

-- | Message type to initiate a read-write transaction. Currently this
-- transaction type has no options.
--
-- /See:/ 'readWrite' smart constructor.
data ReadWrite =
  ReadWrite'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReadWrite' with the minimum fields required to make a request.
--
readWrite
    :: ReadWrite
readWrite = ReadWrite'


instance FromJSON ReadWrite where
        parseJSON
          = withObject "ReadWrite" (\ o -> pure ReadWrite')

instance ToJSON ReadWrite where
        toJSON = const emptyObject

-- | The request for Rollback.
--
-- /See:/ 'rollbackRequest' smart constructor.
newtype RollbackRequest =
  RollbackRequest'
    { _rrTransactionId :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RollbackRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrTransactionId'
rollbackRequest
    :: RollbackRequest
rollbackRequest = RollbackRequest' {_rrTransactionId = Nothing}


-- | Required. The transaction to roll back.
rrTransactionId :: Lens' RollbackRequest (Maybe ByteString)
rrTransactionId
  = lens _rrTransactionId
      (\ s a -> s{_rrTransactionId = a})
      . mapping _Bytes

instance FromJSON RollbackRequest where
        parseJSON
          = withObject "RollbackRequest"
              (\ o -> RollbackRequest' <$> (o .:? "transactionId"))

instance ToJSON RollbackRequest where
        toJSON RollbackRequest'{..}
          = object
              (catMaybes
                 [("transactionId" .=) <$> _rrTransactionId])

-- | A (sparse) mapping from key bucket index to the KeyRangeInfos for that
-- key bucket.
--
-- /See:/ 'indexedKeyRangeInfosKeyRangeInfos' smart constructor.
newtype IndexedKeyRangeInfosKeyRangeInfos =
  IndexedKeyRangeInfosKeyRangeInfos'
    { _ikrikriAddtional :: HashMap Text KeyRangeInfos
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexedKeyRangeInfosKeyRangeInfos' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ikrikriAddtional'
indexedKeyRangeInfosKeyRangeInfos
    :: HashMap Text KeyRangeInfos -- ^ 'ikrikriAddtional'
    -> IndexedKeyRangeInfosKeyRangeInfos
indexedKeyRangeInfosKeyRangeInfos pIkrikriAddtional_ =
  IndexedKeyRangeInfosKeyRangeInfos'
    {_ikrikriAddtional = _Coerce # pIkrikriAddtional_}


ikrikriAddtional :: Lens' IndexedKeyRangeInfosKeyRangeInfos (HashMap Text KeyRangeInfos)
ikrikriAddtional
  = lens _ikrikriAddtional
      (\ s a -> s{_ikrikriAddtional = a})
      . _Coerce

instance FromJSON IndexedKeyRangeInfosKeyRangeInfos
         where
        parseJSON
          = withObject "IndexedKeyRangeInfosKeyRangeInfos"
              (\ o ->
                 IndexedKeyRangeInfosKeyRangeInfos' <$>
                   (parseJSONObject o))

instance ToJSON IndexedKeyRangeInfosKeyRangeInfos
         where
        toJSON = toJSON . _ikrikriAddtional

-- | The response for ListDatabases.
--
-- /See:/ 'listDatabasesResponse' smart constructor.
data ListDatabasesResponse =
  ListDatabasesResponse'
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDatabases :: !(Maybe [Database])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDatabasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrNextPageToken'
--
-- * 'ldrDatabases'
listDatabasesResponse
    :: ListDatabasesResponse
listDatabasesResponse =
  ListDatabasesResponse' {_ldrNextPageToken = Nothing, _ldrDatabases = Nothing}


-- | \`next_page_token\` can be sent in a subsequent ListDatabases call to
-- fetch more of the matching databases.
ldrNextPageToken :: Lens' ListDatabasesResponse (Maybe Text)
ldrNextPageToken
  = lens _ldrNextPageToken
      (\ s a -> s{_ldrNextPageToken = a})

-- | Databases that matched the request.
ldrDatabases :: Lens' ListDatabasesResponse [Database]
ldrDatabases
  = lens _ldrDatabases (\ s a -> s{_ldrDatabases = a})
      . _Default
      . _Coerce

instance FromJSON ListDatabasesResponse where
        parseJSON
          = withObject "ListDatabasesResponse"
              (\ o ->
                 ListDatabasesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "databases" .!= mempty))

instance ToJSON ListDatabasesResponse where
        toJSON ListDatabasesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("databases" .=) <$> _ldrDatabases])

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
newtype GetIAMPolicyRequest =
  GetIAMPolicyRequest'
    { _giprOptions :: Maybe GetPolicyOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giprOptions'
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest' {_giprOptions = Nothing}


-- | OPTIONAL: A \`GetPolicyOptions\` object for specifying options to
-- \`GetIamPolicy\`.
giprOptions :: Lens' GetIAMPolicyRequest (Maybe GetPolicyOptions)
giprOptions
  = lens _giprOptions (\ s a -> s{_giprOptions = a})

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> GetIAMPolicyRequest' <$> (o .:? "options"))

instance ToJSON GetIAMPolicyRequest where
        toJSON GetIAMPolicyRequest'{..}
          = object
              (catMaybes [("options" .=) <$> _giprOptions])

-- | Metadata associated with a parent-child relationship appearing in a
-- PlanNode.
--
-- /See:/ 'childLink' smart constructor.
data ChildLink =
  ChildLink'
    { _clChildIndex :: !(Maybe (Textual Int32))
    , _clVariable :: !(Maybe Text)
    , _clType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChildLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clChildIndex'
--
-- * 'clVariable'
--
-- * 'clType'
childLink
    :: ChildLink
childLink =
  ChildLink' {_clChildIndex = Nothing, _clVariable = Nothing, _clType = Nothing}


-- | The node to which the link points.
clChildIndex :: Lens' ChildLink (Maybe Int32)
clChildIndex
  = lens _clChildIndex (\ s a -> s{_clChildIndex = a})
      . mapping _Coerce

-- | Only present if the child node is SCALAR and corresponds to an output
-- variable of the parent node. The field carries the name of the output
-- variable. For example, a \`TableScan\` operator that reads rows from a
-- table will have child links to the \`SCALAR\` nodes representing the
-- output variables created for each column that is read by the operator.
-- The corresponding \`variable\` fields will be set to the variable names
-- assigned to the columns.
clVariable :: Lens' ChildLink (Maybe Text)
clVariable
  = lens _clVariable (\ s a -> s{_clVariable = a})

-- | The type of the link. For example, in Hash Joins this could be used to
-- distinguish between the build child and the probe child, or in the case
-- of the child being an output variable, to represent the tag associated
-- with the output variable.
clType :: Lens' ChildLink (Maybe Text)
clType = lens _clType (\ s a -> s{_clType = a})

instance FromJSON ChildLink where
        parseJSON
          = withObject "ChildLink"
              (\ o ->
                 ChildLink' <$>
                   (o .:? "childIndex") <*> (o .:? "variable") <*>
                     (o .:? "type"))

instance ToJSON ChildLink where
        toJSON ChildLink'{..}
          = object
              (catMaybes
                 [("childIndex" .=) <$> _clChildIndex,
                  ("variable" .=) <$> _clVariable,
                  ("type" .=) <$> _clType])

-- | A message representing a (sparse) collection of KeyRangeInfos for
-- specific key buckets.
--
-- /See:/ 'indexedKeyRangeInfos' smart constructor.
newtype IndexedKeyRangeInfos =
  IndexedKeyRangeInfos'
    { _ikriKeyRangeInfos :: Maybe IndexedKeyRangeInfosKeyRangeInfos
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexedKeyRangeInfos' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ikriKeyRangeInfos'
indexedKeyRangeInfos
    :: IndexedKeyRangeInfos
indexedKeyRangeInfos = IndexedKeyRangeInfos' {_ikriKeyRangeInfos = Nothing}


-- | A (sparse) mapping from key bucket index to the KeyRangeInfos for that
-- key bucket.
ikriKeyRangeInfos :: Lens' IndexedKeyRangeInfos (Maybe IndexedKeyRangeInfosKeyRangeInfos)
ikriKeyRangeInfos
  = lens _ikriKeyRangeInfos
      (\ s a -> s{_ikriKeyRangeInfos = a})

instance FromJSON IndexedKeyRangeInfos where
        parseJSON
          = withObject "IndexedKeyRangeInfos"
              (\ o ->
                 IndexedKeyRangeInfos' <$> (o .:? "keyRangeInfos"))

instance ToJSON IndexedKeyRangeInfos where
        toJSON IndexedKeyRangeInfos'{..}
          = object
              (catMaybes
                 [("keyRangeInfos" .=) <$> _ikriKeyRangeInfos])

-- | The request for BeginTransaction.
--
-- /See:/ 'beginTransactionRequest' smart constructor.
data BeginTransactionRequest =
  BeginTransactionRequest'
    { _btrOptions :: !(Maybe TransactionOptions)
    , _btrRequestOptions :: !(Maybe RequestOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BeginTransactionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btrOptions'
--
-- * 'btrRequestOptions'
beginTransactionRequest
    :: BeginTransactionRequest
beginTransactionRequest =
  BeginTransactionRequest' {_btrOptions = Nothing, _btrRequestOptions = Nothing}


-- | Required. Options for the new transaction.
btrOptions :: Lens' BeginTransactionRequest (Maybe TransactionOptions)
btrOptions
  = lens _btrOptions (\ s a -> s{_btrOptions = a})

-- | Common options for this request. Priority is ignored for this request.
-- Setting the priority in this request_options struct will not do
-- anything. To set the priority for a transaction, set it on the reads and
-- writes that are part of this transaction instead.
btrRequestOptions :: Lens' BeginTransactionRequest (Maybe RequestOptions)
btrRequestOptions
  = lens _btrRequestOptions
      (\ s a -> s{_btrRequestOptions = a})

instance FromJSON BeginTransactionRequest where
        parseJSON
          = withObject "BeginTransactionRequest"
              (\ o ->
                 BeginTransactionRequest' <$>
                   (o .:? "options") <*> (o .:? "requestOptions"))

instance ToJSON BeginTransactionRequest where
        toJSON BeginTransactionRequest'{..}
          = object
              (catMaybes
                 [("options" .=) <$> _btrOptions,
                  ("requestOptions" .=) <$> _btrRequestOptions])

-- | A (sparse) mapping from key bucket index to the index of the specific
-- hot row key for that key bucket. The index of the hot row key can be
-- translated to the actual row key via the
-- ScanData.VisualizationData.indexed_keys repeated field.
--
-- /See:/ 'indexedHotKeySparseHotKeys' smart constructor.
newtype IndexedHotKeySparseHotKeys =
  IndexedHotKeySparseHotKeys'
    { _ihkshkAddtional :: HashMap Text (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexedHotKeySparseHotKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ihkshkAddtional'
indexedHotKeySparseHotKeys
    :: HashMap Text Int32 -- ^ 'ihkshkAddtional'
    -> IndexedHotKeySparseHotKeys
indexedHotKeySparseHotKeys pIhkshkAddtional_ =
  IndexedHotKeySparseHotKeys' {_ihkshkAddtional = _Coerce # pIhkshkAddtional_}


ihkshkAddtional :: Lens' IndexedHotKeySparseHotKeys (HashMap Text Int32)
ihkshkAddtional
  = lens _ihkshkAddtional
      (\ s a -> s{_ihkshkAddtional = a})
      . _Coerce

instance FromJSON IndexedHotKeySparseHotKeys where
        parseJSON
          = withObject "IndexedHotKeySparseHotKeys"
              (\ o ->
                 IndexedHotKeySparseHotKeys' <$> (parseJSONObject o))

instance ToJSON IndexedHotKeySparseHotKeys where
        toJSON = toJSON . _ihkshkAddtional

-- | The response for ListDatabaseOperations.
--
-- /See:/ 'listDatabaseOperationsResponse' smart constructor.
data ListDatabaseOperationsResponse =
  ListDatabaseOperationsResponse'
    { _ldorNextPageToken :: !(Maybe Text)
    , _ldorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDatabaseOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldorNextPageToken'
--
-- * 'ldorOperations'
listDatabaseOperationsResponse
    :: ListDatabaseOperationsResponse
listDatabaseOperationsResponse =
  ListDatabaseOperationsResponse'
    {_ldorNextPageToken = Nothing, _ldorOperations = Nothing}


-- | \`next_page_token\` can be sent in a subsequent ListDatabaseOperations
-- call to fetch more of the matching metadata.
ldorNextPageToken :: Lens' ListDatabaseOperationsResponse (Maybe Text)
ldorNextPageToken
  = lens _ldorNextPageToken
      (\ s a -> s{_ldorNextPageToken = a})

-- | The list of matching database long-running operations. Each operation\'s
-- name will be prefixed by the database\'s name. The operation\'s metadata
-- field type \`metadata.type_url\` describes the type of the metadata.
ldorOperations :: Lens' ListDatabaseOperationsResponse [Operation]
ldorOperations
  = lens _ldorOperations
      (\ s a -> s{_ldorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListDatabaseOperationsResponse
         where
        parseJSON
          = withObject "ListDatabaseOperationsResponse"
              (\ o ->
                 ListDatabaseOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListDatabaseOperationsResponse where
        toJSON ListDatabaseOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldorNextPageToken,
                  ("operations" .=) <$> _ldorOperations])

-- | Options for a PartitionQueryRequest and PartitionReadRequest.
--
-- /See:/ 'partitionOptions' smart constructor.
data PartitionOptions =
  PartitionOptions'
    { _poMaxPartitions :: !(Maybe (Textual Int64))
    , _poPartitionSizeBytes :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartitionOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poMaxPartitions'
--
-- * 'poPartitionSizeBytes'
partitionOptions
    :: PartitionOptions
partitionOptions =
  PartitionOptions'
    {_poMaxPartitions = Nothing, _poPartitionSizeBytes = Nothing}


-- | **Note:** This hint is currently ignored by PartitionQuery and
-- PartitionRead requests. The desired maximum number of partitions to
-- return. For example, this may be set to the number of workers available.
-- The default for this option is currently 10,000. The maximum value is
-- currently 200,000. This is only a hint. The actual number of partitions
-- returned may be smaller or larger than this maximum count request.
poMaxPartitions :: Lens' PartitionOptions (Maybe Int64)
poMaxPartitions
  = lens _poMaxPartitions
      (\ s a -> s{_poMaxPartitions = a})
      . mapping _Coerce

-- | **Note:** This hint is currently ignored by PartitionQuery and
-- PartitionRead requests. The desired data size for each partition
-- generated. The default for this option is currently 1 GiB. This is only
-- a hint. The actual size of each partition may be smaller or larger than
-- this size request.
poPartitionSizeBytes :: Lens' PartitionOptions (Maybe Int64)
poPartitionSizeBytes
  = lens _poPartitionSizeBytes
      (\ s a -> s{_poPartitionSizeBytes = a})
      . mapping _Coerce

instance FromJSON PartitionOptions where
        parseJSON
          = withObject "PartitionOptions"
              (\ o ->
                 PartitionOptions' <$>
                   (o .:? "maxPartitions") <*>
                     (o .:? "partitionSizeBytes"))

instance ToJSON PartitionOptions where
        toJSON PartitionOptions'{..}
          = object
              (catMaybes
                 [("maxPartitions" .=) <$> _poMaxPartitions,
                  ("partitionSizeBytes" .=) <$> _poPartitionSizeBytes])

-- | Additional statistics about a ResultSet or PartialResultSet.
--
-- /See:/ 'resultSetStats' smart constructor.
data ResultSetStats =
  ResultSetStats'
    { _rssRowCountExact :: !(Maybe (Textual Int64))
    , _rssRowCountLowerBound :: !(Maybe (Textual Int64))
    , _rssQueryStats :: !(Maybe ResultSetStatsQueryStats)
    , _rssQueryPlan :: !(Maybe QueryPlan)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultSetStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rssRowCountExact'
--
-- * 'rssRowCountLowerBound'
--
-- * 'rssQueryStats'
--
-- * 'rssQueryPlan'
resultSetStats
    :: ResultSetStats
resultSetStats =
  ResultSetStats'
    { _rssRowCountExact = Nothing
    , _rssRowCountLowerBound = Nothing
    , _rssQueryStats = Nothing
    , _rssQueryPlan = Nothing
    }


-- | Standard DML returns an exact count of rows that were modified.
rssRowCountExact :: Lens' ResultSetStats (Maybe Int64)
rssRowCountExact
  = lens _rssRowCountExact
      (\ s a -> s{_rssRowCountExact = a})
      . mapping _Coerce

-- | Partitioned DML does not offer exactly-once semantics, so it returns a
-- lower bound of the rows modified.
rssRowCountLowerBound :: Lens' ResultSetStats (Maybe Int64)
rssRowCountLowerBound
  = lens _rssRowCountLowerBound
      (\ s a -> s{_rssRowCountLowerBound = a})
      . mapping _Coerce

-- | Aggregated statistics from the execution of the query. Only present when
-- the query is profiled. For example, a query could return the statistics
-- as follows: { \"rows_returned\": \"3\", \"elapsed_time\": \"1.22 secs\",
-- \"cpu_time\": \"1.19 secs\" }
rssQueryStats :: Lens' ResultSetStats (Maybe ResultSetStatsQueryStats)
rssQueryStats
  = lens _rssQueryStats
      (\ s a -> s{_rssQueryStats = a})

-- | QueryPlan for the query associated with this result.
rssQueryPlan :: Lens' ResultSetStats (Maybe QueryPlan)
rssQueryPlan
  = lens _rssQueryPlan (\ s a -> s{_rssQueryPlan = a})

instance FromJSON ResultSetStats where
        parseJSON
          = withObject "ResultSetStats"
              (\ o ->
                 ResultSetStats' <$>
                   (o .:? "rowCountExact") <*>
                     (o .:? "rowCountLowerBound")
                     <*> (o .:? "queryStats")
                     <*> (o .:? "queryPlan"))

instance ToJSON ResultSetStats where
        toJSON ResultSetStats'{..}
          = object
              (catMaybes
                 [("rowCountExact" .=) <$> _rssRowCountExact,
                  ("rowCountLowerBound" .=) <$> _rssRowCountLowerBound,
                  ("queryStats" .=) <$> _rssQueryStats,
                  ("queryPlan" .=) <$> _rssQueryPlan])

-- | Message representing a single field of a struct.
--
-- /See:/ 'field' smart constructor.
data Field =
  Field'
    { _fName :: !(Maybe Text)
    , _fType :: !(Maybe Type)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Field' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fName'
--
-- * 'fType'
field
    :: Field
field = Field' {_fName = Nothing, _fType = Nothing}


-- | The name of the field. For reads, this is the column name. For SQL
-- queries, it is the column alias (e.g., \`\"Word\"\` in the query
-- \`\"SELECT \'hello\' AS Word\"\`), or the column name (e.g.,
-- \`\"ColName\"\` in the query \`\"SELECT ColName FROM Table\"\`). Some
-- columns might have an empty name (e.g., \`\"SELECT UPPER(ColName)\"\`).
-- Note that a query result can contain multiple fields with the same name.
fName :: Lens' Field (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | The type of the field.
fType :: Lens' Field (Maybe Type)
fType = lens _fType (\ s a -> s{_fType = a})

instance FromJSON Field where
        parseJSON
          = withObject "Field"
              (\ o -> Field' <$> (o .:? "name") <*> (o .:? "type"))

instance ToJSON Field where
        toJSON Field'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _fName, ("type" .=) <$> _fType])

-- | Query optimizer configuration.
--
-- /See:/ 'queryOptions' smart constructor.
data QueryOptions =
  QueryOptions'
    { _qoOptimizerStatisticsPackage :: !(Maybe Text)
    , _qoOptimizerVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qoOptimizerStatisticsPackage'
--
-- * 'qoOptimizerVersion'
queryOptions
    :: QueryOptions
queryOptions =
  QueryOptions'
    {_qoOptimizerStatisticsPackage = Nothing, _qoOptimizerVersion = Nothing}


-- | An option to control the selection of optimizer statistics package. This
-- parameter allows individual queries to use a different query optimizer
-- statistics package. Specifying \`latest\` as a value instructs Cloud
-- Spanner to use the latest generated statistics package. If not
-- specified, Cloud Spanner uses the statistics package set at the database
-- level options, or the latest package if the database option is not set.
-- The statistics package requested by the query has to be exempt from
-- garbage collection. This can be achieved with the following DDL
-- statement: \`\`\` ALTER STATISTICS SET OPTIONS (allow_gc=false) \`\`\`
-- The list of available statistics packages can be queried from
-- \`INFORMATION_SCHEMA.SPANNER_STATISTICS\`. Executing a SQL statement
-- with an invalid optimizer statistics package or with a statistics
-- package that allows garbage collection fails with an
-- \`INVALID_ARGUMENT\` error.
qoOptimizerStatisticsPackage :: Lens' QueryOptions (Maybe Text)
qoOptimizerStatisticsPackage
  = lens _qoOptimizerStatisticsPackage
      (\ s a -> s{_qoOptimizerStatisticsPackage = a})

-- | An option to control the selection of optimizer version. This parameter
-- allows individual queries to pick different query optimizer versions.
-- Specifying \`latest\` as a value instructs Cloud Spanner to use the
-- latest supported query optimizer version. If not specified, Cloud
-- Spanner uses the optimizer version set at the database level options.
-- Any other positive integer (from the list of supported optimizer
-- versions) overrides the default optimizer version for query execution.
-- The list of supported optimizer versions can be queried from
-- SPANNER_SYS.SUPPORTED_OPTIMIZER_VERSIONS. Executing a SQL statement with
-- an invalid optimizer version fails with an \`INVALID_ARGUMENT\` error.
-- See
-- https:\/\/cloud.google.com\/spanner\/docs\/query-optimizer\/manage-query-optimizer
-- for more information on managing the query optimizer. The
-- \`optimizer_version\` statement hint has precedence over this setting.
qoOptimizerVersion :: Lens' QueryOptions (Maybe Text)
qoOptimizerVersion
  = lens _qoOptimizerVersion
      (\ s a -> s{_qoOptimizerVersion = a})

instance FromJSON QueryOptions where
        parseJSON
          = withObject "QueryOptions"
              (\ o ->
                 QueryOptions' <$>
                   (o .:? "optimizerStatisticsPackage") <*>
                     (o .:? "optimizerVersion"))

instance ToJSON QueryOptions where
        toJSON QueryOptions'{..}
          = object
              (catMaybes
                 [("optimizerStatisticsPackage" .=) <$>
                    _qoOptimizerStatisticsPackage,
                  ("optimizerVersion" .=) <$> _qoOptimizerVersion])

-- | Arguments to insert, update, insert_or_update, and replace operations.
--
-- /See:/ 'write' smart constructor.
data Write =
  Write'
    { _wValues :: !(Maybe [[JSONValue]])
    , _wColumns :: !(Maybe [Text])
    , _wTable :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Write' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wValues'
--
-- * 'wColumns'
--
-- * 'wTable'
write
    :: Write
write = Write' {_wValues = Nothing, _wColumns = Nothing, _wTable = Nothing}


-- | The values to be written. \`values\` can contain more than one list of
-- values. If it does, then multiple rows are written, one for each entry
-- in \`values\`. Each list in \`values\` must have exactly as many entries
-- as there are entries in columns above. Sending multiple lists is
-- equivalent to sending multiple \`Mutation\`s, each containing one
-- \`values\` entry and repeating table and columns. Individual values in
-- each list are encoded as described here.
wValues :: Lens' Write [[JSONValue]]
wValues
  = lens _wValues (\ s a -> s{_wValues = a}) . _Default
      . _Coerce

-- | The names of the columns in table to be written. The list of columns
-- must contain enough columns to allow Cloud Spanner to derive values for
-- all primary key columns in the row(s) to be modified.
wColumns :: Lens' Write [Text]
wColumns
  = lens _wColumns (\ s a -> s{_wColumns = a}) .
      _Default
      . _Coerce

-- | Required. The table whose rows will be written.
wTable :: Lens' Write (Maybe Text)
wTable = lens _wTable (\ s a -> s{_wTable = a})

instance FromJSON Write where
        parseJSON
          = withObject "Write"
              (\ o ->
                 Write' <$>
                   (o .:? "values" .!= mempty) <*>
                     (o .:? "columns" .!= mempty)
                     <*> (o .:? "table"))

instance ToJSON Write where
        toJSON Write'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _wValues,
                  ("columns" .=) <$> _wColumns,
                  ("table" .=) <$> _wTable])

-- | \`KeySet\` defines a collection of Cloud Spanner keys and\/or key
-- ranges. All the keys are expected to be in the same table or index. The
-- keys need not be sorted in any particular way. If the same key is
-- specified multiple times in the set (for example if two ranges, two
-- keys, or a key and a range overlap), Cloud Spanner behaves as if the key
-- were only specified once.
--
-- /See:/ 'keySet' smart constructor.
data KeySet =
  KeySet'
    { _ksAll :: !(Maybe Bool)
    , _ksRanges :: !(Maybe [KeyRange])
    , _ksKeys :: !(Maybe [[JSONValue]])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeySet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ksAll'
--
-- * 'ksRanges'
--
-- * 'ksKeys'
keySet
    :: KeySet
keySet = KeySet' {_ksAll = Nothing, _ksRanges = Nothing, _ksKeys = Nothing}


-- | For convenience \`all\` can be set to \`true\` to indicate that this
-- \`KeySet\` matches all keys in the table or index. Note that any keys
-- specified in \`keys\` or \`ranges\` are only yielded once.
ksAll :: Lens' KeySet (Maybe Bool)
ksAll = lens _ksAll (\ s a -> s{_ksAll = a})

-- | A list of key ranges. See KeyRange for more information about key range
-- specifications.
ksRanges :: Lens' KeySet [KeyRange]
ksRanges
  = lens _ksRanges (\ s a -> s{_ksRanges = a}) .
      _Default
      . _Coerce

-- | A list of specific keys. Entries in \`keys\` should have exactly as many
-- elements as there are columns in the primary or index key with which
-- this \`KeySet\` is used. Individual key values are encoded as described
-- here.
ksKeys :: Lens' KeySet [[JSONValue]]
ksKeys
  = lens _ksKeys (\ s a -> s{_ksKeys = a}) . _Default .
      _Coerce

instance FromJSON KeySet where
        parseJSON
          = withObject "KeySet"
              (\ o ->
                 KeySet' <$>
                   (o .:? "all") <*> (o .:? "ranges" .!= mempty) <*>
                     (o .:? "keys" .!= mempty))

instance ToJSON KeySet where
        toJSON KeySet'{..}
          = object
              (catMaybes
                 [("all" .=) <$> _ksAll, ("ranges" .=) <$> _ksRanges,
                  ("keys" .=) <$> _ksKeys])

-- | A single DML statement.
--
-- /See:/ 'statement' smart constructor.
data Statement =
  Statement'
    { _sParamTypes :: !(Maybe StatementParamTypes)
    , _sParams :: !(Maybe StatementParams)
    , _sSQL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Statement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sParamTypes'
--
-- * 'sParams'
--
-- * 'sSQL'
statement
    :: Statement
statement =
  Statement' {_sParamTypes = Nothing, _sParams = Nothing, _sSQL = Nothing}


-- | It is not always possible for Cloud Spanner to infer the right SQL type
-- from a JSON value. For example, values of type \`BYTES\` and values of
-- type \`STRING\` both appear in params as JSON strings. In these cases,
-- \`param_types\` can be used to specify the exact SQL type for some or
-- all of the SQL statement parameters. See the definition of Type for more
-- information about SQL types.
sParamTypes :: Lens' Statement (Maybe StatementParamTypes)
sParamTypes
  = lens _sParamTypes (\ s a -> s{_sParamTypes = a})

-- | Parameter names and values that bind to placeholders in the DML string.
-- A parameter placeholder consists of the \`\'\` character followed by the
-- parameter name (for example, \`\'firstName\`). Parameter names can
-- contain letters, numbers, and underscores. Parameters can appear
-- anywhere that a literal value is expected. The same parameter name can
-- be used more than once, for example: \`\"WHERE id > \'msg_id AND id \<
-- \'msg_id + 100\"\` It is an error to execute a SQL statement with
-- unbound parameters.
sParams :: Lens' Statement (Maybe StatementParams)
sParams = lens _sParams (\ s a -> s{_sParams = a})

-- | Required. The DML string.
sSQL :: Lens' Statement (Maybe Text)
sSQL = lens _sSQL (\ s a -> s{_sSQL = a})

instance FromJSON Statement where
        parseJSON
          = withObject "Statement"
              (\ o ->
                 Statement' <$>
                   (o .:? "paramTypes") <*> (o .:? "params") <*>
                     (o .:? "sql"))

instance ToJSON Statement where
        toJSON Statement'{..}
          = object
              (catMaybes
                 [("paramTypes" .=) <$> _sParamTypes,
                  ("params" .=) <$> _sParams, ("sql" .=) <$> _sSQL])

-- | Parameter names and values that bind to placeholders in the SQL string.
-- A parameter placeholder consists of the \`\'\` character followed by the
-- parameter name (for example, \`\'firstName\`). Parameter names can
-- contain letters, numbers, and underscores. Parameters can appear
-- anywhere that a literal value is expected. The same parameter name can
-- be used more than once, for example: \`\"WHERE id > \'msg_id AND id \<
-- \'msg_id + 100\"\` It is an error to execute a SQL statement with
-- unbound parameters.
--
-- /See:/ 'partitionQueryRequestParams' smart constructor.
newtype PartitionQueryRequestParams =
  PartitionQueryRequestParams'
    { _pqrpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartitionQueryRequestParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pqrpAddtional'
partitionQueryRequestParams
    :: HashMap Text JSONValue -- ^ 'pqrpAddtional'
    -> PartitionQueryRequestParams
partitionQueryRequestParams pPqrpAddtional_ =
  PartitionQueryRequestParams' {_pqrpAddtional = _Coerce # pPqrpAddtional_}


-- | Properties of the object.
pqrpAddtional :: Lens' PartitionQueryRequestParams (HashMap Text JSONValue)
pqrpAddtional
  = lens _pqrpAddtional
      (\ s a -> s{_pqrpAddtional = a})
      . _Coerce

instance FromJSON PartitionQueryRequestParams where
        parseJSON
          = withObject "PartitionQueryRequestParams"
              (\ o ->
                 PartitionQueryRequestParams' <$> (parseJSONObject o))

instance ToJSON PartitionQueryRequestParams where
        toJSON = toJSON . _pqrpAddtional

-- | The response for ExecuteBatchDml. Contains a list of ResultSet messages,
-- one for each DML statement that has successfully executed, in the same
-- order as the statements in the request. If a statement fails, the status
-- in the response body identifies the cause of the failure. To check for
-- DML statements that failed, use the following approach: 1. Check the
-- status in the response message. The google.rpc.Code enum value \`OK\`
-- indicates that all statements were executed successfully. 2. If the
-- status was not \`OK\`, check the number of result sets in the response.
-- If the response contains \`N\` ResultSet messages, then statement
-- \`N+1\` in the request failed. Example 1: * Request: 5 DML statements,
-- all executed successfully. * Response: 5 ResultSet messages, with the
-- status \`OK\`. Example 2: * Request: 5 DML statements. The third
-- statement has a syntax error. * Response: 2 ResultSet messages, and a
-- syntax error (\`INVALID_ARGUMENT\`) status. The number of ResultSet
-- messages indicates that the third statement failed, and the fourth and
-- fifth statements were not executed.
--
-- /See:/ 'executeBatchDmlResponse' smart constructor.
data ExecuteBatchDmlResponse =
  ExecuteBatchDmlResponse'
    { _ebdrStatus :: !(Maybe Status)
    , _ebdrResultSets :: !(Maybe [ResultSet])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecuteBatchDmlResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebdrStatus'
--
-- * 'ebdrResultSets'
executeBatchDmlResponse
    :: ExecuteBatchDmlResponse
executeBatchDmlResponse =
  ExecuteBatchDmlResponse' {_ebdrStatus = Nothing, _ebdrResultSets = Nothing}


-- | If all DML statements are executed successfully, the status is \`OK\`.
-- Otherwise, the error status of the first failed statement.
ebdrStatus :: Lens' ExecuteBatchDmlResponse (Maybe Status)
ebdrStatus
  = lens _ebdrStatus (\ s a -> s{_ebdrStatus = a})

-- | One ResultSet for each statement in the request that ran successfully,
-- in the same order as the statements in the request. Each ResultSet does
-- not contain any rows. The ResultSetStats in each ResultSet contain the
-- number of rows modified by the statement. Only the first ResultSet in
-- the response contains valid ResultSetMetadata.
ebdrResultSets :: Lens' ExecuteBatchDmlResponse [ResultSet]
ebdrResultSets
  = lens _ebdrResultSets
      (\ s a -> s{_ebdrResultSets = a})
      . _Default
      . _Coerce

instance FromJSON ExecuteBatchDmlResponse where
        parseJSON
          = withObject "ExecuteBatchDmlResponse"
              (\ o ->
                 ExecuteBatchDmlResponse' <$>
                   (o .:? "status") <*> (o .:? "resultSets" .!= mempty))

instance ToJSON ExecuteBatchDmlResponse where
        toJSON ExecuteBatchDmlResponse'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _ebdrStatus,
                  ("resultSets" .=) <$> _ebdrResultSets])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | Metadata type for the operation returned by UpdateDatabaseDdl.
--
-- /See:/ 'updateDatabaseDdlMetadata' smart constructor.
data UpdateDatabaseDdlMetadata =
  UpdateDatabaseDdlMetadata'
    { _uddmCommitTimestamps :: !(Maybe [DateTime'])
    , _uddmThrottled :: !(Maybe Bool)
    , _uddmProgress :: !(Maybe [OperationProgress])
    , _uddmDatabase :: !(Maybe Text)
    , _uddmStatements :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDatabaseDdlMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uddmCommitTimestamps'
--
-- * 'uddmThrottled'
--
-- * 'uddmProgress'
--
-- * 'uddmDatabase'
--
-- * 'uddmStatements'
updateDatabaseDdlMetadata
    :: UpdateDatabaseDdlMetadata
updateDatabaseDdlMetadata =
  UpdateDatabaseDdlMetadata'
    { _uddmCommitTimestamps = Nothing
    , _uddmThrottled = Nothing
    , _uddmProgress = Nothing
    , _uddmDatabase = Nothing
    , _uddmStatements = Nothing
    }


-- | Reports the commit timestamps of all statements that have succeeded so
-- far, where \`commit_timestamps[i]\` is the commit timestamp for the
-- statement \`statements[i]\`.
uddmCommitTimestamps :: Lens' UpdateDatabaseDdlMetadata [UTCTime]
uddmCommitTimestamps
  = lens _uddmCommitTimestamps
      (\ s a -> s{_uddmCommitTimestamps = a})
      . _Default
      . _Coerce

-- | Output only. When true, indicates that the operation is throttled e.g
-- due to resource constraints. When resources become available the
-- operation will resume and this field will be false again.
uddmThrottled :: Lens' UpdateDatabaseDdlMetadata (Maybe Bool)
uddmThrottled
  = lens _uddmThrottled
      (\ s a -> s{_uddmThrottled = a})

-- | The progress of the UpdateDatabaseDdl operations. Currently, only index
-- creation statements will have a continuously updating progress. For
-- non-index creation statements, \`progress[i]\` will have start time and
-- end time populated with commit timestamp of operation, as well as a
-- progress of 100% once the operation has completed. \`progress[i]\` is
-- the operation progress for \`statements[i]\`.
uddmProgress :: Lens' UpdateDatabaseDdlMetadata [OperationProgress]
uddmProgress
  = lens _uddmProgress (\ s a -> s{_uddmProgress = a})
      . _Default
      . _Coerce

-- | The database being modified.
uddmDatabase :: Lens' UpdateDatabaseDdlMetadata (Maybe Text)
uddmDatabase
  = lens _uddmDatabase (\ s a -> s{_uddmDatabase = a})

-- | For an update this list contains all the statements. For an individual
-- statement, this list contains only that statement.
uddmStatements :: Lens' UpdateDatabaseDdlMetadata [Text]
uddmStatements
  = lens _uddmStatements
      (\ s a -> s{_uddmStatements = a})
      . _Default
      . _Coerce

instance FromJSON UpdateDatabaseDdlMetadata where
        parseJSON
          = withObject "UpdateDatabaseDdlMetadata"
              (\ o ->
                 UpdateDatabaseDdlMetadata' <$>
                   (o .:? "commitTimestamps" .!= mempty) <*>
                     (o .:? "throttled")
                     <*> (o .:? "progress" .!= mempty)
                     <*> (o .:? "database")
                     <*> (o .:? "statements" .!= mempty))

instance ToJSON UpdateDatabaseDdlMetadata where
        toJSON UpdateDatabaseDdlMetadata'{..}
          = object
              (catMaybes
                 [("commitTimestamps" .=) <$> _uddmCommitTimestamps,
                  ("throttled" .=) <$> _uddmThrottled,
                  ("progress" .=) <$> _uddmProgress,
                  ("database" .=) <$> _uddmDatabase,
                  ("statements" .=) <$> _uddmStatements])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | A message representing a list of specific information for multiple key
-- ranges.
--
-- /See:/ 'keyRangeInfos' smart constructor.
data KeyRangeInfos =
  KeyRangeInfos'
    { _kriTotalSize :: !(Maybe (Textual Int32))
    , _kriInfos :: !(Maybe [KeyRangeInfo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyRangeInfos' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kriTotalSize'
--
-- * 'kriInfos'
keyRangeInfos
    :: KeyRangeInfos
keyRangeInfos = KeyRangeInfos' {_kriTotalSize = Nothing, _kriInfos = Nothing}


-- | The total size of the list of all KeyRangeInfos. This may be larger than
-- the number of repeated messages above. If that is the case, this number
-- may be used to determine how many are not being shown.
kriTotalSize :: Lens' KeyRangeInfos (Maybe Int32)
kriTotalSize
  = lens _kriTotalSize (\ s a -> s{_kriTotalSize = a})
      . mapping _Coerce

-- | The list individual KeyRangeInfos.
kriInfos :: Lens' KeyRangeInfos [KeyRangeInfo]
kriInfos
  = lens _kriInfos (\ s a -> s{_kriInfos = a}) .
      _Default
      . _Coerce

instance FromJSON KeyRangeInfos where
        parseJSON
          = withObject "KeyRangeInfos"
              (\ o ->
                 KeyRangeInfos' <$>
                   (o .:? "totalSize") <*> (o .:? "infos" .!= mempty))

instance ToJSON KeyRangeInfos where
        toJSON KeyRangeInfos'{..}
          = object
              (catMaybes
                 [("totalSize" .=) <$> _kriTotalSize,
                  ("infos" .=) <$> _kriInfos])

-- | A Cloud Spanner database.
--
-- /See:/ 'database' smart constructor.
data Database =
  Database'
    { _dState :: !(Maybe DatabaseState)
    , _dDefaultLeader :: !(Maybe Text)
    , _dEarliestVersionTime :: !(Maybe DateTime')
    , _dName :: !(Maybe Text)
    , _dEncryptionConfig :: !(Maybe EncryptionConfig)
    , _dVersionRetentionPeriod :: !(Maybe Text)
    , _dRestoreInfo :: !(Maybe RestoreInfo)
    , _dEncryptionInfo :: !(Maybe [EncryptionInfo])
    , _dCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Database' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dState'
--
-- * 'dDefaultLeader'
--
-- * 'dEarliestVersionTime'
--
-- * 'dName'
--
-- * 'dEncryptionConfig'
--
-- * 'dVersionRetentionPeriod'
--
-- * 'dRestoreInfo'
--
-- * 'dEncryptionInfo'
--
-- * 'dCreateTime'
database
    :: Database
database =
  Database'
    { _dState = Nothing
    , _dDefaultLeader = Nothing
    , _dEarliestVersionTime = Nothing
    , _dName = Nothing
    , _dEncryptionConfig = Nothing
    , _dVersionRetentionPeriod = Nothing
    , _dRestoreInfo = Nothing
    , _dEncryptionInfo = Nothing
    , _dCreateTime = Nothing
    }


-- | Output only. The current database state.
dState :: Lens' Database (Maybe DatabaseState)
dState = lens _dState (\ s a -> s{_dState = a})

-- | Output only. The read-write region which contains the database\'s leader
-- replicas. This is the same as the value of default_leader database
-- option set using DatabaseAdmin.CreateDatabase or
-- DatabaseAdmin.UpdateDatabaseDdl. If not explicitly set, this is empty.
dDefaultLeader :: Lens' Database (Maybe Text)
dDefaultLeader
  = lens _dDefaultLeader
      (\ s a -> s{_dDefaultLeader = a})

-- | Output only. Earliest timestamp at which older versions of the data can
-- be read. This value is continuously updated by Cloud Spanner and becomes
-- stale the moment it is queried. If you are using this value to recover
-- data, make sure to account for the time from the moment when the value
-- is queried to the moment when you initiate the recovery.
dEarliestVersionTime :: Lens' Database (Maybe UTCTime)
dEarliestVersionTime
  = lens _dEarliestVersionTime
      (\ s a -> s{_dEarliestVersionTime = a})
      . mapping _DateTime

-- | Required. The name of the database. Values are of the form
-- \`projects\/\/instances\/\/databases\/\`, where \`\` is as specified in
-- the \`CREATE DATABASE\` statement. This name can be passed to other API
-- methods to identify the database.
dName :: Lens' Database (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | Output only. For databases that are using customer managed encryption,
-- this field contains the encryption configuration for the database. For
-- databases that are using Google default or other types of encryption,
-- this field is empty.
dEncryptionConfig :: Lens' Database (Maybe EncryptionConfig)
dEncryptionConfig
  = lens _dEncryptionConfig
      (\ s a -> s{_dEncryptionConfig = a})

-- | Output only. The period in which Cloud Spanner retains all versions of
-- data for the database. This is the same as the value of
-- version_retention_period database option set using UpdateDatabaseDdl.
-- Defaults to 1 hour, if not set.
dVersionRetentionPeriod :: Lens' Database (Maybe Text)
dVersionRetentionPeriod
  = lens _dVersionRetentionPeriod
      (\ s a -> s{_dVersionRetentionPeriod = a})

-- | Output only. Applicable only for restored databases. Contains
-- information about the restore source.
dRestoreInfo :: Lens' Database (Maybe RestoreInfo)
dRestoreInfo
  = lens _dRestoreInfo (\ s a -> s{_dRestoreInfo = a})

-- | Output only. For databases that are using customer managed encryption,
-- this field contains the encryption information for the database, such as
-- encryption state and the Cloud KMS key versions that are in use. For
-- databases that are using Google default or other types of encryption,
-- this field is empty. This field is propagated lazily from the backend.
-- There might be a delay from when a key version is being used and when it
-- appears in this field.
dEncryptionInfo :: Lens' Database [EncryptionInfo]
dEncryptionInfo
  = lens _dEncryptionInfo
      (\ s a -> s{_dEncryptionInfo = a})
      . _Default
      . _Coerce

-- | Output only. If exists, the time at which the database creation started.
dCreateTime :: Lens' Database (Maybe UTCTime)
dCreateTime
  = lens _dCreateTime (\ s a -> s{_dCreateTime = a}) .
      mapping _DateTime

instance FromJSON Database where
        parseJSON
          = withObject "Database"
              (\ o ->
                 Database' <$>
                   (o .:? "state") <*> (o .:? "defaultLeader") <*>
                     (o .:? "earliestVersionTime")
                     <*> (o .:? "name")
                     <*> (o .:? "encryptionConfig")
                     <*> (o .:? "versionRetentionPeriod")
                     <*> (o .:? "restoreInfo")
                     <*> (o .:? "encryptionInfo" .!= mempty)
                     <*> (o .:? "createTime"))

instance ToJSON Database where
        toJSON Database'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _dState,
                  ("defaultLeader" .=) <$> _dDefaultLeader,
                  ("earliestVersionTime" .=) <$> _dEarliestVersionTime,
                  ("name" .=) <$> _dName,
                  ("encryptionConfig" .=) <$> _dEncryptionConfig,
                  ("versionRetentionPeriod" .=) <$>
                    _dVersionRetentionPeriod,
                  ("restoreInfo" .=) <$> _dRestoreInfo,
                  ("encryptionInfo" .=) <$> _dEncryptionInfo,
                  ("createTime" .=) <$> _dCreateTime])

-- | A message representing a key prefix node in the key prefix hierarchy.
-- for eg. Bigtable keyspaces are lexicographically ordered mappings of
-- keys to values. Keys often have a shared prefix structure where users
-- use the keys to organize data. Eg \/\/\/employee In this case Keysight
-- will possibly use one node for a company and reuse it for all employees
-- that fall under the company. Doing so improves legibility in the UI.
--
-- /See:/ 'prefixNode' smart constructor.
data PrefixNode =
  PrefixNode'
    { _pnEndIndex :: !(Maybe (Textual Int32))
    , _pnDepth :: !(Maybe (Textual Int32))
    , _pnDataSourceNode :: !(Maybe Bool)
    , _pnStartIndex :: !(Maybe (Textual Int32))
    , _pnWord :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrefixNode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnEndIndex'
--
-- * 'pnDepth'
--
-- * 'pnDataSourceNode'
--
-- * 'pnStartIndex'
--
-- * 'pnWord'
prefixNode
    :: PrefixNode
prefixNode =
  PrefixNode'
    { _pnEndIndex = Nothing
    , _pnDepth = Nothing
    , _pnDataSourceNode = Nothing
    , _pnStartIndex = Nothing
    , _pnWord = Nothing
    }


-- | The index of the end key bucket of the range that this node spans.
pnEndIndex :: Lens' PrefixNode (Maybe Int32)
pnEndIndex
  = lens _pnEndIndex (\ s a -> s{_pnEndIndex = a}) .
      mapping _Coerce

-- | The depth in the prefix hierarchy.
pnDepth :: Lens' PrefixNode (Maybe Int32)
pnDepth
  = lens _pnDepth (\ s a -> s{_pnDepth = a}) .
      mapping _Coerce

-- | Whether this corresponds to a data_source name.
pnDataSourceNode :: Lens' PrefixNode (Maybe Bool)
pnDataSourceNode
  = lens _pnDataSourceNode
      (\ s a -> s{_pnDataSourceNode = a})

-- | The index of the start key bucket of the range that this node spans.
pnStartIndex :: Lens' PrefixNode (Maybe Int32)
pnStartIndex
  = lens _pnStartIndex (\ s a -> s{_pnStartIndex = a})
      . mapping _Coerce

-- | The string represented by the prefix node.
pnWord :: Lens' PrefixNode (Maybe Text)
pnWord = lens _pnWord (\ s a -> s{_pnWord = a})

instance FromJSON PrefixNode where
        parseJSON
          = withObject "PrefixNode"
              (\ o ->
                 PrefixNode' <$>
                   (o .:? "endIndex") <*> (o .:? "depth") <*>
                     (o .:? "dataSourceNode")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "word"))

instance ToJSON PrefixNode where
        toJSON PrefixNode'{..}
          = object
              (catMaybes
                 [("endIndex" .=) <$> _pnEndIndex,
                  ("depth" .=) <$> _pnDepth,
                  ("dataSourceNode" .=) <$> _pnDataSourceNode,
                  ("startIndex" .=) <$> _pnStartIndex,
                  ("word" .=) <$> _pnWord])

-- | Additional statistics about a commit.
--
-- /See:/ 'commitStats' smart constructor.
newtype CommitStats =
  CommitStats'
    { _csMutationCount :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommitStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csMutationCount'
commitStats
    :: CommitStats
commitStats = CommitStats' {_csMutationCount = Nothing}


-- | The total number of mutations for the transaction. Knowing the
-- \`mutation_count\` value can help you maximize the number of mutations
-- in a transaction and minimize the number of API round trips. You can
-- also monitor this value to prevent transactions from exceeding the
-- system
-- [limit](https:\/\/cloud.google.com\/spanner\/quotas#limits_for_creating_reading_updating_and_deleting_data).
-- If the number of mutations exceeds the limit, the server returns
-- [INVALID_ARGUMENT](https:\/\/cloud.google.com\/spanner\/docs\/reference\/rest\/v1\/Code#ENUM_VALUES.INVALID_ARGUMENT).
csMutationCount :: Lens' CommitStats (Maybe Int64)
csMutationCount
  = lens _csMutationCount
      (\ s a -> s{_csMutationCount = a})
      . mapping _Coerce

instance FromJSON CommitStats where
        parseJSON
          = withObject "CommitStats"
              (\ o -> CommitStats' <$> (o .:? "mutationCount"))

instance ToJSON CommitStats where
        toJSON CommitStats'{..}
          = object
              (catMaybes
                 [("mutationCount" .=) <$> _csMutationCount])

-- | Encapsulates progress related information for a Cloud Spanner long
-- running operation.
--
-- /See:/ 'operationProgress' smart constructor.
data OperationProgress =
  OperationProgress'
    { _opStartTime :: !(Maybe DateTime')
    , _opProgressPercent :: !(Maybe (Textual Int32))
    , _opEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opStartTime'
--
-- * 'opProgressPercent'
--
-- * 'opEndTime'
operationProgress
    :: OperationProgress
operationProgress =
  OperationProgress'
    {_opStartTime = Nothing, _opProgressPercent = Nothing, _opEndTime = Nothing}


-- | Time the request was received.
opStartTime :: Lens' OperationProgress (Maybe UTCTime)
opStartTime
  = lens _opStartTime (\ s a -> s{_opStartTime = a}) .
      mapping _DateTime

-- | Percent completion of the operation. Values are between 0 and 100
-- inclusive.
opProgressPercent :: Lens' OperationProgress (Maybe Int32)
opProgressPercent
  = lens _opProgressPercent
      (\ s a -> s{_opProgressPercent = a})
      . mapping _Coerce

-- | If set, the time at which this operation failed or was completed
-- successfully.
opEndTime :: Lens' OperationProgress (Maybe UTCTime)
opEndTime
  = lens _opEndTime (\ s a -> s{_opEndTime = a}) .
      mapping _DateTime

instance FromJSON OperationProgress where
        parseJSON
          = withObject "OperationProgress"
              (\ o ->
                 OperationProgress' <$>
                   (o .:? "startTime") <*> (o .:? "progressPercent") <*>
                     (o .:? "endTime"))

instance ToJSON OperationProgress where
        toJSON OperationProgress'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _opStartTime,
                  ("progressPercent" .=) <$> _opProgressPercent,
                  ("endTime" .=) <$> _opEndTime])

-- | Node information for nodes appearing in a QueryPlan.plan_nodes.
--
-- /See:/ 'planNode' smart constructor.
data PlanNode =
  PlanNode'
    { _pnKind :: !(Maybe PlanNodeKind)
    , _pnShortRepresentation :: !(Maybe ShortRepresentation)
    , _pnMetadata :: !(Maybe PlanNodeMetadata)
    , _pnDisplayName :: !(Maybe Text)
    , _pnExecutionStats :: !(Maybe PlanNodeExecutionStats)
    , _pnIndex :: !(Maybe (Textual Int32))
    , _pnChildLinks :: !(Maybe [ChildLink])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlanNode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnKind'
--
-- * 'pnShortRepresentation'
--
-- * 'pnMetadata'
--
-- * 'pnDisplayName'
--
-- * 'pnExecutionStats'
--
-- * 'pnIndex'
--
-- * 'pnChildLinks'
planNode
    :: PlanNode
planNode =
  PlanNode'
    { _pnKind = Nothing
    , _pnShortRepresentation = Nothing
    , _pnMetadata = Nothing
    , _pnDisplayName = Nothing
    , _pnExecutionStats = Nothing
    , _pnIndex = Nothing
    , _pnChildLinks = Nothing
    }


-- | Used to determine the type of node. May be needed for visualizing
-- different kinds of nodes differently. For example, If the node is a
-- SCALAR node, it will have a condensed representation which can be used
-- to directly embed a description of the node in its parent.
pnKind :: Lens' PlanNode (Maybe PlanNodeKind)
pnKind = lens _pnKind (\ s a -> s{_pnKind = a})

-- | Condensed representation for SCALAR nodes.
pnShortRepresentation :: Lens' PlanNode (Maybe ShortRepresentation)
pnShortRepresentation
  = lens _pnShortRepresentation
      (\ s a -> s{_pnShortRepresentation = a})

-- | Attributes relevant to the node contained in a group of key-value pairs.
-- For example, a Parameter Reference node could have the following
-- information in its metadata: { \"parameter_reference\": \"param1\",
-- \"parameter_type\": \"array\" }
pnMetadata :: Lens' PlanNode (Maybe PlanNodeMetadata)
pnMetadata
  = lens _pnMetadata (\ s a -> s{_pnMetadata = a})

-- | The display name for the node.
pnDisplayName :: Lens' PlanNode (Maybe Text)
pnDisplayName
  = lens _pnDisplayName
      (\ s a -> s{_pnDisplayName = a})

-- | The execution statistics associated with the node, contained in a group
-- of key-value pairs. Only present if the plan was returned as a result of
-- a profile query. For example, number of executions, number of rows\/time
-- per execution etc.
pnExecutionStats :: Lens' PlanNode (Maybe PlanNodeExecutionStats)
pnExecutionStats
  = lens _pnExecutionStats
      (\ s a -> s{_pnExecutionStats = a})

-- | The \`PlanNode\`\'s index in node list.
pnIndex :: Lens' PlanNode (Maybe Int32)
pnIndex
  = lens _pnIndex (\ s a -> s{_pnIndex = a}) .
      mapping _Coerce

-- | List of child node \`index\`es and their relationship to this parent.
pnChildLinks :: Lens' PlanNode [ChildLink]
pnChildLinks
  = lens _pnChildLinks (\ s a -> s{_pnChildLinks = a})
      . _Default
      . _Coerce

instance FromJSON PlanNode where
        parseJSON
          = withObject "PlanNode"
              (\ o ->
                 PlanNode' <$>
                   (o .:? "kind") <*> (o .:? "shortRepresentation") <*>
                     (o .:? "metadata")
                     <*> (o .:? "displayName")
                     <*> (o .:? "executionStats")
                     <*> (o .:? "index")
                     <*> (o .:? "childLinks" .!= mempty))

instance ToJSON PlanNode where
        toJSON PlanNode'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _pnKind,
                  ("shortRepresentation" .=) <$>
                    _pnShortRepresentation,
                  ("metadata" .=) <$> _pnMetadata,
                  ("displayName" .=) <$> _pnDisplayName,
                  ("executionStats" .=) <$> _pnExecutionStats,
                  ("index" .=) <$> _pnIndex,
                  ("childLinks" .=) <$> _pnChildLinks])

-- | The request for CreateSession.
--
-- /See:/ 'createSessionRequest' smart constructor.
newtype CreateSessionRequest =
  CreateSessionRequest'
    { _csrSession :: Maybe Session
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateSessionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrSession'
createSessionRequest
    :: CreateSessionRequest
createSessionRequest = CreateSessionRequest' {_csrSession = Nothing}


-- | Required. The session to create.
csrSession :: Lens' CreateSessionRequest (Maybe Session)
csrSession
  = lens _csrSession (\ s a -> s{_csrSession = a})

instance FromJSON CreateSessionRequest where
        parseJSON
          = withObject "CreateSessionRequest"
              (\ o -> CreateSessionRequest' <$> (o .:? "session"))

instance ToJSON CreateSessionRequest where
        toJSON CreateSessionRequest'{..}
          = object (catMaybes [("session" .=) <$> _csrSession])

-- | Condensed representation of a node and its subtree. Only present for
-- \`SCALAR\` PlanNode(s).
--
-- /See:/ 'shortRepresentation' smart constructor.
data ShortRepresentation =
  ShortRepresentation'
    { _srSubqueries :: !(Maybe ShortRepresentationSubqueries)
    , _srDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShortRepresentation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srSubqueries'
--
-- * 'srDescription'
shortRepresentation
    :: ShortRepresentation
shortRepresentation =
  ShortRepresentation' {_srSubqueries = Nothing, _srDescription = Nothing}


-- | A mapping of (subquery variable name) -> (subquery node id) for cases
-- where the \`description\` string of this node references a \`SCALAR\`
-- subquery contained in the expression subtree rooted at this node. The
-- referenced \`SCALAR\` subquery may not necessarily be a direct child of
-- this node.
srSubqueries :: Lens' ShortRepresentation (Maybe ShortRepresentationSubqueries)
srSubqueries
  = lens _srSubqueries (\ s a -> s{_srSubqueries = a})

-- | A string representation of the expression subtree rooted at this node.
srDescription :: Lens' ShortRepresentation (Maybe Text)
srDescription
  = lens _srDescription
      (\ s a -> s{_srDescription = a})

instance FromJSON ShortRepresentation where
        parseJSON
          = withObject "ShortRepresentation"
              (\ o ->
                 ShortRepresentation' <$>
                   (o .:? "subqueries") <*> (o .:? "description"))

instance ToJSON ShortRepresentation where
        toJSON ShortRepresentation'{..}
          = object
              (catMaybes
                 [("subqueries" .=) <$> _srSubqueries,
                  ("description" .=) <$> _srDescription])

-- | A mapping of (subquery variable name) -> (subquery node id) for cases
-- where the \`description\` string of this node references a \`SCALAR\`
-- subquery contained in the expression subtree rooted at this node. The
-- referenced \`SCALAR\` subquery may not necessarily be a direct child of
-- this node.
--
-- /See:/ 'shortRepresentationSubqueries' smart constructor.
newtype ShortRepresentationSubqueries =
  ShortRepresentationSubqueries'
    { _srsAddtional :: HashMap Text (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShortRepresentationSubqueries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsAddtional'
shortRepresentationSubqueries
    :: HashMap Text Int32 -- ^ 'srsAddtional'
    -> ShortRepresentationSubqueries
shortRepresentationSubqueries pSrsAddtional_ =
  ShortRepresentationSubqueries' {_srsAddtional = _Coerce # pSrsAddtional_}


srsAddtional :: Lens' ShortRepresentationSubqueries (HashMap Text Int32)
srsAddtional
  = lens _srsAddtional (\ s a -> s{_srsAddtional = a})
      . _Coerce

instance FromJSON ShortRepresentationSubqueries where
        parseJSON
          = withObject "ShortRepresentationSubqueries"
              (\ o ->
                 ShortRepresentationSubqueries' <$>
                   (parseJSONObject o))

instance ToJSON ShortRepresentationSubqueries where
        toJSON = toJSON . _srsAddtional

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Attributes relevant to the node contained in a group of key-value pairs.
-- For example, a Parameter Reference node could have the following
-- information in its metadata: { \"parameter_reference\": \"param1\",
-- \"parameter_type\": \"array\" }
--
-- /See:/ 'planNodeMetadata' smart constructor.
newtype PlanNodeMetadata =
  PlanNodeMetadata'
    { _pnmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlanNodeMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnmAddtional'
planNodeMetadata
    :: HashMap Text JSONValue -- ^ 'pnmAddtional'
    -> PlanNodeMetadata
planNodeMetadata pPnmAddtional_ =
  PlanNodeMetadata' {_pnmAddtional = _Coerce # pPnmAddtional_}


-- | Properties of the object.
pnmAddtional :: Lens' PlanNodeMetadata (HashMap Text JSONValue)
pnmAddtional
  = lens _pnmAddtional (\ s a -> s{_pnmAddtional = a})
      . _Coerce

instance FromJSON PlanNodeMetadata where
        parseJSON
          = withObject "PlanNodeMetadata"
              (\ o -> PlanNodeMetadata' <$> (parseJSONObject o))

instance ToJSON PlanNodeMetadata where
        toJSON = toJSON . _pnmAddtional

-- | The (sparse) mapping from time interval index to an IndexedKeyRangeInfos
-- message, representing those time intervals for which there are
-- informational messages concerning key ranges.
--
-- /See:/ 'metricIndexedKeyRangeInfos' smart constructor.
newtype MetricIndexedKeyRangeInfos =
  MetricIndexedKeyRangeInfos'
    { _mikriAddtional :: HashMap Text IndexedKeyRangeInfos
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricIndexedKeyRangeInfos' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mikriAddtional'
metricIndexedKeyRangeInfos
    :: HashMap Text IndexedKeyRangeInfos -- ^ 'mikriAddtional'
    -> MetricIndexedKeyRangeInfos
metricIndexedKeyRangeInfos pMikriAddtional_ =
  MetricIndexedKeyRangeInfos' {_mikriAddtional = _Coerce # pMikriAddtional_}


mikriAddtional :: Lens' MetricIndexedKeyRangeInfos (HashMap Text IndexedKeyRangeInfos)
mikriAddtional
  = lens _mikriAddtional
      (\ s a -> s{_mikriAddtional = a})
      . _Coerce

instance FromJSON MetricIndexedKeyRangeInfos where
        parseJSON
          = withObject "MetricIndexedKeyRangeInfos"
              (\ o ->
                 MetricIndexedKeyRangeInfos' <$> (parseJSONObject o))

instance ToJSON MetricIndexedKeyRangeInfos where
        toJSON = toJSON . _mikriAddtional

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'getPolicyOptions' smart constructor.
newtype GetPolicyOptions =
  GetPolicyOptions'
    { _gpoRequestedPolicyVersion :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpoRequestedPolicyVersion'
getPolicyOptions
    :: GetPolicyOptions
getPolicyOptions = GetPolicyOptions' {_gpoRequestedPolicyVersion = Nothing}


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
gpoRequestedPolicyVersion :: Lens' GetPolicyOptions (Maybe Int32)
gpoRequestedPolicyVersion
  = lens _gpoRequestedPolicyVersion
      (\ s a -> s{_gpoRequestedPolicyVersion = a})
      . mapping _Coerce

instance FromJSON GetPolicyOptions where
        parseJSON
          = withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions' <$>
                   (o .:? "requestedPolicyVersion"))

instance ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions'{..}
          = object
              (catMaybes
                 [("requestedPolicyVersion" .=) <$>
                    _gpoRequestedPolicyVersion])

-- | A message representing information for a key range (possibly one key).
--
-- /See:/ 'keyRangeInfo' smart constructor.
data KeyRangeInfo =
  KeyRangeInfo'
    { _kriContextValues :: !(Maybe [ContextValue])
    , _kriTimeOffSet :: !(Maybe GDuration)
    , _kriValue :: !(Maybe (Textual Double))
    , _kriEndKeyIndex :: !(Maybe (Textual Int32))
    , _kriStartKeyIndex :: !(Maybe (Textual Int32))
    , _kriMetric :: !(Maybe LocalizedString)
    , _kriKeysCount :: !(Maybe (Textual Int64))
    , _kriUnit :: !(Maybe LocalizedString)
    , _kriInfo :: !(Maybe LocalizedString)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyRangeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kriContextValues'
--
-- * 'kriTimeOffSet'
--
-- * 'kriValue'
--
-- * 'kriEndKeyIndex'
--
-- * 'kriStartKeyIndex'
--
-- * 'kriMetric'
--
-- * 'kriKeysCount'
--
-- * 'kriUnit'
--
-- * 'kriInfo'
keyRangeInfo
    :: KeyRangeInfo
keyRangeInfo =
  KeyRangeInfo'
    { _kriContextValues = Nothing
    , _kriTimeOffSet = Nothing
    , _kriValue = Nothing
    , _kriEndKeyIndex = Nothing
    , _kriStartKeyIndex = Nothing
    , _kriMetric = Nothing
    , _kriKeysCount = Nothing
    , _kriUnit = Nothing
    , _kriInfo = Nothing
    }


-- | The list of context values for this key range.
kriContextValues :: Lens' KeyRangeInfo [ContextValue]
kriContextValues
  = lens _kriContextValues
      (\ s a -> s{_kriContextValues = a})
      . _Default
      . _Coerce

-- | The time offset. This is the time since the start of the time interval.
kriTimeOffSet :: Lens' KeyRangeInfo (Maybe Scientific)
kriTimeOffSet
  = lens _kriTimeOffSet
      (\ s a -> s{_kriTimeOffSet = a})
      . mapping _GDuration

-- | The value of the metric.
kriValue :: Lens' KeyRangeInfo (Maybe Double)
kriValue
  = lens _kriValue (\ s a -> s{_kriValue = a}) .
      mapping _Coerce

-- | The index of the end key in indexed_keys.
kriEndKeyIndex :: Lens' KeyRangeInfo (Maybe Int32)
kriEndKeyIndex
  = lens _kriEndKeyIndex
      (\ s a -> s{_kriEndKeyIndex = a})
      . mapping _Coerce

-- | The index of the start key in indexed_keys.
kriStartKeyIndex :: Lens' KeyRangeInfo (Maybe Int32)
kriStartKeyIndex
  = lens _kriStartKeyIndex
      (\ s a -> s{_kriStartKeyIndex = a})
      . mapping _Coerce

-- | The name of the metric. e.g. \"latency\".
kriMetric :: Lens' KeyRangeInfo (Maybe LocalizedString)
kriMetric
  = lens _kriMetric (\ s a -> s{_kriMetric = a})

-- | The number of keys this range covers.
kriKeysCount :: Lens' KeyRangeInfo (Maybe Int64)
kriKeysCount
  = lens _kriKeysCount (\ s a -> s{_kriKeysCount = a})
      . mapping _Coerce

-- | The unit of the metric. This is an unstructured field and will be mapped
-- as is to the user.
kriUnit :: Lens' KeyRangeInfo (Maybe LocalizedString)
kriUnit = lens _kriUnit (\ s a -> s{_kriUnit = a})

-- | Information about this key range, for all metrics.
kriInfo :: Lens' KeyRangeInfo (Maybe LocalizedString)
kriInfo = lens _kriInfo (\ s a -> s{_kriInfo = a})

instance FromJSON KeyRangeInfo where
        parseJSON
          = withObject "KeyRangeInfo"
              (\ o ->
                 KeyRangeInfo' <$>
                   (o .:? "contextValues" .!= mempty) <*>
                     (o .:? "timeOffset")
                     <*> (o .:? "value")
                     <*> (o .:? "endKeyIndex")
                     <*> (o .:? "startKeyIndex")
                     <*> (o .:? "metric")
                     <*> (o .:? "keysCount")
                     <*> (o .:? "unit")
                     <*> (o .:? "info"))

instance ToJSON KeyRangeInfo where
        toJSON KeyRangeInfo'{..}
          = object
              (catMaybes
                 [("contextValues" .=) <$> _kriContextValues,
                  ("timeOffset" .=) <$> _kriTimeOffSet,
                  ("value" .=) <$> _kriValue,
                  ("endKeyIndex" .=) <$> _kriEndKeyIndex,
                  ("startKeyIndex" .=) <$> _kriStartKeyIndex,
                  ("metric" .=) <$> _kriMetric,
                  ("keysCount" .=) <$> _kriKeysCount,
                  ("unit" .=) <$> _kriUnit, ("info" .=) <$> _kriInfo])

-- | Message type to initiate a Partitioned DML transaction.
--
-- /See:/ 'partitionedDml' smart constructor.
data PartitionedDml =
  PartitionedDml'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartitionedDml' with the minimum fields required to make a request.
--
partitionedDml
    :: PartitionedDml
partitionedDml = PartitionedDml'


instance FromJSON PartitionedDml where
        parseJSON
          = withObject "PartitionedDml"
              (\ o -> pure PartitionedDml')

instance ToJSON PartitionedDml where
        toJSON = const emptyObject

-- | A backup of a Cloud Spanner database.
--
-- /See:/ 'backup' smart constructor.
data Backup =
  Backup'
    { _bSizeBytes :: !(Maybe (Textual Int64))
    , _bState :: !(Maybe BackupState)
    , _bDatabase :: !(Maybe Text)
    , _bName :: !(Maybe Text)
    , _bVersionTime :: !(Maybe DateTime')
    , _bReferencingDatabases :: !(Maybe [Text])
    , _bExpireTime :: !(Maybe DateTime')
    , _bEncryptionInfo :: !(Maybe EncryptionInfo)
    , _bCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Backup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bSizeBytes'
--
-- * 'bState'
--
-- * 'bDatabase'
--
-- * 'bName'
--
-- * 'bVersionTime'
--
-- * 'bReferencingDatabases'
--
-- * 'bExpireTime'
--
-- * 'bEncryptionInfo'
--
-- * 'bCreateTime'
backup
    :: Backup
backup =
  Backup'
    { _bSizeBytes = Nothing
    , _bState = Nothing
    , _bDatabase = Nothing
    , _bName = Nothing
    , _bVersionTime = Nothing
    , _bReferencingDatabases = Nothing
    , _bExpireTime = Nothing
    , _bEncryptionInfo = Nothing
    , _bCreateTime = Nothing
    }


-- | Output only. Size of the backup in bytes.
bSizeBytes :: Lens' Backup (Maybe Int64)
bSizeBytes
  = lens _bSizeBytes (\ s a -> s{_bSizeBytes = a}) .
      mapping _Coerce

-- | Output only. The current state of the backup.
bState :: Lens' Backup (Maybe BackupState)
bState = lens _bState (\ s a -> s{_bState = a})

-- | Required for the CreateBackup operation. Name of the database from which
-- this backup was created. This needs to be in the same instance as the
-- backup. Values are of the form \`projects\/\/instances\/\/databases\/\`.
bDatabase :: Lens' Backup (Maybe Text)
bDatabase
  = lens _bDatabase (\ s a -> s{_bDatabase = a})

-- | Output only for the CreateBackup operation. Required for the
-- UpdateBackup operation. A globally unique identifier for the backup
-- which cannot be changed. Values are of the form
-- \`projects\/\/instances\/\/backups\/a-z*[a-z0-9]\` The final segment of
-- the name must be between 2 and 60 characters in length. The backup is
-- stored in the location(s) specified in the instance configuration of the
-- instance containing the backup, identified by the prefix of the backup
-- name of the form \`projects\/\/instances\/\`.
bName :: Lens' Backup (Maybe Text)
bName = lens _bName (\ s a -> s{_bName = a})

-- | The backup will contain an externally consistent copy of the database at
-- the timestamp specified by \`version_time\`. If \`version_time\` is not
-- specified, the system will set \`version_time\` to the \`create_time\`
-- of the backup.
bVersionTime :: Lens' Backup (Maybe UTCTime)
bVersionTime
  = lens _bVersionTime (\ s a -> s{_bVersionTime = a})
      . mapping _DateTime

-- | Output only. The names of the restored databases that reference the
-- backup. The database names are of the form
-- \`projects\/\/instances\/\/databases\/\`. Referencing databases may
-- exist in different instances. The existence of any referencing database
-- prevents the backup from being deleted. When a restored database from
-- the backup enters the \`READY\` state, the reference to the backup is
-- removed.
bReferencingDatabases :: Lens' Backup [Text]
bReferencingDatabases
  = lens _bReferencingDatabases
      (\ s a -> s{_bReferencingDatabases = a})
      . _Default
      . _Coerce

-- | Required for the CreateBackup operation. The expiration time of the
-- backup, with microseconds granularity that must be at least 6 hours and
-- at most 366 days from the time the CreateBackup request is processed.
-- Once the \`expire_time\` has passed, the backup is eligible to be
-- automatically deleted by Cloud Spanner to free the resources used by the
-- backup.
bExpireTime :: Lens' Backup (Maybe UTCTime)
bExpireTime
  = lens _bExpireTime (\ s a -> s{_bExpireTime = a}) .
      mapping _DateTime

-- | Output only. The encryption information for the backup.
bEncryptionInfo :: Lens' Backup (Maybe EncryptionInfo)
bEncryptionInfo
  = lens _bEncryptionInfo
      (\ s a -> s{_bEncryptionInfo = a})

-- | Output only. The time the CreateBackup request is received. If the
-- request does not specify \`version_time\`, the \`version_time\` of the
-- backup will be equivalent to the \`create_time\`.
bCreateTime :: Lens' Backup (Maybe UTCTime)
bCreateTime
  = lens _bCreateTime (\ s a -> s{_bCreateTime = a}) .
      mapping _DateTime

instance FromJSON Backup where
        parseJSON
          = withObject "Backup"
              (\ o ->
                 Backup' <$>
                   (o .:? "sizeBytes") <*> (o .:? "state") <*>
                     (o .:? "database")
                     <*> (o .:? "name")
                     <*> (o .:? "versionTime")
                     <*> (o .:? "referencingDatabases" .!= mempty)
                     <*> (o .:? "expireTime")
                     <*> (o .:? "encryptionInfo")
                     <*> (o .:? "createTime"))

instance ToJSON Backup where
        toJSON Backup'{..}
          = object
              (catMaybes
                 [("sizeBytes" .=) <$> _bSizeBytes,
                  ("state" .=) <$> _bState,
                  ("database" .=) <$> _bDatabase,
                  ("name" .=) <$> _bName,
                  ("versionTime" .=) <$> _bVersionTime,
                  ("referencingDatabases" .=) <$>
                    _bReferencingDatabases,
                  ("expireTime" .=) <$> _bExpireTime,
                  ("encryptionInfo" .=) <$> _bEncryptionInfo,
                  ("createTime" .=) <$> _bCreateTime])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprPolicy :: Maybe Policy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest = SetIAMPolicyRequest' {_siprPolicy = Nothing}


-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o -> SetIAMPolicyRequest' <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | It is not always possible for Cloud Spanner to infer the right SQL type
-- from a JSON value. For example, values of type \`BYTES\` and values of
-- type \`STRING\` both appear in params as JSON strings. In these cases,
-- \`param_types\` can be used to specify the exact SQL type for some or
-- all of the SQL statement parameters. See the definition of Type for more
-- information about SQL types.
--
-- /See:/ 'statementParamTypes' smart constructor.
newtype StatementParamTypes =
  StatementParamTypes'
    { _sptAddtional :: HashMap Text Type
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatementParamTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sptAddtional'
statementParamTypes
    :: HashMap Text Type -- ^ 'sptAddtional'
    -> StatementParamTypes
statementParamTypes pSptAddtional_ =
  StatementParamTypes' {_sptAddtional = _Coerce # pSptAddtional_}


sptAddtional :: Lens' StatementParamTypes (HashMap Text Type)
sptAddtional
  = lens _sptAddtional (\ s a -> s{_sptAddtional = a})
      . _Coerce

instance FromJSON StatementParamTypes where
        parseJSON
          = withObject "StatementParamTypes"
              (\ o -> StatementParamTypes' <$> (parseJSONObject o))

instance ToJSON StatementParamTypes where
        toJSON = toJSON . _sptAddtional

-- | Enqueues the given DDL statements to be applied, in order but not
-- necessarily all at once, to the database schema at some point (or
-- points) in the future. The server checks that the statements are
-- executable (syntactically valid, name tables that exist, etc.) before
-- enqueueing them, but they may still fail upon later execution (e.g., if
-- a statement from another batch of statements is applied first and it
-- conflicts in some way, or if there is some data-related problem like a
-- \`NULL\` value in a column to which \`NOT NULL\` would be added). If a
-- statement fails, all subsequent statements in the batch are
-- automatically cancelled. Each batch of statements is assigned a name
-- which can be used with the Operations API to monitor progress. See the
-- operation_id field for more details.
--
-- /See:/ 'updateDatabaseDdlRequest' smart constructor.
data UpdateDatabaseDdlRequest =
  UpdateDatabaseDdlRequest'
    { _uddrOperationId :: !(Maybe Text)
    , _uddrStatements :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDatabaseDdlRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uddrOperationId'
--
-- * 'uddrStatements'
updateDatabaseDdlRequest
    :: UpdateDatabaseDdlRequest
updateDatabaseDdlRequest =
  UpdateDatabaseDdlRequest'
    {_uddrOperationId = Nothing, _uddrStatements = Nothing}


-- | If empty, the new update request is assigned an automatically-generated
-- operation ID. Otherwise, \`operation_id\` is used to construct the name
-- of the resulting Operation. Specifying an explicit operation ID
-- simplifies determining whether the statements were executed in the event
-- that the UpdateDatabaseDdl call is replayed, or the return value is
-- otherwise lost: the database and \`operation_id\` fields can be combined
-- to form the name of the resulting longrunning.Operation:
-- \`\/operations\/\`. \`operation_id\` should be unique within the
-- database, and must be a valid identifier: \`a-z*\`. Note that
-- automatically-generated operation IDs always begin with an underscore.
-- If the named operation already exists, UpdateDatabaseDdl returns
-- \`ALREADY_EXISTS\`.
uddrOperationId :: Lens' UpdateDatabaseDdlRequest (Maybe Text)
uddrOperationId
  = lens _uddrOperationId
      (\ s a -> s{_uddrOperationId = a})

-- | Required. DDL statements to be applied to the database.
uddrStatements :: Lens' UpdateDatabaseDdlRequest [Text]
uddrStatements
  = lens _uddrStatements
      (\ s a -> s{_uddrStatements = a})
      . _Default
      . _Coerce

instance FromJSON UpdateDatabaseDdlRequest where
        parseJSON
          = withObject "UpdateDatabaseDdlRequest"
              (\ o ->
                 UpdateDatabaseDdlRequest' <$>
                   (o .:? "operationId") <*>
                     (o .:? "statements" .!= mempty))

instance ToJSON UpdateDatabaseDdlRequest where
        toJSON UpdateDatabaseDdlRequest'{..}
          = object
              (catMaybes
                 [("operationId" .=) <$> _uddrOperationId,
                  ("statements" .=) <$> _uddrStatements])

-- | A modification to one or more Cloud Spanner rows. Mutations can be
-- applied to a Cloud Spanner database by sending them in a Commit call.
--
-- /See:/ 'mutation' smart constructor.
data Mutation =
  Mutation'
    { _mReplace :: !(Maybe Write)
    , _mInsert :: !(Maybe Write)
    , _mInsertOrUpdate :: !(Maybe Write)
    , _mDelete :: !(Maybe Delete')
    , _mUpdate :: !(Maybe Write)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Mutation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mReplace'
--
-- * 'mInsert'
--
-- * 'mInsertOrUpdate'
--
-- * 'mDelete'
--
-- * 'mUpdate'
mutation
    :: Mutation
mutation =
  Mutation'
    { _mReplace = Nothing
    , _mInsert = Nothing
    , _mInsertOrUpdate = Nothing
    , _mDelete = Nothing
    , _mUpdate = Nothing
    }


-- | Like insert, except that if the row already exists, it is deleted, and
-- the column values provided are inserted instead. Unlike
-- insert_or_update, this means any values not explicitly written become
-- \`NULL\`. In an interleaved table, if you create the child table with
-- the \`ON DELETE CASCADE\` annotation, then replacing a parent row also
-- deletes the child rows. Otherwise, you must delete the child rows before
-- you replace the parent row.
mReplace :: Lens' Mutation (Maybe Write)
mReplace = lens _mReplace (\ s a -> s{_mReplace = a})

-- | Insert new rows in a table. If any of the rows already exist, the write
-- or transaction fails with error \`ALREADY_EXISTS\`.
mInsert :: Lens' Mutation (Maybe Write)
mInsert = lens _mInsert (\ s a -> s{_mInsert = a})

-- | Like insert, except that if the row already exists, then its column
-- values are overwritten with the ones provided. Any column values not
-- explicitly written are preserved. When using insert_or_update, just as
-- when using insert, all \`NOT NULL\` columns in the table must be given a
-- value. This holds true even when the row already exists and will
-- therefore actually be updated.
mInsertOrUpdate :: Lens' Mutation (Maybe Write)
mInsertOrUpdate
  = lens _mInsertOrUpdate
      (\ s a -> s{_mInsertOrUpdate = a})

-- | Delete rows from a table. Succeeds whether or not the named rows were
-- present.
mDelete :: Lens' Mutation (Maybe Delete')
mDelete = lens _mDelete (\ s a -> s{_mDelete = a})

-- | Update existing rows in a table. If any of the rows does not already
-- exist, the transaction fails with error \`NOT_FOUND\`.
mUpdate :: Lens' Mutation (Maybe Write)
mUpdate = lens _mUpdate (\ s a -> s{_mUpdate = a})

instance FromJSON Mutation where
        parseJSON
          = withObject "Mutation"
              (\ o ->
                 Mutation' <$>
                   (o .:? "replace") <*> (o .:? "insert") <*>
                     (o .:? "insertOrUpdate")
                     <*> (o .:? "delete")
                     <*> (o .:? "update"))

instance ToJSON Mutation where
        toJSON Mutation'{..}
          = object
              (catMaybes
                 [("replace" .=) <$> _mReplace,
                  ("insert" .=) <$> _mInsert,
                  ("insertOrUpdate" .=) <$> _mInsertOrUpdate,
                  ("delete" .=) <$> _mDelete,
                  ("update" .=) <$> _mUpdate])

-- | A message representing a derived metric.
--
-- /See:/ 'derivedMetric' smart constructor.
data DerivedMetric =
  DerivedMetric'
    { _dmDenominator :: !(Maybe LocalizedString)
    , _dmNumerator :: !(Maybe LocalizedString)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DerivedMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmDenominator'
--
-- * 'dmNumerator'
derivedMetric
    :: DerivedMetric
derivedMetric =
  DerivedMetric' {_dmDenominator = Nothing, _dmNumerator = Nothing}


-- | The name of the denominator metric. e.g. \"rows\".
dmDenominator :: Lens' DerivedMetric (Maybe LocalizedString)
dmDenominator
  = lens _dmDenominator
      (\ s a -> s{_dmDenominator = a})

-- | The name of the numerator metric. e.g. \"latency\".
dmNumerator :: Lens' DerivedMetric (Maybe LocalizedString)
dmNumerator
  = lens _dmNumerator (\ s a -> s{_dmNumerator = a})

instance FromJSON DerivedMetric where
        parseJSON
          = withObject "DerivedMetric"
              (\ o ->
                 DerivedMetric' <$>
                   (o .:? "denominator") <*> (o .:? "numerator"))

instance ToJSON DerivedMetric where
        toJSON DerivedMetric'{..}
          = object
              (catMaybes
                 [("denominator" .=) <$> _dmDenominator,
                  ("numerator" .=) <$> _dmNumerator])

-- | The request for PartitionRead
--
-- /See:/ 'partitionReadRequest' smart constructor.
data PartitionReadRequest =
  PartitionReadRequest'
    { _prrPartitionOptions :: !(Maybe PartitionOptions)
    , _prrKeySet :: !(Maybe KeySet)
    , _prrTransaction :: !(Maybe TransactionSelector)
    , _prrColumns :: !(Maybe [Text])
    , _prrIndex :: !(Maybe Text)
    , _prrTable :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartitionReadRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prrPartitionOptions'
--
-- * 'prrKeySet'
--
-- * 'prrTransaction'
--
-- * 'prrColumns'
--
-- * 'prrIndex'
--
-- * 'prrTable'
partitionReadRequest
    :: PartitionReadRequest
partitionReadRequest =
  PartitionReadRequest'
    { _prrPartitionOptions = Nothing
    , _prrKeySet = Nothing
    , _prrTransaction = Nothing
    , _prrColumns = Nothing
    , _prrIndex = Nothing
    , _prrTable = Nothing
    }


-- | Additional options that affect how many partitions are created.
prrPartitionOptions :: Lens' PartitionReadRequest (Maybe PartitionOptions)
prrPartitionOptions
  = lens _prrPartitionOptions
      (\ s a -> s{_prrPartitionOptions = a})

-- | Required. \`key_set\` identifies the rows to be yielded. \`key_set\`
-- names the primary keys of the rows in table to be yielded, unless index
-- is present. If index is present, then key_set instead names index keys
-- in index. It is not an error for the \`key_set\` to name rows that do
-- not exist in the database. Read yields nothing for nonexistent rows.
prrKeySet :: Lens' PartitionReadRequest (Maybe KeySet)
prrKeySet
  = lens _prrKeySet (\ s a -> s{_prrKeySet = a})

-- | Read only snapshot transactions are supported, read\/write and single
-- use transactions are not.
prrTransaction :: Lens' PartitionReadRequest (Maybe TransactionSelector)
prrTransaction
  = lens _prrTransaction
      (\ s a -> s{_prrTransaction = a})

-- | The columns of table to be returned for each row matching this request.
prrColumns :: Lens' PartitionReadRequest [Text]
prrColumns
  = lens _prrColumns (\ s a -> s{_prrColumns = a}) .
      _Default
      . _Coerce

-- | If non-empty, the name of an index on table. This index is used instead
-- of the table primary key when interpreting key_set and sorting result
-- rows. See key_set for further information.
prrIndex :: Lens' PartitionReadRequest (Maybe Text)
prrIndex = lens _prrIndex (\ s a -> s{_prrIndex = a})

-- | Required. The name of the table in the database to be read.
prrTable :: Lens' PartitionReadRequest (Maybe Text)
prrTable = lens _prrTable (\ s a -> s{_prrTable = a})

instance FromJSON PartitionReadRequest where
        parseJSON
          = withObject "PartitionReadRequest"
              (\ o ->
                 PartitionReadRequest' <$>
                   (o .:? "partitionOptions") <*> (o .:? "keySet") <*>
                     (o .:? "transaction")
                     <*> (o .:? "columns" .!= mempty)
                     <*> (o .:? "index")
                     <*> (o .:? "table"))

instance ToJSON PartitionReadRequest where
        toJSON PartitionReadRequest'{..}
          = object
              (catMaybes
                 [("partitionOptions" .=) <$> _prrPartitionOptions,
                  ("keySet" .=) <$> _prrKeySet,
                  ("transaction" .=) <$> _prrTransaction,
                  ("columns" .=) <$> _prrColumns,
                  ("index" .=) <$> _prrIndex,
                  ("table" .=) <$> _prrTable])

-- | It is not always possible for Cloud Spanner to infer the right SQL type
-- from a JSON value. For example, values of type \`BYTES\` and values of
-- type \`STRING\` both appear in params as JSON strings. In these cases,
-- \`param_types\` can be used to specify the exact SQL type for some or
-- all of the SQL statement parameters. See the definition of Type for more
-- information about SQL types.
--
-- /See:/ 'executeSQLRequestParamTypes' smart constructor.
newtype ExecuteSQLRequestParamTypes =
  ExecuteSQLRequestParamTypes'
    { _esqlrptAddtional :: HashMap Text Type
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecuteSQLRequestParamTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esqlrptAddtional'
executeSQLRequestParamTypes
    :: HashMap Text Type -- ^ 'esqlrptAddtional'
    -> ExecuteSQLRequestParamTypes
executeSQLRequestParamTypes pEsqlrptAddtional_ =
  ExecuteSQLRequestParamTypes'
    {_esqlrptAddtional = _Coerce # pEsqlrptAddtional_}


esqlrptAddtional :: Lens' ExecuteSQLRequestParamTypes (HashMap Text Type)
esqlrptAddtional
  = lens _esqlrptAddtional
      (\ s a -> s{_esqlrptAddtional = a})
      . _Coerce

instance FromJSON ExecuteSQLRequestParamTypes where
        parseJSON
          = withObject "ExecuteSQLRequestParamTypes"
              (\ o ->
                 ExecuteSQLRequestParamTypes' <$> (parseJSONObject o))

instance ToJSON ExecuteSQLRequestParamTypes where
        toJSON = toJSON . _esqlrptAddtional

-- | A transaction.
--
-- /See:/ 'transaction' smart constructor.
data Transaction =
  Transaction'
    { _tReadTimestamp :: !(Maybe DateTime')
    , _tId :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Transaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tReadTimestamp'
--
-- * 'tId'
transaction
    :: Transaction
transaction = Transaction' {_tReadTimestamp = Nothing, _tId = Nothing}


-- | For snapshot read-only transactions, the read timestamp chosen for the
-- transaction. Not returned by default: see
-- TransactionOptions.ReadOnly.return_read_timestamp. A timestamp in
-- RFC3339 UTC \\\"Zulu\\\" format, accurate to nanoseconds. Example:
-- \`\"2014-10-02T15:01:23.045123456Z\"\`.
tReadTimestamp :: Lens' Transaction (Maybe UTCTime)
tReadTimestamp
  = lens _tReadTimestamp
      (\ s a -> s{_tReadTimestamp = a})
      . mapping _DateTime

-- | \`id\` may be used to identify the transaction in subsequent Read,
-- ExecuteSql, Commit, or Rollback calls. Single-use read-only transactions
-- do not have IDs, because single-use transactions do not support multiple
-- requests.
tId :: Lens' Transaction (Maybe ByteString)
tId
  = lens _tId (\ s a -> s{_tId = a}) . mapping _Bytes

instance FromJSON Transaction where
        parseJSON
          = withObject "Transaction"
              (\ o ->
                 Transaction' <$>
                   (o .:? "readTimestamp") <*> (o .:? "id"))

instance ToJSON Transaction where
        toJSON Transaction'{..}
          = object
              (catMaybes
                 [("readTimestamp" .=) <$> _tReadTimestamp,
                  ("id" .=) <$> _tId])

-- | A message representing the key visualizer diagnostic messages.
--
-- /See:/ 'diagnosticMessage' smart constructor.
data DiagnosticMessage =
  DiagnosticMessage'
    { _dmSeverity :: !(Maybe DiagnosticMessageSeverity)
    , _dmShortMessage :: !(Maybe LocalizedString)
    , _dmMetricSpecific :: !(Maybe Bool)
    , _dmMetric :: !(Maybe LocalizedString)
    , _dmInfo :: !(Maybe LocalizedString)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiagnosticMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmSeverity'
--
-- * 'dmShortMessage'
--
-- * 'dmMetricSpecific'
--
-- * 'dmMetric'
--
-- * 'dmInfo'
diagnosticMessage
    :: DiagnosticMessage
diagnosticMessage =
  DiagnosticMessage'
    { _dmSeverity = Nothing
    , _dmShortMessage = Nothing
    , _dmMetricSpecific = Nothing
    , _dmMetric = Nothing
    , _dmInfo = Nothing
    }


-- | The severity of the diagnostic message.
dmSeverity :: Lens' DiagnosticMessage (Maybe DiagnosticMessageSeverity)
dmSeverity
  = lens _dmSeverity (\ s a -> s{_dmSeverity = a})

-- | The short message.
dmShortMessage :: Lens' DiagnosticMessage (Maybe LocalizedString)
dmShortMessage
  = lens _dmShortMessage
      (\ s a -> s{_dmShortMessage = a})

-- | Whether this message is specific only for the current metric. By default
-- Diagnostics are shown for all metrics, regardless which metric is the
-- currently selected metric in the UI. However occasionally a metric will
-- generate so many messages that the resulting visual clutter becomes
-- overwhelming. In this case setting this to true, will show the
-- diagnostic messages for that metric only if it is the currently selected
-- metric.
dmMetricSpecific :: Lens' DiagnosticMessage (Maybe Bool)
dmMetricSpecific
  = lens _dmMetricSpecific
      (\ s a -> s{_dmMetricSpecific = a})

-- | The metric.
dmMetric :: Lens' DiagnosticMessage (Maybe LocalizedString)
dmMetric = lens _dmMetric (\ s a -> s{_dmMetric = a})

-- | Information about this diagnostic information.
dmInfo :: Lens' DiagnosticMessage (Maybe LocalizedString)
dmInfo = lens _dmInfo (\ s a -> s{_dmInfo = a})

instance FromJSON DiagnosticMessage where
        parseJSON
          = withObject "DiagnosticMessage"
              (\ o ->
                 DiagnosticMessage' <$>
                   (o .:? "severity") <*> (o .:? "shortMessage") <*>
                     (o .:? "metricSpecific")
                     <*> (o .:? "metric")
                     <*> (o .:? "info"))

instance ToJSON DiagnosticMessage where
        toJSON DiagnosticMessage'{..}
          = object
              (catMaybes
                 [("severity" .=) <$> _dmSeverity,
                  ("shortMessage" .=) <$> _dmShortMessage,
                  ("metricSpecific" .=) <$> _dmMetricSpecific,
                  ("metric" .=) <$> _dmMetric,
                  ("info" .=) <$> _dmInfo])

-- | A message representing context for a KeyRangeInfo, including a label,
-- value, unit, and severity.
--
-- /See:/ 'contextValue' smart constructor.
data ContextValue =
  ContextValue'
    { _cvValue :: !(Maybe (Textual Double))
    , _cvSeverity :: !(Maybe ContextValueSeverity)
    , _cvUnit :: !(Maybe Text)
    , _cvLabel :: !(Maybe LocalizedString)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContextValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvValue'
--
-- * 'cvSeverity'
--
-- * 'cvUnit'
--
-- * 'cvLabel'
contextValue
    :: ContextValue
contextValue =
  ContextValue'
    { _cvValue = Nothing
    , _cvSeverity = Nothing
    , _cvUnit = Nothing
    , _cvLabel = Nothing
    }


-- | The value for the context.
cvValue :: Lens' ContextValue (Maybe Double)
cvValue
  = lens _cvValue (\ s a -> s{_cvValue = a}) .
      mapping _Coerce

-- | The severity of this context.
cvSeverity :: Lens' ContextValue (Maybe ContextValueSeverity)
cvSeverity
  = lens _cvSeverity (\ s a -> s{_cvSeverity = a})

-- | The unit of the context value.
cvUnit :: Lens' ContextValue (Maybe Text)
cvUnit = lens _cvUnit (\ s a -> s{_cvUnit = a})

-- | The label for the context value. e.g. \"latency\".
cvLabel :: Lens' ContextValue (Maybe LocalizedString)
cvLabel = lens _cvLabel (\ s a -> s{_cvLabel = a})

instance FromJSON ContextValue where
        parseJSON
          = withObject "ContextValue"
              (\ o ->
                 ContextValue' <$>
                   (o .:? "value") <*> (o .:? "severity") <*>
                     (o .:? "unit")
                     <*> (o .:? "label"))

instance ToJSON ContextValue where
        toJSON ContextValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _cvValue,
                  ("severity" .=) <$> _cvSeverity,
                  ("unit" .=) <$> _cvUnit, ("label" .=) <$> _cvLabel])

-- | The response for ListSessions.
--
-- /See:/ 'listSessionsResponse' smart constructor.
data ListSessionsResponse =
  ListSessionsResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSessions :: !(Maybe [Session])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrSessions'
listSessionsResponse
    :: ListSessionsResponse
listSessionsResponse =
  ListSessionsResponse' {_lsrNextPageToken = Nothing, _lsrSessions = Nothing}


-- | \`next_page_token\` can be sent in a subsequent ListSessions call to
-- fetch more of the matching sessions.
lsrNextPageToken :: Lens' ListSessionsResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The list of requested sessions.
lsrSessions :: Lens' ListSessionsResponse [Session]
lsrSessions
  = lens _lsrSessions (\ s a -> s{_lsrSessions = a}) .
      _Default
      . _Coerce

instance FromJSON ListSessionsResponse where
        parseJSON
          = withObject "ListSessionsResponse"
              (\ o ->
                 ListSessionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "sessions" .!= mempty))

instance ToJSON ListSessionsResponse where
        toJSON ListSessionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("sessions" .=) <$> _lsrSessions])

-- | A message representing the actual monitoring data, values for each key
-- bucket over time, of a metric.
--
-- /See:/ 'metric' smart constructor.
data Metric =
  Metric'
    { _mDisplayLabel :: !(Maybe LocalizedString)
    , _mHasNonzeroData :: !(Maybe Bool)
    , _mIndexedKeyRangeInfos :: !(Maybe MetricIndexedKeyRangeInfos)
    , _mCategory :: !(Maybe LocalizedString)
    , _mMatrix :: !(Maybe MetricMatrix)
    , _mVisible :: !(Maybe Bool)
    , _mAggregation :: !(Maybe MetricAggregation)
    , _mDerived :: !(Maybe DerivedMetric)
    , _mHotValue :: !(Maybe (Textual Double))
    , _mIndexedHotKeys :: !(Maybe MetricIndexedHotKeys)
    , _mUnit :: !(Maybe LocalizedString)
    , _mInfo :: !(Maybe LocalizedString)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mDisplayLabel'
--
-- * 'mHasNonzeroData'
--
-- * 'mIndexedKeyRangeInfos'
--
-- * 'mCategory'
--
-- * 'mMatrix'
--
-- * 'mVisible'
--
-- * 'mAggregation'
--
-- * 'mDerived'
--
-- * 'mHotValue'
--
-- * 'mIndexedHotKeys'
--
-- * 'mUnit'
--
-- * 'mInfo'
metric
    :: Metric
metric =
  Metric'
    { _mDisplayLabel = Nothing
    , _mHasNonzeroData = Nothing
    , _mIndexedKeyRangeInfos = Nothing
    , _mCategory = Nothing
    , _mMatrix = Nothing
    , _mVisible = Nothing
    , _mAggregation = Nothing
    , _mDerived = Nothing
    , _mHotValue = Nothing
    , _mIndexedHotKeys = Nothing
    , _mUnit = Nothing
    , _mInfo = Nothing
    }


-- | The displayed label of the metric.
mDisplayLabel :: Lens' Metric (Maybe LocalizedString)
mDisplayLabel
  = lens _mDisplayLabel
      (\ s a -> s{_mDisplayLabel = a})

-- | Whether the metric has any non-zero data.
mHasNonzeroData :: Lens' Metric (Maybe Bool)
mHasNonzeroData
  = lens _mHasNonzeroData
      (\ s a -> s{_mHasNonzeroData = a})

-- | The (sparse) mapping from time interval index to an IndexedKeyRangeInfos
-- message, representing those time intervals for which there are
-- informational messages concerning key ranges.
mIndexedKeyRangeInfos :: Lens' Metric (Maybe MetricIndexedKeyRangeInfos)
mIndexedKeyRangeInfos
  = lens _mIndexedKeyRangeInfos
      (\ s a -> s{_mIndexedKeyRangeInfos = a})

-- | The category of the metric, e.g. \"Activity\", \"Alerts\", \"Reads\",
-- etc.
mCategory :: Lens' Metric (Maybe LocalizedString)
mCategory
  = lens _mCategory (\ s a -> s{_mCategory = a})

-- | The data for the metric as a matrix.
mMatrix :: Lens' Metric (Maybe MetricMatrix)
mMatrix = lens _mMatrix (\ s a -> s{_mMatrix = a})

-- | Whether the metric is visible to the end user.
mVisible :: Lens' Metric (Maybe Bool)
mVisible = lens _mVisible (\ s a -> s{_mVisible = a})

-- | The aggregation function used to aggregate each key bucket
mAggregation :: Lens' Metric (Maybe MetricAggregation)
mAggregation
  = lens _mAggregation (\ s a -> s{_mAggregation = a})

-- | The references to numerator and denominator metrics for a derived
-- metric.
mDerived :: Lens' Metric (Maybe DerivedMetric)
mDerived = lens _mDerived (\ s a -> s{_mDerived = a})

-- | The value that is considered hot for the metric. On a per metric basis
-- hotness signals high utilization and something that might potentially be
-- a cause for concern by the end user. hot_value is used to calibrate and
-- scale visual color scales.
mHotValue :: Lens' Metric (Maybe Double)
mHotValue
  = lens _mHotValue (\ s a -> s{_mHotValue = a}) .
      mapping _Coerce

-- | The (sparse) mapping from time index to an IndexedHotKey message,
-- representing those time intervals for which there are hot keys.
mIndexedHotKeys :: Lens' Metric (Maybe MetricIndexedHotKeys)
mIndexedHotKeys
  = lens _mIndexedHotKeys
      (\ s a -> s{_mIndexedHotKeys = a})

-- | The unit of the metric.
mUnit :: Lens' Metric (Maybe LocalizedString)
mUnit = lens _mUnit (\ s a -> s{_mUnit = a})

-- | Information about the metric.
mInfo :: Lens' Metric (Maybe LocalizedString)
mInfo = lens _mInfo (\ s a -> s{_mInfo = a})

instance FromJSON Metric where
        parseJSON
          = withObject "Metric"
              (\ o ->
                 Metric' <$>
                   (o .:? "displayLabel") <*> (o .:? "hasNonzeroData")
                     <*> (o .:? "indexedKeyRangeInfos")
                     <*> (o .:? "category")
                     <*> (o .:? "matrix")
                     <*> (o .:? "visible")
                     <*> (o .:? "aggregation")
                     <*> (o .:? "derived")
                     <*> (o .:? "hotValue")
                     <*> (o .:? "indexedHotKeys")
                     <*> (o .:? "unit")
                     <*> (o .:? "info"))

instance ToJSON Metric where
        toJSON Metric'{..}
          = object
              (catMaybes
                 [("displayLabel" .=) <$> _mDisplayLabel,
                  ("hasNonzeroData" .=) <$> _mHasNonzeroData,
                  ("indexedKeyRangeInfos" .=) <$>
                    _mIndexedKeyRangeInfos,
                  ("category" .=) <$> _mCategory,
                  ("matrix" .=) <$> _mMatrix,
                  ("visible" .=) <$> _mVisible,
                  ("aggregation" .=) <$> _mAggregation,
                  ("derived" .=) <$> _mDerived,
                  ("hotValue" .=) <$> _mHotValue,
                  ("indexedHotKeys" .=) <$> _mIndexedHotKeys,
                  ("unit" .=) <$> _mUnit, ("info" .=) <$> _mInfo])

-- | ScanData contains Cloud Key Visualizer scan data used by the caller to
-- construct a visualization.
--
-- /See:/ 'scanData' smart constructor.
data ScanData =
  ScanData'
    { _sdStartTime :: !(Maybe DateTime')
    , _sdData :: !(Maybe VisualizationData)
    , _sdEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScanData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdStartTime'
--
-- * 'sdData'
--
-- * 'sdEndTime'
scanData
    :: ScanData
scanData =
  ScanData' {_sdStartTime = Nothing, _sdData = Nothing, _sdEndTime = Nothing}


-- | A range of time (inclusive) for when the contained data is defined. The
-- lower bound for when the contained data is defined.
sdStartTime :: Lens' ScanData (Maybe UTCTime)
sdStartTime
  = lens _sdStartTime (\ s a -> s{_sdStartTime = a}) .
      mapping _DateTime

-- | Cloud Key Visualizer scan data. The range of time this information
-- covers is captured via the above time range fields. Note, this field is
-- not available to the ListScans method.
sdData :: Lens' ScanData (Maybe VisualizationData)
sdData = lens _sdData (\ s a -> s{_sdData = a})

-- | The upper bound for when the contained data is defined.
sdEndTime :: Lens' ScanData (Maybe UTCTime)
sdEndTime
  = lens _sdEndTime (\ s a -> s{_sdEndTime = a}) .
      mapping _DateTime

instance FromJSON ScanData where
        parseJSON
          = withObject "ScanData"
              (\ o ->
                 ScanData' <$>
                   (o .:? "startTime") <*> (o .:? "data") <*>
                     (o .:? "endTime"))

instance ToJSON ScanData where
        toJSON ScanData'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _sdStartTime,
                  ("data" .=) <$> _sdData,
                  ("endTime" .=) <$> _sdEndTime])

-- | A message representing a matrix of floats.
--
-- /See:/ 'metricMatrix' smart constructor.
newtype MetricMatrix =
  MetricMatrix'
    { _mmRows :: Maybe [MetricMatrixRow]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricMatrix' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmRows'
metricMatrix
    :: MetricMatrix
metricMatrix = MetricMatrix' {_mmRows = Nothing}


-- | The rows of the matrix.
mmRows :: Lens' MetricMatrix [MetricMatrixRow]
mmRows
  = lens _mmRows (\ s a -> s{_mmRows = a}) . _Default .
      _Coerce

instance FromJSON MetricMatrix where
        parseJSON
          = withObject "MetricMatrix"
              (\ o -> MetricMatrix' <$> (o .:? "rows" .!= mempty))

instance ToJSON MetricMatrix where
        toJSON MetricMatrix'{..}
          = object (catMaybes [("rows" .=) <$> _mmRows])

-- | Scan is a structure which describes Cloud Key Visualizer scan
-- information.
--
-- /See:/ 'scan' smart constructor.
data Scan =
  Scan'
    { _scaStartTime :: !(Maybe DateTime')
    , _scaName :: !(Maybe Text)
    , _scaScanData :: !(Maybe ScanData)
    , _scaEndTime :: !(Maybe DateTime')
    , _scaDetails :: !(Maybe ScanDetails)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Scan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scaStartTime'
--
-- * 'scaName'
--
-- * 'scaScanData'
--
-- * 'scaEndTime'
--
-- * 'scaDetails'
scan
    :: Scan
scan =
  Scan'
    { _scaStartTime = Nothing
    , _scaName = Nothing
    , _scaScanData = Nothing
    , _scaEndTime = Nothing
    , _scaDetails = Nothing
    }


-- | A range of time (inclusive) for when the scan is defined. The lower
-- bound for when the scan is defined.
scaStartTime :: Lens' Scan (Maybe UTCTime)
scaStartTime
  = lens _scaStartTime (\ s a -> s{_scaStartTime = a})
      . mapping _DateTime

-- | The unique name of the scan, specific to the Database service
-- implementing this interface.
scaName :: Lens' Scan (Maybe Text)
scaName = lens _scaName (\ s a -> s{_scaName = a})

-- | Output only. Cloud Key Visualizer scan data. Note, this field is not
-- available to the ListScans method.
scaScanData :: Lens' Scan (Maybe ScanData)
scaScanData
  = lens _scaScanData (\ s a -> s{_scaScanData = a})

-- | The upper bound for when the scan is defined.
scaEndTime :: Lens' Scan (Maybe UTCTime)
scaEndTime
  = lens _scaEndTime (\ s a -> s{_scaEndTime = a}) .
      mapping _DateTime

-- | Additional information provided by the implementer.
scaDetails :: Lens' Scan (Maybe ScanDetails)
scaDetails
  = lens _scaDetails (\ s a -> s{_scaDetails = a})

instance FromJSON Scan where
        parseJSON
          = withObject "Scan"
              (\ o ->
                 Scan' <$>
                   (o .:? "startTime") <*> (o .:? "name") <*>
                     (o .:? "scanData")
                     <*> (o .:? "endTime")
                     <*> (o .:? "details"))

instance ToJSON Scan where
        toJSON Scan'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _scaStartTime,
                  ("name" .=) <$> _scaName,
                  ("scanData" .=) <$> _scaScanData,
                  ("endTime" .=) <$> _scaEndTime,
                  ("details" .=) <$> _scaDetails])

-- | The request for ExecuteBatchDml.
--
-- /See:/ 'executeBatchDmlRequest' smart constructor.
data ExecuteBatchDmlRequest =
  ExecuteBatchDmlRequest'
    { _ebdrSeqno :: !(Maybe (Textual Int64))
    , _ebdrTransaction :: !(Maybe TransactionSelector)
    , _ebdrStatements :: !(Maybe [Statement])
    , _ebdrRequestOptions :: !(Maybe RequestOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecuteBatchDmlRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebdrSeqno'
--
-- * 'ebdrTransaction'
--
-- * 'ebdrStatements'
--
-- * 'ebdrRequestOptions'
executeBatchDmlRequest
    :: ExecuteBatchDmlRequest
executeBatchDmlRequest =
  ExecuteBatchDmlRequest'
    { _ebdrSeqno = Nothing
    , _ebdrTransaction = Nothing
    , _ebdrStatements = Nothing
    , _ebdrRequestOptions = Nothing
    }


-- | Required. A per-transaction sequence number used to identify this
-- request. This field makes each request idempotent such that if the
-- request is received multiple times, at most one will succeed. The
-- sequence number must be monotonically increasing within the transaction.
-- If a request arrives for the first time with an out-of-order sequence
-- number, the transaction may be aborted. Replays of previously handled
-- requests will yield the same response as the first execution.
ebdrSeqno :: Lens' ExecuteBatchDmlRequest (Maybe Int64)
ebdrSeqno
  = lens _ebdrSeqno (\ s a -> s{_ebdrSeqno = a}) .
      mapping _Coerce

-- | Required. The transaction to use. Must be a read-write transaction. To
-- protect against replays, single-use transactions are not supported. The
-- caller must either supply an existing transaction ID or begin a new
-- transaction.
ebdrTransaction :: Lens' ExecuteBatchDmlRequest (Maybe TransactionSelector)
ebdrTransaction
  = lens _ebdrTransaction
      (\ s a -> s{_ebdrTransaction = a})

-- | Required. The list of statements to execute in this batch. Statements
-- are executed serially, such that the effects of statement \`i\` are
-- visible to statement \`i+1\`. Each statement must be a DML statement.
-- Execution stops at the first failed statement; the remaining statements
-- are not executed. Callers must provide at least one statement.
ebdrStatements :: Lens' ExecuteBatchDmlRequest [Statement]
ebdrStatements
  = lens _ebdrStatements
      (\ s a -> s{_ebdrStatements = a})
      . _Default
      . _Coerce

-- | Common options for this request.
ebdrRequestOptions :: Lens' ExecuteBatchDmlRequest (Maybe RequestOptions)
ebdrRequestOptions
  = lens _ebdrRequestOptions
      (\ s a -> s{_ebdrRequestOptions = a})

instance FromJSON ExecuteBatchDmlRequest where
        parseJSON
          = withObject "ExecuteBatchDmlRequest"
              (\ o ->
                 ExecuteBatchDmlRequest' <$>
                   (o .:? "seqno") <*> (o .:? "transaction") <*>
                     (o .:? "statements" .!= mempty)
                     <*> (o .:? "requestOptions"))

instance ToJSON ExecuteBatchDmlRequest where
        toJSON ExecuteBatchDmlRequest'{..}
          = object
              (catMaybes
                 [("seqno" .=) <$> _ebdrSeqno,
                  ("transaction" .=) <$> _ebdrTransaction,
                  ("statements" .=) <$> _ebdrStatements,
                  ("requestOptions" .=) <$> _ebdrRequestOptions])

-- | \`StructType\` defines the fields of a STRUCT type.
--
-- /See:/ 'structType' smart constructor.
newtype StructType =
  StructType'
    { _stFields :: Maybe [Field]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StructType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stFields'
structType
    :: StructType
structType = StructType' {_stFields = Nothing}


-- | The list of fields that make up this struct. Order is significant,
-- because values of this struct type are represented as lists, where the
-- order of field values matches the order of fields in the StructType. In
-- turn, the order of fields matches the order of columns in a read
-- request, or the order of fields in the \`SELECT\` clause of a query.
stFields :: Lens' StructType [Field]
stFields
  = lens _stFields (\ s a -> s{_stFields = a}) .
      _Default
      . _Coerce

instance FromJSON StructType where
        parseJSON
          = withObject "StructType"
              (\ o -> StructType' <$> (o .:? "fields" .!= mempty))

instance ToJSON StructType where
        toJSON StructType'{..}
          = object (catMaybes [("fields" .=) <$> _stFields])

-- | Metadata type for the operation returned by CreateBackup.
--
-- /See:/ 'createBackupMetadata' smart constructor.
data CreateBackupMetadata =
  CreateBackupMetadata'
    { _cbmProgress :: !(Maybe OperationProgress)
    , _cbmDatabase :: !(Maybe Text)
    , _cbmCancelTime :: !(Maybe DateTime')
    , _cbmName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateBackupMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbmProgress'
--
-- * 'cbmDatabase'
--
-- * 'cbmCancelTime'
--
-- * 'cbmName'
createBackupMetadata
    :: CreateBackupMetadata
createBackupMetadata =
  CreateBackupMetadata'
    { _cbmProgress = Nothing
    , _cbmDatabase = Nothing
    , _cbmCancelTime = Nothing
    , _cbmName = Nothing
    }


-- | The progress of the CreateBackup operation.
cbmProgress :: Lens' CreateBackupMetadata (Maybe OperationProgress)
cbmProgress
  = lens _cbmProgress (\ s a -> s{_cbmProgress = a})

-- | The name of the database the backup is created from.
cbmDatabase :: Lens' CreateBackupMetadata (Maybe Text)
cbmDatabase
  = lens _cbmDatabase (\ s a -> s{_cbmDatabase = a})

-- | The time at which cancellation of this operation was received.
-- Operations.CancelOperation starts asynchronous cancellation on a
-- long-running operation. The server makes a best effort to cancel the
-- operation, but success is not guaranteed. Clients can use
-- Operations.GetOperation or other methods to check whether the
-- cancellation succeeded or whether the operation completed despite
-- cancellation. On successful cancellation, the operation is not deleted;
-- instead, it becomes an operation with an Operation.error value with a
-- google.rpc.Status.code of 1, corresponding to \`Code.CANCELLED\`.
cbmCancelTime :: Lens' CreateBackupMetadata (Maybe UTCTime)
cbmCancelTime
  = lens _cbmCancelTime
      (\ s a -> s{_cbmCancelTime = a})
      . mapping _DateTime

-- | The name of the backup being created.
cbmName :: Lens' CreateBackupMetadata (Maybe Text)
cbmName = lens _cbmName (\ s a -> s{_cbmName = a})

instance FromJSON CreateBackupMetadata where
        parseJSON
          = withObject "CreateBackupMetadata"
              (\ o ->
                 CreateBackupMetadata' <$>
                   (o .:? "progress") <*> (o .:? "database") <*>
                     (o .:? "cancelTime")
                     <*> (o .:? "name"))

instance ToJSON CreateBackupMetadata where
        toJSON CreateBackupMetadata'{..}
          = object
              (catMaybes
                 [("progress" .=) <$> _cbmProgress,
                  ("database" .=) <$> _cbmDatabase,
                  ("cancelTime" .=) <$> _cbmCancelTime,
                  ("name" .=) <$> _cbmName])

--
-- /See:/ 'visualizationData' smart constructor.
data VisualizationData =
  VisualizationData'
    { _vdDiagnosticMessages :: !(Maybe [DiagnosticMessage])
    , _vdMetrics :: !(Maybe [Metric])
    , _vdHasPii :: !(Maybe Bool)
    , _vdKeySeparator :: !(Maybe Text)
    , _vdDataSourceSeparatorToken :: !(Maybe Text)
    , _vdIndexedKeys :: !(Maybe [Text])
    , _vdEndKeyStrings :: !(Maybe [Text])
    , _vdPrefixNodes :: !(Maybe [PrefixNode])
    , _vdKeyUnit :: !(Maybe VisualizationDataKeyUnit)
    , _vdDataSourceEndToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VisualizationData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdDiagnosticMessages'
--
-- * 'vdMetrics'
--
-- * 'vdHasPii'
--
-- * 'vdKeySeparator'
--
-- * 'vdDataSourceSeparatorToken'
--
-- * 'vdIndexedKeys'
--
-- * 'vdEndKeyStrings'
--
-- * 'vdPrefixNodes'
--
-- * 'vdKeyUnit'
--
-- * 'vdDataSourceEndToken'
visualizationData
    :: VisualizationData
visualizationData =
  VisualizationData'
    { _vdDiagnosticMessages = Nothing
    , _vdMetrics = Nothing
    , _vdHasPii = Nothing
    , _vdKeySeparator = Nothing
    , _vdDataSourceSeparatorToken = Nothing
    , _vdIndexedKeys = Nothing
    , _vdEndKeyStrings = Nothing
    , _vdPrefixNodes = Nothing
    , _vdKeyUnit = Nothing
    , _vdDataSourceEndToken = Nothing
    }


-- | The list of messages (info, alerts, ...)
vdDiagnosticMessages :: Lens' VisualizationData [DiagnosticMessage]
vdDiagnosticMessages
  = lens _vdDiagnosticMessages
      (\ s a -> s{_vdDiagnosticMessages = a})
      . _Default
      . _Coerce

-- | The list of data objects for each metric.
vdMetrics :: Lens' VisualizationData [Metric]
vdMetrics
  = lens _vdMetrics (\ s a -> s{_vdMetrics = a}) .
      _Default
      . _Coerce

-- | Whether this scan contains PII.
vdHasPii :: Lens' VisualizationData (Maybe Bool)
vdHasPii = lens _vdHasPii (\ s a -> s{_vdHasPii = a})

-- | The token delimiting the key prefixes.
vdKeySeparator :: Lens' VisualizationData (Maybe Text)
vdKeySeparator
  = lens _vdKeySeparator
      (\ s a -> s{_vdKeySeparator = a})

-- | The token delimiting a datasource name from the rest of a key in a
-- data_source.
vdDataSourceSeparatorToken :: Lens' VisualizationData (Maybe Text)
vdDataSourceSeparatorToken
  = lens _vdDataSourceSeparatorToken
      (\ s a -> s{_vdDataSourceSeparatorToken = a})

-- | Keys of key ranges that contribute significantly to a given metric Can
-- be thought of as heavy hitters.
vdIndexedKeys :: Lens' VisualizationData [Text]
vdIndexedKeys
  = lens _vdIndexedKeys
      (\ s a -> s{_vdIndexedKeys = a})
      . _Default
      . _Coerce

-- | We discretize the entire keyspace into buckets. Assuming each bucket has
-- an inclusive keyrange and covers keys from k(i) ... k(n). In this case
-- k(n) would be an end key for a given range. end_key_string is the
-- collection of all such end keys
vdEndKeyStrings :: Lens' VisualizationData [Text]
vdEndKeyStrings
  = lens _vdEndKeyStrings
      (\ s a -> s{_vdEndKeyStrings = a})
      . _Default
      . _Coerce

-- | The list of extracted key prefix nodes used in the key prefix hierarchy.
vdPrefixNodes :: Lens' VisualizationData [PrefixNode]
vdPrefixNodes
  = lens _vdPrefixNodes
      (\ s a -> s{_vdPrefixNodes = a})
      . _Default
      . _Coerce

-- | The unit for the key: e.g. \'key\' or \'chunk\'.
vdKeyUnit :: Lens' VisualizationData (Maybe VisualizationDataKeyUnit)
vdKeyUnit
  = lens _vdKeyUnit (\ s a -> s{_vdKeyUnit = a})

-- | The token signifying the end of a data_source.
vdDataSourceEndToken :: Lens' VisualizationData (Maybe Text)
vdDataSourceEndToken
  = lens _vdDataSourceEndToken
      (\ s a -> s{_vdDataSourceEndToken = a})

instance FromJSON VisualizationData where
        parseJSON
          = withObject "VisualizationData"
              (\ o ->
                 VisualizationData' <$>
                   (o .:? "diagnosticMessages" .!= mempty) <*>
                     (o .:? "metrics" .!= mempty)
                     <*> (o .:? "hasPii")
                     <*> (o .:? "keySeparator")
                     <*> (o .:? "dataSourceSeparatorToken")
                     <*> (o .:? "indexedKeys" .!= mempty)
                     <*> (o .:? "endKeyStrings" .!= mempty)
                     <*> (o .:? "prefixNodes" .!= mempty)
                     <*> (o .:? "keyUnit")
                     <*> (o .:? "dataSourceEndToken"))

instance ToJSON VisualizationData where
        toJSON VisualizationData'{..}
          = object
              (catMaybes
                 [("diagnosticMessages" .=) <$> _vdDiagnosticMessages,
                  ("metrics" .=) <$> _vdMetrics,
                  ("hasPii" .=) <$> _vdHasPii,
                  ("keySeparator" .=) <$> _vdKeySeparator,
                  ("dataSourceSeparatorToken" .=) <$>
                    _vdDataSourceSeparatorToken,
                  ("indexedKeys" .=) <$> _vdIndexedKeys,
                  ("endKeyStrings" .=) <$> _vdEndKeyStrings,
                  ("prefixNodes" .=) <$> _vdPrefixNodes,
                  ("keyUnit" .=) <$> _vdKeyUnit,
                  ("dataSourceEndToken" .=) <$> _vdDataSourceEndToken])

-- | The response for Commit.
--
-- /See:/ 'commitResponse' smart constructor.
data CommitResponse =
  CommitResponse'
    { _crCommitTimestamp :: !(Maybe DateTime')
    , _crCommitStats :: !(Maybe CommitStats)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crCommitTimestamp'
--
-- * 'crCommitStats'
commitResponse
    :: CommitResponse
commitResponse =
  CommitResponse' {_crCommitTimestamp = Nothing, _crCommitStats = Nothing}


-- | The Cloud Spanner timestamp at which the transaction committed.
crCommitTimestamp :: Lens' CommitResponse (Maybe UTCTime)
crCommitTimestamp
  = lens _crCommitTimestamp
      (\ s a -> s{_crCommitTimestamp = a})
      . mapping _DateTime

-- | The statistics about this Commit. Not returned by default. For more
-- information, see CommitRequest.return_commit_stats.
crCommitStats :: Lens' CommitResponse (Maybe CommitStats)
crCommitStats
  = lens _crCommitStats
      (\ s a -> s{_crCommitStats = a})

instance FromJSON CommitResponse where
        parseJSON
          = withObject "CommitResponse"
              (\ o ->
                 CommitResponse' <$>
                   (o .:? "commitTimestamp") <*> (o .:? "commitStats"))

instance ToJSON CommitResponse where
        toJSON CommitResponse'{..}
          = object
              (catMaybes
                 [("commitTimestamp" .=) <$> _crCommitTimestamp,
                  ("commitStats" .=) <$> _crCommitStats])

-- | Information returned for each partition returned in a PartitionResponse.
--
-- /See:/ 'partition' smart constructor.
newtype Partition =
  Partition'
    { _pPartitionToken :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Partition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPartitionToken'
partition
    :: Partition
partition = Partition' {_pPartitionToken = Nothing}


-- | This token can be passed to Read, StreamingRead, ExecuteSql, or
-- ExecuteStreamingSql requests to restrict the results to those identified
-- by this partition token.
pPartitionToken :: Lens' Partition (Maybe ByteString)
pPartitionToken
  = lens _pPartitionToken
      (\ s a -> s{_pPartitionToken = a})
      . mapping _Bytes

instance FromJSON Partition where
        parseJSON
          = withObject "Partition"
              (\ o -> Partition' <$> (o .:? "partitionToken"))

instance ToJSON Partition where
        toJSON Partition'{..}
          = object
              (catMaybes
                 [("partitionToken" .=) <$> _pPartitionToken])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | REQUIRED: The set of permissions to check for \'resource\'. Permissions
-- with wildcards (such as \'*\', \'spanner.*\', \'spanner.instances.*\')
-- are not allowed.
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | A message representing a user-facing string whose value may need to be
-- translated before being displayed.
--
-- /See:/ 'localizedString' smart constructor.
data LocalizedString =
  LocalizedString'
    { _lsArgs :: !(Maybe LocalizedStringArgs)
    , _lsToken :: !(Maybe Text)
    , _lsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalizedString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsArgs'
--
-- * 'lsToken'
--
-- * 'lsMessage'
localizedString
    :: LocalizedString
localizedString =
  LocalizedString' {_lsArgs = Nothing, _lsToken = Nothing, _lsMessage = Nothing}


-- | A map of arguments used when creating the localized message. Keys
-- represent parameter names which may be used by the localized version
-- when substituting dynamic values.
lsArgs :: Lens' LocalizedString (Maybe LocalizedStringArgs)
lsArgs = lens _lsArgs (\ s a -> s{_lsArgs = a})

-- | The token identifying the message, e.g. \'METRIC_READ_CPU\'. This should
-- be unique within the service.
lsToken :: Lens' LocalizedString (Maybe Text)
lsToken = lens _lsToken (\ s a -> s{_lsToken = a})

-- | The canonical English version of this message. If no token is provided
-- or the front-end has no message associated with the token, this text
-- will be displayed as-is.
lsMessage :: Lens' LocalizedString (Maybe Text)
lsMessage
  = lens _lsMessage (\ s a -> s{_lsMessage = a})

instance FromJSON LocalizedString where
        parseJSON
          = withObject "LocalizedString"
              (\ o ->
                 LocalizedString' <$>
                   (o .:? "args") <*> (o .:? "token") <*>
                     (o .:? "message"))

instance ToJSON LocalizedString where
        toJSON LocalizedString'{..}
          = object
              (catMaybes
                 [("args" .=) <$> _lsArgs, ("token" .=) <$> _lsToken,
                  ("message" .=) <$> _lsMessage])

-- | Metadata type for the long-running operation used to track the progress
-- of optimizations performed on a newly restored database. This
-- long-running operation is automatically created by the system after the
-- successful completion of a database restore, and cannot be cancelled.
--
-- /See:/ 'optimizeRestoredDatabaseMetadata' smart constructor.
data OptimizeRestoredDatabaseMetadata =
  OptimizeRestoredDatabaseMetadata'
    { _ordmProgress :: !(Maybe OperationProgress)
    , _ordmName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OptimizeRestoredDatabaseMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordmProgress'
--
-- * 'ordmName'
optimizeRestoredDatabaseMetadata
    :: OptimizeRestoredDatabaseMetadata
optimizeRestoredDatabaseMetadata =
  OptimizeRestoredDatabaseMetadata'
    {_ordmProgress = Nothing, _ordmName = Nothing}


-- | The progress of the post-restore optimizations.
ordmProgress :: Lens' OptimizeRestoredDatabaseMetadata (Maybe OperationProgress)
ordmProgress
  = lens _ordmProgress (\ s a -> s{_ordmProgress = a})

-- | Name of the restored database being optimized.
ordmName :: Lens' OptimizeRestoredDatabaseMetadata (Maybe Text)
ordmName = lens _ordmName (\ s a -> s{_ordmName = a})

instance FromJSON OptimizeRestoredDatabaseMetadata
         where
        parseJSON
          = withObject "OptimizeRestoredDatabaseMetadata"
              (\ o ->
                 OptimizeRestoredDatabaseMetadata' <$>
                   (o .:? "progress") <*> (o .:? "name"))

instance ToJSON OptimizeRestoredDatabaseMetadata
         where
        toJSON OptimizeRestoredDatabaseMetadata'{..}
          = object
              (catMaybes
                 [("progress" .=) <$> _ordmProgress,
                  ("name" .=) <$> _ordmName])

-- | Response method from the ListScans method.
--
-- /See:/ 'listScansResponse' smart constructor.
data ListScansResponse =
  ListScansResponse'
    { _lNextPageToken :: !(Maybe Text)
    , _lScans :: !(Maybe [Scan])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListScansResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lScans'
listScansResponse
    :: ListScansResponse
listScansResponse =
  ListScansResponse' {_lNextPageToken = Nothing, _lScans = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lNextPageToken :: Lens' ListScansResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | Available scans based on the list query parameters.
lScans :: Lens' ListScansResponse [Scan]
lScans
  = lens _lScans (\ s a -> s{_lScans = a}) . _Default .
      _Coerce

instance FromJSON ListScansResponse where
        parseJSON
          = withObject "ListScansResponse"
              (\ o ->
                 ListScansResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "scans" .!= mempty))

instance ToJSON ListScansResponse where
        toJSON ListScansResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  ("scans" .=) <$> _lScans])

-- | Additional information provided by the implementer.
--
-- /See:/ 'scanDetails' smart constructor.
newtype ScanDetails =
  ScanDetails'
    { _sdAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScanDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdAddtional'
scanDetails
    :: HashMap Text JSONValue -- ^ 'sdAddtional'
    -> ScanDetails
scanDetails pSdAddtional_ =
  ScanDetails' {_sdAddtional = _Coerce # pSdAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdAddtional :: Lens' ScanDetails (HashMap Text JSONValue)
sdAddtional
  = lens _sdAddtional (\ s a -> s{_sdAddtional = a}) .
      _Coerce

instance FromJSON ScanDetails where
        parseJSON
          = withObject "ScanDetails"
              (\ o -> ScanDetails' <$> (parseJSONObject o))

instance ToJSON ScanDetails where
        toJSON = toJSON . _sdAddtional

-- | A message representing a row of a matrix of floats.
--
-- /See:/ 'metricMatrixRow' smart constructor.
newtype MetricMatrixRow =
  MetricMatrixRow'
    { _mmrCols :: Maybe [Textual Double]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricMatrixRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmrCols'
metricMatrixRow
    :: MetricMatrixRow
metricMatrixRow = MetricMatrixRow' {_mmrCols = Nothing}


-- | The columns of the row.
mmrCols :: Lens' MetricMatrixRow [Double]
mmrCols
  = lens _mmrCols (\ s a -> s{_mmrCols = a}) . _Default
      . _Coerce

instance FromJSON MetricMatrixRow where
        parseJSON
          = withObject "MetricMatrixRow"
              (\ o ->
                 MetricMatrixRow' <$> (o .:? "cols" .!= mempty))

instance ToJSON MetricMatrixRow where
        toJSON MetricMatrixRow'{..}
          = object (catMaybes [("cols" .=) <$> _mmrCols])

-- | It is not always possible for Cloud Spanner to infer the right SQL type
-- from a JSON value. For example, values of type \`BYTES\` and values of
-- type \`STRING\` both appear in params as JSON strings. In these cases,
-- \`param_types\` can be used to specify the exact SQL type for some or
-- all of the SQL query parameters. See the definition of Type for more
-- information about SQL types.
--
-- /See:/ 'partitionQueryRequestParamTypes' smart constructor.
newtype PartitionQueryRequestParamTypes =
  PartitionQueryRequestParamTypes'
    { _pqrptAddtional :: HashMap Text Type
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartitionQueryRequestParamTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pqrptAddtional'
partitionQueryRequestParamTypes
    :: HashMap Text Type -- ^ 'pqrptAddtional'
    -> PartitionQueryRequestParamTypes
partitionQueryRequestParamTypes pPqrptAddtional_ =
  PartitionQueryRequestParamTypes'
    {_pqrptAddtional = _Coerce # pPqrptAddtional_}


pqrptAddtional :: Lens' PartitionQueryRequestParamTypes (HashMap Text Type)
pqrptAddtional
  = lens _pqrptAddtional
      (\ s a -> s{_pqrptAddtional = a})
      . _Coerce

instance FromJSON PartitionQueryRequestParamTypes
         where
        parseJSON
          = withObject "PartitionQueryRequestParamTypes"
              (\ o ->
                 PartitionQueryRequestParamTypes' <$>
                   (parseJSONObject o))

instance ToJSON PartitionQueryRequestParamTypes where
        toJSON = toJSON . _pqrptAddtional

-- | Encryption configuration for a Cloud Spanner database.
--
-- /See:/ 'encryptionConfig' smart constructor.
newtype EncryptionConfig =
  EncryptionConfig'
    { _ecKmsKeyName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecKmsKeyName'
encryptionConfig
    :: EncryptionConfig
encryptionConfig = EncryptionConfig' {_ecKmsKeyName = Nothing}


-- | The Cloud KMS key to be used for encrypting and decrypting the database.
-- Values are of the form
-- \`projects\/\/locations\/\/keyRings\/\/cryptoKeys\/\`.
ecKmsKeyName :: Lens' EncryptionConfig (Maybe Text)
ecKmsKeyName
  = lens _ecKmsKeyName (\ s a -> s{_ecKmsKeyName = a})

instance FromJSON EncryptionConfig where
        parseJSON
          = withObject "EncryptionConfig"
              (\ o -> EncryptionConfig' <$> (o .:? "kmsKeyName"))

instance ToJSON EncryptionConfig where
        toJSON EncryptionConfig'{..}
          = object
              (catMaybes [("kmsKeyName" .=) <$> _ecKmsKeyName])

-- | A map of arguments used when creating the localized message. Keys
-- represent parameter names which may be used by the localized version
-- when substituting dynamic values.
--
-- /See:/ 'localizedStringArgs' smart constructor.
newtype LocalizedStringArgs =
  LocalizedStringArgs'
    { _lsaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalizedStringArgs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsaAddtional'
localizedStringArgs
    :: HashMap Text Text -- ^ 'lsaAddtional'
    -> LocalizedStringArgs
localizedStringArgs pLsaAddtional_ =
  LocalizedStringArgs' {_lsaAddtional = _Coerce # pLsaAddtional_}


lsaAddtional :: Lens' LocalizedStringArgs (HashMap Text Text)
lsaAddtional
  = lens _lsaAddtional (\ s a -> s{_lsaAddtional = a})
      . _Coerce

instance FromJSON LocalizedStringArgs where
        parseJSON
          = withObject "LocalizedStringArgs"
              (\ o -> LocalizedStringArgs' <$> (parseJSONObject o))

instance ToJSON LocalizedStringArgs where
        toJSON = toJSON . _lsaAddtional

-- | Metadata type for the operation returned by UpdateInstance.
--
-- /See:/ 'updateInstanceMetadata' smart constructor.
data UpdateInstanceMetadata =
  UpdateInstanceMetadata'
    { _uimStartTime :: !(Maybe DateTime')
    , _uimCancelTime :: !(Maybe DateTime')
    , _uimEndTime :: !(Maybe DateTime')
    , _uimInstance :: !(Maybe Instance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateInstanceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uimStartTime'
--
-- * 'uimCancelTime'
--
-- * 'uimEndTime'
--
-- * 'uimInstance'
updateInstanceMetadata
    :: UpdateInstanceMetadata
updateInstanceMetadata =
  UpdateInstanceMetadata'
    { _uimStartTime = Nothing
    , _uimCancelTime = Nothing
    , _uimEndTime = Nothing
    , _uimInstance = Nothing
    }


-- | The time at which UpdateInstance request was received.
uimStartTime :: Lens' UpdateInstanceMetadata (Maybe UTCTime)
uimStartTime
  = lens _uimStartTime (\ s a -> s{_uimStartTime = a})
      . mapping _DateTime

-- | The time at which this operation was cancelled. If set, this operation
-- is in the process of undoing itself (which is guaranteed to succeed) and
-- cannot be cancelled again.
uimCancelTime :: Lens' UpdateInstanceMetadata (Maybe UTCTime)
uimCancelTime
  = lens _uimCancelTime
      (\ s a -> s{_uimCancelTime = a})
      . mapping _DateTime

-- | The time at which this operation failed or was completed successfully.
uimEndTime :: Lens' UpdateInstanceMetadata (Maybe UTCTime)
uimEndTime
  = lens _uimEndTime (\ s a -> s{_uimEndTime = a}) .
      mapping _DateTime

-- | The desired end state of the update.
uimInstance :: Lens' UpdateInstanceMetadata (Maybe Instance)
uimInstance
  = lens _uimInstance (\ s a -> s{_uimInstance = a})

instance FromJSON UpdateInstanceMetadata where
        parseJSON
          = withObject "UpdateInstanceMetadata"
              (\ o ->
                 UpdateInstanceMetadata' <$>
                   (o .:? "startTime") <*> (o .:? "cancelTime") <*>
                     (o .:? "endTime")
                     <*> (o .:? "instance"))

instance ToJSON UpdateInstanceMetadata where
        toJSON UpdateInstanceMetadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _uimStartTime,
                  ("cancelTime" .=) <$> _uimCancelTime,
                  ("endTime" .=) <$> _uimEndTime,
                  ("instance" .=) <$> _uimInstance])

-- | The execution statistics associated with the node, contained in a group
-- of key-value pairs. Only present if the plan was returned as a result of
-- a profile query. For example, number of executions, number of rows\/time
-- per execution etc.
--
-- /See:/ 'planNodeExecutionStats' smart constructor.
newtype PlanNodeExecutionStats =
  PlanNodeExecutionStats'
    { _pnesAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlanNodeExecutionStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnesAddtional'
planNodeExecutionStats
    :: HashMap Text JSONValue -- ^ 'pnesAddtional'
    -> PlanNodeExecutionStats
planNodeExecutionStats pPnesAddtional_ =
  PlanNodeExecutionStats' {_pnesAddtional = _Coerce # pPnesAddtional_}


-- | Properties of the object.
pnesAddtional :: Lens' PlanNodeExecutionStats (HashMap Text JSONValue)
pnesAddtional
  = lens _pnesAddtional
      (\ s a -> s{_pnesAddtional = a})
      . _Coerce

instance FromJSON PlanNodeExecutionStats where
        parseJSON
          = withObject "PlanNodeExecutionStats"
              (\ o ->
                 PlanNodeExecutionStats' <$> (parseJSONObject o))

instance ToJSON PlanNodeExecutionStats where
        toJSON = toJSON . _pnesAddtional

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | Metadata type for the long-running operation returned by
-- RestoreDatabase.
--
-- /See:/ 'restoreDatabaseMetadata' smart constructor.
data RestoreDatabaseMetadata =
  RestoreDatabaseMetadata'
    { _rdmSourceType :: !(Maybe RestoreDatabaseMetadataSourceType)
    , _rdmProgress :: !(Maybe OperationProgress)
    , _rdmCancelTime :: !(Maybe DateTime')
    , _rdmName :: !(Maybe Text)
    , _rdmBackupInfo :: !(Maybe BackupInfo)
    , _rdmOptimizeDatabaseOperationName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreDatabaseMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdmSourceType'
--
-- * 'rdmProgress'
--
-- * 'rdmCancelTime'
--
-- * 'rdmName'
--
-- * 'rdmBackupInfo'
--
-- * 'rdmOptimizeDatabaseOperationName'
restoreDatabaseMetadata
    :: RestoreDatabaseMetadata
restoreDatabaseMetadata =
  RestoreDatabaseMetadata'
    { _rdmSourceType = Nothing
    , _rdmProgress = Nothing
    , _rdmCancelTime = Nothing
    , _rdmName = Nothing
    , _rdmBackupInfo = Nothing
    , _rdmOptimizeDatabaseOperationName = Nothing
    }


-- | The type of the restore source.
rdmSourceType :: Lens' RestoreDatabaseMetadata (Maybe RestoreDatabaseMetadataSourceType)
rdmSourceType
  = lens _rdmSourceType
      (\ s a -> s{_rdmSourceType = a})

-- | The progress of the RestoreDatabase operation.
rdmProgress :: Lens' RestoreDatabaseMetadata (Maybe OperationProgress)
rdmProgress
  = lens _rdmProgress (\ s a -> s{_rdmProgress = a})

-- | The time at which cancellation of this operation was received.
-- Operations.CancelOperation starts asynchronous cancellation on a
-- long-running operation. The server makes a best effort to cancel the
-- operation, but success is not guaranteed. Clients can use
-- Operations.GetOperation or other methods to check whether the
-- cancellation succeeded or whether the operation completed despite
-- cancellation. On successful cancellation, the operation is not deleted;
-- instead, it becomes an operation with an Operation.error value with a
-- google.rpc.Status.code of 1, corresponding to \`Code.CANCELLED\`.
rdmCancelTime :: Lens' RestoreDatabaseMetadata (Maybe UTCTime)
rdmCancelTime
  = lens _rdmCancelTime
      (\ s a -> s{_rdmCancelTime = a})
      . mapping _DateTime

-- | Name of the database being created and restored to.
rdmName :: Lens' RestoreDatabaseMetadata (Maybe Text)
rdmName = lens _rdmName (\ s a -> s{_rdmName = a})

-- | Information about the backup used to restore the database.
rdmBackupInfo :: Lens' RestoreDatabaseMetadata (Maybe BackupInfo)
rdmBackupInfo
  = lens _rdmBackupInfo
      (\ s a -> s{_rdmBackupInfo = a})

-- | If exists, the name of the long-running operation that will be used to
-- track the post-restore optimization process to optimize the performance
-- of the restored database, and remove the dependency on the restore
-- source. The name is of the form
-- \`projects\/\/instances\/\/databases\/\/operations\/\` where the is the
-- name of database being created and restored to. The metadata type of the
-- long-running operation is OptimizeRestoredDatabaseMetadata. This
-- long-running operation will be automatically created by the system after
-- the RestoreDatabase long-running operation completes successfully. This
-- operation will not be created if the restore was not successful.
rdmOptimizeDatabaseOperationName :: Lens' RestoreDatabaseMetadata (Maybe Text)
rdmOptimizeDatabaseOperationName
  = lens _rdmOptimizeDatabaseOperationName
      (\ s a -> s{_rdmOptimizeDatabaseOperationName = a})

instance FromJSON RestoreDatabaseMetadata where
        parseJSON
          = withObject "RestoreDatabaseMetadata"
              (\ o ->
                 RestoreDatabaseMetadata' <$>
                   (o .:? "sourceType") <*> (o .:? "progress") <*>
                     (o .:? "cancelTime")
                     <*> (o .:? "name")
                     <*> (o .:? "backupInfo")
                     <*> (o .:? "optimizeDatabaseOperationName"))

instance ToJSON RestoreDatabaseMetadata where
        toJSON RestoreDatabaseMetadata'{..}
          = object
              (catMaybes
                 [("sourceType" .=) <$> _rdmSourceType,
                  ("progress" .=) <$> _rdmProgress,
                  ("cancelTime" .=) <$> _rdmCancelTime,
                  ("name" .=) <$> _rdmName,
                  ("backupInfo" .=) <$> _rdmBackupInfo,
                  ("optimizeDatabaseOperationName" .=) <$>
                    _rdmOptimizeDatabaseOperationName])

-- | Partial results from a streaming read or SQL query. Streaming reads and
-- SQL queries better tolerate large result sets, large rows, and large
-- values, but are a little trickier to consume.
--
-- /See:/ 'partialResultSet' smart constructor.
data PartialResultSet =
  PartialResultSet'
    { _prsResumeToken :: !(Maybe Bytes)
    , _prsValues :: !(Maybe [JSONValue])
    , _prsStats :: !(Maybe ResultSetStats)
    , _prsMetadata :: !(Maybe ResultSetMetadata)
    , _prsChunkedValue :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartialResultSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prsResumeToken'
--
-- * 'prsValues'
--
-- * 'prsStats'
--
-- * 'prsMetadata'
--
-- * 'prsChunkedValue'
partialResultSet
    :: PartialResultSet
partialResultSet =
  PartialResultSet'
    { _prsResumeToken = Nothing
    , _prsValues = Nothing
    , _prsStats = Nothing
    , _prsMetadata = Nothing
    , _prsChunkedValue = Nothing
    }


-- | Streaming calls might be interrupted for a variety of reasons, such as
-- TCP connection loss. If this occurs, the stream of results can be
-- resumed by re-sending the original request and including
-- \`resume_token\`. Note that executing any other transaction in the same
-- session invalidates the token.
prsResumeToken :: Lens' PartialResultSet (Maybe ByteString)
prsResumeToken
  = lens _prsResumeToken
      (\ s a -> s{_prsResumeToken = a})
      . mapping _Bytes

-- | A streamed result set consists of a stream of values, which might be
-- split into many \`PartialResultSet\` messages to accommodate large rows
-- and\/or large values. Every N complete values defines a row, where N is
-- equal to the number of entries in metadata.row_type.fields. Most values
-- are encoded based on type as described here. It is possible that the
-- last value in values is \"chunked\", meaning that the rest of the value
-- is sent in subsequent \`PartialResultSet\`(s). This is denoted by the
-- chunked_value field. Two or more chunked values can be merged to form a
-- complete value as follows: * \`bool\/number\/null\`: cannot be chunked *
-- \`string\`: concatenate the strings * \`list\`: concatenate the lists.
-- If the last element in a list is a \`string\`, \`list\`, or \`object\`,
-- merge it with the first element in the next list by applying these rules
-- recursively. * \`object\`: concatenate the (field name, field value)
-- pairs. If a field name is duplicated, then apply these rules recursively
-- to merge the field values. Some examples of merging: # Strings are
-- concatenated. \"foo\", \"bar\" => \"foobar\" # Lists of non-strings are
-- concatenated. [2, 3], [4] => [2, 3, 4] # Lists are concatenated, but the
-- last and first elements are merged # because they are strings. [\"a\",
-- \"b\"], [\"c\", \"d\"] => [\"a\", \"bc\", \"d\"] # Lists are
-- concatenated, but the last and first elements are merged # because they
-- are lists. Recursively, the last and first elements # of the inner lists
-- are merged because they are strings. [\"a\", [\"b\", \"c\"]], [[\"d\"],
-- \"e\"] => [\"a\", [\"b\", \"cd\"], \"e\"] # Non-overlapping object
-- fields are combined. {\"a\": \"1\"}, {\"b\": \"2\"} => {\"a\": \"1\",
-- \"b\": 2\"} # Overlapping object fields are merged. {\"a\": \"1\"},
-- {\"a\": \"2\"} => {\"a\": \"12\"} # Examples of merging objects
-- containing lists of strings. {\"a\": [\"1\"]}, {\"a\": [\"2\"]} =>
-- {\"a\": [\"12\"]} For a more complete example, suppose a streaming SQL
-- query is yielding a result set whose rows contain a single string field.
-- The following \`PartialResultSet\`s might be yielded: { \"metadata\": {
-- ... } \"values\": [\"Hello\", \"W\"] \"chunked_value\": true
-- \"resume_token\": \"Af65...\" } { \"values\": [\"orl\"]
-- \"chunked_value\": true \"resume_token\": \"Bqp2...\" } { \"values\":
-- [\"d\"] \"resume_token\": \"Zx1B...\" } This sequence of
-- \`PartialResultSet\`s encodes two rows, one containing the field value
-- \`\"Hello\"\`, and a second containing the field value \`\"World\" =
-- \"W\" + \"orl\" + \"d\"\`.
prsValues :: Lens' PartialResultSet [JSONValue]
prsValues
  = lens _prsValues (\ s a -> s{_prsValues = a}) .
      _Default
      . _Coerce

-- | Query plan and execution statistics for the statement that produced this
-- streaming result set. These can be requested by setting
-- ExecuteSqlRequest.query_mode and are sent only once with the last
-- response in the stream. This field will also be present in the last
-- response for DML statements.
prsStats :: Lens' PartialResultSet (Maybe ResultSetStats)
prsStats = lens _prsStats (\ s a -> s{_prsStats = a})

-- | Metadata about the result set, such as row type information. Only
-- present in the first response.
prsMetadata :: Lens' PartialResultSet (Maybe ResultSetMetadata)
prsMetadata
  = lens _prsMetadata (\ s a -> s{_prsMetadata = a})

-- | If true, then the final value in values is chunked, and must be combined
-- with more values from subsequent \`PartialResultSet\`s to obtain a
-- complete field value.
prsChunkedValue :: Lens' PartialResultSet (Maybe Bool)
prsChunkedValue
  = lens _prsChunkedValue
      (\ s a -> s{_prsChunkedValue = a})

instance FromJSON PartialResultSet where
        parseJSON
          = withObject "PartialResultSet"
              (\ o ->
                 PartialResultSet' <$>
                   (o .:? "resumeToken") <*> (o .:? "values" .!= mempty)
                     <*> (o .:? "stats")
                     <*> (o .:? "metadata")
                     <*> (o .:? "chunkedValue"))

instance ToJSON PartialResultSet where
        toJSON PartialResultSet'{..}
          = object
              (catMaybes
                 [("resumeToken" .=) <$> _prsResumeToken,
                  ("values" .=) <$> _prsValues,
                  ("stats" .=) <$> _prsStats,
                  ("metadata" .=) <$> _prsMetadata,
                  ("chunkedValue" .=) <$> _prsChunkedValue])

-- | Encryption configuration for the restored database.
--
-- /See:/ 'restoreDatabaseEncryptionConfig' smart constructor.
data RestoreDatabaseEncryptionConfig =
  RestoreDatabaseEncryptionConfig'
    { _rdecEncryptionType :: !(Maybe RestoreDatabaseEncryptionConfigEncryptionType)
    , _rdecKmsKeyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreDatabaseEncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdecEncryptionType'
--
-- * 'rdecKmsKeyName'
restoreDatabaseEncryptionConfig
    :: RestoreDatabaseEncryptionConfig
restoreDatabaseEncryptionConfig =
  RestoreDatabaseEncryptionConfig'
    {_rdecEncryptionType = Nothing, _rdecKmsKeyName = Nothing}


-- | Required. The encryption type of the restored database.
rdecEncryptionType :: Lens' RestoreDatabaseEncryptionConfig (Maybe RestoreDatabaseEncryptionConfigEncryptionType)
rdecEncryptionType
  = lens _rdecEncryptionType
      (\ s a -> s{_rdecEncryptionType = a})

-- | Optional. The Cloud KMS key that will be used to encrypt\/decrypt the
-- restored database. This field should be set only when encryption_type is
-- \`CUSTOMER_MANAGED_ENCRYPTION\`. Values are of the form
-- \`projects\/\/locations\/\/keyRings\/\/cryptoKeys\/\`.
rdecKmsKeyName :: Lens' RestoreDatabaseEncryptionConfig (Maybe Text)
rdecKmsKeyName
  = lens _rdecKmsKeyName
      (\ s a -> s{_rdecKmsKeyName = a})

instance FromJSON RestoreDatabaseEncryptionConfig
         where
        parseJSON
          = withObject "RestoreDatabaseEncryptionConfig"
              (\ o ->
                 RestoreDatabaseEncryptionConfig' <$>
                   (o .:? "encryptionType") <*> (o .:? "kmsKeyName"))

instance ToJSON RestoreDatabaseEncryptionConfig where
        toJSON RestoreDatabaseEncryptionConfig'{..}
          = object
              (catMaybes
                 [("encryptionType" .=) <$> _rdecEncryptionType,
                  ("kmsKeyName" .=) <$> _rdecKmsKeyName])

-- | Information about a backup.
--
-- /See:/ 'backupInfo' smart constructor.
data BackupInfo =
  BackupInfo'
    { _biBackup :: !(Maybe Text)
    , _biVersionTime :: !(Maybe DateTime')
    , _biSourceDatabase :: !(Maybe Text)
    , _biCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biBackup'
--
-- * 'biVersionTime'
--
-- * 'biSourceDatabase'
--
-- * 'biCreateTime'
backupInfo
    :: BackupInfo
backupInfo =
  BackupInfo'
    { _biBackup = Nothing
    , _biVersionTime = Nothing
    , _biSourceDatabase = Nothing
    , _biCreateTime = Nothing
    }


-- | Name of the backup.
biBackup :: Lens' BackupInfo (Maybe Text)
biBackup = lens _biBackup (\ s a -> s{_biBackup = a})

-- | The backup contains an externally consistent copy of \`source_database\`
-- at the timestamp specified by \`version_time\`. If the CreateBackup
-- request did not specify \`version_time\`, the \`version_time\` of the
-- backup is equivalent to the \`create_time\`.
biVersionTime :: Lens' BackupInfo (Maybe UTCTime)
biVersionTime
  = lens _biVersionTime
      (\ s a -> s{_biVersionTime = a})
      . mapping _DateTime

-- | Name of the database the backup was created from.
biSourceDatabase :: Lens' BackupInfo (Maybe Text)
biSourceDatabase
  = lens _biSourceDatabase
      (\ s a -> s{_biSourceDatabase = a})

-- | The time the CreateBackup request was received.
biCreateTime :: Lens' BackupInfo (Maybe UTCTime)
biCreateTime
  = lens _biCreateTime (\ s a -> s{_biCreateTime = a})
      . mapping _DateTime

instance FromJSON BackupInfo where
        parseJSON
          = withObject "BackupInfo"
              (\ o ->
                 BackupInfo' <$>
                   (o .:? "backup") <*> (o .:? "versionTime") <*>
                     (o .:? "sourceDatabase")
                     <*> (o .:? "createTime"))

instance ToJSON BackupInfo where
        toJSON BackupInfo'{..}
          = object
              (catMaybes
                 [("backup" .=) <$> _biBackup,
                  ("versionTime" .=) <$> _biVersionTime,
                  ("sourceDatabase" .=) <$> _biSourceDatabase,
                  ("createTime" .=) <$> _biCreateTime])

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy = Policy' {_pEtag = Nothing, _pVersion = Nothing, _pBindings = Nothing}


-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | The request for CreateDatabase.
--
-- /See:/ 'createDatabaseRequest' smart constructor.
data CreateDatabaseRequest =
  CreateDatabaseRequest'
    { _cdrExtraStatements :: !(Maybe [Text])
    , _cdrEncryptionConfig :: !(Maybe EncryptionConfig)
    , _cdrCreateStatement :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateDatabaseRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrExtraStatements'
--
-- * 'cdrEncryptionConfig'
--
-- * 'cdrCreateStatement'
createDatabaseRequest
    :: CreateDatabaseRequest
createDatabaseRequest =
  CreateDatabaseRequest'
    { _cdrExtraStatements = Nothing
    , _cdrEncryptionConfig = Nothing
    , _cdrCreateStatement = Nothing
    }


-- | Optional. A list of DDL statements to run inside the newly created
-- database. Statements can create tables, indexes, etc. These statements
-- execute atomically with the creation of the database: if there is an
-- error in any statement, the database is not created.
cdrExtraStatements :: Lens' CreateDatabaseRequest [Text]
cdrExtraStatements
  = lens _cdrExtraStatements
      (\ s a -> s{_cdrExtraStatements = a})
      . _Default
      . _Coerce

-- | Optional. The encryption configuration for the database. If this field
-- is not specified, Cloud Spanner will encrypt\/decrypt all data at rest
-- using Google default encryption.
cdrEncryptionConfig :: Lens' CreateDatabaseRequest (Maybe EncryptionConfig)
cdrEncryptionConfig
  = lens _cdrEncryptionConfig
      (\ s a -> s{_cdrEncryptionConfig = a})

-- | Required. A \`CREATE DATABASE\` statement, which specifies the ID of the
-- new database. The database ID must conform to the regular expression
-- \`a-z*[a-z0-9]\` and be between 2 and 30 characters in length. If the
-- database ID is a reserved word or if it contains a hyphen, the database
-- ID must be enclosed in backticks (\`\` \` \`\`).
cdrCreateStatement :: Lens' CreateDatabaseRequest (Maybe Text)
cdrCreateStatement
  = lens _cdrCreateStatement
      (\ s a -> s{_cdrCreateStatement = a})

instance FromJSON CreateDatabaseRequest where
        parseJSON
          = withObject "CreateDatabaseRequest"
              (\ o ->
                 CreateDatabaseRequest' <$>
                   (o .:? "extraStatements" .!= mempty) <*>
                     (o .:? "encryptionConfig")
                     <*> (o .:? "createStatement"))

instance ToJSON CreateDatabaseRequest where
        toJSON CreateDatabaseRequest'{..}
          = object
              (catMaybes
                 [("extraStatements" .=) <$> _cdrExtraStatements,
                  ("encryptionConfig" .=) <$> _cdrEncryptionConfig,
                  ("createStatement" .=) <$> _cdrCreateStatement])

-- | The request for ExecuteSql and ExecuteStreamingSql.
--
-- /See:/ 'executeSQLRequest' smart constructor.
data ExecuteSQLRequest =
  ExecuteSQLRequest'
    { _esqlrParamTypes :: !(Maybe ExecuteSQLRequestParamTypes)
    , _esqlrQueryOptions :: !(Maybe QueryOptions)
    , _esqlrResumeToken :: !(Maybe Bytes)
    , _esqlrSeqno :: !(Maybe (Textual Int64))
    , _esqlrParams :: !(Maybe ExecuteSQLRequestParams)
    , _esqlrTransaction :: !(Maybe TransactionSelector)
    , _esqlrSQL :: !(Maybe Text)
    , _esqlrPartitionToken :: !(Maybe Bytes)
    , _esqlrQueryMode :: !(Maybe ExecuteSQLRequestQueryMode)
    , _esqlrRequestOptions :: !(Maybe RequestOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecuteSQLRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esqlrParamTypes'
--
-- * 'esqlrQueryOptions'
--
-- * 'esqlrResumeToken'
--
-- * 'esqlrSeqno'
--
-- * 'esqlrParams'
--
-- * 'esqlrTransaction'
--
-- * 'esqlrSQL'
--
-- * 'esqlrPartitionToken'
--
-- * 'esqlrQueryMode'
--
-- * 'esqlrRequestOptions'
executeSQLRequest
    :: ExecuteSQLRequest
executeSQLRequest =
  ExecuteSQLRequest'
    { _esqlrParamTypes = Nothing
    , _esqlrQueryOptions = Nothing
    , _esqlrResumeToken = Nothing
    , _esqlrSeqno = Nothing
    , _esqlrParams = Nothing
    , _esqlrTransaction = Nothing
    , _esqlrSQL = Nothing
    , _esqlrPartitionToken = Nothing
    , _esqlrQueryMode = Nothing
    , _esqlrRequestOptions = Nothing
    }


-- | It is not always possible for Cloud Spanner to infer the right SQL type
-- from a JSON value. For example, values of type \`BYTES\` and values of
-- type \`STRING\` both appear in params as JSON strings. In these cases,
-- \`param_types\` can be used to specify the exact SQL type for some or
-- all of the SQL statement parameters. See the definition of Type for more
-- information about SQL types.
esqlrParamTypes :: Lens' ExecuteSQLRequest (Maybe ExecuteSQLRequestParamTypes)
esqlrParamTypes
  = lens _esqlrParamTypes
      (\ s a -> s{_esqlrParamTypes = a})

-- | Query optimizer configuration to use for the given query.
esqlrQueryOptions :: Lens' ExecuteSQLRequest (Maybe QueryOptions)
esqlrQueryOptions
  = lens _esqlrQueryOptions
      (\ s a -> s{_esqlrQueryOptions = a})

-- | If this request is resuming a previously interrupted SQL statement
-- execution, \`resume_token\` should be copied from the last
-- PartialResultSet yielded before the interruption. Doing this enables the
-- new SQL statement execution to resume where the last one left off. The
-- rest of the request parameters must exactly match the request that
-- yielded this token.
esqlrResumeToken :: Lens' ExecuteSQLRequest (Maybe ByteString)
esqlrResumeToken
  = lens _esqlrResumeToken
      (\ s a -> s{_esqlrResumeToken = a})
      . mapping _Bytes

-- | A per-transaction sequence number used to identify this request. This
-- field makes each request idempotent such that if the request is received
-- multiple times, at most one will succeed. The sequence number must be
-- monotonically increasing within the transaction. If a request arrives
-- for the first time with an out-of-order sequence number, the transaction
-- may be aborted. Replays of previously handled requests will yield the
-- same response as the first execution. Required for DML statements.
-- Ignored for queries.
esqlrSeqno :: Lens' ExecuteSQLRequest (Maybe Int64)
esqlrSeqno
  = lens _esqlrSeqno (\ s a -> s{_esqlrSeqno = a}) .
      mapping _Coerce

-- | Parameter names and values that bind to placeholders in the SQL string.
-- A parameter placeholder consists of the \`\'\` character followed by the
-- parameter name (for example, \`\'firstName\`). Parameter names must
-- conform to the naming requirements of identifiers as specified at
-- https:\/\/cloud.google.com\/spanner\/docs\/lexical#identifiers.
-- Parameters can appear anywhere that a literal value is expected. The
-- same parameter name can be used more than once, for example: \`\"WHERE
-- id > \'msg_id AND id \< \'msg_id + 100\"\` It is an error to execute a
-- SQL statement with unbound parameters.
esqlrParams :: Lens' ExecuteSQLRequest (Maybe ExecuteSQLRequestParams)
esqlrParams
  = lens _esqlrParams (\ s a -> s{_esqlrParams = a})

-- | The transaction to use. For queries, if none is provided, the default is
-- a temporary read-only transaction with strong concurrency. Standard DML
-- statements require a read-write transaction. To protect against replays,
-- single-use transactions are not supported. The caller must either supply
-- an existing transaction ID or begin a new transaction. Partitioned DML
-- requires an existing Partitioned DML transaction ID.
esqlrTransaction :: Lens' ExecuteSQLRequest (Maybe TransactionSelector)
esqlrTransaction
  = lens _esqlrTransaction
      (\ s a -> s{_esqlrTransaction = a})

-- | Required. The SQL string.
esqlrSQL :: Lens' ExecuteSQLRequest (Maybe Text)
esqlrSQL = lens _esqlrSQL (\ s a -> s{_esqlrSQL = a})

-- | If present, results will be restricted to the specified partition
-- previously created using PartitionQuery(). There must be an exact match
-- for the values of fields common to this message and the
-- PartitionQueryRequest message used to create this partition_token.
esqlrPartitionToken :: Lens' ExecuteSQLRequest (Maybe ByteString)
esqlrPartitionToken
  = lens _esqlrPartitionToken
      (\ s a -> s{_esqlrPartitionToken = a})
      . mapping _Bytes

-- | Used to control the amount of debugging information returned in
-- ResultSetStats. If partition_token is set, query_mode can only be set to
-- QueryMode.NORMAL.
esqlrQueryMode :: Lens' ExecuteSQLRequest (Maybe ExecuteSQLRequestQueryMode)
esqlrQueryMode
  = lens _esqlrQueryMode
      (\ s a -> s{_esqlrQueryMode = a})

-- | Common options for this request.
esqlrRequestOptions :: Lens' ExecuteSQLRequest (Maybe RequestOptions)
esqlrRequestOptions
  = lens _esqlrRequestOptions
      (\ s a -> s{_esqlrRequestOptions = a})

instance FromJSON ExecuteSQLRequest where
        parseJSON
          = withObject "ExecuteSQLRequest"
              (\ o ->
                 ExecuteSQLRequest' <$>
                   (o .:? "paramTypes") <*> (o .:? "queryOptions") <*>
                     (o .:? "resumeToken")
                     <*> (o .:? "seqno")
                     <*> (o .:? "params")
                     <*> (o .:? "transaction")
                     <*> (o .:? "sql")
                     <*> (o .:? "partitionToken")
                     <*> (o .:? "queryMode")
                     <*> (o .:? "requestOptions"))

instance ToJSON ExecuteSQLRequest where
        toJSON ExecuteSQLRequest'{..}
          = object
              (catMaybes
                 [("paramTypes" .=) <$> _esqlrParamTypes,
                  ("queryOptions" .=) <$> _esqlrQueryOptions,
                  ("resumeToken" .=) <$> _esqlrResumeToken,
                  ("seqno" .=) <$> _esqlrSeqno,
                  ("params" .=) <$> _esqlrParams,
                  ("transaction" .=) <$> _esqlrTransaction,
                  ("sql" .=) <$> _esqlrSQL,
                  ("partitionToken" .=) <$> _esqlrPartitionToken,
                  ("queryMode" .=) <$> _esqlrQueryMode,
                  ("requestOptions" .=) <$> _esqlrRequestOptions])

-- | The request for Commit.
--
-- /See:/ 'commitRequest' smart constructor.
data CommitRequest =
  CommitRequest'
    { _crReturnCommitStats :: !(Maybe Bool)
    , _crMutations :: !(Maybe [Mutation])
    , _crTransactionId :: !(Maybe Bytes)
    , _crSingleUseTransaction :: !(Maybe TransactionOptions)
    , _crRequestOptions :: !(Maybe RequestOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommitRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crReturnCommitStats'
--
-- * 'crMutations'
--
-- * 'crTransactionId'
--
-- * 'crSingleUseTransaction'
--
-- * 'crRequestOptions'
commitRequest
    :: CommitRequest
commitRequest =
  CommitRequest'
    { _crReturnCommitStats = Nothing
    , _crMutations = Nothing
    , _crTransactionId = Nothing
    , _crSingleUseTransaction = Nothing
    , _crRequestOptions = Nothing
    }


-- | If \`true\`, then statistics related to the transaction will be included
-- in the CommitResponse. Default value is \`false\`.
crReturnCommitStats :: Lens' CommitRequest (Maybe Bool)
crReturnCommitStats
  = lens _crReturnCommitStats
      (\ s a -> s{_crReturnCommitStats = a})

-- | The mutations to be executed when this transaction commits. All
-- mutations are applied atomically, in the order they appear in this list.
crMutations :: Lens' CommitRequest [Mutation]
crMutations
  = lens _crMutations (\ s a -> s{_crMutations = a}) .
      _Default
      . _Coerce

-- | Commit a previously-started transaction.
crTransactionId :: Lens' CommitRequest (Maybe ByteString)
crTransactionId
  = lens _crTransactionId
      (\ s a -> s{_crTransactionId = a})
      . mapping _Bytes

-- | Execute mutations in a temporary transaction. Note that unlike commit of
-- a previously-started transaction, commit with a temporary transaction is
-- non-idempotent. That is, if the \`CommitRequest\` is sent to Cloud
-- Spanner more than once (for instance, due to retries in the application,
-- or in the transport library), it is possible that the mutations are
-- executed more than once. If this is undesirable, use BeginTransaction
-- and Commit instead.
crSingleUseTransaction :: Lens' CommitRequest (Maybe TransactionOptions)
crSingleUseTransaction
  = lens _crSingleUseTransaction
      (\ s a -> s{_crSingleUseTransaction = a})

-- | Common options for this request.
crRequestOptions :: Lens' CommitRequest (Maybe RequestOptions)
crRequestOptions
  = lens _crRequestOptions
      (\ s a -> s{_crRequestOptions = a})

instance FromJSON CommitRequest where
        parseJSON
          = withObject "CommitRequest"
              (\ o ->
                 CommitRequest' <$>
                   (o .:? "returnCommitStats") <*>
                     (o .:? "mutations" .!= mempty)
                     <*> (o .:? "transactionId")
                     <*> (o .:? "singleUseTransaction")
                     <*> (o .:? "requestOptions"))

instance ToJSON CommitRequest where
        toJSON CommitRequest'{..}
          = object
              (catMaybes
                 [("returnCommitStats" .=) <$> _crReturnCommitStats,
                  ("mutations" .=) <$> _crMutations,
                  ("transactionId" .=) <$> _crTransactionId,
                  ("singleUseTransaction" .=) <$>
                    _crSingleUseTransaction,
                  ("requestOptions" .=) <$> _crRequestOptions])

-- | \`Type\` indicates the type of a Cloud Spanner value, as might be stored
-- in a table cell or returned from an SQL query.
--
-- /See:/ 'type'' smart constructor.
data Type =
  Type'
    { _tArrayElementType :: !(Maybe Type)
    , _tStructType :: !(Maybe StructType)
    , _tCode :: !(Maybe TypeCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Type' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tArrayElementType'
--
-- * 'tStructType'
--
-- * 'tCode'
type'
    :: Type
type' =
  Type' {_tArrayElementType = Nothing, _tStructType = Nothing, _tCode = Nothing}


-- | If code == ARRAY, then \`array_element_type\` is the type of the array
-- elements.
tArrayElementType :: Lens' Type (Maybe Type)
tArrayElementType
  = lens _tArrayElementType
      (\ s a -> s{_tArrayElementType = a})

-- | If code == STRUCT, then \`struct_type\` provides type information for
-- the struct\'s fields.
tStructType :: Lens' Type (Maybe StructType)
tStructType
  = lens _tStructType (\ s a -> s{_tStructType = a})

-- | Required. The TypeCode for this type.
tCode :: Lens' Type (Maybe TypeCode)
tCode = lens _tCode (\ s a -> s{_tCode = a})

instance FromJSON Type where
        parseJSON
          = withObject "Type"
              (\ o ->
                 Type' <$>
                   (o .:? "arrayElementType") <*> (o .:? "structType")
                     <*> (o .:? "code"))

instance ToJSON Type where
        toJSON Type'{..}
          = object
              (catMaybes
                 [("arrayElementType" .=) <$> _tArrayElementType,
                  ("structType" .=) <$> _tStructType,
                  ("code" .=) <$> _tCode])

-- | Metadata type for the operation returned by CreateInstance.
--
-- /See:/ 'createInstanceMetadata' smart constructor.
data CreateInstanceMetadata =
  CreateInstanceMetadata'
    { _cimStartTime :: !(Maybe DateTime')
    , _cimCancelTime :: !(Maybe DateTime')
    , _cimEndTime :: !(Maybe DateTime')
    , _cimInstance :: !(Maybe Instance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateInstanceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cimStartTime'
--
-- * 'cimCancelTime'
--
-- * 'cimEndTime'
--
-- * 'cimInstance'
createInstanceMetadata
    :: CreateInstanceMetadata
createInstanceMetadata =
  CreateInstanceMetadata'
    { _cimStartTime = Nothing
    , _cimCancelTime = Nothing
    , _cimEndTime = Nothing
    , _cimInstance = Nothing
    }


-- | The time at which the CreateInstance request was received.
cimStartTime :: Lens' CreateInstanceMetadata (Maybe UTCTime)
cimStartTime
  = lens _cimStartTime (\ s a -> s{_cimStartTime = a})
      . mapping _DateTime

-- | The time at which this operation was cancelled. If set, this operation
-- is in the process of undoing itself (which is guaranteed to succeed) and
-- cannot be cancelled again.
cimCancelTime :: Lens' CreateInstanceMetadata (Maybe UTCTime)
cimCancelTime
  = lens _cimCancelTime
      (\ s a -> s{_cimCancelTime = a})
      . mapping _DateTime

-- | The time at which this operation failed or was completed successfully.
cimEndTime :: Lens' CreateInstanceMetadata (Maybe UTCTime)
cimEndTime
  = lens _cimEndTime (\ s a -> s{_cimEndTime = a}) .
      mapping _DateTime

-- | The instance being created.
cimInstance :: Lens' CreateInstanceMetadata (Maybe Instance)
cimInstance
  = lens _cimInstance (\ s a -> s{_cimInstance = a})

instance FromJSON CreateInstanceMetadata where
        parseJSON
          = withObject "CreateInstanceMetadata"
              (\ o ->
                 CreateInstanceMetadata' <$>
                   (o .:? "startTime") <*> (o .:? "cancelTime") <*>
                     (o .:? "endTime")
                     <*> (o .:? "instance"))

instance ToJSON CreateInstanceMetadata where
        toJSON CreateInstanceMetadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _cimStartTime,
                  ("cancelTime" .=) <$> _cimCancelTime,
                  ("endTime" .=) <$> _cimEndTime,
                  ("instance" .=) <$> _cimInstance])

-- | KeyRange represents a range of rows in a table or index. A range has a
-- start key and an end key. These keys can be open or closed, indicating
-- if the range includes rows with that key. Keys are represented by lists,
-- where the ith value in the list corresponds to the ith component of the
-- table or index primary key. Individual values are encoded as described
-- here. For example, consider the following table definition: CREATE TABLE
-- UserEvents ( UserName STRING(MAX), EventDate STRING(10) ) PRIMARY
-- KEY(UserName, EventDate); The following keys name rows in this table:
-- \"Bob\", \"2014-09-23\" Since the \`UserEvents\` table\'s \`PRIMARY
-- KEY\` clause names two columns, each \`UserEvents\` key has two
-- elements; the first is the \`UserName\`, and the second is the
-- \`EventDate\`. Key ranges with multiple components are interpreted
-- lexicographically by component using the table or index key\'s declared
-- sort order. For example, the following range returns all events for user
-- \`\"Bob\"\` that occurred in the year 2015: \"start_closed\": [\"Bob\",
-- \"2015-01-01\"] \"end_closed\": [\"Bob\", \"2015-12-31\"] Start and end
-- keys can omit trailing key components. This affects the inclusion and
-- exclusion of rows that exactly match the provided key components: if the
-- key is closed, then rows that exactly match the provided components are
-- included; if the key is open, then rows that exactly match are not
-- included. For example, the following range includes all events for
-- \`\"Bob\"\` that occurred during and after the year 2000:
-- \"start_closed\": [\"Bob\", \"2000-01-01\"] \"end_closed\": [\"Bob\"]
-- The next example retrieves all events for \`\"Bob\"\`: \"start_closed\":
-- [\"Bob\"] \"end_closed\": [\"Bob\"] To retrieve events before the year
-- 2000: \"start_closed\": [\"Bob\"] \"end_open\": [\"Bob\",
-- \"2000-01-01\"] The following range includes all rows in the table:
-- \"start_closed\": [] \"end_closed\": [] This range returns all users
-- whose \`UserName\` begins with any character from A to C:
-- \"start_closed\": [\"A\"] \"end_open\": [\"D\"] This range returns all
-- users whose \`UserName\` begins with B: \"start_closed\": [\"B\"]
-- \"end_open\": [\"C\"] Key ranges honor column sort order. For example,
-- suppose a table is defined as follows: CREATE TABLE
-- DescendingSortedTable { Key INT64, ... ) PRIMARY KEY(Key DESC); The
-- following range retrieves all rows with key values between 1 and 100
-- inclusive: \"start_closed\": [\"100\"] \"end_closed\": [\"1\"] Note that
-- 100 is passed as the start, and 1 is passed as the end, because \`Key\`
-- is a descending column in the schema.
--
-- /See:/ 'keyRange' smart constructor.
data KeyRange =
  KeyRange'
    { _krStartClosed :: !(Maybe [JSONValue])
    , _krEndOpen :: !(Maybe [JSONValue])
    , _krStartOpen :: !(Maybe [JSONValue])
    , _krEndClosed :: !(Maybe [JSONValue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'krStartClosed'
--
-- * 'krEndOpen'
--
-- * 'krStartOpen'
--
-- * 'krEndClosed'
keyRange
    :: KeyRange
keyRange =
  KeyRange'
    { _krStartClosed = Nothing
    , _krEndOpen = Nothing
    , _krStartOpen = Nothing
    , _krEndClosed = Nothing
    }


-- | If the start is closed, then the range includes all rows whose first
-- \`len(start_closed)\` key columns exactly match \`start_closed\`.
krStartClosed :: Lens' KeyRange [JSONValue]
krStartClosed
  = lens _krStartClosed
      (\ s a -> s{_krStartClosed = a})
      . _Default
      . _Coerce

-- | If the end is open, then the range excludes rows whose first
-- \`len(end_open)\` key columns exactly match \`end_open\`.
krEndOpen :: Lens' KeyRange [JSONValue]
krEndOpen
  = lens _krEndOpen (\ s a -> s{_krEndOpen = a}) .
      _Default
      . _Coerce

-- | If the start is open, then the range excludes rows whose first
-- \`len(start_open)\` key columns exactly match \`start_open\`.
krStartOpen :: Lens' KeyRange [JSONValue]
krStartOpen
  = lens _krStartOpen (\ s a -> s{_krStartOpen = a}) .
      _Default
      . _Coerce

-- | If the end is closed, then the range includes all rows whose first
-- \`len(end_closed)\` key columns exactly match \`end_closed\`.
krEndClosed :: Lens' KeyRange [JSONValue]
krEndClosed
  = lens _krEndClosed (\ s a -> s{_krEndClosed = a}) .
      _Default
      . _Coerce

instance FromJSON KeyRange where
        parseJSON
          = withObject "KeyRange"
              (\ o ->
                 KeyRange' <$>
                   (o .:? "startClosed" .!= mempty) <*>
                     (o .:? "endOpen" .!= mempty)
                     <*> (o .:? "startOpen" .!= mempty)
                     <*> (o .:? "endClosed" .!= mempty))

instance ToJSON KeyRange where
        toJSON KeyRange'{..}
          = object
              (catMaybes
                 [("startClosed" .=) <$> _krStartClosed,
                  ("endOpen" .=) <$> _krEndOpen,
                  ("startOpen" .=) <$> _krStartOpen,
                  ("endClosed" .=) <$> _krEndClosed])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | A possible configuration for a Cloud Spanner instance. Configurations
-- define the geographic placement of nodes and their replication.
--
-- /See:/ 'instanceConfig' smart constructor.
data InstanceConfig =
  InstanceConfig'
    { _icLeaderOptions :: !(Maybe [Text])
    , _icName :: !(Maybe Text)
    , _icDisplayName :: !(Maybe Text)
    , _icReplicas :: !(Maybe [ReplicaInfo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icLeaderOptions'
--
-- * 'icName'
--
-- * 'icDisplayName'
--
-- * 'icReplicas'
instanceConfig
    :: InstanceConfig
instanceConfig =
  InstanceConfig'
    { _icLeaderOptions = Nothing
    , _icName = Nothing
    , _icDisplayName = Nothing
    , _icReplicas = Nothing
    }


-- | Allowed values of the “default_leader” schema option for databases in
-- instances that use this instance configuration.
icLeaderOptions :: Lens' InstanceConfig [Text]
icLeaderOptions
  = lens _icLeaderOptions
      (\ s a -> s{_icLeaderOptions = a})
      . _Default
      . _Coerce

-- | A unique identifier for the instance configuration. Values are of the
-- form \`projects\/\/instanceConfigs\/a-z*\`
icName :: Lens' InstanceConfig (Maybe Text)
icName = lens _icName (\ s a -> s{_icName = a})

-- | The name of this instance configuration as it appears in UIs.
icDisplayName :: Lens' InstanceConfig (Maybe Text)
icDisplayName
  = lens _icDisplayName
      (\ s a -> s{_icDisplayName = a})

-- | The geographic placement of nodes in this instance configuration and
-- their replication properties.
icReplicas :: Lens' InstanceConfig [ReplicaInfo]
icReplicas
  = lens _icReplicas (\ s a -> s{_icReplicas = a}) .
      _Default
      . _Coerce

instance FromJSON InstanceConfig where
        parseJSON
          = withObject "InstanceConfig"
              (\ o ->
                 InstanceConfig' <$>
                   (o .:? "leaderOptions" .!= mempty) <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "replicas" .!= mempty))

instance ToJSON InstanceConfig where
        toJSON InstanceConfig'{..}
          = object
              (catMaybes
                 [("leaderOptions" .=) <$> _icLeaderOptions,
                  ("name" .=) <$> _icName,
                  ("displayName" .=) <$> _icDisplayName,
                  ("replicas" .=) <$> _icReplicas])

-- | Results from Read or ExecuteSql.
--
-- /See:/ 'resultSet' smart constructor.
data ResultSet =
  ResultSet'
    { _rsStats :: !(Maybe ResultSetStats)
    , _rsRows :: !(Maybe [[JSONValue]])
    , _rsMetadata :: !(Maybe ResultSetMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsStats'
--
-- * 'rsRows'
--
-- * 'rsMetadata'
resultSet
    :: ResultSet
resultSet =
  ResultSet' {_rsStats = Nothing, _rsRows = Nothing, _rsMetadata = Nothing}


-- | Query plan and execution statistics for the SQL statement that produced
-- this result set. These can be requested by setting
-- ExecuteSqlRequest.query_mode. DML statements always produce stats
-- containing the number of rows modified, unless executed using the
-- ExecuteSqlRequest.QueryMode.PLAN ExecuteSqlRequest.query_mode. Other
-- fields may or may not be populated, based on the
-- ExecuteSqlRequest.query_mode.
rsStats :: Lens' ResultSet (Maybe ResultSetStats)
rsStats = lens _rsStats (\ s a -> s{_rsStats = a})

-- | Each element in \`rows\` is a row whose format is defined by
-- metadata.row_type. The ith element in each row matches the ith field in
-- metadata.row_type. Elements are encoded based on type as described here.
rsRows :: Lens' ResultSet [[JSONValue]]
rsRows
  = lens _rsRows (\ s a -> s{_rsRows = a}) . _Default .
      _Coerce

-- | Metadata about the result set, such as row type information.
rsMetadata :: Lens' ResultSet (Maybe ResultSetMetadata)
rsMetadata
  = lens _rsMetadata (\ s a -> s{_rsMetadata = a})

instance FromJSON ResultSet where
        parseJSON
          = withObject "ResultSet"
              (\ o ->
                 ResultSet' <$>
                   (o .:? "stats") <*> (o .:? "rows" .!= mempty) <*>
                     (o .:? "metadata"))

instance ToJSON ResultSet where
        toJSON ResultSet'{..}
          = object
              (catMaybes
                 [("stats" .=) <$> _rsStats, ("rows" .=) <$> _rsRows,
                  ("metadata" .=) <$> _rsMetadata])

-- | The labels for the session. * Label keys must be between 1 and 63
-- characters long and must conform to the following regular expression:
-- \`[a-z]([-a-z0-9]*[a-z0-9])?\`. * Label values must be between 0 and 63
-- characters long and must conform to the regular expression
-- \`([a-z]([-a-z0-9]*[a-z0-9])?)?\`. * No more than 64 labels can be
-- associated with a given session. See https:\/\/goo.gl\/xmQnxf for more
-- information on and examples of labels.
--
-- /See:/ 'sessionLabels' smart constructor.
newtype SessionLabels =
  SessionLabels'
    { _slAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SessionLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slAddtional'
sessionLabels
    :: HashMap Text Text -- ^ 'slAddtional'
    -> SessionLabels
sessionLabels pSlAddtional_ =
  SessionLabels' {_slAddtional = _Coerce # pSlAddtional_}


slAddtional :: Lens' SessionLabels (HashMap Text Text)
slAddtional
  = lens _slAddtional (\ s a -> s{_slAddtional = a}) .
      _Coerce

instance FromJSON SessionLabels where
        parseJSON
          = withObject "SessionLabels"
              (\ o -> SessionLabels' <$> (parseJSONObject o))

instance ToJSON SessionLabels where
        toJSON = toJSON . _slAddtional

-- | The response for ListInstances.
--
-- /See:/ 'listInstancesResponse' smart constructor.
data ListInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirUnreachable :: !(Maybe [Text])
    , _lirInstances :: !(Maybe [Instance])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirNextPageToken'
--
-- * 'lirUnreachable'
--
-- * 'lirInstances'
listInstancesResponse
    :: ListInstancesResponse
listInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken = Nothing
    , _lirUnreachable = Nothing
    , _lirInstances = Nothing
    }


-- | \`next_page_token\` can be sent in a subsequent ListInstances call to
-- fetch more of the matching instances.
lirNextPageToken :: Lens' ListInstancesResponse (Maybe Text)
lirNextPageToken
  = lens _lirNextPageToken
      (\ s a -> s{_lirNextPageToken = a})

-- | The list of unreachable instances. It includes the names of instances
-- whose metadata could not be retrieved within instance_deadline.
lirUnreachable :: Lens' ListInstancesResponse [Text]
lirUnreachable
  = lens _lirUnreachable
      (\ s a -> s{_lirUnreachable = a})
      . _Default
      . _Coerce

-- | The list of requested instances.
lirInstances :: Lens' ListInstancesResponse [Instance]
lirInstances
  = lens _lirInstances (\ s a -> s{_lirInstances = a})
      . _Default
      . _Coerce

instance FromJSON ListInstancesResponse where
        parseJSON
          = withObject "ListInstancesResponse"
              (\ o ->
                 ListInstancesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "instances" .!= mempty))

instance ToJSON ListInstancesResponse where
        toJSON ListInstancesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lirNextPageToken,
                  ("unreachable" .=) <$> _lirUnreachable,
                  ("instances" .=) <$> _lirInstances])

-- | The request for Read and StreamingRead.
--
-- /See:/ 'readRequest' smart constructor.
data ReadRequest =
  ReadRequest'
    { _rrResumeToken :: !(Maybe Bytes)
    , _rrKeySet :: !(Maybe KeySet)
    , _rrTransaction :: !(Maybe TransactionSelector)
    , _rrColumns :: !(Maybe [Text])
    , _rrLimit :: !(Maybe (Textual Int64))
    , _rrIndex :: !(Maybe Text)
    , _rrTable :: !(Maybe Text)
    , _rrPartitionToken :: !(Maybe Bytes)
    , _rrRequestOptions :: !(Maybe RequestOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReadRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrResumeToken'
--
-- * 'rrKeySet'
--
-- * 'rrTransaction'
--
-- * 'rrColumns'
--
-- * 'rrLimit'
--
-- * 'rrIndex'
--
-- * 'rrTable'
--
-- * 'rrPartitionToken'
--
-- * 'rrRequestOptions'
readRequest
    :: ReadRequest
readRequest =
  ReadRequest'
    { _rrResumeToken = Nothing
    , _rrKeySet = Nothing
    , _rrTransaction = Nothing
    , _rrColumns = Nothing
    , _rrLimit = Nothing
    , _rrIndex = Nothing
    , _rrTable = Nothing
    , _rrPartitionToken = Nothing
    , _rrRequestOptions = Nothing
    }


-- | If this request is resuming a previously interrupted read,
-- \`resume_token\` should be copied from the last PartialResultSet yielded
-- before the interruption. Doing this enables the new read to resume where
-- the last read left off. The rest of the request parameters must exactly
-- match the request that yielded this token.
rrResumeToken :: Lens' ReadRequest (Maybe ByteString)
rrResumeToken
  = lens _rrResumeToken
      (\ s a -> s{_rrResumeToken = a})
      . mapping _Bytes

-- | Required. \`key_set\` identifies the rows to be yielded. \`key_set\`
-- names the primary keys of the rows in table to be yielded, unless index
-- is present. If index is present, then key_set instead names index keys
-- in index. If the partition_token field is empty, rows are yielded in
-- table primary key order (if index is empty) or index key order (if index
-- is non-empty). If the partition_token field is not empty, rows will be
-- yielded in an unspecified order. It is not an error for the \`key_set\`
-- to name rows that do not exist in the database. Read yields nothing for
-- nonexistent rows.
rrKeySet :: Lens' ReadRequest (Maybe KeySet)
rrKeySet = lens _rrKeySet (\ s a -> s{_rrKeySet = a})

-- | The transaction to use. If none is provided, the default is a temporary
-- read-only transaction with strong concurrency.
rrTransaction :: Lens' ReadRequest (Maybe TransactionSelector)
rrTransaction
  = lens _rrTransaction
      (\ s a -> s{_rrTransaction = a})

-- | Required. The columns of table to be returned for each row matching this
-- request.
rrColumns :: Lens' ReadRequest [Text]
rrColumns
  = lens _rrColumns (\ s a -> s{_rrColumns = a}) .
      _Default
      . _Coerce

-- | If greater than zero, only the first \`limit\` rows are yielded. If
-- \`limit\` is zero, the default is no limit. A limit cannot be specified
-- if \`partition_token\` is set.
rrLimit :: Lens' ReadRequest (Maybe Int64)
rrLimit
  = lens _rrLimit (\ s a -> s{_rrLimit = a}) .
      mapping _Coerce

-- | If non-empty, the name of an index on table. This index is used instead
-- of the table primary key when interpreting key_set and sorting result
-- rows. See key_set for further information.
rrIndex :: Lens' ReadRequest (Maybe Text)
rrIndex = lens _rrIndex (\ s a -> s{_rrIndex = a})

-- | Required. The name of the table in the database to be read.
rrTable :: Lens' ReadRequest (Maybe Text)
rrTable = lens _rrTable (\ s a -> s{_rrTable = a})

-- | If present, results will be restricted to the specified partition
-- previously created using PartitionRead(). There must be an exact match
-- for the values of fields common to this message and the
-- PartitionReadRequest message used to create this partition_token.
rrPartitionToken :: Lens' ReadRequest (Maybe ByteString)
rrPartitionToken
  = lens _rrPartitionToken
      (\ s a -> s{_rrPartitionToken = a})
      . mapping _Bytes

-- | Common options for this request.
rrRequestOptions :: Lens' ReadRequest (Maybe RequestOptions)
rrRequestOptions
  = lens _rrRequestOptions
      (\ s a -> s{_rrRequestOptions = a})

instance FromJSON ReadRequest where
        parseJSON
          = withObject "ReadRequest"
              (\ o ->
                 ReadRequest' <$>
                   (o .:? "resumeToken") <*> (o .:? "keySet") <*>
                     (o .:? "transaction")
                     <*> (o .:? "columns" .!= mempty)
                     <*> (o .:? "limit")
                     <*> (o .:? "index")
                     <*> (o .:? "table")
                     <*> (o .:? "partitionToken")
                     <*> (o .:? "requestOptions"))

instance ToJSON ReadRequest where
        toJSON ReadRequest'{..}
          = object
              (catMaybes
                 [("resumeToken" .=) <$> _rrResumeToken,
                  ("keySet" .=) <$> _rrKeySet,
                  ("transaction" .=) <$> _rrTransaction,
                  ("columns" .=) <$> _rrColumns,
                  ("limit" .=) <$> _rrLimit, ("index" .=) <$> _rrIndex,
                  ("table" .=) <$> _rrTable,
                  ("partitionToken" .=) <$> _rrPartitionToken,
                  ("requestOptions" .=) <$> _rrRequestOptions])

-- | A message representing a (sparse) collection of hot keys for specific
-- key buckets.
--
-- /See:/ 'indexedHotKey' smart constructor.
newtype IndexedHotKey =
  IndexedHotKey'
    { _ihkSparseHotKeys :: Maybe IndexedHotKeySparseHotKeys
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexedHotKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ihkSparseHotKeys'
indexedHotKey
    :: IndexedHotKey
indexedHotKey = IndexedHotKey' {_ihkSparseHotKeys = Nothing}


-- | A (sparse) mapping from key bucket index to the index of the specific
-- hot row key for that key bucket. The index of the hot row key can be
-- translated to the actual row key via the
-- ScanData.VisualizationData.indexed_keys repeated field.
ihkSparseHotKeys :: Lens' IndexedHotKey (Maybe IndexedHotKeySparseHotKeys)
ihkSparseHotKeys
  = lens _ihkSparseHotKeys
      (\ s a -> s{_ihkSparseHotKeys = a})

instance FromJSON IndexedHotKey where
        parseJSON
          = withObject "IndexedHotKey"
              (\ o -> IndexedHotKey' <$> (o .:? "sparseHotKeys"))

instance ToJSON IndexedHotKey where
        toJSON IndexedHotKey'{..}
          = object
              (catMaybes
                 [("sparseHotKeys" .=) <$> _ihkSparseHotKeys])

--
-- /See:/ 'replicaInfo' smart constructor.
data ReplicaInfo =
  ReplicaInfo'
    { _riDefaultLeaderLocation :: !(Maybe Bool)
    , _riLocation :: !(Maybe Text)
    , _riType :: !(Maybe ReplicaInfoType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicaInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riDefaultLeaderLocation'
--
-- * 'riLocation'
--
-- * 'riType'
replicaInfo
    :: ReplicaInfo
replicaInfo =
  ReplicaInfo'
    { _riDefaultLeaderLocation = Nothing
    , _riLocation = Nothing
    , _riType = Nothing
    }


-- | If true, this location is designated as the default leader location
-- where leader replicas are placed. See the [region types
-- documentation](https:\/\/cloud.google.com\/spanner\/docs\/instances#region_types)
-- for more details.
riDefaultLeaderLocation :: Lens' ReplicaInfo (Maybe Bool)
riDefaultLeaderLocation
  = lens _riDefaultLeaderLocation
      (\ s a -> s{_riDefaultLeaderLocation = a})

-- | The location of the serving resources, e.g. \"us-central1\".
riLocation :: Lens' ReplicaInfo (Maybe Text)
riLocation
  = lens _riLocation (\ s a -> s{_riLocation = a})

-- | The type of replica.
riType :: Lens' ReplicaInfo (Maybe ReplicaInfoType)
riType = lens _riType (\ s a -> s{_riType = a})

instance FromJSON ReplicaInfo where
        parseJSON
          = withObject "ReplicaInfo"
              (\ o ->
                 ReplicaInfo' <$>
                   (o .:? "defaultLeaderLocation") <*>
                     (o .:? "location")
                     <*> (o .:? "type"))

instance ToJSON ReplicaInfo where
        toJSON ReplicaInfo'{..}
          = object
              (catMaybes
                 [("defaultLeaderLocation" .=) <$>
                    _riDefaultLeaderLocation,
                  ("location" .=) <$> _riLocation,
                  ("type" .=) <$> _riType])

-- | A session in the Cloud Spanner API.
--
-- /See:/ 'session' smart constructor.
data Session =
  Session'
    { _sApproximateLastUseTime :: !(Maybe DateTime')
    , _sName :: !(Maybe Text)
    , _sLabels :: !(Maybe SessionLabels)
    , _sCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Session' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sApproximateLastUseTime'
--
-- * 'sName'
--
-- * 'sLabels'
--
-- * 'sCreateTime'
session
    :: Session
session =
  Session'
    { _sApproximateLastUseTime = Nothing
    , _sName = Nothing
    , _sLabels = Nothing
    , _sCreateTime = Nothing
    }


-- | Output only. The approximate timestamp when the session is last used. It
-- is typically earlier than the actual last use time.
sApproximateLastUseTime :: Lens' Session (Maybe UTCTime)
sApproximateLastUseTime
  = lens _sApproximateLastUseTime
      (\ s a -> s{_sApproximateLastUseTime = a})
      . mapping _DateTime

-- | Output only. The name of the session. This is always system-assigned.
sName :: Lens' Session (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | The labels for the session. * Label keys must be between 1 and 63
-- characters long and must conform to the following regular expression:
-- \`[a-z]([-a-z0-9]*[a-z0-9])?\`. * Label values must be between 0 and 63
-- characters long and must conform to the regular expression
-- \`([a-z]([-a-z0-9]*[a-z0-9])?)?\`. * No more than 64 labels can be
-- associated with a given session. See https:\/\/goo.gl\/xmQnxf for more
-- information on and examples of labels.
sLabels :: Lens' Session (Maybe SessionLabels)
sLabels = lens _sLabels (\ s a -> s{_sLabels = a})

-- | Output only. The timestamp when the session is created.
sCreateTime :: Lens' Session (Maybe UTCTime)
sCreateTime
  = lens _sCreateTime (\ s a -> s{_sCreateTime = a}) .
      mapping _DateTime

instance FromJSON Session where
        parseJSON
          = withObject "Session"
              (\ o ->
                 Session' <$>
                   (o .:? "approximateLastUseTime") <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "createTime"))

instance ToJSON Session where
        toJSON Session'{..}
          = object
              (catMaybes
                 [("approximateLastUseTime" .=) <$>
                    _sApproximateLastUseTime,
                  ("name" .=) <$> _sName, ("labels" .=) <$> _sLabels,
                  ("createTime" .=) <$> _sCreateTime])

-- | The response for BatchCreateSessions.
--
-- /See:/ 'batchCreateSessionsResponse' smart constructor.
newtype BatchCreateSessionsResponse =
  BatchCreateSessionsResponse'
    { _bcsrSession :: Maybe [Session]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcsrSession'
batchCreateSessionsResponse
    :: BatchCreateSessionsResponse
batchCreateSessionsResponse =
  BatchCreateSessionsResponse' {_bcsrSession = Nothing}


-- | The freshly created sessions.
bcsrSession :: Lens' BatchCreateSessionsResponse [Session]
bcsrSession
  = lens _bcsrSession (\ s a -> s{_bcsrSession = a}) .
      _Default
      . _Coerce

instance FromJSON BatchCreateSessionsResponse where
        parseJSON
          = withObject "BatchCreateSessionsResponse"
              (\ o ->
                 BatchCreateSessionsResponse' <$>
                   (o .:? "session" .!= mempty))

instance ToJSON BatchCreateSessionsResponse where
        toJSON BatchCreateSessionsResponse'{..}
          = object
              (catMaybes [("session" .=) <$> _bcsrSession])

-- | Information about the database restore.
--
-- /See:/ 'restoreInfo' smart constructor.
data RestoreInfo =
  RestoreInfo'
    { _riSourceType :: !(Maybe RestoreInfoSourceType)
    , _riBackupInfo :: !(Maybe BackupInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riSourceType'
--
-- * 'riBackupInfo'
restoreInfo
    :: RestoreInfo
restoreInfo = RestoreInfo' {_riSourceType = Nothing, _riBackupInfo = Nothing}


-- | The type of the restore source.
riSourceType :: Lens' RestoreInfo (Maybe RestoreInfoSourceType)
riSourceType
  = lens _riSourceType (\ s a -> s{_riSourceType = a})

-- | Information about the backup used to restore the database. The backup
-- may no longer exist.
riBackupInfo :: Lens' RestoreInfo (Maybe BackupInfo)
riBackupInfo
  = lens _riBackupInfo (\ s a -> s{_riBackupInfo = a})

instance FromJSON RestoreInfo where
        parseJSON
          = withObject "RestoreInfo"
              (\ o ->
                 RestoreInfo' <$>
                   (o .:? "sourceType") <*> (o .:? "backupInfo"))

instance ToJSON RestoreInfo where
        toJSON RestoreInfo'{..}
          = object
              (catMaybes
                 [("sourceType" .=) <$> _riSourceType,
                  ("backupInfo" .=) <$> _riBackupInfo])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Message type to initiate a read-only transaction.
--
-- /See:/ 'readOnly' smart constructor.
data ReadOnly =
  ReadOnly'
    { _roReadTimestamp :: !(Maybe DateTime')
    , _roExactStaleness :: !(Maybe GDuration)
    , _roMaxStaleness :: !(Maybe GDuration)
    , _roStrong :: !(Maybe Bool)
    , _roMinReadTimestamp :: !(Maybe DateTime')
    , _roReturnReadTimestamp :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReadOnly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'roReadTimestamp'
--
-- * 'roExactStaleness'
--
-- * 'roMaxStaleness'
--
-- * 'roStrong'
--
-- * 'roMinReadTimestamp'
--
-- * 'roReturnReadTimestamp'
readOnly
    :: ReadOnly
readOnly =
  ReadOnly'
    { _roReadTimestamp = Nothing
    , _roExactStaleness = Nothing
    , _roMaxStaleness = Nothing
    , _roStrong = Nothing
    , _roMinReadTimestamp = Nothing
    , _roReturnReadTimestamp = Nothing
    }


-- | Executes all reads at the given timestamp. Unlike other modes, reads at
-- a specific timestamp are repeatable; the same read at the same timestamp
-- always returns the same data. If the timestamp is in the future, the
-- read will block until the specified timestamp, modulo the read\'s
-- deadline. Useful for large scale consistent reads such as mapreduces, or
-- for coordinating many reads against a consistent snapshot of the data. A
-- timestamp in RFC3339 UTC \\\"Zulu\\\" format, accurate to nanoseconds.
-- Example: \`\"2014-10-02T15:01:23.045123456Z\"\`.
roReadTimestamp :: Lens' ReadOnly (Maybe UTCTime)
roReadTimestamp
  = lens _roReadTimestamp
      (\ s a -> s{_roReadTimestamp = a})
      . mapping _DateTime

-- | Executes all reads at a timestamp that is \`exact_staleness\` old. The
-- timestamp is chosen soon after the read is started. Guarantees that all
-- writes that have committed more than the specified number of seconds ago
-- are visible. Because Cloud Spanner chooses the exact timestamp, this
-- mode works even if the client\'s local clock is substantially skewed
-- from Cloud Spanner commit timestamps. Useful for reading at nearby
-- replicas without the distributed timestamp negotiation overhead of
-- \`max_staleness\`.
roExactStaleness :: Lens' ReadOnly (Maybe Scientific)
roExactStaleness
  = lens _roExactStaleness
      (\ s a -> s{_roExactStaleness = a})
      . mapping _GDuration

-- | Read data at a timestamp >= \`NOW - max_staleness\` seconds. Guarantees
-- that all writes that have committed more than the specified number of
-- seconds ago are visible. Because Cloud Spanner chooses the exact
-- timestamp, this mode works even if the client\'s local clock is
-- substantially skewed from Cloud Spanner commit timestamps. Useful for
-- reading the freshest data available at a nearby replica, while bounding
-- the possible staleness if the local replica has fallen behind. Note that
-- this option can only be used in single-use transactions.
roMaxStaleness :: Lens' ReadOnly (Maybe Scientific)
roMaxStaleness
  = lens _roMaxStaleness
      (\ s a -> s{_roMaxStaleness = a})
      . mapping _GDuration

-- | Read at a timestamp where all previously committed transactions are
-- visible.
roStrong :: Lens' ReadOnly (Maybe Bool)
roStrong = lens _roStrong (\ s a -> s{_roStrong = a})

-- | Executes all reads at a timestamp >= \`min_read_timestamp\`. This is
-- useful for requesting fresher data than some previous read, or data that
-- is fresh enough to observe the effects of some previously committed
-- transaction whose timestamp is known. Note that this option can only be
-- used in single-use transactions. A timestamp in RFC3339 UTC \\\"Zulu\\\"
-- format, accurate to nanoseconds. Example:
-- \`\"2014-10-02T15:01:23.045123456Z\"\`.
roMinReadTimestamp :: Lens' ReadOnly (Maybe UTCTime)
roMinReadTimestamp
  = lens _roMinReadTimestamp
      (\ s a -> s{_roMinReadTimestamp = a})
      . mapping _DateTime

-- | If true, the Cloud Spanner-selected read timestamp is included in the
-- Transaction message that describes the transaction.
roReturnReadTimestamp :: Lens' ReadOnly (Maybe Bool)
roReturnReadTimestamp
  = lens _roReturnReadTimestamp
      (\ s a -> s{_roReturnReadTimestamp = a})

instance FromJSON ReadOnly where
        parseJSON
          = withObject "ReadOnly"
              (\ o ->
                 ReadOnly' <$>
                   (o .:? "readTimestamp") <*> (o .:? "exactStaleness")
                     <*> (o .:? "maxStaleness")
                     <*> (o .:? "strong")
                     <*> (o .:? "minReadTimestamp")
                     <*> (o .:? "returnReadTimestamp"))

instance ToJSON ReadOnly where
        toJSON ReadOnly'{..}
          = object
              (catMaybes
                 [("readTimestamp" .=) <$> _roReadTimestamp,
                  ("exactStaleness" .=) <$> _roExactStaleness,
                  ("maxStaleness" .=) <$> _roMaxStaleness,
                  ("strong" .=) <$> _roStrong,
                  ("minReadTimestamp" .=) <$> _roMinReadTimestamp,
                  ("returnReadTimestamp" .=) <$>
                    _roReturnReadTimestamp])

-- | Metadata about a ResultSet or PartialResultSet.
--
-- /See:/ 'resultSetMetadata' smart constructor.
data ResultSetMetadata =
  ResultSetMetadata'
    { _rsmRowType :: !(Maybe StructType)
    , _rsmTransaction :: !(Maybe Transaction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultSetMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsmRowType'
--
-- * 'rsmTransaction'
resultSetMetadata
    :: ResultSetMetadata
resultSetMetadata =
  ResultSetMetadata' {_rsmRowType = Nothing, _rsmTransaction = Nothing}


-- | Indicates the field names and types for the rows in the result set. For
-- example, a SQL query like \`\"SELECT UserId, UserName FROM Users\"\`
-- could return a \`row_type\` value like: \"fields\": [ { \"name\":
-- \"UserId\", \"type\": { \"code\": \"INT64\" } }, { \"name\":
-- \"UserName\", \"type\": { \"code\": \"STRING\" } }, ]
rsmRowType :: Lens' ResultSetMetadata (Maybe StructType)
rsmRowType
  = lens _rsmRowType (\ s a -> s{_rsmRowType = a})

-- | If the read or SQL query began a transaction as a side-effect, the
-- information about the new transaction is yielded here.
rsmTransaction :: Lens' ResultSetMetadata (Maybe Transaction)
rsmTransaction
  = lens _rsmTransaction
      (\ s a -> s{_rsmTransaction = a})

instance FromJSON ResultSetMetadata where
        parseJSON
          = withObject "ResultSetMetadata"
              (\ o ->
                 ResultSetMetadata' <$>
                   (o .:? "rowType") <*> (o .:? "transaction"))

instance ToJSON ResultSetMetadata where
        toJSON ResultSetMetadata'{..}
          = object
              (catMaybes
                 [("rowType" .=) <$> _rsmRowType,
                  ("transaction" .=) <$> _rsmTransaction])

-- | Arguments to delete operations.
--
-- /See:/ 'delete'' smart constructor.
data Delete' =
  Delete''
    { _dKeySet :: !(Maybe KeySet)
    , _dTable :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Delete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dKeySet'
--
-- * 'dTable'
delete'
    :: Delete'
delete' = Delete'' {_dKeySet = Nothing, _dTable = Nothing}


-- | Required. The primary keys of the rows within table to delete. The
-- primary keys must be specified in the order in which they appear in the
-- \`PRIMARY KEY()\` clause of the table\'s equivalent DDL statement (the
-- DDL statement used to create the table). Delete is idempotent. The
-- transaction will succeed even if some or all rows do not exist.
dKeySet :: Lens' Delete' (Maybe KeySet)
dKeySet = lens _dKeySet (\ s a -> s{_dKeySet = a})

-- | Required. The table whose rows will be deleted.
dTable :: Lens' Delete' (Maybe Text)
dTable = lens _dTable (\ s a -> s{_dTable = a})

instance FromJSON Delete' where
        parseJSON
          = withObject "Delete"
              (\ o ->
                 Delete'' <$> (o .:? "keySet") <*> (o .:? "table"))

instance ToJSON Delete' where
        toJSON Delete''{..}
          = object
              (catMaybes
                 [("keySet" .=) <$> _dKeySet,
                  ("table" .=) <$> _dTable])

-- | The request for UpdateInstance.
--
-- /See:/ 'updateInstanceRequest' smart constructor.
data UpdateInstanceRequest =
  UpdateInstanceRequest'
    { _uirFieldMask :: !(Maybe GFieldMask)
    , _uirInstance :: !(Maybe Instance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uirFieldMask'
--
-- * 'uirInstance'
updateInstanceRequest
    :: UpdateInstanceRequest
updateInstanceRequest =
  UpdateInstanceRequest' {_uirFieldMask = Nothing, _uirInstance = Nothing}


-- | Required. A mask specifying which fields in Instance should be updated.
-- The field mask must always be specified; this prevents any future fields
-- in Instance from being erased accidentally by clients that do not know
-- about them.
uirFieldMask :: Lens' UpdateInstanceRequest (Maybe GFieldMask)
uirFieldMask
  = lens _uirFieldMask (\ s a -> s{_uirFieldMask = a})

-- | Required. The instance to update, which must always include the instance
-- name. Otherwise, only fields mentioned in field_mask need be included.
uirInstance :: Lens' UpdateInstanceRequest (Maybe Instance)
uirInstance
  = lens _uirInstance (\ s a -> s{_uirInstance = a})

instance FromJSON UpdateInstanceRequest where
        parseJSON
          = withObject "UpdateInstanceRequest"
              (\ o ->
                 UpdateInstanceRequest' <$>
                   (o .:? "fieldMask") <*> (o .:? "instance"))

instance ToJSON UpdateInstanceRequest where
        toJSON UpdateInstanceRequest'{..}
          = object
              (catMaybes
                 [("fieldMask" .=) <$> _uirFieldMask,
                  ("instance" .=) <$> _uirInstance])

-- | The response for ListBackupOperations.
--
-- /See:/ 'listBackupOperationsResponse' smart constructor.
data ListBackupOperationsResponse =
  ListBackupOperationsResponse'
    { _lborNextPageToken :: !(Maybe Text)
    , _lborOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBackupOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lborNextPageToken'
--
-- * 'lborOperations'
listBackupOperationsResponse
    :: ListBackupOperationsResponse
listBackupOperationsResponse =
  ListBackupOperationsResponse'
    {_lborNextPageToken = Nothing, _lborOperations = Nothing}


-- | \`next_page_token\` can be sent in a subsequent ListBackupOperations
-- call to fetch more of the matching metadata.
lborNextPageToken :: Lens' ListBackupOperationsResponse (Maybe Text)
lborNextPageToken
  = lens _lborNextPageToken
      (\ s a -> s{_lborNextPageToken = a})

-- | The list of matching backup long-running operations. Each operation\'s
-- name will be prefixed by the backup\'s name and the operation\'s
-- metadata will be of type CreateBackupMetadata. Operations returned
-- include those that are pending or have completed\/failed\/canceled
-- within the last 7 days. Operations returned are ordered by
-- \`operation.metadata.value.progress.start_time\` in descending order
-- starting from the most recently started operation.
lborOperations :: Lens' ListBackupOperationsResponse [Operation]
lborOperations
  = lens _lborOperations
      (\ s a -> s{_lborOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListBackupOperationsResponse where
        parseJSON
          = withObject "ListBackupOperationsResponse"
              (\ o ->
                 ListBackupOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListBackupOperationsResponse where
        toJSON ListBackupOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lborNextPageToken,
                  ("operations" .=) <$> _lborOperations])

-- | Aggregated statistics from the execution of the query. Only present when
-- the query is profiled. For example, a query could return the statistics
-- as follows: { \"rows_returned\": \"3\", \"elapsed_time\": \"1.22 secs\",
-- \"cpu_time\": \"1.19 secs\" }
--
-- /See:/ 'resultSetStatsQueryStats' smart constructor.
newtype ResultSetStatsQueryStats =
  ResultSetStatsQueryStats'
    { _rssqsAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultSetStatsQueryStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rssqsAddtional'
resultSetStatsQueryStats
    :: HashMap Text JSONValue -- ^ 'rssqsAddtional'
    -> ResultSetStatsQueryStats
resultSetStatsQueryStats pRssqsAddtional_ =
  ResultSetStatsQueryStats' {_rssqsAddtional = _Coerce # pRssqsAddtional_}


-- | Properties of the object.
rssqsAddtional :: Lens' ResultSetStatsQueryStats (HashMap Text JSONValue)
rssqsAddtional
  = lens _rssqsAddtional
      (\ s a -> s{_rssqsAddtional = a})
      . _Coerce

instance FromJSON ResultSetStatsQueryStats where
        parseJSON
          = withObject "ResultSetStatsQueryStats"
              (\ o ->
                 ResultSetStatsQueryStats' <$> (parseJSONObject o))

instance ToJSON ResultSetStatsQueryStats where
        toJSON = toJSON . _rssqsAddtional

-- | Parameter names and values that bind to placeholders in the DML string.
-- A parameter placeholder consists of the \`\'\` character followed by the
-- parameter name (for example, \`\'firstName\`). Parameter names can
-- contain letters, numbers, and underscores. Parameters can appear
-- anywhere that a literal value is expected. The same parameter name can
-- be used more than once, for example: \`\"WHERE id > \'msg_id AND id \<
-- \'msg_id + 100\"\` It is an error to execute a SQL statement with
-- unbound parameters.
--
-- /See:/ 'statementParams' smart constructor.
newtype StatementParams =
  StatementParams'
    { _spAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatementParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spAddtional'
statementParams
    :: HashMap Text JSONValue -- ^ 'spAddtional'
    -> StatementParams
statementParams pSpAddtional_ =
  StatementParams' {_spAddtional = _Coerce # pSpAddtional_}


-- | Properties of the object.
spAddtional :: Lens' StatementParams (HashMap Text JSONValue)
spAddtional
  = lens _spAddtional (\ s a -> s{_spAddtional = a}) .
      _Coerce

instance FromJSON StatementParams where
        parseJSON
          = withObject "StatementParams"
              (\ o -> StatementParams' <$> (parseJSONObject o))

instance ToJSON StatementParams where
        toJSON = toJSON . _spAddtional

-- | This message is used to select the transaction in which a Read or
-- ExecuteSql call runs. See TransactionOptions for more information about
-- transactions.
--
-- /See:/ 'transactionSelector' smart constructor.
data TransactionSelector =
  TransactionSelector'
    { _tsBegin :: !(Maybe TransactionOptions)
    , _tsId :: !(Maybe Bytes)
    , _tsSingleUse :: !(Maybe TransactionOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransactionSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsBegin'
--
-- * 'tsId'
--
-- * 'tsSingleUse'
transactionSelector
    :: TransactionSelector
transactionSelector =
  TransactionSelector'
    {_tsBegin = Nothing, _tsId = Nothing, _tsSingleUse = Nothing}


-- | Begin a new transaction and execute this read or SQL query in it. The
-- transaction ID of the new transaction is returned in
-- ResultSetMetadata.transaction, which is a Transaction.
tsBegin :: Lens' TransactionSelector (Maybe TransactionOptions)
tsBegin = lens _tsBegin (\ s a -> s{_tsBegin = a})

-- | Execute the read or SQL query in a previously-started transaction.
tsId :: Lens' TransactionSelector (Maybe ByteString)
tsId
  = lens _tsId (\ s a -> s{_tsId = a}) . mapping _Bytes

-- | Execute the read or SQL query in a temporary transaction. This is the
-- most efficient way to execute a transaction that consists of a single
-- SQL query.
tsSingleUse :: Lens' TransactionSelector (Maybe TransactionOptions)
tsSingleUse
  = lens _tsSingleUse (\ s a -> s{_tsSingleUse = a})

instance FromJSON TransactionSelector where
        parseJSON
          = withObject "TransactionSelector"
              (\ o ->
                 TransactionSelector' <$>
                   (o .:? "begin") <*> (o .:? "id") <*>
                     (o .:? "singleUse"))

instance ToJSON TransactionSelector where
        toJSON TransactionSelector'{..}
          = object
              (catMaybes
                 [("begin" .=) <$> _tsBegin, ("id" .=) <$> _tsId,
                  ("singleUse" .=) <$> _tsSingleUse])

-- | The response for ListInstanceConfigs.
--
-- /See:/ 'listInstanceConfigsResponse' smart constructor.
data ListInstanceConfigsResponse =
  ListInstanceConfigsResponse'
    { _licrNextPageToken :: !(Maybe Text)
    , _licrInstanceConfigs :: !(Maybe [InstanceConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListInstanceConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'licrNextPageToken'
--
-- * 'licrInstanceConfigs'
listInstanceConfigsResponse
    :: ListInstanceConfigsResponse
listInstanceConfigsResponse =
  ListInstanceConfigsResponse'
    {_licrNextPageToken = Nothing, _licrInstanceConfigs = Nothing}


-- | \`next_page_token\` can be sent in a subsequent ListInstanceConfigs call
-- to fetch more of the matching instance configurations.
licrNextPageToken :: Lens' ListInstanceConfigsResponse (Maybe Text)
licrNextPageToken
  = lens _licrNextPageToken
      (\ s a -> s{_licrNextPageToken = a})

-- | The list of requested instance configurations.
licrInstanceConfigs :: Lens' ListInstanceConfigsResponse [InstanceConfig]
licrInstanceConfigs
  = lens _licrInstanceConfigs
      (\ s a -> s{_licrInstanceConfigs = a})
      . _Default
      . _Coerce

instance FromJSON ListInstanceConfigsResponse where
        parseJSON
          = withObject "ListInstanceConfigsResponse"
              (\ o ->
                 ListInstanceConfigsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "instanceConfigs" .!= mempty))

instance ToJSON ListInstanceConfigsResponse where
        toJSON ListInstanceConfigsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _licrNextPageToken,
                  ("instanceConfigs" .=) <$> _licrInstanceConfigs])

-- | Common request options for various APIs.
--
-- /See:/ 'requestOptions' smart constructor.
data RequestOptions =
  RequestOptions'
    { _roPriority :: !(Maybe RequestOptionsPriority)
    , _roRequestTag :: !(Maybe Text)
    , _roTransactionTag :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'roPriority'
--
-- * 'roRequestTag'
--
-- * 'roTransactionTag'
requestOptions
    :: RequestOptions
requestOptions =
  RequestOptions'
    { _roPriority = Nothing
    , _roRequestTag = Nothing
    , _roTransactionTag = Nothing
    }


-- | Priority for the request.
roPriority :: Lens' RequestOptions (Maybe RequestOptionsPriority)
roPriority
  = lens _roPriority (\ s a -> s{_roPriority = a})

-- | A per-request tag which can be applied to queries or reads, used for
-- statistics collection. Both request_tag and transaction_tag can be
-- specified for a read or query that belongs to a transaction. This field
-- is ignored for requests where it\'s not applicable (e.g. CommitRequest).
-- Legal characters for \`request_tag\` values are all printable characters
-- (ASCII 32 - 126) and the length of a request_tag is limited to 50
-- characters. Values that exceed this limit are truncated. Any leading
-- underscore (_) characters will be removed from the string.
roRequestTag :: Lens' RequestOptions (Maybe Text)
roRequestTag
  = lens _roRequestTag (\ s a -> s{_roRequestTag = a})

-- | A tag used for statistics collection about this transaction. Both
-- request_tag and transaction_tag can be specified for a read or query
-- that belongs to a transaction. The value of transaction_tag should be
-- the same for all requests belonging to the same transaction. If this
-- request doesn’t belong to any transaction, transaction_tag will be
-- ignored. Legal characters for \`transaction_tag\` values are all
-- printable characters (ASCII 32 - 126) and the length of a
-- transaction_tag is limited to 50 characters. Values that exceed this
-- limit are truncated. Any leading underscore (_) characters will be
-- removed from the string.
roTransactionTag :: Lens' RequestOptions (Maybe Text)
roTransactionTag
  = lens _roTransactionTag
      (\ s a -> s{_roTransactionTag = a})

instance FromJSON RequestOptions where
        parseJSON
          = withObject "RequestOptions"
              (\ o ->
                 RequestOptions' <$>
                   (o .:? "priority") <*> (o .:? "requestTag") <*>
                     (o .:? "transactionTag"))

instance ToJSON RequestOptions where
        toJSON RequestOptions'{..}
          = object
              (catMaybes
                 [("priority" .=) <$> _roPriority,
                  ("requestTag" .=) <$> _roRequestTag,
                  ("transactionTag" .=) <$> _roTransactionTag])

-- | Encryption information for a Cloud Spanner database or backup.
--
-- /See:/ 'encryptionInfo' smart constructor.
data EncryptionInfo =
  EncryptionInfo'
    { _eiEncryptionType :: !(Maybe EncryptionInfoEncryptionType)
    , _eiKmsKeyVersion :: !(Maybe Text)
    , _eiEncryptionStatus :: !(Maybe Status)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiEncryptionType'
--
-- * 'eiKmsKeyVersion'
--
-- * 'eiEncryptionStatus'
encryptionInfo
    :: EncryptionInfo
encryptionInfo =
  EncryptionInfo'
    { _eiEncryptionType = Nothing
    , _eiKmsKeyVersion = Nothing
    , _eiEncryptionStatus = Nothing
    }


-- | Output only. The type of encryption.
eiEncryptionType :: Lens' EncryptionInfo (Maybe EncryptionInfoEncryptionType)
eiEncryptionType
  = lens _eiEncryptionType
      (\ s a -> s{_eiEncryptionType = a})

-- | Output only. A Cloud KMS key version that is being used to protect the
-- database or backup.
eiKmsKeyVersion :: Lens' EncryptionInfo (Maybe Text)
eiKmsKeyVersion
  = lens _eiKmsKeyVersion
      (\ s a -> s{_eiKmsKeyVersion = a})

-- | Output only. If present, the status of a recent encrypt\/decrypt call on
-- underlying data for this database or backup. Regardless of status, data
-- is always encrypted at rest.
eiEncryptionStatus :: Lens' EncryptionInfo (Maybe Status)
eiEncryptionStatus
  = lens _eiEncryptionStatus
      (\ s a -> s{_eiEncryptionStatus = a})

instance FromJSON EncryptionInfo where
        parseJSON
          = withObject "EncryptionInfo"
              (\ o ->
                 EncryptionInfo' <$>
                   (o .:? "encryptionType") <*> (o .:? "kmsKeyVersion")
                     <*> (o .:? "encryptionStatus"))

instance ToJSON EncryptionInfo where
        toJSON EncryptionInfo'{..}
          = object
              (catMaybes
                 [("encryptionType" .=) <$> _eiEncryptionType,
                  ("kmsKeyVersion" .=) <$> _eiKmsKeyVersion,
                  ("encryptionStatus" .=) <$> _eiEncryptionStatus])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])

-- | The response for PartitionQuery or PartitionRead
--
-- /See:/ 'partitionResponse' smart constructor.
data PartitionResponse =
  PartitionResponse'
    { _prPartitions :: !(Maybe [Partition])
    , _prTransaction :: !(Maybe Transaction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prPartitions'
--
-- * 'prTransaction'
partitionResponse
    :: PartitionResponse
partitionResponse =
  PartitionResponse' {_prPartitions = Nothing, _prTransaction = Nothing}


-- | Partitions created by this request.
prPartitions :: Lens' PartitionResponse [Partition]
prPartitions
  = lens _prPartitions (\ s a -> s{_prPartitions = a})
      . _Default
      . _Coerce

-- | Transaction created by this request.
prTransaction :: Lens' PartitionResponse (Maybe Transaction)
prTransaction
  = lens _prTransaction
      (\ s a -> s{_prTransaction = a})

instance FromJSON PartitionResponse where
        parseJSON
          = withObject "PartitionResponse"
              (\ o ->
                 PartitionResponse' <$>
                   (o .:? "partitions" .!= mempty) <*>
                     (o .:? "transaction"))

instance ToJSON PartitionResponse where
        toJSON PartitionResponse'{..}
          = object
              (catMaybes
                 [("partitions" .=) <$> _prPartitions,
                  ("transaction" .=) <$> _prTransaction])

-- | The request for PartitionQuery
--
-- /See:/ 'partitionQueryRequest' smart constructor.
data PartitionQueryRequest =
  PartitionQueryRequest'
    { _pqrParamTypes :: !(Maybe PartitionQueryRequestParamTypes)
    , _pqrPartitionOptions :: !(Maybe PartitionOptions)
    , _pqrParams :: !(Maybe PartitionQueryRequestParams)
    , _pqrTransaction :: !(Maybe TransactionSelector)
    , _pqrSQL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartitionQueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pqrParamTypes'
--
-- * 'pqrPartitionOptions'
--
-- * 'pqrParams'
--
-- * 'pqrTransaction'
--
-- * 'pqrSQL'
partitionQueryRequest
    :: PartitionQueryRequest
partitionQueryRequest =
  PartitionQueryRequest'
    { _pqrParamTypes = Nothing
    , _pqrPartitionOptions = Nothing
    , _pqrParams = Nothing
    , _pqrTransaction = Nothing
    , _pqrSQL = Nothing
    }


-- | It is not always possible for Cloud Spanner to infer the right SQL type
-- from a JSON value. For example, values of type \`BYTES\` and values of
-- type \`STRING\` both appear in params as JSON strings. In these cases,
-- \`param_types\` can be used to specify the exact SQL type for some or
-- all of the SQL query parameters. See the definition of Type for more
-- information about SQL types.
pqrParamTypes :: Lens' PartitionQueryRequest (Maybe PartitionQueryRequestParamTypes)
pqrParamTypes
  = lens _pqrParamTypes
      (\ s a -> s{_pqrParamTypes = a})

-- | Additional options that affect how many partitions are created.
pqrPartitionOptions :: Lens' PartitionQueryRequest (Maybe PartitionOptions)
pqrPartitionOptions
  = lens _pqrPartitionOptions
      (\ s a -> s{_pqrPartitionOptions = a})

-- | Parameter names and values that bind to placeholders in the SQL string.
-- A parameter placeholder consists of the \`\'\` character followed by the
-- parameter name (for example, \`\'firstName\`). Parameter names can
-- contain letters, numbers, and underscores. Parameters can appear
-- anywhere that a literal value is expected. The same parameter name can
-- be used more than once, for example: \`\"WHERE id > \'msg_id AND id \<
-- \'msg_id + 100\"\` It is an error to execute a SQL statement with
-- unbound parameters.
pqrParams :: Lens' PartitionQueryRequest (Maybe PartitionQueryRequestParams)
pqrParams
  = lens _pqrParams (\ s a -> s{_pqrParams = a})

-- | Read only snapshot transactions are supported, read\/write and single
-- use transactions are not.
pqrTransaction :: Lens' PartitionQueryRequest (Maybe TransactionSelector)
pqrTransaction
  = lens _pqrTransaction
      (\ s a -> s{_pqrTransaction = a})

-- | Required. The query request to generate partitions for. The request will
-- fail if the query is not root partitionable. The query plan of a root
-- partitionable query has a single distributed union operator. A
-- distributed union operator conceptually divides one or more tables into
-- multiple splits, remotely evaluates a subquery independently on each
-- split, and then unions all results. This must not contain DML commands,
-- such as INSERT, UPDATE, or DELETE. Use ExecuteStreamingSql with a
-- PartitionedDml transaction for large, partition-friendly DML operations.
pqrSQL :: Lens' PartitionQueryRequest (Maybe Text)
pqrSQL = lens _pqrSQL (\ s a -> s{_pqrSQL = a})

instance FromJSON PartitionQueryRequest where
        parseJSON
          = withObject "PartitionQueryRequest"
              (\ o ->
                 PartitionQueryRequest' <$>
                   (o .:? "paramTypes") <*> (o .:? "partitionOptions")
                     <*> (o .:? "params")
                     <*> (o .:? "transaction")
                     <*> (o .:? "sql"))

instance ToJSON PartitionQueryRequest where
        toJSON PartitionQueryRequest'{..}
          = object
              (catMaybes
                 [("paramTypes" .=) <$> _pqrParamTypes,
                  ("partitionOptions" .=) <$> _pqrPartitionOptions,
                  ("params" .=) <$> _pqrParams,
                  ("transaction" .=) <$> _pqrTransaction,
                  ("sql" .=) <$> _pqrSQL])

-- | Contains an ordered list of nodes appearing in the query plan.
--
-- /See:/ 'queryPlan' smart constructor.
newtype QueryPlan =
  QueryPlan'
    { _qpPlanNodes :: Maybe [PlanNode]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryPlan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qpPlanNodes'
queryPlan
    :: QueryPlan
queryPlan = QueryPlan' {_qpPlanNodes = Nothing}


-- | The nodes in the query plan. Plan nodes are returned in pre-order
-- starting with the plan root. Each PlanNode\'s \`id\` corresponds to its
-- index in \`plan_nodes\`.
qpPlanNodes :: Lens' QueryPlan [PlanNode]
qpPlanNodes
  = lens _qpPlanNodes (\ s a -> s{_qpPlanNodes = a}) .
      _Default
      . _Coerce

instance FromJSON QueryPlan where
        parseJSON
          = withObject "QueryPlan"
              (\ o ->
                 QueryPlan' <$> (o .:? "planNodes" .!= mempty))

instance ToJSON QueryPlan where
        toJSON QueryPlan'{..}
          = object
              (catMaybes [("planNodes" .=) <$> _qpPlanNodes])

-- | An isolated set of Cloud Spanner resources on which databases can be
-- hosted.
--
-- /See:/ 'instance'' smart constructor.
data Instance =
  Instance'
    { _iState :: !(Maybe InstanceState)
    , _iConfig :: !(Maybe Text)
    , _iNodeCount :: !(Maybe (Textual Int32))
    , _iProcessingUnits :: !(Maybe (Textual Int32))
    , _iEndpointURIs :: !(Maybe [Text])
    , _iName :: !(Maybe Text)
    , _iDisplayName :: !(Maybe Text)
    , _iLabels :: !(Maybe InstanceLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iState'
--
-- * 'iConfig'
--
-- * 'iNodeCount'
--
-- * 'iProcessingUnits'
--
-- * 'iEndpointURIs'
--
-- * 'iName'
--
-- * 'iDisplayName'
--
-- * 'iLabels'
instance'
    :: Instance
instance' =
  Instance'
    { _iState = Nothing
    , _iConfig = Nothing
    , _iNodeCount = Nothing
    , _iProcessingUnits = Nothing
    , _iEndpointURIs = Nothing
    , _iName = Nothing
    , _iDisplayName = Nothing
    , _iLabels = Nothing
    }


-- | Output only. The current instance state. For CreateInstance, the state
-- must be either omitted or set to \`CREATING\`. For UpdateInstance, the
-- state must be either omitted or set to \`READY\`.
iState :: Lens' Instance (Maybe InstanceState)
iState = lens _iState (\ s a -> s{_iState = a})

-- | Required. The name of the instance\'s configuration. Values are of the
-- form \`projects\/\/instanceConfigs\/\`. See also InstanceConfig and
-- ListInstanceConfigs.
iConfig :: Lens' Instance (Maybe Text)
iConfig = lens _iConfig (\ s a -> s{_iConfig = a})

-- | The number of nodes allocated to this instance. This may be zero in API
-- responses for instances that are not yet in state \`READY\`. See [the
-- documentation](https:\/\/cloud.google.com\/spanner\/docs\/instances#node_count)
-- for more information about nodes.
iNodeCount :: Lens' Instance (Maybe Int32)
iNodeCount
  = lens _iNodeCount (\ s a -> s{_iNodeCount = a}) .
      mapping _Coerce

-- | The number of processing units allocated to this instance. At most one
-- of processing_units or node_count should be present in the message. This
-- may be zero in API responses for instances that are not yet in state
-- \`READY\`.
iProcessingUnits :: Lens' Instance (Maybe Int32)
iProcessingUnits
  = lens _iProcessingUnits
      (\ s a -> s{_iProcessingUnits = a})
      . mapping _Coerce

-- | Deprecated. This field is not populated.
iEndpointURIs :: Lens' Instance [Text]
iEndpointURIs
  = lens _iEndpointURIs
      (\ s a -> s{_iEndpointURIs = a})
      . _Default
      . _Coerce

-- | Required. A unique identifier for the instance, which cannot be changed
-- after the instance is created. Values are of the form
-- \`projects\/\/instances\/a-z*[a-z0-9]\`. The final segment of the name
-- must be between 2 and 64 characters in length.
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | Required. The descriptive name for this instance as it appears in UIs.
-- Must be unique per project and between 4 and 30 characters in length.
iDisplayName :: Lens' Instance (Maybe Text)
iDisplayName
  = lens _iDisplayName (\ s a -> s{_iDisplayName = a})

-- | Cloud Labels are a flexible and lightweight mechanism for organizing
-- cloud resources into groups that reflect a customer\'s organizational
-- needs and deployment strategies. Cloud Labels can be used to filter
-- collections of resources. They can be used to control how resource
-- metrics are aggregated. And they can be used as arguments to policy
-- management rules (e.g. route, firewall, load balancing, etc.). * Label
-- keys must be between 1 and 63 characters long and must conform to the
-- following regular expression: \`[a-z]([-a-z0-9]*[a-z0-9])?\`. * Label
-- values must be between 0 and 63 characters long and must conform to the
-- regular expression \`([a-z]([-a-z0-9]*[a-z0-9])?)?\`. * No more than 64
-- labels can be associated with a given resource. See
-- https:\/\/goo.gl\/xmQnxf for more information on and examples of labels.
-- If you plan to use labels in your own code, please note that additional
-- characters may be allowed in the future. And so you are advised to use
-- an internal label representation, such as JSON, which doesn\'t rely upon
-- specific characters being disallowed. For example, representing labels
-- as the string: name + \"_\" + value would prove problematic if we were
-- to allow \"_\" in a future release.
iLabels :: Lens' Instance (Maybe InstanceLabels)
iLabels = lens _iLabels (\ s a -> s{_iLabels = a})

instance FromJSON Instance where
        parseJSON
          = withObject "Instance"
              (\ o ->
                 Instance' <$>
                   (o .:? "state") <*> (o .:? "config") <*>
                     (o .:? "nodeCount")
                     <*> (o .:? "processingUnits")
                     <*> (o .:? "endpointUris" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels"))

instance ToJSON Instance where
        toJSON Instance'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _iState,
                  ("config" .=) <$> _iConfig,
                  ("nodeCount" .=) <$> _iNodeCount,
                  ("processingUnits" .=) <$> _iProcessingUnits,
                  ("endpointUris" .=) <$> _iEndpointURIs,
                  ("name" .=) <$> _iName,
                  ("displayName" .=) <$> _iDisplayName,
                  ("labels" .=) <$> _iLabels])
