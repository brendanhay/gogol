{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.InstanceGroups.Updater.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.InstanceGroups.Updater.Types
    (
    -- * Service URL
      instanceGroupsUpdaterURL

    -- * OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- * InstanceUpdateList
    , InstanceUpdateList
    , instanceUpdateList
    , iulNextPageToken
    , iulKind
    , iulItems
    , iulSelfLink

    -- * OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- * Alt
    , Alt (..)

    -- * InstanceUpdateItemErrorsError
    , InstanceUpdateItemErrorsError
    , instanceUpdateItemErrorsError
    , iuieeLocation
    , iuieeCode
    , iuieeMessage

    -- * OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- * InstanceUpdateError
    , InstanceUpdateError
    , instanceUpdateError
    , iueErrors

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

    -- * RollingUpdate
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

    -- * RollingUpdatePolicy
    , RollingUpdatePolicy
    , rollingUpdatePolicy
    , rupMinInstanceUpdateTimeSec
    , rupInstanceStartupTimeoutSec
    , rupMaxNumFailedInstances
    , rupAutoPauseAfterInstances
    , rupMaxNumConcurrentInstances

    -- * RollingUpdateError
    , RollingUpdateError
    , rollingUpdateError
    , rueErrors

    -- * OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- * Operation
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

    -- * InstanceUpdate
    , InstanceUpdate
    , instanceUpdate
    , iuStatus
    , iuError
    , iuInstance

    -- * RollingUpdateList
    , RollingUpdateList
    , rollingUpdateList
    , rulNextPageToken
    , rulKind
    , rulItems
    , rulSelfLink

    -- * RollingUpdateItemErrorsError
    , RollingUpdateItemErrorsError
    , rollingUpdateItemErrorsError
    , ruieeLocation
    , ruieeCode
    , ruieeMessage
    ) where

import           Network.Google.InstanceGroups.Updater.Types.Product
import           Network.Google.InstanceGroups.Updater.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta1' of the Google Compute Engine Instance Group Updater API.
instanceGroupsUpdaterURL :: BaseUrl
instanceGroupsUpdaterURL
  = BaseUrl Https
      "https://www.googleapis.com/replicapoolupdater/v1beta1/projects/"
      443
