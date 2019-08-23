{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TPU.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TPU.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Output only. The current state for the TPU Node.
data NodeState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- TPU node state is not known\/set.
    | Creating
      -- ^ @CREATING@
      -- TPU node is being created.
    | Ready
      -- ^ @READY@
      -- TPU node has been created and is fully usable.
    | Restarting
      -- ^ @RESTARTING@
      -- TPU node is restarting.
    | Reimaging
      -- ^ @REIMAGING@
      -- TPU node is undergoing reimaging.
    | Deleting
      -- ^ @DELETING@
      -- TPU node is being deleted.
    | Repairing
      -- ^ @REPAIRING@
      -- TPU node is being repaired and may be unusable. Details can be found in
      -- the \`help_description\` field.
    | Stopped
      -- ^ @STOPPED@
      -- TPU node is stopped.
    | Stopping
      -- ^ @STOPPING@
      -- TPU node is currently stopping.
    | Starting
      -- ^ @STARTING@
      -- TPU node is currently starting.
    | Preempted
      -- ^ @PREEMPTED@
      -- TPU node has been preempted. Only applies to Preemptible TPU Nodes.
    | Terminated
      -- ^ @TERMINATED@
      -- TPU node has been terminated due to maintenance or has reached the end
      -- of its life cycle (for preemptible nodes).
    | Hiding
      -- ^ @HIDING@
      -- TPU node is currently hiding.
    | Hidden
      -- ^ @HIDDEN@
      -- TPU node has been hidden.
    | Unhiding
      -- ^ @UNHIDING@
      -- TPU node is currently unhiding.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeState

instance FromHttpApiData NodeState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "READY" -> Right Ready
        "RESTARTING" -> Right Restarting
        "REIMAGING" -> Right Reimaging
        "DELETING" -> Right Deleting
        "REPAIRING" -> Right Repairing
        "STOPPED" -> Right Stopped
        "STOPPING" -> Right Stopping
        "STARTING" -> Right Starting
        "PREEMPTED" -> Right Preempted
        "TERMINATED" -> Right Terminated
        "HIDING" -> Right Hiding
        "HIDDEN" -> Right Hidden
        "UNHIDING" -> Right Unhiding
        x -> Left ("Unable to parse NodeState from: " <> x)

instance ToHttpApiData NodeState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Ready -> "READY"
        Restarting -> "RESTARTING"
        Reimaging -> "REIMAGING"
        Deleting -> "DELETING"
        Repairing -> "REPAIRING"
        Stopped -> "STOPPED"
        Stopping -> "STOPPING"
        Starting -> "STARTING"
        Preempted -> "PREEMPTED"
        Terminated -> "TERMINATED"
        Hiding -> "HIDING"
        Hidden -> "HIDDEN"
        Unhiding -> "UNHIDING"

instance FromJSON NodeState where
    parseJSON = parseJSONText "NodeState"

instance ToJSON NodeState where
    toJSON = toJSONText

-- | The health status of the TPU node.
data NodeHealth
    = HealthUnspecified
      -- ^ @HEALTH_UNSPECIFIED@
      -- Health status is unknown: not initialized or failed to retrieve.
    | Healthy
      -- ^ @HEALTHY@
      -- The resource is healthy.
    | DeprecatedUnhealthy
      -- ^ @DEPRECATED_UNHEALTHY@
      -- The resource is unhealthy.
    | Timeout
      -- ^ @TIMEOUT@
      -- The resource is unresponsive.
    | UnhealthyTensorflow
      -- ^ @UNHEALTHY_TENSORFLOW@
      -- The in-guest ML stack is unhealthy.
    | UnhealthyMaintenance
      -- ^ @UNHEALTHY_MAINTENANCE@
      -- The node is under maintenance\/priority boost caused rescheduling and
      -- will resume running once rescheduled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeHealth

instance FromHttpApiData NodeHealth where
    parseQueryParam = \case
        "HEALTH_UNSPECIFIED" -> Right HealthUnspecified
        "HEALTHY" -> Right Healthy
        "DEPRECATED_UNHEALTHY" -> Right DeprecatedUnhealthy
        "TIMEOUT" -> Right Timeout
        "UNHEALTHY_TENSORFLOW" -> Right UnhealthyTensorflow
        "UNHEALTHY_MAINTENANCE" -> Right UnhealthyMaintenance
        x -> Left ("Unable to parse NodeHealth from: " <> x)

instance ToHttpApiData NodeHealth where
    toQueryParam = \case
        HealthUnspecified -> "HEALTH_UNSPECIFIED"
        Healthy -> "HEALTHY"
        DeprecatedUnhealthy -> "DEPRECATED_UNHEALTHY"
        Timeout -> "TIMEOUT"
        UnhealthyTensorflow -> "UNHEALTHY_TENSORFLOW"
        UnhealthyMaintenance -> "UNHEALTHY_MAINTENANCE"

instance FromJSON NodeHealth where
    parseJSON = parseJSONText "NodeHealth"

instance ToJSON NodeHealth where
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
