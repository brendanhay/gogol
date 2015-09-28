{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Container.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Container.Types.Sum where

import           Network.Google.Prelude

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | [Output only] The current status of this cluster.
data ClusterStatus
    = Error'
      -- ^ @error@
    | Provisioning
      -- ^ @provisioning@
    | Running
      -- ^ @running@
    | Stopping
      -- ^ @stopping@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ClusterStatus

instance FromText ClusterStatus where
    fromText = \case
        "error" -> Just Error'
        "provisioning" -> Just Provisioning
        "running" -> Just Running
        "stopping" -> Just Stopping
        _ -> Nothing

instance ToText ClusterStatus where
    toText = \case
        Error' -> "error"
        Provisioning -> "provisioning"
        Running -> "running"
        Stopping -> "stopping"

instance FromJSON ClusterStatus where
    parseJSON = parseJSONText "ClusterStatus"

instance ToJSON ClusterStatus where
    toJSON = toJSONText

-- | The current status of the operation.
data OperationStatus
    = OSDone
      -- ^ @done@
    | OSPending
      -- ^ @pending@
    | OSRunning
      -- ^ @running@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationStatus

instance FromText OperationStatus where
    fromText = \case
        "done" -> Just OSDone
        "pending" -> Just OSPending
        "running" -> Just OSRunning
        _ -> Nothing

instance ToText OperationStatus where
    toText = \case
        OSDone -> "done"
        OSPending -> "pending"
        OSRunning -> "running"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText

-- | The operation type.
data OperationOperationType
    = CreateCluster
      -- ^ @createCluster@
    | DeleteCluster
      -- ^ @deleteCluster@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationOperationType

instance FromText OperationOperationType where
    fromText = \case
        "createCluster" -> Just CreateCluster
        "deleteCluster" -> Just DeleteCluster
        _ -> Nothing

instance ToText OperationOperationType where
    toText = \case
        CreateCluster -> "createCluster"
        DeleteCluster -> "deleteCluster"

instance FromJSON OperationOperationType where
    parseJSON = parseJSONText "OperationOperationType"

instance ToJSON OperationOperationType where
    toJSON = toJSONText
