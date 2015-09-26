{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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

-- | The operation type.
data OperationOperationType
    = OOTCreateCluster
      -- ^ @createCluster@
    | OOTDeleteCluster
      -- ^ @deleteCluster@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationOperationType

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
