{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ComputeEngineAutoscaler
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
module Network.Google.ComputeEngineAutoscaler
    (
    -- * Resources
      ComputeEngineAutoscaler
    , ZonesAPI
    , ZonesList
    , AutoscalersAPI
    , AutoscalersInsert
    , AutoscalersList
    , AutoscalersPatch
    , AutoscalersGet
    , AutoscalersDelete
    , AutoscalersUpdate
    , ZoneOperationsAPI
    , ZoneOperationsList
    , ZoneOperationsGet
    , ZoneOperationsDelete

    -- * Types

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
    , apCpuUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- ** AutoscalingPolicyCpuUtilization
    , AutoscalingPolicyCpuUtilization
    , autoscalingPolicyCpuUtilization
    , apcuUtilizationTarget

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

    -- ** DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

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

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

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

    -- ** ZoneItemMaintenanceWindows
    , ZoneItemMaintenanceWindows
    , zoneItemMaintenanceWindows
    , zimwBeginTime
    , zimwName
    , zimwEndTime
    , zimwDescription

    -- ** ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlId
    ) where

import           Network.Google.ComputeEngineAutoscaler.Types

{- $resources
TODO
-}

type ComputeEngineAutoscaler =
     AutoscalersAPI :<|> ZoneOperationsAPI :<|> ZonesAPI

type ZonesAPI = ZonesList

-- |
type ZonesList =
     "autoscaler" :> "v1beta2" :> Capture "project" Text
       :> "zones"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AutoscalersAPI =
     AutoscalersList :<|>
       AutoscalersPatch :<|>
         AutoscalersGet :<|>
           AutoscalersDelete :<|>
             AutoscalersUpdate :<|> AutoscalersInsert

-- | Adds new Autoscaler resource.
type AutoscalersInsert =
     "autoscaler" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "autoscalers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists all Autoscaler resources in this zone.
type AutoscalersList =
     "autoscaler" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "autoscalers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update the entire content of the Autoscaler resource. This method
-- supports patch semantics.
type AutoscalersPatch =
     "autoscaler" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "autoscalers"
       :> Capture "autoscaler" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets the specified Autoscaler resource.
type AutoscalersGet =
     "autoscaler" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "autoscalers"
       :> Capture "autoscaler" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the specified Autoscaler resource.
type AutoscalersDelete =
     "autoscaler" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "autoscalers"
       :> Capture "autoscaler" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update the entire content of the Autoscaler resource.
type AutoscalersUpdate =
     "autoscaler" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "autoscalers"
       :> Capture "autoscaler" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ZoneOperationsAPI =
     ZoneOperationsGet :<|>
       ZoneOperationsDelete :<|> ZoneOperationsList

-- | Retrieves the list of operation resources contained within the specified
-- zone.
type ZoneOperationsList =
     "autoscaler" :> "v1beta2" :> Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "operations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the specified zone-specific operation resource.
type ZoneOperationsGet =
     "autoscaler" :> "v1beta2" :> Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "operations"
       :> Capture "operation" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the specified zone-specific operation resource.
type ZoneOperationsDelete =
     "autoscaler" :> "v1beta2" :> Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "operations"
       :> Capture "operation" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
