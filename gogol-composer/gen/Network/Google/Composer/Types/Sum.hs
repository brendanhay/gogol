{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Composer.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Composer.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Output only. The type of operation being performed.
data OperationMetadataOperationType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Unused.
    | Create
      -- ^ @CREATE@
      -- A resource creation operation.
    | Delete'
      -- ^ @DELETE@
      -- A resource deletion operation.
    | Update
      -- ^ @UPDATE@
      -- A resource update operation.
    | Check
      -- ^ @CHECK@
      -- A resource check operation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationMetadataOperationType

instance FromHttpApiData OperationMetadataOperationType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "CREATE" -> Right Create
        "DELETE" -> Right Delete'
        "UPDATE" -> Right Update
        "CHECK" -> Right Check
        x -> Left ("Unable to parse OperationMetadataOperationType from: " <> x)

instance ToHttpApiData OperationMetadataOperationType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Create -> "CREATE"
        Delete' -> "DELETE"
        Update -> "UPDATE"
        Check -> "CHECK"

instance FromJSON OperationMetadataOperationType where
    parseJSON = parseJSONText "OperationMetadataOperationType"

instance ToJSON OperationMetadataOperationType where
    toJSON = toJSONText

-- | Output only. Whether build has succeeded or failed on modules conflicts.
data CheckUpgradeResponseContainsPypiModulesConflict
    = ConflictResultUnspecified
      -- ^ @CONFLICT_RESULT_UNSPECIFIED@
      -- It is unknown whether build had conflicts or not.
    | Conflict
      -- ^ @CONFLICT@
      -- There were python packages conflicts.
    | NoConflict
      -- ^ @NO_CONFLICT@
      -- There were no python packages conflicts.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CheckUpgradeResponseContainsPypiModulesConflict

instance FromHttpApiData CheckUpgradeResponseContainsPypiModulesConflict where
    parseQueryParam = \case
        "CONFLICT_RESULT_UNSPECIFIED" -> Right ConflictResultUnspecified
        "CONFLICT" -> Right Conflict
        "NO_CONFLICT" -> Right NoConflict
        x -> Left ("Unable to parse CheckUpgradeResponseContainsPypiModulesConflict from: " <> x)

instance ToHttpApiData CheckUpgradeResponseContainsPypiModulesConflict where
    toQueryParam = \case
        ConflictResultUnspecified -> "CONFLICT_RESULT_UNSPECIFIED"
        Conflict -> "CONFLICT"
        NoConflict -> "NO_CONFLICT"

instance FromJSON CheckUpgradeResponseContainsPypiModulesConflict where
    parseJSON = parseJSONText "CheckUpgradeResponseContainsPypiModulesConflict"

instance ToJSON CheckUpgradeResponseContainsPypiModulesConflict where
    toJSON = toJSONText

-- | Output only. The current operation state.
data OperationMetadataState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Unused.
    | Pending
      -- ^ @PENDING@
      -- The operation has been created but is not yet started.
    | Running
      -- ^ @RUNNING@
      -- The operation is underway.
    | Succeeded
      -- ^ @SUCCEEDED@
      -- The operation completed successfully.
    | Successful
      -- ^ @SUCCESSFUL@
    | Failed
      -- ^ @FAILED@
      -- The operation is no longer running but did not succeed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationMetadataState

instance FromHttpApiData OperationMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        "SUCCEEDED" -> Right Succeeded
        "SUCCESSFUL" -> Right Successful
        "FAILED" -> Right Failed
        x -> Left ("Unable to parse OperationMetadataState from: " <> x)

instance ToHttpApiData OperationMetadataState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Succeeded -> "SUCCEEDED"
        Successful -> "SUCCESSFUL"
        Failed -> "FAILED"

instance FromJSON OperationMetadataState where
    parseJSON = parseJSONText "OperationMetadataState"

instance ToJSON OperationMetadataState where
    toJSON = toJSONText

-- | The current state of the environment.
data EnvironmentState
    = ESStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The state of the environment is unknown.
    | ESCreating
      -- ^ @CREATING@
      -- The environment is in the process of being created.
    | ESRunning
      -- ^ @RUNNING@
      -- The environment is currently running and healthy. It is ready for use.
    | ESUpdating
      -- ^ @UPDATING@
      -- The environment is being updated. It remains usable but cannot receive
      -- additional update requests or be deleted at this time.
    | ESDeleting
      -- ^ @DELETING@
      -- The environment is undergoing deletion. It cannot be used.
    | ESError'
      -- ^ @ERROR@
      -- The environment has encountered an error and cannot be used.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnvironmentState

instance FromHttpApiData EnvironmentState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right ESStateUnspecified
        "CREATING" -> Right ESCreating
        "RUNNING" -> Right ESRunning
        "UPDATING" -> Right ESUpdating
        "DELETING" -> Right ESDeleting
        "ERROR" -> Right ESError'
        x -> Left ("Unable to parse EnvironmentState from: " <> x)

instance ToHttpApiData EnvironmentState where
    toQueryParam = \case
        ESStateUnspecified -> "STATE_UNSPECIFIED"
        ESCreating -> "CREATING"
        ESRunning -> "RUNNING"
        ESUpdating -> "UPDATING"
        ESDeleting -> "DELETING"
        ESError' -> "ERROR"

instance FromJSON EnvironmentState where
    parseJSON = parseJSONText "EnvironmentState"

instance ToJSON EnvironmentState where
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
