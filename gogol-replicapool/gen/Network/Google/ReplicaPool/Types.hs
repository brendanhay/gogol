{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ReplicaPool.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ReplicaPool.Types
    (
    -- * Service URL
      replicaPoolURL

    -- * InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- * OperationWarnings
    , OperationWarnings
    , operationWarnings
    , owData
    , owCode
    , owMessage

    -- * InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

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

    -- * InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlId

    -- * ReplicaPoolAutoHealingPolicyActionType
    , ReplicaPoolAutoHealingPolicyActionType (..)

    -- * InstanceGroupManager
    , InstanceGroupManager
    , instanceGroupManager
    , igmCurrentSize
    , igmGroup
    , igmKind
    , igmFingerprint
    , igmBaseInstanceName
    , igmAutoHealingPolicies
    , igmInstanceTemplate
    , igmTargetSize
    , igmSelfLink
    , igmName
    , igmCreationTimestamp
    , igmId
    , igmTargetPools
    , igmDescription

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

    -- * ReplicaPoolAutoHealingPolicy
    , ReplicaPoolAutoHealingPolicy
    , replicaPoolAutoHealingPolicy
    , rpahpHealthCheck
    , rpahpActionType

    -- * InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- * OperationStatus
    , OperationStatus (..)

    -- * InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

    -- * InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- * OperationErrorErrors
    , OperationErrorErrors
    , operationErrorErrors
    , oeeLocation
    , oeeCode
    , oeeMessage

    -- * OperationWarningsCode
    , OperationWarningsCode (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types.Product
import           Network.Google.ReplicaPool.Types.Sum

-- | URL referring to version 'v1beta2' of the Google Compute Engine Instance Group Manager API.
replicaPoolURL :: BaseUrl
replicaPoolURL
  = BaseUrl Https
      "https://www.googleapis.com/replicapool/v1beta2/projects/"
      443
