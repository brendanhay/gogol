{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

-- | The current status of the operation.
data OperationStatus
    = Done
      -- ^ @done@
    | Pending
      -- ^ @pending@
    | Running
      -- ^ @running@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationStatus

instance FromText OperationStatus where
    fromText = \case
        "done" -> Just Done
        "pending" -> Just Pending
        "running" -> Just Running
        _ -> Nothing

instance ToText OperationStatus where
    toText = \case
        Done -> "done"
        Pending -> "pending"
        Running -> "running"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText

-- | [Output only] The current status of this cluster.
data ClusterStatus
    = CSError'
      -- ^ @error@
    | CSProvisioning
      -- ^ @provisioning@
    | CSRunning
      -- ^ @running@
    | CSStopping
      -- ^ @stopping@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ClusterStatus

instance FromText ClusterStatus where
    fromText = \case
        "error" -> Just CSError'
        "provisioning" -> Just CSProvisioning
        "running" -> Just CSRunning
        "stopping" -> Just CSStopping
        _ -> Nothing

instance ToText ClusterStatus where
    toText = \case
        CSError' -> "error"
        CSProvisioning -> "provisioning"
        CSRunning -> "running"
        CSStopping -> "stopping"

instance FromJSON ClusterStatus where
    parseJSON = parseJSONText "ClusterStatus"

instance ToJSON ClusterStatus where
    toJSON = toJSONText
