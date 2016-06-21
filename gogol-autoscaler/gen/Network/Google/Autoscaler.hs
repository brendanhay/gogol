{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Autoscaler
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Compute Engine Autoscaler API provides autoscaling for groups
-- of Cloud VMs.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference>
module Network.Google.Autoscaler
    (
    -- * Service Configuration
      autoscalerService

    -- * OAuth Scopes
    , computeScope
    , computeReadOnlyScope

    -- * API Declaration
    , AutoscalerAPI

    -- * Resources

    -- ** autoscaler.autoscalers.delete
    , module Network.Google.Resource.Autoscaler.Autoscalers.Delete

    -- ** autoscaler.autoscalers.get
    , module Network.Google.Resource.Autoscaler.Autoscalers.Get

    -- ** autoscaler.autoscalers.insert
    , module Network.Google.Resource.Autoscaler.Autoscalers.Insert

    -- ** autoscaler.autoscalers.list
    , module Network.Google.Resource.Autoscaler.Autoscalers.List

    -- ** autoscaler.autoscalers.patch
    , module Network.Google.Resource.Autoscaler.Autoscalers.Patch

    -- ** autoscaler.autoscalers.update
    , module Network.Google.Resource.Autoscaler.Autoscalers.Update

    -- ** autoscaler.zoneOperations.delete
    , module Network.Google.Resource.Autoscaler.ZoneOperations.Delete

    -- ** autoscaler.zoneOperations.get
    , module Network.Google.Resource.Autoscaler.ZoneOperations.Get

    -- ** autoscaler.zoneOperations.list
    , module Network.Google.Resource.Autoscaler.ZoneOperations.List

    -- ** autoscaler.zones.list
    , module Network.Google.Resource.Autoscaler.Zones.List

    -- * Types

    -- ** OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

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
    , oDescription
    , oTargetLink
    , oClientOperationId

    -- ** AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

    -- ** Zone
    , Zone
    , zone
    , zStatus
    , zKind
    , zSelfLink
    , zName
    , zCreationTimestamp
    , zId
    , zRegion
    , zDescription
    , zDeprecated

    -- ** ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId

    -- ** AutoscalerListResponse
    , AutoscalerListResponse
    , autoscalerListResponse
    , alrNextPageToken
    , alrKind
    , alrItems

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

    -- ** OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- ** AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget

    -- ** OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage
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

-- | Represents the entirety of the methods and resources available for the Google Compute Engine Autoscaler API service.
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
