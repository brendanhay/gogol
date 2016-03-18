{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      replicaPoolService

    -- * OAuth Scopes
    , computeScope
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , computeReadonlyScope

    -- * OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

    -- * InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- * InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- * OperationWarningsItemCode
    , OperationWarningsItemCode (..)

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

    -- * OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- * OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types.Product
import           Network.Google.ReplicaPool.Types.Sum

-- | Default request referring to version 'v1beta2' of the Google Compute Engine Instance Group Manager API. This contains the host and root path used as a starting point for constructing service requests.
replicaPoolService :: ServiceConfig
replicaPoolService
  = defaultService (ServiceId "replicapool:v1beta2")
      "www.googleapis.com"

-- | View and manage your Google Compute Engine resources
computeScope :: OAuthScope
computeScope = "https://www.googleapis.com/auth/compute";

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: OAuthScope
cloudPlatformReadOnlyScope = "https://www.googleapis.com/auth/cloud-platform.read-only";

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: OAuthScope
cloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

-- | View your Google Compute Engine resources
computeReadonlyScope :: OAuthScope
computeReadonlyScope = "https://www.googleapis.com/auth/compute.readonly";
