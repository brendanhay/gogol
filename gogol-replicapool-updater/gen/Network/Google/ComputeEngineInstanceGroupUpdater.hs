-- |
-- Module      : Network.Google.ComputeEngineInstanceGroupUpdater
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Compute Engine Instance Group Updater API provides services for updating groups of Compute Engine Instances.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference>
module Network.Google.ComputeEngineInstanceGroupUpdater
    (
    -- * API Definition
      ComputeEngineInstanceGroupUpdater



    -- * Types

    -- ** InstanceUpdate
    , InstanceUpdate
    , instanceUpdate
    , iuStatus
    , iuError
    , iuInstance

    -- ** InstanceUpdateError
    , InstanceUpdateError
    , instanceUpdateError
    , iueErrors

    -- ** InstanceUpdateItemErrorsError
    , InstanceUpdateItemErrorsError
    , instanceUpdateItemErrorsError
    , iuieeLocation
    , iuieeCode
    , iuieeMessage

    -- ** InstanceUpdateList
    , InstanceUpdateList
    , instanceUpdateList
    , iulNextPageToken
    , iulKind
    , iulItems
    , iulSelfLink

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

    -- ** RollingUpdate
    , RollingUpdate
    , rollingUpdate
    , ruStatus
    , ruProgress
    , ruInstanceGroupManager
    , ruKind
    , ruError
    , ruInstanceTemplate
    , ruUser
    , ruSelfLink
    , ruStatusMessage
    , ruCreationTimestamp
    , ruId
    , ruPolicy
    , ruActionType
    , ruOldInstanceTemplate
    , ruDescription
    , ruInstanceGroup

    -- ** RollingUpdateError
    , RollingUpdateError
    , rollingUpdateError
    , rueErrors

    -- ** RollingUpdateItemErrorsError
    , RollingUpdateItemErrorsError
    , rollingUpdateItemErrorsError
    , ruieeLocation
    , ruieeCode
    , ruieeMessage

    -- ** RollingUpdateList
    , RollingUpdateList
    , rollingUpdateList
    , rulNextPageToken
    , rulKind
    , rulItems
    , rulSelfLink

    -- ** RollingUpdatePolicy
    , RollingUpdatePolicy
    , rollingUpdatePolicy
    , rupMinInstanceUpdateTimeSec
    , rupInstanceStartupTimeoutSec
    , rupMaxNumFailedInstances
    , rupAutoPauseAfterInstances
    , rupMaxNumConcurrentInstances
    ) where

import           Network.Google.ComputeEngineInstanceGroupUpdater.Types

{- $resources
TODO
-}

type ComputeEngineInstanceGroupUpdater = ()

computeEngineInstanceGroupUpdater :: Proxy ComputeEngineInstanceGroupUpdater
computeEngineInstanceGroupUpdater = Proxy




