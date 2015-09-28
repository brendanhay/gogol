{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Compute.Autoscaler
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
module Network.Google.Compute.Autoscaler
    (
    -- * REST Resources

    -- ** Google Compute Engine Autoscaler API
      ComputeAutoscaler
    , computeAutoscaler
    , computeAutoscalerURL

    -- ** autoscaler.autoscalers.delete
    , module Network.Google.API.Autoscaler.Autoscalers.Delete

    -- ** autoscaler.autoscalers.get
    , module Network.Google.API.Autoscaler.Autoscalers.Get

    -- ** autoscaler.autoscalers.insert
    , module Network.Google.API.Autoscaler.Autoscalers.Insert

    -- ** autoscaler.autoscalers.list
    , module Network.Google.API.Autoscaler.Autoscalers.List

    -- ** autoscaler.autoscalers.patch
    , module Network.Google.API.Autoscaler.Autoscalers.Patch

    -- ** autoscaler.autoscalers.update
    , module Network.Google.API.Autoscaler.Autoscalers.Update

    -- ** autoscaler.zoneOperations.delete
    , module Network.Google.API.Autoscaler.ZoneOperations.Delete

    -- ** autoscaler.zoneOperations.get
    , module Network.Google.API.Autoscaler.ZoneOperations.Get

    -- ** autoscaler.zoneOperations.list
    , module Network.Google.API.Autoscaler.ZoneOperations.List

    -- ** autoscaler.zones.list
    , module Network.Google.API.Autoscaler.Zones.List

    -- * Types

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

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** ZoneItemMaintenanceWindows
    , ZoneItemMaintenanceWindows
    , zoneItemMaintenanceWindows
    , zimwBeginTime
    , zimwName
    , zimwEndTime
    , zimwDescription

    -- ** Alt
    , Alt (..)

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

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

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

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- ** AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuUtilizationTargetType

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCpuUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

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

    -- ** AutoscalingPolicyCpuUtilization
    , AutoscalingPolicyCpuUtilization
    , autoscalingPolicyCpuUtilization
    , apcuUtilizationTarget
    ) where

import           Network.Google.API.Autoscaler.Autoscalers.Delete
import           Network.Google.API.Autoscaler.Autoscalers.Get
import           Network.Google.API.Autoscaler.Autoscalers.Insert
import           Network.Google.API.Autoscaler.Autoscalers.List
import           Network.Google.API.Autoscaler.Autoscalers.Patch
import           Network.Google.API.Autoscaler.Autoscalers.Update
import           Network.Google.API.Autoscaler.ZoneOperations.Delete
import           Network.Google.API.Autoscaler.ZoneOperations.Get
import           Network.Google.API.Autoscaler.ZoneOperations.List
import           Network.Google.API.Autoscaler.Zones.List
import           Network.Google.Compute.Autoscaler.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type ComputeAutoscaler =
     AutoscalersListAPI :<|> AutoscalersUpdateAPI :<|>
       ZonesListAPI
       :<|> AutoscalersInsertAPI
       :<|> ZoneOperationsDeleteAPI
       :<|> ZoneOperationsGetAPI
       :<|> AutoscalersDeleteAPI
       :<|> ZoneOperationsListAPI
       :<|> AutoscalersGetAPI
       :<|> AutoscalersPatchAPI

computeAutoscaler :: Proxy ComputeAutoscaler
computeAutoscaler = Proxy
