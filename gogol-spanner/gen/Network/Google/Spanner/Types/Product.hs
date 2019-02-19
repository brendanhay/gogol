{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Spanner.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Spanner.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types.Sum

-- | The SQL string can contain parameter placeholders. A parameter
-- placeholder consists of \`\'\'\'\` followed by the parameter name.
-- Parameter names consist of any combination of letters, numbers, and
-- underscores. Parameters can appear anywhere that a literal value is
-- expected. The same parameter name can be used more than once, for
-- example: \`\"WHERE id > \'msg_id AND id \< \'msg_id + 100\"\` It is an
-- error to execute an SQL statement with unbound parameters. Parameter
-- values are specified using \`params\`, which is a JSON object whose keys
-- are parameter names, and whose values are the corresponding parameter
-- values.
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

-- | # Transactions Each session can have at most one active transaction at a
-- time. After the active transaction is completed, the session can
-- immediately be re-used for the next transaction. It is not necessary to
-- create a new session for each transaction. # Transaction Modes Cloud
-- Spanner supports three transaction modes: 1. Locking read-write. This
-- type of transaction is the only way to write data into Cloud Spanner.
-- These transactions rely on pessimistic locking and, if necessary,
-- two-phase commit. Locking read-write transactions may abort, requiring
-- the application to retry. 2. Snapshot read-only. This transaction type
-- provides guaranteed consistency across several reads, but does not allow
-- writes. Snapshot read-only transactions can be configured to read at
-- timestamps in the past. Snapshot read-only transactions do not need to
-- be committed. 3. Partitioned DML. This type of transaction is used to
-- execute a single Partitioned DML statement. Partitioned DML partitions
-- the key space and runs the DML statement over each partition in parallel
-- using separate, internal transactions that commit independently.
-- Partitioned DML transactions do not need to be committed. For
-- transactions that only read, snapshot read-only transactions provide
-- simpler semantics and are almost always faster. In particular, read-only
-- transactions do not take locks, so they do not conflict with read-write
-- transactions. As a consequence of not taking locks, they also do not
-- abort, so retry loops are not needed. Transactions may only read\/write
-- data in a single database. They may, however, read\/write data in
-- different tables within that database. ## Locking Read-Write
-- Transactions Locking transactions may be used to atomically
-- read-modify-write data anywhere in a database. This type of transaction
-- is externally consistent. Clients should attempt to minimize the amount
-- of time a transaction is active. Faster transactions commit with higher
-- probability and cause less contention. Cloud Spanner attempts to keep
-- read locks active as long as the transaction continues to do reads, and
-- the transaction has not been terminated by Commit or Rollback. Long
-- periods of inactivity at the client may cause Cloud Spanner to release a
-- transaction\'s locks and abort it. Conceptually, a read-write
-- transaction consists of zero or more reads or SQL statements followed by
-- Commit. At any time before Commit, the client can send a Rollback
-- request to abort the transaction. ### Semantics Cloud Spanner can commit
-- the transaction if all read locks it acquired are still valid at commit
-- time, and it is able to acquire write locks for all writes. Cloud
-- Spanner can abort the transaction for any reason. If a commit attempt
-- returns \`ABORTED\`, Cloud Spanner guarantees that the transaction has
-- not modified any user data in Cloud Spanner. Unless the transaction
-- commits, Cloud Spanner makes no guarantees about how long the
-- transaction\'s locks were held for. It is an error to use Cloud Spanner
-- locks for any sort of mutual exclusion other than between Cloud Spanner
-- transactions themselves. ### Retrying Aborted Transactions When a
-- transaction aborts, the application can choose to retry the whole
-- transaction again. To maximize the chances of successfully committing
-- the retry, the client should execute the retry in the same session as
-- the original attempt. The original session\'s lock priority increases
-- with each consecutive abort, meaning that each attempt has a slightly
-- better chance of success than the previous. Under some circumstances
-- (e.g., many transactions attempting to modify the same row(s)), a
-- transaction can abort many times in a short period before successfully
-- committing. Thus, it is not a good idea to cap the number of retries a
-- transaction can attempt; instead, it is better to limit the total amount
-- of wall time spent retrying. ### Idle Transactions A transaction is
-- considered idle if it has no outstanding reads or SQL queries and has
-- not started a read or SQL query within the last 10 seconds. Idle
-- transactions can be aborted by Cloud Spanner so that they don\'t hold on
-- to locks indefinitely. In that case, the commit will fail with error
-- \`ABORTED\`. If this behavior is undesirable, periodically executing a
-- simple SQL query in the transaction (e.g., \`SELECT 1\`) prevents the
-- transaction from becoming idle. ## Snapshot Read-Only Transactions
-- Snapshot read-only transactions provides a simpler method than locking
-- read-write transactions for doing several consistent reads. However,
-- this type of transaction does not support writes. Snapshot transactions
-- do not take locks. Instead, they work by choosing a Cloud Spanner
-- timestamp, then executing all reads at that timestamp. Since they do not
-- acquire locks, they do not block concurrent read-write transactions.
-- Unlike locking read-write transactions, snapshot read-only transactions
-- never abort. They can fail if the chosen read timestamp is garbage
-- collected; however, the default garbage collection policy is generous
-- enough that most applications do not need to worry about this in
-- practice. Snapshot read-only transactions do not need to call Commit or
-- Rollback (and in fact are not permitted to do so). To execute a snapshot
-- transaction, the client specifies a timestamp bound, which tells Cloud
-- Spanner how to choose a read timestamp. The types of timestamp bound
-- are: - Strong (the default). - Bounded staleness. - Exact staleness. If
-- the Cloud Spanner database to be read is geographically distributed,
-- stale read-only transactions can execute more quickly than strong or
-- read-write transaction, because they are able to execute far from the
-- leader replica. Each type of timestamp bound is discussed in detail
-- below. ### Strong Strong reads are guaranteed to see the effects of all
-- transactions that have committed before the start of the read.
-- Furthermore, all rows yielded by a single read are consistent with each
-- other -- if any part of the read observes a transaction, all parts of
-- the read see the transaction. Strong reads are not repeatable: two
-- consecutive strong read-only transactions might return inconsistent
-- results if there are concurrent writes. If consistency across reads is
-- required, the reads should be executed within a transaction or at an
-- exact read timestamp. See TransactionOptions.ReadOnly.strong. ### Exact
-- Staleness These timestamp bounds execute reads at a user-specified
-- timestamp. Reads at a timestamp are guaranteed to see a consistent
-- prefix of the global transaction history: they observe modifications
-- done by all transactions with a commit timestamp \<= the read timestamp,
-- and observe none of the modifications done by transactions with a larger
-- commit timestamp. They will block until all conflicting transactions
-- that may be assigned commit timestamps \<= the read timestamp have
-- finished. The timestamp can either be expressed as an absolute Cloud
-- Spanner commit timestamp or a staleness relative to the current time.
-- These modes do not require a \"negotiation phase\" to pick a timestamp.
-- As a result, they execute slightly faster than the equivalent boundedly
-- stale concurrency modes. On the other hand, boundedly stale reads
-- usually return fresher results. See
-- TransactionOptions.ReadOnly.read_timestamp and
-- TransactionOptions.ReadOnly.exact_staleness. ### Bounded Staleness
-- Bounded staleness modes allow Cloud Spanner to pick the read timestamp,
-- subject to a user-provided staleness bound. Cloud Spanner chooses the
-- newest timestamp within the staleness bound that allows execution of the
-- reads at the closest available replica without blocking. All rows
-- yielded are consistent with each other -- if any part of the read
-- observes a transaction, all parts of the read see the transaction.
-- Boundedly stale reads are not repeatable: two stale reads, even if they
-- use the same staleness bound, can execute at different timestamps and
-- thus return inconsistent results. Boundedly stale reads execute in two
-- phases: the first phase negotiates a timestamp among all replicas needed
-- to serve the read. In the second phase, reads are executed at the
-- negotiated timestamp. As a result of the two phase execution, bounded
-- staleness reads are usually a little slower than comparable exact
-- staleness reads. However, they are typically able to return fresher
-- results, and are more likely to execute at the closest replica. Because
-- the timestamp negotiation requires up-front knowledge of which rows will
-- be read, it can only be used with single-use read-only transactions. See
-- TransactionOptions.ReadOnly.max_staleness and
-- TransactionOptions.ReadOnly.min_read_timestamp. ### Old Read Timestamps
-- and Garbage Collection Cloud Spanner continuously garbage collects
-- deleted and overwritten data in the background to reclaim storage space.
-- This process is known as \"version GC\". By default, version GC reclaims
-- versions after they are one hour old. Because of this, Cloud Spanner
-- cannot perform reads at read timestamps more than one hour in the past.
-- This restriction also applies to in-progress reads and\/or SQL queries
-- whose timestamp become too old while executing. Reads and SQL queries
-- with too-old read timestamps fail with the error
-- \`FAILED_PRECONDITION\`. ## Partitioned DML Transactions Partitioned DML
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
    { _toReadWrite      :: !(Maybe ReadWrite)
    , _toPartitionedDml :: !(Maybe PartitionedDml)
    , _toReadOnly       :: !(Maybe ReadOnly)
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
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
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
    , _cirInstance   :: !(Maybe Instance)
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
-- form \`a-z*[a-z0-9]\` and must be between 6 and 30 characters in length.
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

-- | The response for ListDatabases.
--
-- /See:/ 'listDatabasesResponse' smart constructor.
data ListDatabasesResponse =
  ListDatabasesResponse'
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDatabases     :: !(Maybe [Database])
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

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
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


-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | An optional description of the expression. This is a longer text which
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
    , _lorOperations    :: !(Maybe [Operation])
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
data GetIAMPolicyRequest =
  GetIAMPolicyRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest'


instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> pure GetIAMPolicyRequest')

instance ToJSON GetIAMPolicyRequest where
        toJSON = const emptyObject

-- | Metadata associated with a parent-child relationship appearing in a
-- PlanNode.
--
-- /See:/ 'childLink' smart constructor.
data ChildLink =
  ChildLink'
    { _clChildIndex :: !(Maybe (Textual Int32))
    , _clVariable   :: !(Maybe Text)
    , _clType       :: !(Maybe Text)
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

-- | The request for BeginTransaction.
--
-- /See:/ 'beginTransactionRequest' smart constructor.
newtype BeginTransactionRequest =
  BeginTransactionRequest'
    { _btrOptions :: Maybe TransactionOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BeginTransactionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btrOptions'
beginTransactionRequest
    :: BeginTransactionRequest
beginTransactionRequest = BeginTransactionRequest' {_btrOptions = Nothing}


-- | Required. Options for the new transaction.
btrOptions :: Lens' BeginTransactionRequest (Maybe TransactionOptions)
btrOptions
  = lens _btrOptions (\ s a -> s{_btrOptions = a})

instance FromJSON BeginTransactionRequest where
        parseJSON
          = withObject "BeginTransactionRequest"
              (\ o ->
                 BeginTransactionRequest' <$> (o .:? "options"))

instance ToJSON BeginTransactionRequest where
        toJSON BeginTransactionRequest'{..}
          = object (catMaybes [("options" .=) <$> _btrOptions])

-- | Options for a PartitionQueryRequest and PartitionReadRequest.
--
-- /See:/ 'partitionOptions' smart constructor.
data PartitionOptions =
  PartitionOptions'
    { _poMaxPartitions      :: !(Maybe (Textual Int64))
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
    { _rssRowCountExact      :: !(Maybe (Textual Int64))
    , _rssRowCountLowerBound :: !(Maybe (Textual Int64))
    , _rssQueryStats         :: !(Maybe ResultSetStatsQueryStats)
    , _rssQueryPlan          :: !(Maybe QueryPlan)
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
-- columns might have an empty name (e.g., !\"SELECT UPPER(ColName)\"\`).
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

-- | Arguments to insert, update, insert_or_update, and replace operations.
--
-- /See:/ 'write' smart constructor.
data Write =
  Write'
    { _wValues  :: !(Maybe [[JSONValue]])
    , _wColumns :: !(Maybe [Text])
    , _wTable   :: !(Maybe Text)
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
    { _ksAll    :: !(Maybe Bool)
    , _ksRanges :: !(Maybe [KeyRange])
    , _ksKeys   :: !(Maybe [[JSONValue]])
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

-- | The SQL query string can contain parameter placeholders. A parameter
-- placeholder consists of \`\'\'\'\` followed by the parameter name.
-- Parameter names consist of any combination of letters, numbers, and
-- underscores. Parameters can appear anywhere that a literal value is
-- expected. The same parameter name can be used more than once, for
-- example: \`\"WHERE id > \'msg_id AND id \< \'msg_id + 100\"\` It is an
-- error to execute an SQL query with unbound parameters. Parameter values
-- are specified using \`params\`, which is a JSON object whose keys are
-- parameter names, and whose values are the corresponding parameter
-- values.
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

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
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
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
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
    , _uddmDatabase         :: !(Maybe Text)
    , _uddmStatements       :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDatabaseDdlMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uddmCommitTimestamps'
--
-- * 'uddmDatabase'
--
-- * 'uddmStatements'
updateDatabaseDdlMetadata
    :: UpdateDatabaseDdlMetadata
updateDatabaseDdlMetadata =
  UpdateDatabaseDdlMetadata'
    { _uddmCommitTimestamps = Nothing
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
                     (o .:? "database")
                     <*> (o .:? "statements" .!= mempty))

instance ToJSON UpdateDatabaseDdlMetadata where
        toJSON UpdateDatabaseDdlMetadata'{..}
          = object
              (catMaybes
                 [("commitTimestamps" .=) <$> _uddmCommitTimestamps,
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

-- | A Cloud Spanner database.
--
-- /See:/ 'database' smart constructor.
data Database =
  Database'
    { _dState :: !(Maybe DatabaseState)
    , _dName  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Database' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dState'
--
-- * 'dName'
database
    :: Database
database = Database' {_dState = Nothing, _dName = Nothing}


-- | Output only. The current database state.
dState :: Lens' Database (Maybe DatabaseState)
dState = lens _dState (\ s a -> s{_dState = a})

-- | Required. The name of the database. Values are of the form
-- \`projects\/\/instances\/\/databases\/\`, where \`\` is as specified in
-- the \`CREATE DATABASE\` statement. This name can be passed to other API
-- methods to identify the database.
dName :: Lens' Database (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

instance FromJSON Database where
        parseJSON
          = withObject "Database"
              (\ o ->
                 Database' <$> (o .:? "state") <*> (o .:? "name"))

instance ToJSON Database where
        toJSON Database'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _dState, ("name" .=) <$> _dName])

-- | Node information for nodes appearing in a QueryPlan.plan_nodes.
--
-- /See:/ 'planNode' smart constructor.
data PlanNode =
  PlanNode'
    { _pnKind                :: !(Maybe PlanNodeKind)
    , _pnShortRepresentation :: !(Maybe ShortRepresentation)
    , _pnMetadata            :: !(Maybe PlanNodeMetadata)
    , _pnDisplayName         :: !(Maybe Text)
    , _pnExecutionStats      :: !(Maybe PlanNodeExecutionStats)
    , _pnIndex               :: !(Maybe (Textual Int32))
    , _pnChildLinks          :: !(Maybe [ChildLink])
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


-- | The session to create.
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
    { _srSubqueries  :: !(Maybe ShortRepresentationSubqueries)
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
    , _uddrStatements  :: !(Maybe [Text])
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

-- | DDL statements to be applied to the database.
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
    { _mReplace        :: !(Maybe Write)
    , _mInsert         :: !(Maybe Write)
    , _mInsertOrUpdate :: !(Maybe Write)
    , _mDelete         :: !(Maybe Delete')
    , _mUpdate         :: !(Maybe Write)
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
-- \`NULL\`.
mReplace :: Lens' Mutation (Maybe Write)
mReplace = lens _mReplace (\ s a -> s{_mReplace = a})

-- | Insert new rows in a table. If any of the rows already exist, the write
-- or transaction fails with error \`ALREADY_EXISTS\`.
mInsert :: Lens' Mutation (Maybe Write)
mInsert = lens _mInsert (\ s a -> s{_mInsert = a})

-- | Like insert, except that if the row already exists, then its column
-- values are overwritten with the ones provided. Any column values not
-- explicitly written are preserved.
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

-- | The request for PartitionRead
--
-- /See:/ 'partitionReadRequest' smart constructor.
data PartitionReadRequest =
  PartitionReadRequest'
    { _prrPartitionOptions :: !(Maybe PartitionOptions)
    , _prrKeySet           :: !(Maybe KeySet)
    , _prrTransaction      :: !(Maybe TransactionSelector)
    , _prrColumns          :: !(Maybe [Text])
    , _prrIndex            :: !(Maybe Text)
    , _prrTable            :: !(Maybe Text)
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
    , _tId            :: !(Maybe Bytes)
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

-- | The response for ListSessions.
--
-- /See:/ 'listSessionsResponse' smart constructor.
data ListSessionsResponse =
  ListSessionsResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSessions      :: !(Maybe [Session])
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

-- | The response for Commit.
--
-- /See:/ 'commitResponse' smart constructor.
newtype CommitResponse =
  CommitResponse'
    { _crCommitTimestamp :: Maybe DateTime'
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crCommitTimestamp'
commitResponse
    :: CommitResponse
commitResponse = CommitResponse' {_crCommitTimestamp = Nothing}


-- | The Cloud Spanner timestamp at which the transaction committed.
crCommitTimestamp :: Lens' CommitResponse (Maybe UTCTime)
crCommitTimestamp
  = lens _crCommitTimestamp
      (\ s a -> s{_crCommitTimestamp = a})
      . mapping _DateTime

instance FromJSON CommitResponse where
        parseJSON
          = withObject "CommitResponse"
              (\ o ->
                 CommitResponse' <$> (o .:? "commitTimestamp"))

instance ToJSON CommitResponse where
        toJSON CommitResponse'{..}
          = object
              (catMaybes
                 [("commitTimestamp" .=) <$> _crCommitTimestamp])

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

-- | Metadata type for the operation returned by UpdateInstance.
--
-- /See:/ 'updateInstanceMetadata' smart constructor.
data UpdateInstanceMetadata =
  UpdateInstanceMetadata'
    { _uimStartTime  :: !(Maybe DateTime')
    , _uimCancelTime :: !(Maybe DateTime')
    , _uimEndTime    :: !(Maybe DateTime')
    , _uimInstance   :: !(Maybe Instance)
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

-- | Partial results from a streaming read or SQL query. Streaming reads and
-- SQL queries better tolerate large result sets, large rows, and large
-- values, but are a little trickier to consume.
--
-- /See:/ 'partialResultSet' smart constructor.
data PartialResultSet =
  PartialResultSet'
    { _prsResumeToken  :: !(Maybe Bytes)
    , _prsValues       :: !(Maybe [JSONValue])
    , _prsStats        :: !(Maybe ResultSetStats)
    , _prsMetadata     :: !(Maybe ResultSetMetadata)
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

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **JSON Example**
-- { \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } **YAML Example** bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pEtag     :: !(Maybe Bytes)
    , _pVersion  :: !(Maybe (Textual Int32))
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
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Deprecated.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
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
    , _cdrCreateStatement :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateDatabaseRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrExtraStatements'
--
-- * 'cdrCreateStatement'
createDatabaseRequest
    :: CreateDatabaseRequest
createDatabaseRequest =
  CreateDatabaseRequest'
    {_cdrExtraStatements = Nothing, _cdrCreateStatement = Nothing}


-- | An optional list of DDL statements to run inside the newly created
-- database. Statements can create tables, indexes, etc. These statements
-- execute atomically with the creation of the database: if there is an
-- error in any statement, the database is not created.
cdrExtraStatements :: Lens' CreateDatabaseRequest [Text]
cdrExtraStatements
  = lens _cdrExtraStatements
      (\ s a -> s{_cdrExtraStatements = a})
      . _Default
      . _Coerce

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
                     (o .:? "createStatement"))

instance ToJSON CreateDatabaseRequest where
        toJSON CreateDatabaseRequest'{..}
          = object
              (catMaybes
                 [("extraStatements" .=) <$> _cdrExtraStatements,
                  ("createStatement" .=) <$> _cdrCreateStatement])

-- | The request for ExecuteSql and ExecuteStreamingSql.
--
-- /See:/ 'executeSQLRequest' smart constructor.
data ExecuteSQLRequest =
  ExecuteSQLRequest'
    { _esqlrParamTypes     :: !(Maybe ExecuteSQLRequestParamTypes)
    , _esqlrResumeToken    :: !(Maybe Bytes)
    , _esqlrSeqno          :: !(Maybe (Textual Int64))
    , _esqlrParams         :: !(Maybe ExecuteSQLRequestParams)
    , _esqlrTransaction    :: !(Maybe TransactionSelector)
    , _esqlrSQL            :: !(Maybe Text)
    , _esqlrPartitionToken :: !(Maybe Bytes)
    , _esqlrQueryMode      :: !(Maybe ExecuteSQLRequestQueryMode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecuteSQLRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esqlrParamTypes'
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
executeSQLRequest
    :: ExecuteSQLRequest
executeSQLRequest =
  ExecuteSQLRequest'
    { _esqlrParamTypes = Nothing
    , _esqlrResumeToken = Nothing
    , _esqlrSeqno = Nothing
    , _esqlrParams = Nothing
    , _esqlrTransaction = Nothing
    , _esqlrSQL = Nothing
    , _esqlrPartitionToken = Nothing
    , _esqlrQueryMode = Nothing
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
-- makes each request idempotent such that if the request is received
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

-- | The SQL string can contain parameter placeholders. A parameter
-- placeholder consists of \`\'\'\'\` followed by the parameter name.
-- Parameter names consist of any combination of letters, numbers, and
-- underscores. Parameters can appear anywhere that a literal value is
-- expected. The same parameter name can be used more than once, for
-- example: \`\"WHERE id > \'msg_id AND id \< \'msg_id + 100\"\` It is an
-- error to execute an SQL statement with unbound parameters. Parameter
-- values are specified using \`params\`, which is a JSON object whose keys
-- are parameter names, and whose values are the corresponding parameter
-- values.
esqlrParams :: Lens' ExecuteSQLRequest (Maybe ExecuteSQLRequestParams)
esqlrParams
  = lens _esqlrParams (\ s a -> s{_esqlrParams = a})

-- | The transaction to use. If none is provided, the default is a temporary
-- read-only transaction with strong concurrency. The transaction to use.
-- For queries, if none is provided, the default is a temporary read-only
-- transaction with strong concurrency. Standard DML statements require a
-- ReadWrite transaction. Single-use transactions are not supported (to
-- avoid replay). The caller must either supply an existing transaction ID
-- or begin a new transaction. Partitioned DML requires an existing
-- PartitionedDml transaction ID.
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

instance FromJSON ExecuteSQLRequest where
        parseJSON
          = withObject "ExecuteSQLRequest"
              (\ o ->
                 ExecuteSQLRequest' <$>
                   (o .:? "paramTypes") <*> (o .:? "resumeToken") <*>
                     (o .:? "seqno")
                     <*> (o .:? "params")
                     <*> (o .:? "transaction")
                     <*> (o .:? "sql")
                     <*> (o .:? "partitionToken")
                     <*> (o .:? "queryMode"))

instance ToJSON ExecuteSQLRequest where
        toJSON ExecuteSQLRequest'{..}
          = object
              (catMaybes
                 [("paramTypes" .=) <$> _esqlrParamTypes,
                  ("resumeToken" .=) <$> _esqlrResumeToken,
                  ("seqno" .=) <$> _esqlrSeqno,
                  ("params" .=) <$> _esqlrParams,
                  ("transaction" .=) <$> _esqlrTransaction,
                  ("sql" .=) <$> _esqlrSQL,
                  ("partitionToken" .=) <$> _esqlrPartitionToken,
                  ("queryMode" .=) <$> _esqlrQueryMode])

-- | The request for Commit.
--
-- /See:/ 'commitRequest' smart constructor.
data CommitRequest =
  CommitRequest'
    { _crMutations            :: !(Maybe [Mutation])
    , _crTransactionId        :: !(Maybe Bytes)
    , _crSingleUseTransaction :: !(Maybe TransactionOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommitRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crMutations'
--
-- * 'crTransactionId'
--
-- * 'crSingleUseTransaction'
commitRequest
    :: CommitRequest
commitRequest =
  CommitRequest'
    { _crMutations = Nothing
    , _crTransactionId = Nothing
    , _crSingleUseTransaction = Nothing
    }


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

instance FromJSON CommitRequest where
        parseJSON
          = withObject "CommitRequest"
              (\ o ->
                 CommitRequest' <$>
                   (o .:? "mutations" .!= mempty) <*>
                     (o .:? "transactionId")
                     <*> (o .:? "singleUseTransaction"))

instance ToJSON CommitRequest where
        toJSON CommitRequest'{..}
          = object
              (catMaybes
                 [("mutations" .=) <$> _crMutations,
                  ("transactionId" .=) <$> _crTransactionId,
                  ("singleUseTransaction" .=) <$>
                    _crSingleUseTransaction])

-- | \`Type\` indicates the type of a Cloud Spanner value, as might be stored
-- in a table cell or returned from an SQL query.
--
-- /See:/ 'type'' smart constructor.
data Type =
  Type'
    { _tArrayElementType :: !(Maybe Type)
    , _tStructType       :: !(Maybe StructType)
    , _tCode             :: !(Maybe TypeCode)
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
    { _cimStartTime  :: !(Maybe DateTime')
    , _cimCancelTime :: !(Maybe DateTime')
    , _cimEndTime    :: !(Maybe DateTime')
    , _cimInstance   :: !(Maybe Instance)
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
    , _krEndOpen     :: !(Maybe [JSONValue])
    , _krStartOpen   :: !(Maybe [JSONValue])
    , _krEndClosed   :: !(Maybe [JSONValue])
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
    { _icName        :: !(Maybe Text)
    , _icDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icName'
--
-- * 'icDisplayName'
instanceConfig
    :: InstanceConfig
instanceConfig = InstanceConfig' {_icName = Nothing, _icDisplayName = Nothing}


-- | A unique identifier for the instance configuration. Values are of the
-- form \`projects\/\/instanceConfigs\/a-z*\`
icName :: Lens' InstanceConfig (Maybe Text)
icName = lens _icName (\ s a -> s{_icName = a})

-- | The name of this instance configuration as it appears in UIs.
icDisplayName :: Lens' InstanceConfig (Maybe Text)
icDisplayName
  = lens _icDisplayName
      (\ s a -> s{_icDisplayName = a})

instance FromJSON InstanceConfig where
        parseJSON
          = withObject "InstanceConfig"
              (\ o ->
                 InstanceConfig' <$>
                   (o .:? "name") <*> (o .:? "displayName"))

instance ToJSON InstanceConfig where
        toJSON InstanceConfig'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _icName,
                  ("displayName" .=) <$> _icDisplayName])

-- | Results from Read or ExecuteSql.
--
-- /See:/ 'resultSet' smart constructor.
data ResultSet =
  ResultSet'
    { _rsStats    :: !(Maybe ResultSetStats)
    , _rsRows     :: !(Maybe [[JSONValue]])
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
    , _lirInstances     :: !(Maybe [Instance])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirNextPageToken'
--
-- * 'lirInstances'
listInstancesResponse
    :: ListInstancesResponse
listInstancesResponse =
  ListInstancesResponse' {_lirNextPageToken = Nothing, _lirInstances = Nothing}


-- | \`next_page_token\` can be sent in a subsequent ListInstances call to
-- fetch more of the matching instances.
lirNextPageToken :: Lens' ListInstancesResponse (Maybe Text)
lirNextPageToken
  = lens _lirNextPageToken
      (\ s a -> s{_lirNextPageToken = a})

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
                     (o .:? "instances" .!= mempty))

instance ToJSON ListInstancesResponse where
        toJSON ListInstancesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lirNextPageToken,
                  ("instances" .=) <$> _lirInstances])

-- | The request for Read and StreamingRead.
--
-- /See:/ 'readRequest' smart constructor.
data ReadRequest =
  ReadRequest'
    { _rrResumeToken    :: !(Maybe Bytes)
    , _rrKeySet         :: !(Maybe KeySet)
    , _rrTransaction    :: !(Maybe TransactionSelector)
    , _rrColumns        :: !(Maybe [Text])
    , _rrLimit          :: !(Maybe (Textual Int64))
    , _rrIndex          :: !(Maybe Text)
    , _rrTable          :: !(Maybe Text)
    , _rrPartitionToken :: !(Maybe Bytes)
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

-- | The columns of table to be returned for each row matching this request.
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
                     <*> (o .:? "partitionToken"))

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
                  ("partitionToken" .=) <$> _rrPartitionToken])

-- | A session in the Cloud Spanner API.
--
-- /See:/ 'session' smart constructor.
data Session =
  Session'
    { _sApproximateLastUseTime :: !(Maybe DateTime')
    , _sName                   :: !(Maybe Text)
    , _sLabels                 :: !(Maybe SessionLabels)
    , _sCreateTime             :: !(Maybe DateTime')
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

-- | The name of the session. This is always system-assigned; values provided
-- when creating a session are ignored.
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
    { _roReadTimestamp       :: !(Maybe DateTime')
    , _roExactStaleness      :: !(Maybe GDuration)
    , _roMaxStaleness        :: !(Maybe GDuration)
    , _roStrong              :: !(Maybe Bool)
    , _roMinReadTimestamp    :: !(Maybe DateTime')
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
    { _rsmRowType     :: !(Maybe StructType)
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
    , _dTable  :: !(Maybe Text)
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


-- | Required. The primary keys of the rows within table to delete. Delete is
-- idempotent. The transaction will succeed even if some or all rows do not
-- exist.
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
    , _uirInstance  :: !(Maybe Instance)
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


-- | Required. A mask specifying which fields in
-- [][google.spanner.admin.instance.v1.UpdateInstanceRequest.instance]
-- should be updated. The field mask must always be specified; this
-- prevents any future fields in
-- [][google.spanner.admin.instance.v1.Instance] from being erased
-- accidentally by clients that do not know about them.
uirFieldMask :: Lens' UpdateInstanceRequest (Maybe GFieldMask)
uirFieldMask
  = lens _uirFieldMask (\ s a -> s{_uirFieldMask = a})

-- | Required. The instance to update, which must always include the instance
-- name. Otherwise, only fields mentioned in
-- [][google.spanner.admin.instance.v1.UpdateInstanceRequest.field_mask]
-- need be included.
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

-- | This message is used to select the transaction in which a Read or
-- ExecuteSql call runs. See TransactionOptions for more information about
-- transactions.
--
-- /See:/ 'transactionSelector' smart constructor.
data TransactionSelector =
  TransactionSelector'
    { _tsBegin     :: !(Maybe TransactionOptions)
    , _tsId        :: !(Maybe Bytes)
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
    { _licrNextPageToken   :: !(Maybe Text)
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

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
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
-- \`alice\'gmail.com\` . * \`serviceAccount:{emailid}\`: An email address
-- that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`domain:{domain}\`: A Google Apps domain
-- name that represents all the users of that domain. For example,
-- \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | Unimplemented. The condition that is associated with this binding. NOTE:
-- an unsatisfied condition will not allow user access via current binding.
-- Different bindings, including their conditions, are examined
-- independently.
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
    { _prPartitions  :: !(Maybe [Partition])
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
    { _pqrParamTypes       :: !(Maybe PartitionQueryRequestParamTypes)
    , _pqrPartitionOptions :: !(Maybe PartitionOptions)
    , _pqrParams           :: !(Maybe PartitionQueryRequestParams)
    , _pqrTransaction      :: !(Maybe TransactionSelector)
    , _pqrSQL              :: !(Maybe Text)
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

-- | The SQL query string can contain parameter placeholders. A parameter
-- placeholder consists of \`\'\'\'\` followed by the parameter name.
-- Parameter names consist of any combination of letters, numbers, and
-- underscores. Parameters can appear anywhere that a literal value is
-- expected. The same parameter name can be used more than once, for
-- example: \`\"WHERE id > \'msg_id AND id \< \'msg_id + 100\"\` It is an
-- error to execute an SQL query with unbound parameters. Parameter values
-- are specified using \`params\`, which is a JSON object whose keys are
-- parameter names, and whose values are the corresponding parameter
-- values.
pqrParams :: Lens' PartitionQueryRequest (Maybe PartitionQueryRequestParams)
pqrParams
  = lens _pqrParams (\ s a -> s{_pqrParams = a})

-- | Read only snapshot transactions are supported, read\/write and single
-- use transactions are not.
pqrTransaction :: Lens' PartitionQueryRequest (Maybe TransactionSelector)
pqrTransaction
  = lens _pqrTransaction
      (\ s a -> s{_pqrTransaction = a})

-- | The query request to generate partitions for. The request will fail if
-- the query is not root partitionable. The query plan of a root
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
    { _iState       :: !(Maybe InstanceState)
    , _iConfig      :: !(Maybe Text)
    , _iNodeCount   :: !(Maybe (Textual Int32))
    , _iName        :: !(Maybe Text)
    , _iDisplayName :: !(Maybe Text)
    , _iLabels      :: !(Maybe InstanceLabels)
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

-- | Required. The number of nodes allocated to this instance. This may be
-- zero in API responses for instances that are not yet in state \`READY\`.
-- See [the
-- documentation](https:\/\/cloud.google.com\/spanner\/docs\/instances#node_count)
-- for more information about nodes.
iNodeCount :: Lens' Instance (Maybe Int32)
iNodeCount
  = lens _iNodeCount (\ s a -> s{_iNodeCount = a}) .
      mapping _Coerce

-- | Required. A unique identifier for the instance, which cannot be changed
-- after the instance is created. Values are of the form
-- \`projects\/\/instances\/a-z*[a-z0-9]\`. The final segment of the name
-- must be between 6 and 30 characters in length.
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
                  ("name" .=) <$> _iName,
                  ("displayName" .=) <$> _iDisplayName,
                  ("labels" .=) <$> _iLabels])
