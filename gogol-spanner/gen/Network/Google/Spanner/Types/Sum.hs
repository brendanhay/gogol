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

import           Network.Google.Prelude hiding (Bytes)

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

instance FromJSON TypeCode where
    parseJSON = parseJSONText "TypeCode"

instance ToJSON TypeCode where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DatabaseState

instance FromHttpApiData DatabaseState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "READY" -> Right Ready
        x -> Left ("Unable to parse DatabaseState from: " <> x)

instance ToHttpApiData DatabaseState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Ready -> "READY"

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
