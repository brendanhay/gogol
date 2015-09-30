{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ComputeAutoscaler
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google Compute Engine Autoscaler API provides autoscaling for groups
-- of Cloud VMs.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference>
module Network.Google.ComputeAutoscaler
    (
    -- * API
      ComputeAutoscalerAPI
    , computeAutoscalerAPI
    , computeAutoscalerURL

    -- * Service Methods

    -- * REST Resources

    -- ** AutoscalerAutoscalersDelete
    , module Autoscaler.Autoscalers.Delete

    -- ** AutoscalerAutoscalersGet
    , module Autoscaler.Autoscalers.Get

    -- ** AutoscalerAutoscalersInsert
    , module Autoscaler.Autoscalers.Insert

    -- ** AutoscalerAutoscalersList
    , module Autoscaler.Autoscalers.List

    -- ** AutoscalerAutoscalersPatch
    , module Autoscaler.Autoscalers.Patch

    -- ** AutoscalerAutoscalersUpdate
    , module Autoscaler.Autoscalers.Update

    -- ** AutoscalerZoneOperationsDelete
    , module Autoscaler.ZoneOperations.Delete

    -- ** AutoscalerZoneOperationsGet
    , module Autoscaler.ZoneOperations.Get

    -- ** AutoscalerZoneOperationsList
    , module Autoscaler.ZoneOperations.List

    -- ** AutoscalerZonesList
    , module Autoscaler.Zones.List

    -- * Types

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuUtilizationTargetType

    -- ** AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

    -- ** Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHttpErrorMessage
    , oZone
    , oWarnings
    , oHttpErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oTargetLink
    , oClientOperationId

    -- ** Zone
    , Zone
    , zone
    , zStatus
    , zMaintenanceWindows
    , zKind
    , zSelfLink
    , zName
    , zCreationTimestamp
    , zId
    , zRegion
    , zDescription
    , zDeprecated

    -- ** AutoscalerListResponse
    , AutoscalerListResponse
    , autoscalerListResponse
    , alrNextPageToken
    , alrKind
    , alrItems

    -- ** ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId

    -- ** AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCpuUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- ** Autoscaler
    , Autoscaler
    , autoscaler
    , aKind
    , aSelfLink
    , aName
    , aCreationTimestamp
    , aAutoscalingPolicy
    , aId
    , aDescription
    , aTarget

    -- ** AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget
    ) where

import           Network.Google.ComputeAutoscaler.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Autoscaler.Autoscalers.Delete
import           Network.Google.Resource.Autoscaler.Autoscalers.Get
import           Network.Google.Resource.Autoscaler.Autoscalers.Insert
import           Network.Google.Resource.Autoscaler.Autoscalers.List
import           Network.Google.Resource.Autoscaler.Autoscalers.Patch
import           Network.Google.Resource.Autoscaler.Autoscalers.Update
import           Network.Google.Resource.Autoscaler.ZoneOperations.Delete
import           Network.Google.Resource.Autoscaler.ZoneOperations.Get
import           Network.Google.Resource.Autoscaler.ZoneOperations.List
import           Network.Google.Resource.Autoscaler.Zones.List

{- $resources
TODO
-}

type ComputeAutoscalerAPI =
     Zones :<|> Autoscalers :<|> ZoneOperations

computeAutoscalerAPI :: Proxy ComputeAutoscalerAPI
computeAutoscalerAPI = Proxy
