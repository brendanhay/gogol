{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ReplicaPoolUpdater.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ReplicaPoolUpdater.Types
    (
    -- * Service URL
      replicaPoolUpdaterURL

    -- * RollingUpdateError
    , RollingUpdateError
    , rollingUpdateError
    , rueErrors

    -- * OperationWarnings
    , OperationWarnings
    , operationWarnings
    , owData
    , owCode
    , owMessage

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

    -- * OperationWarningsData
    , OperationWarningsData
    , operationWarningsData
    , owdValue
    , owdKey

    -- * OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- * InstanceUpdateList
    , InstanceUpdateList
    , instanceUpdateList
    , iulNextPageToken
    , iulKind
    , iulItems
    , iulSelfLink

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

    -- * InstanceUpdateError
    , InstanceUpdateError
    , instanceUpdateError
    , iueErrors

    -- * InstanceUpdate
    , InstanceUpdate
    , instanceUpdate
    , iuStatus
    , iuError
    , iuInstance

    -- * RollingUpdatePolicy
    , RollingUpdatePolicy
    , rollingUpdatePolicy
    , rupMinInstanceUpdateTimeSec
    , rupInstanceStartupTimeoutSec
    , rupMaxNumFailedInstances
    , rupAutoPauseAfterInstances
    , rupMaxNumConcurrentInstances

    -- * RollingUpdateErrorErrors
    , RollingUpdateErrorErrors
    , rollingUpdateErrorErrors
    , rueeLocation
    , rueeCode
    , rueeMessage

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

    -- * InstanceUpdateErrorErrors
    , InstanceUpdateErrorErrors
    , instanceUpdateErrorErrors
    , iueeLocation
    , iueeCode
    , iueeMessage

    -- * RollingUpdateList
    , RollingUpdateList
    , rollingUpdateList
    , rulNextPageToken
    , rulKind
    , rulItems
    , rulSelfLink

    -- * OperationErrorErrors
    , OperationErrorErrors
    , operationErrorErrors
    , oeeLocation
    , oeeCode
    , oeeMessage
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types.Product
import           Network.Google.ReplicaPoolUpdater.Types.Sum

-- | URL referring to version 'v1beta1' of the Google Compute Engine Instance Group Updater API.
replicaPoolUpdaterURL :: BaseUrl
replicaPoolUpdaterURL
  = BaseUrl Https
      "https://www.googleapis.com/replicapoolupdater/v1beta1/projects/"
      443
