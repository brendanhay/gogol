{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ContainerEngine.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ContainerEngine.Types.Sum where

import           Network.Google.Prelude

-- | [Output only] The current status of this cluster.
data ClusterStatus
    = CSError
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
        "error" -> Just CSError
        "provisioning" -> Just CSProvisioning
        "running" -> Just CSRunning
        "stopping" -> Just CSStopping
        _ -> Nothing

instance ToText ClusterStatus where
    toText = \case
        CSError -> "error"
        CSProvisioning -> "provisioning"
        CSRunning -> "running"
        CSStopping -> "stopping"

-- | The operation type.
data OperationOperationType
    = OOTCreateCluster
      -- ^ @createCluster@
    | OOTDeleteCluster
      -- ^ @deleteCluster@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationOperationType

instance FromText OperationOperationType where
    fromText = \case
        "createCluster" -> Just OOTCreateCluster
        "deleteCluster" -> Just OOTDeleteCluster
        _ -> Nothing

instance ToText OperationOperationType where
    toText = \case
        OOTCreateCluster -> "createCluster"
        OOTDeleteCluster -> "deleteCluster"

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
