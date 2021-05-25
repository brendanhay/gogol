{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Spanner.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Spanner.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Required. The TypeCode for this type.
data TypeCode
    = TypeCodeUnspecified
      -- ^ @TYPE_CODE_UNSPECIFIED@
      -- Not specified.
    | Bool
      -- ^ @BOOL@
      -- Encoded as JSON \`true\` or \`false\`.
    | INT64
      -- ^ @INT64@
      -- Encoded as \`string\`, in decimal format.
    | FLOAT64
      -- ^ @FLOAT64@
      -- Encoded as \`number\`, or the strings \`\"NaN\"\`, \`\"Infinity\"\`, or
      -- \`\"-Infinity\"\`.
    | Timestamp
      -- ^ @TIMESTAMP@
      -- Encoded as \`string\` in RFC 3339 timestamp format. The time zone must
      -- be present, and must be \`\"Z\"\`. If the schema has the column option
      -- \`allow_commit_timestamp=true\`, the placeholder string
      -- \`\"spanner.commit_timestamp()\"\` can be used to instruct the system to
      -- insert the commit timestamp associated with the transaction commit.
    | Date
      -- ^ @DATE@
      -- Encoded as \`string\` in RFC 3339 date format.
    | String
      -- ^ @STRING@
      -- Encoded as \`string\`.
    | Bytes
      -- ^ @BYTES@
      -- Encoded as a base64-encoded \`string\`, as described in RFC 4648,
      -- section 4.
    | Array
      -- ^ @ARRAY@
      -- Encoded as \`list\`, where the list elements are represented according
      -- to array_element_type.
    | Struct
      -- ^ @STRUCT@
      -- Encoded as \`list\`, where list element \`i\` is represented according
      -- to [struct_type.fields[i]][google.spanner.v1.StructType.fields].
    | Numeric
      -- ^ @NUMERIC@
      -- Encoded as \`string\`, in decimal format or scientific notation format.
      -- Decimal format: \`[+-]Digits[.[Digits]]\` or \`+-.Digits\` Scientific
      -- notation: \`[+-]Digits[.[Digits]][ExponentIndicator[+-]Digits]\` or
      -- \`+-.Digits[ExponentIndicator[+-]Digits]\` (ExponentIndicator is
      -- \`\"e\"\` or \`\"E\"\`)
    | JSON
      -- ^ @JSON@
      -- Encoded as a JSON-formatted \'string\' as described in RFC 7159. The
      -- following rules will be applied when parsing JSON input: - Whitespace
      -- will be stripped from the document. - If a JSON object has duplicate
      -- keys, only the first key will be preserved. - Members of a JSON object
      -- are not guaranteed to have their order preserved. JSON array elements
      -- will have their order preserved.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TypeCode

instance FromHttpApiData TypeCode where
    parseQueryParam = \case
        "TYPE_CODE_UNSPECIFIED" -> Right TypeCodeUnspecified
        "BOOL" -> Right Bool
        "INT64" -> Right INT64
        "FLOAT64" -> Right FLOAT64
        "TIMESTAMP" -> Right Timestamp
        "DATE" -> Right Date
        "STRING" -> Right String
        "BYTES" -> Right Bytes
        "ARRAY" -> Right Array
        "STRUCT" -> Right Struct
        "NUMERIC" -> Right Numeric
        "JSON" -> Right JSON
        x -> Left ("Unable to parse TypeCode from: " <> x)

instance ToHttpApiData TypeCode where
    toQueryParam = \case
        TypeCodeUnspecified -> "TYPE_CODE_UNSPECIFIED"
        Bool -> "BOOL"
        INT64 -> "INT64"
        FLOAT64 -> "FLOAT64"
        Timestamp -> "TIMESTAMP"
        Date -> "DATE"
        String -> "STRING"
        Bytes -> "BYTES"
        Array -> "ARRAY"
        Struct -> "STRUCT"
        Numeric -> "NUMERIC"
        JSON -> "JSON"

instance FromJSON TypeCode where
    parseJSON = parseJSONText "TypeCode"

instance ToJSON TypeCode where
    toJSON = toJSONText

-- | Specifies which parts of the Scan should be returned in the response.
-- Note, if left unspecified, the FULL view is assumed.
data ProjectsInstancesDatabasesGetScansView
    = ViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Not specified, equivalent to SUMMARY.
    | Summary
      -- ^ @SUMMARY@
      -- Server responses only include \`name\`, \`details\`, \`start_time\` and
      -- \`end_time\`. The default value. Note, the ListScans method may only use
      -- this view type, others view types are not supported.
    | Full
      -- ^ @FULL@
      -- Full representation of the scan is returned in the server response,
      -- including \`data\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsInstancesDatabasesGetScansView

instance FromHttpApiData ProjectsInstancesDatabasesGetScansView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right ViewUnspecified
        "SUMMARY" -> Right Summary
        "FULL" -> Right Full
        x -> Left ("Unable to parse ProjectsInstancesDatabasesGetScansView from: " <> x)

instance ToHttpApiData ProjectsInstancesDatabasesGetScansView where
    toQueryParam = \case
        ViewUnspecified -> "VIEW_UNSPECIFIED"
        Summary -> "SUMMARY"
        Full -> "FULL"

instance FromJSON ProjectsInstancesDatabasesGetScansView where
    parseJSON = parseJSONText "ProjectsInstancesDatabasesGetScansView"

instance ToJSON ProjectsInstancesDatabasesGetScansView where
    toJSON = toJSONText

-- | The aggregation function used to aggregate each key bucket
data MetricAggregation
    = AggregationUnspecified
      -- ^ @AGGREGATION_UNSPECIFIED@
      -- Required default value.
    | Max
      -- ^ @MAX@
      -- Use the maximum of all values.
    | Sum
      -- ^ @SUM@
      -- Use the sum of all values.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetricAggregation

instance FromHttpApiData MetricAggregation where
    parseQueryParam = \case
        "AGGREGATION_UNSPECIFIED" -> Right AggregationUnspecified
        "MAX" -> Right Max
        "SUM" -> Right Sum
        x -> Left ("Unable to parse MetricAggregation from: " <> x)

instance ToHttpApiData MetricAggregation where
    toQueryParam = \case
        AggregationUnspecified -> "AGGREGATION_UNSPECIFIED"
        Max -> "MAX"
        Sum -> "SUM"

instance FromJSON MetricAggregation where
    parseJSON = parseJSONText "MetricAggregation"

instance ToJSON MetricAggregation where
    toJSON = toJSONText

-- | The type of the restore source.
data RestoreInfoSourceType
    = RISTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- No restore associated.
    | RISTBackup
      -- ^ @BACKUP@
      -- A backup was used as the source of the restore.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RestoreInfoSourceType

instance FromHttpApiData RestoreInfoSourceType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right RISTTypeUnspecified
        "BACKUP" -> Right RISTBackup
        x -> Left ("Unable to parse RestoreInfoSourceType from: " <> x)

instance ToHttpApiData RestoreInfoSourceType where
    toQueryParam = \case
        RISTTypeUnspecified -> "TYPE_UNSPECIFIED"
        RISTBackup -> "BACKUP"

instance FromJSON RestoreInfoSourceType where
    parseJSON = parseJSONText "RestoreInfoSourceType"

instance ToJSON RestoreInfoSourceType where
    toJSON = toJSONText

-- | Used to determine the type of node. May be needed for visualizing
-- different kinds of nodes differently. For example, If the node is a
-- SCALAR node, it will have a condensed representation which can be used
-- to directly embed a description of the node in its parent.
data PlanNodeKind
    = KindUnspecified
      -- ^ @KIND_UNSPECIFIED@
      -- Not specified.
    | Relational
      -- ^ @RELATIONAL@
      -- Denotes a Relational operator node in the expression tree. Relational
      -- operators represent iterative processing of rows during query execution.
      -- For example, a \`TableScan\` operation that reads rows from a table.
    | Scalar
      -- ^ @SCALAR@
      -- Denotes a Scalar node in the expression tree. Scalar nodes represent
      -- non-iterable entities in the query plan. For example, constants or
      -- arithmetic operators appearing inside predicate expressions or
      -- references to column names.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlanNodeKind

instance FromHttpApiData PlanNodeKind where
    parseQueryParam = \case
        "KIND_UNSPECIFIED" -> Right KindUnspecified
        "RELATIONAL" -> Right Relational
        "SCALAR" -> Right Scalar
        x -> Left ("Unable to parse PlanNodeKind from: " <> x)

instance ToHttpApiData PlanNodeKind where
    toQueryParam = \case
        KindUnspecified -> "KIND_UNSPECIFIED"
        Relational -> "RELATIONAL"
        Scalar -> "SCALAR"

instance FromJSON PlanNodeKind where
    parseJSON = parseJSONText "PlanNodeKind"

instance ToJSON PlanNodeKind where
    toJSON = toJSONText

-- | The unit for the key: e.g. \'key\' or \'chunk\'.
data VisualizationDataKeyUnit
    = KeyUnitUnspecified
      -- ^ @KEY_UNIT_UNSPECIFIED@
      -- Required default value
    | Key
      -- ^ @KEY@
      -- Each entry corresponds to one key
    | Chunk
      -- ^ @CHUNK@
      -- Each entry corresponds to a chunk of keys
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VisualizationDataKeyUnit

instance FromHttpApiData VisualizationDataKeyUnit where
    parseQueryParam = \case
        "KEY_UNIT_UNSPECIFIED" -> Right KeyUnitUnspecified
        "KEY" -> Right Key
        "CHUNK" -> Right Chunk
        x -> Left ("Unable to parse VisualizationDataKeyUnit from: " <> x)

instance ToHttpApiData VisualizationDataKeyUnit where
    toQueryParam = \case
        KeyUnitUnspecified -> "KEY_UNIT_UNSPECIFIED"
        Key -> "KEY"
        Chunk -> "CHUNK"

instance FromJSON VisualizationDataKeyUnit where
    parseJSON = parseJSONText "VisualizationDataKeyUnit"

instance ToJSON VisualizationDataKeyUnit where
    toJSON = toJSONText

-- | Specifies which parts of the Scan should be returned in the response.
-- Note, only the SUMMARY view (the default) is currently supported for
-- ListScans.
data ScansListView
    = SLVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- Not specified, equivalent to SUMMARY.
    | SLVSummary
      -- ^ @SUMMARY@
      -- Server responses only include \`name\`, \`details\`, \`start_time\` and
      -- \`end_time\`. The default value. Note, the ListScans method may only use
      -- this view type, others view types are not supported.
    | SLVFull
      -- ^ @FULL@
      -- Full representation of the scan is returned in the server response,
      -- including \`data\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScansListView

instance FromHttpApiData ScansListView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right SLVViewUnspecified
        "SUMMARY" -> Right SLVSummary
        "FULL" -> Right SLVFull
        x -> Left ("Unable to parse ScansListView from: " <> x)

instance ToHttpApiData ScansListView where
    toQueryParam = \case
        SLVViewUnspecified -> "VIEW_UNSPECIFIED"
        SLVSummary -> "SUMMARY"
        SLVFull -> "FULL"

instance FromJSON ScansListView where
    parseJSON = parseJSONText "ScansListView"

instance ToJSON ScansListView where
    toJSON = toJSONText

-- | Output only. The type of encryption.
data EncryptionInfoEncryptionType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Encryption type was not specified, though data at rest remains
      -- encrypted.
    | GoogleDefaultEncryption
      -- ^ @GOOGLE_DEFAULT_ENCRYPTION@
      -- The data is encrypted at rest with a key that is fully managed by
      -- Google. No key version or status will be populated. This is the default
      -- state.
    | CustomerManagedEncryption
      -- ^ @CUSTOMER_MANAGED_ENCRYPTION@
      -- The data is encrypted at rest with a key that is managed by the
      -- customer. The active version of the key. \`kms_key_version\` will be
      -- populated, and \`encryption_status\` may be populated.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EncryptionInfoEncryptionType

instance FromHttpApiData EncryptionInfoEncryptionType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "GOOGLE_DEFAULT_ENCRYPTION" -> Right GoogleDefaultEncryption
        "CUSTOMER_MANAGED_ENCRYPTION" -> Right CustomerManagedEncryption
        x -> Left ("Unable to parse EncryptionInfoEncryptionType from: " <> x)

instance ToHttpApiData EncryptionInfoEncryptionType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        GoogleDefaultEncryption -> "GOOGLE_DEFAULT_ENCRYPTION"
        CustomerManagedEncryption -> "CUSTOMER_MANAGED_ENCRYPTION"

instance FromJSON EncryptionInfoEncryptionType where
    parseJSON = parseJSONText "EncryptionInfoEncryptionType"

instance ToJSON EncryptionInfoEncryptionType where
    toJSON = toJSONText

-- | The type of replica.
data ReplicaInfoType
    = RITTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Not specified.
    | RITReadWrite
      -- ^ @READ_WRITE@
      -- Read-write replicas support both reads and writes. These replicas: *
      -- Maintain a full copy of your data. * Serve reads. * Can vote whether to
      -- commit a write. * Participate in leadership election. * Are eligible to
      -- become a leader.
    | RITReadOnly
      -- ^ @READ_ONLY@
      -- Read-only replicas only support reads (not writes). Read-only replicas:
      -- * Maintain a full copy of your data. * Serve reads. * Do not participate
      -- in voting to commit writes. * Are not eligible to become a leader.
    | RITWitness
      -- ^ @WITNESS@
      -- Witness replicas don\'t support reads but do participate in voting to
      -- commit writes. Witness replicas: * Do not maintain a full copy of data.
      -- * Do not serve reads. * Vote whether to commit writes. * Participate in
      -- leader election but are not eligible to become leader.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReplicaInfoType

instance FromHttpApiData ReplicaInfoType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right RITTypeUnspecified
        "READ_WRITE" -> Right RITReadWrite
        "READ_ONLY" -> Right RITReadOnly
        "WITNESS" -> Right RITWitness
        x -> Left ("Unable to parse ReplicaInfoType from: " <> x)

instance ToHttpApiData ReplicaInfoType where
    toQueryParam = \case
        RITTypeUnspecified -> "TYPE_UNSPECIFIED"
        RITReadWrite -> "READ_WRITE"
        RITReadOnly -> "READ_ONLY"
        RITWitness -> "WITNESS"

instance FromJSON ReplicaInfoType where
    parseJSON = parseJSONText "ReplicaInfoType"

instance ToJSON ReplicaInfoType where
    toJSON = toJSONText

-- | Used to control the amount of debugging information returned in
-- ResultSetStats. If partition_token is set, query_mode can only be set to
-- QueryMode.NORMAL.
data ExecuteSQLRequestQueryMode
    = Normal
      -- ^ @NORMAL@
      -- The default mode. Only the statement results are returned.
    | Plan
      -- ^ @PLAN@
      -- This mode returns only the query plan, without any results or execution
      -- statistics information.
    | ProFile
      -- ^ @PROFILE@
      -- This mode returns both the query plan and the execution statistics along
      -- with the results.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExecuteSQLRequestQueryMode

instance FromHttpApiData ExecuteSQLRequestQueryMode where
    parseQueryParam = \case
        "NORMAL" -> Right Normal
        "PLAN" -> Right Plan
        "PROFILE" -> Right ProFile
        x -> Left ("Unable to parse ExecuteSQLRequestQueryMode from: " <> x)

instance ToHttpApiData ExecuteSQLRequestQueryMode where
    toQueryParam = \case
        Normal -> "NORMAL"
        Plan -> "PLAN"
        ProFile -> "PROFILE"

instance FromJSON ExecuteSQLRequestQueryMode where
    parseJSON = parseJSONText "ExecuteSQLRequestQueryMode"

instance ToJSON ExecuteSQLRequestQueryMode where
    toJSON = toJSONText

-- | The severity of the diagnostic message.
data DiagnosticMessageSeverity
    = SeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Required default value.
    | Info
      -- ^ @INFO@
      -- Lowest severity level \"Info\".
    | Warning
      -- ^ @WARNING@
      -- Middle severity level \"Warning\".
    | Error'
      -- ^ @ERROR@
      -- Severity level signaling an error \"Error\"
    | Fatal
      -- ^ @FATAL@
      -- Severity level signaling a non recoverable error \"Fatal\"
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiagnosticMessageSeverity

instance FromHttpApiData DiagnosticMessageSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right SeverityUnspecified
        "INFO" -> Right Info
        "WARNING" -> Right Warning
        "ERROR" -> Right Error'
        "FATAL" -> Right Fatal
        x -> Left ("Unable to parse DiagnosticMessageSeverity from: " <> x)

instance ToHttpApiData DiagnosticMessageSeverity where
    toQueryParam = \case
        SeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        Info -> "INFO"
        Warning -> "WARNING"
        Error' -> "ERROR"
        Fatal -> "FATAL"

instance FromJSON DiagnosticMessageSeverity where
    parseJSON = parseJSONText "DiagnosticMessageSeverity"

instance ToJSON DiagnosticMessageSeverity where
    toJSON = toJSONText

-- | The severity of this context.
data ContextValueSeverity
    = CVSSeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Required default value.
    | CVSInfo
      -- ^ @INFO@
      -- Lowest severity level \"Info\".
    | CVSWarning
      -- ^ @WARNING@
      -- Middle severity level \"Warning\".
    | CVSError'
      -- ^ @ERROR@
      -- Severity level signaling an error \"Error\"
    | CVSFatal
      -- ^ @FATAL@
      -- Severity level signaling a non recoverable error \"Fatal\"
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContextValueSeverity

instance FromHttpApiData ContextValueSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right CVSSeverityUnspecified
        "INFO" -> Right CVSInfo
        "WARNING" -> Right CVSWarning
        "ERROR" -> Right CVSError'
        "FATAL" -> Right CVSFatal
        x -> Left ("Unable to parse ContextValueSeverity from: " <> x)

instance ToHttpApiData ContextValueSeverity where
    toQueryParam = \case
        CVSSeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        CVSInfo -> "INFO"
        CVSWarning -> "WARNING"
        CVSError' -> "ERROR"
        CVSFatal -> "FATAL"

instance FromJSON ContextValueSeverity where
    parseJSON = parseJSONText "ContextValueSeverity"

instance ToJSON ContextValueSeverity where
    toJSON = toJSONText

-- | Required. The encryption type of the restored database.
data RestoreDatabaseEncryptionConfigEncryptionType
    = RDECETEncryptionTypeUnspecified
      -- ^ @ENCRYPTION_TYPE_UNSPECIFIED@
      -- Unspecified. Do not use.
    | RDECETUseConfigDefaultOrBackupEncryption
      -- ^ @USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION@
      -- This is the default option when encryption_config is not specified.
    | RDECETGoogleDefaultEncryption
      -- ^ @GOOGLE_DEFAULT_ENCRYPTION@
      -- Use Google default encryption.
    | RDECETCustomerManagedEncryption
      -- ^ @CUSTOMER_MANAGED_ENCRYPTION@
      -- Use customer managed encryption. If specified, \`kms_key_name\` must
      -- must contain a valid Cloud KMS key.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RestoreDatabaseEncryptionConfigEncryptionType

instance FromHttpApiData RestoreDatabaseEncryptionConfigEncryptionType where
    parseQueryParam = \case
        "ENCRYPTION_TYPE_UNSPECIFIED" -> Right RDECETEncryptionTypeUnspecified
        "USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION" -> Right RDECETUseConfigDefaultOrBackupEncryption
        "GOOGLE_DEFAULT_ENCRYPTION" -> Right RDECETGoogleDefaultEncryption
        "CUSTOMER_MANAGED_ENCRYPTION" -> Right RDECETCustomerManagedEncryption
        x -> Left ("Unable to parse RestoreDatabaseEncryptionConfigEncryptionType from: " <> x)

instance ToHttpApiData RestoreDatabaseEncryptionConfigEncryptionType where
    toQueryParam = \case
        RDECETEncryptionTypeUnspecified -> "ENCRYPTION_TYPE_UNSPECIFIED"
        RDECETUseConfigDefaultOrBackupEncryption -> "USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION"
        RDECETGoogleDefaultEncryption -> "GOOGLE_DEFAULT_ENCRYPTION"
        RDECETCustomerManagedEncryption -> "CUSTOMER_MANAGED_ENCRYPTION"

instance FromJSON RestoreDatabaseEncryptionConfigEncryptionType where
    parseJSON = parseJSONText "RestoreDatabaseEncryptionConfigEncryptionType"

instance ToJSON RestoreDatabaseEncryptionConfigEncryptionType where
    toJSON = toJSONText

-- | Required. The encryption type of the backup.
data ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
    = PIBCECETEncryptionTypeUnspecified
      -- ^ @ENCRYPTION_TYPE_UNSPECIFIED@
      -- Unspecified. Do not use.
    | PIBCECETUseDatabaseEncryption
      -- ^ @USE_DATABASE_ENCRYPTION@
      -- Use the same encryption configuration as the database. This is the
      -- default option when encryption_config is empty. For example, if the
      -- database is using \`Customer_Managed_Encryption\`, the backup will be
      -- using the same Cloud KMS key as the database.
    | PIBCECETGoogleDefaultEncryption
      -- ^ @GOOGLE_DEFAULT_ENCRYPTION@
      -- Use Google default encryption.
    | PIBCECETCustomerManagedEncryption
      -- ^ @CUSTOMER_MANAGED_ENCRYPTION@
      -- Use customer managed encryption. If specified, \`kms_key_name\` must
      -- contain a valid Cloud KMS key.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType

instance FromHttpApiData ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType where
    parseQueryParam = \case
        "ENCRYPTION_TYPE_UNSPECIFIED" -> Right PIBCECETEncryptionTypeUnspecified
        "USE_DATABASE_ENCRYPTION" -> Right PIBCECETUseDatabaseEncryption
        "GOOGLE_DEFAULT_ENCRYPTION" -> Right PIBCECETGoogleDefaultEncryption
        "CUSTOMER_MANAGED_ENCRYPTION" -> Right PIBCECETCustomerManagedEncryption
        x -> Left ("Unable to parse ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType from: " <> x)

instance ToHttpApiData ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType where
    toQueryParam = \case
        PIBCECETEncryptionTypeUnspecified -> "ENCRYPTION_TYPE_UNSPECIFIED"
        PIBCECETUseDatabaseEncryption -> "USE_DATABASE_ENCRYPTION"
        PIBCECETGoogleDefaultEncryption -> "GOOGLE_DEFAULT_ENCRYPTION"
        PIBCECETCustomerManagedEncryption -> "CUSTOMER_MANAGED_ENCRYPTION"

instance FromJSON ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType where
    parseJSON = parseJSONText "ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType"

instance ToJSON ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType where
    toJSON = toJSONText

-- | Output only. The current database state.
data DatabaseState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not specified.
    | Creating
      -- ^ @CREATING@
      -- The database is still being created. Operations on the database may fail
      -- with \`FAILED_PRECONDITION\` in this state.
    | Ready
      -- ^ @READY@
      -- The database is fully created and ready for use.
    | ReadyOptimizing
      -- ^ @READY_OPTIMIZING@
      -- The database is fully created and ready for use, but is still being
      -- optimized for performance and cannot handle full load. In this state,
      -- the database still references the backup it was restore from, preventing
      -- the backup from being deleted. When optimizations are complete, the full
      -- performance of the database will be restored, and the database will
      -- transition to \`READY\` state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DatabaseState

instance FromHttpApiData DatabaseState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "READY" -> Right Ready
        "READY_OPTIMIZING" -> Right ReadyOptimizing
        x -> Left ("Unable to parse DatabaseState from: " <> x)

instance ToHttpApiData DatabaseState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Ready -> "READY"
        ReadyOptimizing -> "READY_OPTIMIZING"

instance FromJSON DatabaseState where
    parseJSON = parseJSONText "DatabaseState"

instance ToJSON DatabaseState where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The type of the restore source.
data RestoreDatabaseMetadataSourceType
    = RDMSTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- No restore associated.
    | RDMSTBackup
      -- ^ @BACKUP@
      -- A backup was used as the source of the restore.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RestoreDatabaseMetadataSourceType

instance FromHttpApiData RestoreDatabaseMetadataSourceType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right RDMSTTypeUnspecified
        "BACKUP" -> Right RDMSTBackup
        x -> Left ("Unable to parse RestoreDatabaseMetadataSourceType from: " <> x)

instance ToHttpApiData RestoreDatabaseMetadataSourceType where
    toQueryParam = \case
        RDMSTTypeUnspecified -> "TYPE_UNSPECIFIED"
        RDMSTBackup -> "BACKUP"

instance FromJSON RestoreDatabaseMetadataSourceType where
    parseJSON = parseJSONText "RestoreDatabaseMetadataSourceType"

instance ToJSON RestoreDatabaseMetadataSourceType where
    toJSON = toJSONText

-- | Priority for the request.
data RequestOptionsPriority
    = PriorityUnspecified
      -- ^ @PRIORITY_UNSPECIFIED@
      -- \`PRIORITY_UNSPECIFIED\` is equivalent to \`PRIORITY_HIGH\`.
    | PriorityLow
      -- ^ @PRIORITY_LOW@
      -- This specifies that the request is low priority.
    | PriorityMedium
      -- ^ @PRIORITY_MEDIUM@
      -- This specifies that the request is medium priority.
    | PriorityHigh
      -- ^ @PRIORITY_HIGH@
      -- This specifies that the request is high priority.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RequestOptionsPriority

instance FromHttpApiData RequestOptionsPriority where
    parseQueryParam = \case
        "PRIORITY_UNSPECIFIED" -> Right PriorityUnspecified
        "PRIORITY_LOW" -> Right PriorityLow
        "PRIORITY_MEDIUM" -> Right PriorityMedium
        "PRIORITY_HIGH" -> Right PriorityHigh
        x -> Left ("Unable to parse RequestOptionsPriority from: " <> x)

instance ToHttpApiData RequestOptionsPriority where
    toQueryParam = \case
        PriorityUnspecified -> "PRIORITY_UNSPECIFIED"
        PriorityLow -> "PRIORITY_LOW"
        PriorityMedium -> "PRIORITY_MEDIUM"
        PriorityHigh -> "PRIORITY_HIGH"

instance FromJSON RequestOptionsPriority where
    parseJSON = parseJSONText "RequestOptionsPriority"

instance ToJSON RequestOptionsPriority where
    toJSON = toJSONText

-- | Output only. The current instance state. For CreateInstance, the state
-- must be either omitted or set to \`CREATING\`. For UpdateInstance, the
-- state must be either omitted or set to \`READY\`.
data InstanceState
    = ISStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not specified.
    | ISCreating
      -- ^ @CREATING@
      -- The instance is still being created. Resources may not be available yet,
      -- and operations such as database creation may not work.
    | ISReady
      -- ^ @READY@
      -- The instance is fully created and ready to do work such as creating
      -- databases.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceState

instance FromHttpApiData InstanceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right ISStateUnspecified
        "CREATING" -> Right ISCreating
        "READY" -> Right ISReady
        x -> Left ("Unable to parse InstanceState from: " <> x)

instance ToHttpApiData InstanceState where
    toQueryParam = \case
        ISStateUnspecified -> "STATE_UNSPECIFIED"
        ISCreating -> "CREATING"
        ISReady -> "READY"

instance FromJSON InstanceState where
    parseJSON = parseJSONText "InstanceState"

instance ToJSON InstanceState where
    toJSON = toJSONText

-- | Output only. The current state of the backup.
data BackupState
    = BSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not specified.
    | BSCreating
      -- ^ @CREATING@
      -- The pending backup is still being created. Operations on the backup may
      -- fail with \`FAILED_PRECONDITION\` in this state.
    | BSReady
      -- ^ @READY@
      -- The backup is complete and ready for use.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackupState

instance FromHttpApiData BackupState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right BSStateUnspecified
        "CREATING" -> Right BSCreating
        "READY" -> Right BSReady
        x -> Left ("Unable to parse BackupState from: " <> x)

instance ToHttpApiData BackupState where
    toQueryParam = \case
        BSStateUnspecified -> "STATE_UNSPECIFIED"
        BSCreating -> "CREATING"
        BSReady -> "READY"

instance FromJSON BackupState where
    parseJSON = parseJSONText "BackupState"

instance ToJSON BackupState where
    toJSON = toJSONText
