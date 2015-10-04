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

-- | [Output only] The current status of this cluster.
data Status
    = Error'
      -- ^ @error@
    | Provisioning
      -- ^ @provisioning@
    | Running
      -- ^ @running@
    | Stopping
      -- ^ @stopping@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Status

instance FromText Status where
    fromText = \case
        "error" -> Just Error'
        "provisioning" -> Just Provisioning
        "running" -> Just Running
        "stopping" -> Just Stopping
        _ -> Nothing

instance ToText Status where
    toText = \case
        Error' -> "error"
        Provisioning -> "provisioning"
        Running -> "running"
        Stopping -> "stopping"

instance FromJSON Status where
    parseJSON = parseJSONText "Status"

instance ToJSON Status where
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
data OperationType
    = CreateCluster
      -- ^ @createCluster@
    | DeleteCluster
      -- ^ @deleteCluster@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationType

instance FromText OperationType where
    fromText = \case
        "createCluster" -> Just CreateCluster
        "deleteCluster" -> Just DeleteCluster
        _ -> Nothing

instance ToText OperationType where
    toText = \case
        CreateCluster -> "createCluster"
        DeleteCluster -> "deleteCluster"

instance FromJSON OperationType where
    parseJSON = parseJSONText "OperationType"

instance ToJSON OperationType where
    toJSON = toJSONText
