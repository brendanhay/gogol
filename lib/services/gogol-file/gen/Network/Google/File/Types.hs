{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.File.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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

    -- * ListBackupsResponse
    , ListBackupsResponse
    , listBackupsResponse
    , lbrNextPageToken
    , lbrBackups
    , lbrUnreachable

    -- * GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
    , GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
    , googleCloudSaasacceleratorManagementProvidersV1SloEligibility
    , gcsmpvseEligible
    , gcsmpvseReason

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

    -- * NfsExportOptions
    , NfsExportOptions
    , nfsExportOptions
    , neoAnonGid
    , neoAccessMode
    , neoAnonUid
    , neoSquashMode
    , neoIPRanges

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

    -- * MaintenancePolicyState
    , MaintenancePolicyState (..)

    -- * Schedule
    , Schedule
    , schedule
    , sStartTime
    , sDay
    , sDuration

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

    -- * GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
    , GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
    , googleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
    , gcsmpvpsseEligibilities

    -- * NfsExportOptionsAccessMode
    , NfsExportOptionsAccessMode (..)

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance
    , googleCloudSaasacceleratorManagementProvidersV1Instance
    , gcsmpviTenantProjectId
    , gcsmpviState
    , gcsmpviConsumerDefinedName
    , gcsmpviMaintenanceSettings
    , gcsmpviSoftwareVersions
    , gcsmpviProvisionedResources
    , gcsmpviUpdateTime
    , gcsmpviName
    , gcsmpviLabels
    , gcsmpviSloMetadata
    , gcsmpviProducerMetadata
    , gcsmpviSlmInstanceTemplate
    , gcsmpviMaintenanceSchedules
    , gcsmpviCreateTime
    , gcsmpviMaintenancePolicyNames

    -- * MaintenancePolicyLabels
    , MaintenancePolicyLabels
    , maintenancePolicyLabels
    , mplAddtional

    -- * BackupSourceInstanceTier
    , BackupSourceInstanceTier (..)

    -- * InstanceTier
    , InstanceTier (..)

    -- * BackupLabels
    , BackupLabels
    , backupLabels
    , blAddtional

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities
    , GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities
    , googleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibilityEligibilities
    , gcsmpvpsseeAddtional

    -- * GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
    , GoogleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
    , googleCloudSaasacceleratorManagementProvidersV1InstanceSoftwareVersions
    , gcsmpvisvAddtional

    -- * Backup
    , Backup
    , backup
    , bSatisfiesPzs
    , bSourceInstance
    , bState
    , bDownloadBytes
    , bStorageBytes
    , bSourceInstanceTier
    , bName
    , bLabels
    , bSourceFileShare
    , bDescription
    , bCreateTime
    , bCapacityGb

    -- * GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
    , GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
    , googleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
    , gcsmpvmsIsRollback
    , gcsmpvmsMaintenancePolicies
    , gcsmpvmsExclude

    -- * GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
    , GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
    , googleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
    , gcsmpvmsStartTime
    , gcsmpvmsRolloutManagementPolicy
    , gcsmpvmsCanReschedule
    , gcsmpvmsEndTime
    , gcsmpvmsScheduleDeadlineTime

    -- * NetworkConfigModesItem
    , NetworkConfigModesItem (..)

    -- * UpdatePolicy
    , UpdatePolicy
    , updatePolicy
    , upWindow
    , upChannel
    , upDenyMaintenancePeriods

    -- * MaintenanceWindow
    , MaintenanceWindow
    , maintenanceWindow
    , mwDailyCycle
    , mwWeeklyCycle

    -- * ScheduleDay
    , ScheduleDay (..)

    -- * DailyCycle
    , DailyCycle
    , dailyCycle
    , dcStartTime
    , dcDuration

    -- * FileShareConfig
    , FileShareConfig
    , fileShareConfig
    , fscNfsExportOptions
    , fscSourceBackup
    , fscName
    , fscCapacityGb

    -- * NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncModes
    , ncNetwork
    , ncReservedIPRange
    , ncIPAddresses

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
    , googleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
    , gcsmpvnsmPerSliEligibility
    , gcsmpvnsmLocation
    , gcsmpvnsmExclusions
    , gcsmpvnsmNodeId

    -- * GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
    , googleCloudSaasacceleratorManagementProvidersV1SloMetadata
    , gcsmpvsmPerSliEligibility
    , gcsmpvsmExclusions
    , gcsmpvsmTier
    , gcsmpvsmNodes

    -- * GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies
    , GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies
    , googleCloudSaasacceleratorManagementProvidersV1MaintenanceSettingsMaintenancePolicies
    , gcsmpvmsmpAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * UpdatePolicyChannel
    , UpdatePolicyChannel (..)

    -- * MaintenancePolicy
    , MaintenancePolicy
    , maintenancePolicy
    , mpState
    , mpUpdatePolicy
    , mpUpdateTime
    , mpName
    , mpLabels
    , mpDescription
    , mpCreateTime

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
    , gStartTime
    , gReason
    , gDuration
    , gSliName

    -- * RestoreInstanceRequest
    , RestoreInstanceRequest
    , restoreInstanceRequest
    , rirSourceBackup
    , rirFileShare

    -- * TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

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

    -- * GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules
    , GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules
    , googleCloudSaasacceleratorManagementProvidersV1InstanceMaintenanceSchedules
    , gcsmpvimsAddtional

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

    -- * DenyMaintenancePeriod
    , DenyMaintenancePeriod
    , denyMaintenancePeriod
    , dmpTime
    , dmpEndDate
    , dmpStartDate

    -- * WeeklyCycle
    , WeeklyCycle
    , weeklyCycle
    , wcSchedule

    -- * NfsExportOptionsSquashMode
    , NfsExportOptionsSquashMode (..)

    -- * BackupState
    , BackupState (..)

    -- * GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
    , GoogleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
    , googleCloudSaasacceleratorManagementProvidersV1InstanceMaintenancePolicyNames
    , gcsmpvimpnAddtional

    -- * Instance
    , Instance
    , instance'
    , iSatisfiesPzs
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

import Network.Google.File.Types.Product
import Network.Google.File.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Filestore API. This contains the host and root path used as a starting point for constructing service requests.
fileService :: ServiceConfig
fileService
  = defaultService (ServiceId "file:v1")
      "file.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
