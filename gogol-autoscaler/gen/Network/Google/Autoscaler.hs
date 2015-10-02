{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Autoscaler
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google Compute Engine Autoscaler API provides autoscaling for groups
-- of Cloud VMs.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference>
module Network.Google.Autoscaler
    (
    -- * API
      AutoscalerAPI
    , autoscalerAPI
    , autoscalerURL

    -- * Service Methods

    -- * REST Resources

    -- ** AutoscalerAutoscalersDelete
    , module Network.Google.Resource.Autoscaler.Autoscalers.Delete

    -- ** AutoscalerAutoscalersGet
    , module Network.Google.Resource.Autoscaler.Autoscalers.Get

    -- ** AutoscalerAutoscalersInsert
    , module Network.Google.Resource.Autoscaler.Autoscalers.Insert

    -- ** AutoscalerAutoscalersList
    , module Network.Google.Resource.Autoscaler.Autoscalers.List

    -- ** AutoscalerAutoscalersPatch
    , module Network.Google.Resource.Autoscaler.Autoscalers.Patch

    -- ** AutoscalerAutoscalersUpdate
    , module Network.Google.Resource.Autoscaler.Autoscalers.Update

    -- ** AutoscalerZoneOperationsDelete
    , module Network.Google.Resource.Autoscaler.ZoneOperations.Delete

    -- ** AutoscalerZoneOperationsGet
    , module Network.Google.Resource.Autoscaler.ZoneOperations.Get

    -- ** AutoscalerZoneOperationsList
    , module Network.Google.Resource.Autoscaler.ZoneOperations.List

    -- ** AutoscalerZonesList
    , module Network.Google.Resource.Autoscaler.Zones.List

    -- * Types

    -- ** OperationWarnings
    , OperationWarnings
    , operationWarnings
    , owData
    , owCode
    , owMessage

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- ** OperationWarningsData
    , OperationWarningsData
    , operationWarningsData
    , owdValue
    , owdKey

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
    , oHTTPErrorMessage
    , oZone
    , oWarnings
    , oHTTPErrorStatusCode
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

    -- ** ZoneMaintenanceWindows
    , ZoneMaintenanceWindows
    , zoneMaintenanceWindows
    , zmwBeginTime
    , zmwName
    , zmwEndTime
    , zmwDescription

    -- ** AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCPUUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

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

    -- ** OperationErrorErrors
    , OperationErrorErrors
    , operationErrorErrors
    , oeeLocation
    , oeeCode
    , oeeMessage

    -- ** AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget
    ) where

import           Network.Google.Autoscaler.Types
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

type AutoscalerAPI =
     ZonesListResource :<|> AutoscalersInsertResource :<|>
       AutoscalersListResource
       :<|> AutoscalersPatchResource
       :<|> AutoscalersGetResource
       :<|> AutoscalersDeleteResource
       :<|> AutoscalersUpdateResource
       :<|> ZoneOperationsListResource
       :<|> ZoneOperationsGetResource
       :<|> ZoneOperationsDeleteResource

autoscalerAPI :: Proxy AutoscalerAPI
autoscalerAPI = Proxy
