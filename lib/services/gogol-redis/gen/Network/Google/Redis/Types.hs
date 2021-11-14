{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Redis.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Redis.Types
    (
    -- * Service Configuration
      redisService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * FailoverInstanceRequest
    , FailoverInstanceRequest
    , failoverInstanceRequest
    , firDataProtectionMode

    -- * InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- * FailoverInstanceRequestDataProtectionMode
    , FailoverInstanceRequestDataProtectionMode (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

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

    -- * GcsSource
    , GcsSource
    , gcsSource
    , gsURI

    -- * InstanceTransitEncryptionMode
    , InstanceTransitEncryptionMode (..)

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * GoogleCloudRedisV1ZoneMetadata
    , GoogleCloudRedisV1ZoneMetadata
    , googleCloudRedisV1ZoneMetadata

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

    -- * MaintenanceSchedule
    , MaintenanceSchedule
    , maintenanceSchedule
    , msStartTime
    , msCanReschedule
    , msEndTime
    , msScheduleDeadlineTime

    -- * WeeklyMaintenanceWindow
    , WeeklyMaintenanceWindow
    , weeklyMaintenanceWindow
    , wmwStartTime
    , wmwDay
    , wmwDuration

    -- * InstanceTier
    , InstanceTier (..)

    -- * GcsDestination
    , GcsDestination
    , gcsDestination
    , gdURI

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * GoogleCloudRedisV1LocationMetadata
    , GoogleCloudRedisV1LocationMetadata
    , googleCloudRedisV1LocationMetadata
    , gcrvlmAvailableZones

    -- * GoogleCloudRedisV1OperationMetadata
    , GoogleCloudRedisV1OperationMetadata
    , googleCloudRedisV1OperationMetadata
    , gcrvomAPIVersion
    , gcrvomEndTime
    , gcrvomStatusDetail
    , gcrvomVerb
    , gcrvomCancelRequested
    , gcrvomTarget
    , gcrvomCreateTime

    -- * InstanceRedisConfigs
    , InstanceRedisConfigs
    , instanceRedisConfigs
    , ircAddtional

    -- * InputConfig
    , InputConfig
    , inputConfig
    , icGcsSource

    -- * InstanceConnectMode
    , InstanceConnectMode (..)

    -- * ExportInstanceRequest
    , ExportInstanceRequest
    , exportInstanceRequest
    , eirOutputConfig

    -- * InstanceAuthString
    , InstanceAuthString
    , instanceAuthString
    , iasAuthString

    -- * RescheduleMaintenanceRequestRescheduleType
    , RescheduleMaintenanceRequestRescheduleType (..)

    -- * WeeklyMaintenanceWindowDay
    , WeeklyMaintenanceWindowDay (..)

    -- * GoogleCloudRedisV1LocationMetadataAvailableZones
    , GoogleCloudRedisV1LocationMetadataAvailableZones
    , googleCloudRedisV1LocationMetadataAvailableZones
    , gcrvlmazAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * MaintenancePolicy
    , MaintenancePolicy
    , maintenancePolicy
    , mpWeeklyMaintenanceWindow
    , mpUpdateTime
    , mpDescription
    , mpCreateTime

    -- * OutputConfig
    , OutputConfig
    , outputConfig
    , ocGcsDestination

    -- * ImportInstanceRequest
    , ImportInstanceRequest
    , importInstanceRequest
    , iirInputConfig

    -- * UpgradeInstanceRequest
    , UpgradeInstanceRequest
    , upgradeInstanceRequest
    , uirRedisVersion

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
    , omAddtional

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

    -- * TLSCertificate
    , TLSCertificate
    , tlsCertificate
    , tcCert
    , tcSerialNumber
    , tcSha1Fingerprint
    , tcExpireTime
    , tcCreateTime

    -- * RescheduleMaintenanceRequest
    , RescheduleMaintenanceRequest
    , rescheduleMaintenanceRequest
    , rmrScheduleTime
    , rmrRescheduleType

    -- * Instance
    , Instance
    , instance'
    , iServerCaCerts
    , iPersistenceIAMIdentity
    , iState
    , iAuthEnabled
    , iMaintenanceSchedule
    , iTransitEncryptionMode
    , iAuthorizedNetwork
    , iMemorySizeGb
    , iName
    , iStatusMessage
    , iAlternativeLocationId
    , iReservedIPRange
    , iTier
    , iDisplayName
    , iLabels
    , iMaintenancePolicy
    , iConnectMode
    , iLocationId
    , iHost
    , iRedisConfigs
    , iRedisVersion
    , iCreateTime
    , iPort
    , iCurrentLocationId
    ) where

import Network.Google.Prelude
import Network.Google.Redis.Types.Product
import Network.Google.Redis.Types.Sum

-- | Default request referring to version 'v1' of the Google Cloud Memorystore for Redis API. This contains the host and root path used as a starting point for constructing service requests.
redisService :: ServiceConfig
redisService
  = defaultService (ServiceId "redis:v1")
      "redis.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
