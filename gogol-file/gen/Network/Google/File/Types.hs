{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.File.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.File.Types
    (
    -- * Service Configuration
      fileService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * GoogleCloudSaasacceleratorManagementProvidersV1InstanceState
    , GoogleCloudSaasacceleratorManagementProvidersV1InstanceState (..)

    -- * GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
    , googleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
    , gcsmpvrmRolloutName
    , gcsmpvrmNotification
    , gcsmpvrmReleaseName

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance
    , googleCloudSaasacceleratorManagementProvidersV1Instance
    , gcsmpviTenantProjectId
    , gcsmpviState
    , gcsmpviSoftwareVersions
    , gcsmpviProvisionedResources
    , gcsmpviUpdateTime
    , gcsmpviName
    , gcsmpviLabels
    , gcsmpviSloMetadata
    , gcsmpviProducerMetadata
    , gcsmpviRolloutMetadata
    , gcsmpviCreateTime
    , gcsmpviMaintenancePolicyNames

    -- * InstanceTier
    , InstanceTier (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
    , GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
    , googleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
    , gcsmpvisvAddtional

    -- * GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata
    , googleCloudSaasacceleratorManagementProvidersV1NotificationMetadata
    , gcsmpvnmTargetRelease
    , gcsmpvnmScheduledEndTime
    , gcsmpvnmRescheduled
    , gcsmpvnmScheduledStartTime

    -- * FileShareConfig
    , FileShareConfig
    , fileShareConfig
    , fscName
    , fscCapacityGb

    -- * NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncModes
    , ncNetwork
    , ncReservedIPRange
    , ncIPAddresses

    -- * GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
    , googleCloudSaasacceleratorManagementProvidersV1SloMetadata
    , gcsmpvsmExclusions
    , gcsmpvsmTier

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata
    , googleCloudSaasacceleratorManagementProvidersV1InstanceProducerMetadata
    , gcsmpvipmAddtional

    -- * GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels
    , GoogleCloudSaasacceleratorManagementProvidersV1InstanceLabels
    , googleCloudSaasacceleratorManagementProvidersV1InstanceLabels
    , gcsmpvilAddtional

    -- * GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
    , GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
    , googleCloudSaasacceleratorManagementProvidersV1SloExclusion
    , gcsmpvseExclusionDuration
    , gcsmpvseExclusionStartTime
    , gcsmpvseReason
    , gcsmpvseSloName

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAPIVersion
    , omEndTime
    , omStatusDetail
    , omVerb
    , omCancelRequested
    , omTarget
    , omCreateTime

    -- * GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
    , GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
    , googleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
    , gcsmpvprResourceType
    , gcsmpvprResourceURL

    -- * ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirUnreachable
    , lirInstances

    -- * InstanceState
    , InstanceState (..)

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata
    , googleCloudSaasacceleratorManagementProvidersV1InstanceRolloutMetadata
    , gcsmpvirmAddtional

    -- * GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
    , GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
    , googleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
    , gcsmpvimpnAddtional

    -- * Instance
    , Instance
    , instance'
    , iEtag
    , iState
    , iNetworks
    , iFileShares
    , iName
    , iStatusMessage
    , iTier
    , iLabels
    , iDescription
    , iCreateTime
    ) where

import           Network.Google.File.Types.Product
import           Network.Google.File.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Filestore API. This contains the host and root path used as a starting point for constructing service requests.
fileService :: ServiceConfig
fileService
  = defaultService (ServiceId "file:v1")
      "file.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
