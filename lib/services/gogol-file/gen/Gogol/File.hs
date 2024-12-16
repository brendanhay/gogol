{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.File
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Cloud Filestore API is used for creating and managing cloud file servers.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference>
module Gogol.File
    (
    -- * Configuration
      fileService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Resources

    -- ** file.projects.locations.backups.create
    , FileProjectsLocationsBackupsCreateResource
    , FileProjectsLocationsBackupsCreate (..)
    , newFileProjectsLocationsBackupsCreate

    -- ** file.projects.locations.backups.delete
    , FileProjectsLocationsBackupsDeleteResource
    , FileProjectsLocationsBackupsDelete (..)
    , newFileProjectsLocationsBackupsDelete

    -- ** file.projects.locations.backups.get
    , FileProjectsLocationsBackupsGetResource
    , FileProjectsLocationsBackupsGet (..)
    , newFileProjectsLocationsBackupsGet

    -- ** file.projects.locations.backups.list
    , FileProjectsLocationsBackupsListResource
    , FileProjectsLocationsBackupsList (..)
    , newFileProjectsLocationsBackupsList

    -- ** file.projects.locations.backups.patch
    , FileProjectsLocationsBackupsPatchResource
    , FileProjectsLocationsBackupsPatch (..)
    , newFileProjectsLocationsBackupsPatch

    -- ** file.projects.locations.get
    , FileProjectsLocationsGetResource
    , FileProjectsLocationsGet (..)
    , newFileProjectsLocationsGet

    -- ** file.projects.locations.instances.create
    , FileProjectsLocationsInstancesCreateResource
    , FileProjectsLocationsInstancesCreate (..)
    , newFileProjectsLocationsInstancesCreate

    -- ** file.projects.locations.instances.delete
    , FileProjectsLocationsInstancesDeleteResource
    , FileProjectsLocationsInstancesDelete (..)
    , newFileProjectsLocationsInstancesDelete

    -- ** file.projects.locations.instances.get
    , FileProjectsLocationsInstancesGetResource
    , FileProjectsLocationsInstancesGet (..)
    , newFileProjectsLocationsInstancesGet

    -- ** file.projects.locations.instances.list
    , FileProjectsLocationsInstancesListResource
    , FileProjectsLocationsInstancesList (..)
    , newFileProjectsLocationsInstancesList

    -- ** file.projects.locations.instances.patch
    , FileProjectsLocationsInstancesPatchResource
    , FileProjectsLocationsInstancesPatch (..)
    , newFileProjectsLocationsInstancesPatch

    -- ** file.projects.locations.instances.promoteReplica
    , FileProjectsLocationsInstancesPromoteReplicaResource
    , FileProjectsLocationsInstancesPromoteReplica (..)
    , newFileProjectsLocationsInstancesPromoteReplica

    -- ** file.projects.locations.instances.restore
    , FileProjectsLocationsInstancesRestoreResource
    , FileProjectsLocationsInstancesRestore (..)
    , newFileProjectsLocationsInstancesRestore

    -- ** file.projects.locations.instances.revert
    , FileProjectsLocationsInstancesRevertResource
    , FileProjectsLocationsInstancesRevert (..)
    , newFileProjectsLocationsInstancesRevert

    -- ** file.projects.locations.instances.snapshots.create
    , FileProjectsLocationsInstancesSnapshotsCreateResource
    , FileProjectsLocationsInstancesSnapshotsCreate (..)
    , newFileProjectsLocationsInstancesSnapshotsCreate

    -- ** file.projects.locations.instances.snapshots.delete
    , FileProjectsLocationsInstancesSnapshotsDeleteResource
    , FileProjectsLocationsInstancesSnapshotsDelete (..)
    , newFileProjectsLocationsInstancesSnapshotsDelete

    -- ** file.projects.locations.instances.snapshots.get
    , FileProjectsLocationsInstancesSnapshotsGetResource
    , FileProjectsLocationsInstancesSnapshotsGet (..)
    , newFileProjectsLocationsInstancesSnapshotsGet

    -- ** file.projects.locations.instances.snapshots.list
    , FileProjectsLocationsInstancesSnapshotsListResource
    , FileProjectsLocationsInstancesSnapshotsList (..)
    , newFileProjectsLocationsInstancesSnapshotsList

    -- ** file.projects.locations.instances.snapshots.patch
    , FileProjectsLocationsInstancesSnapshotsPatchResource
    , FileProjectsLocationsInstancesSnapshotsPatch (..)
    , newFileProjectsLocationsInstancesSnapshotsPatch

    -- ** file.projects.locations.list
    , FileProjectsLocationsListResource
    , FileProjectsLocationsList (..)
    , newFileProjectsLocationsList

    -- ** file.projects.locations.operations.cancel
    , FileProjectsLocationsOperationsCancelResource
    , FileProjectsLocationsOperationsCancel (..)
    , newFileProjectsLocationsOperationsCancel

    -- ** file.projects.locations.operations.delete
    , FileProjectsLocationsOperationsDeleteResource
    , FileProjectsLocationsOperationsDelete (..)
    , newFileProjectsLocationsOperationsDelete

    -- ** file.projects.locations.operations.get
    , FileProjectsLocationsOperationsGetResource
    , FileProjectsLocationsOperationsGet (..)
    , newFileProjectsLocationsOperationsGet

    -- ** file.projects.locations.operations.list
    , FileProjectsLocationsOperationsListResource
    , FileProjectsLocationsOperationsList (..)
    , newFileProjectsLocationsOperationsList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Backup
    , Backup (..)
    , newBackup

    -- ** Backup_FileSystemProtocol
    , Backup_FileSystemProtocol (..)

    -- ** Backup_Labels
    , Backup_Labels (..)
    , newBackup_Labels

    -- ** Backup_SourceInstanceTier
    , Backup_SourceInstanceTier (..)

    -- ** Backup_State
    , Backup_State (..)

    -- ** Backup_Tags
    , Backup_Tags (..)
    , newBackup_Tags

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** DailyCycle
    , DailyCycle (..)
    , newDailyCycle

    -- ** Date
    , Date (..)
    , newDate

    -- ** DenyMaintenancePeriod
    , DenyMaintenancePeriod (..)
    , newDenyMaintenancePeriod

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** FileShareConfig
    , FileShareConfig (..)
    , newFileShareConfig

    -- ** FixedIOPS
    , FixedIOPS (..)
    , newFixedIOPS

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1Instance
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1Instance

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
    , GoogleCloudSaasacceleratorManagementProvidersV1Instance_State (..)

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
    , GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
    , GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies
    , GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter
    , GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
    , GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities
    , GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
    , GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
    , GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility

    -- ** GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
    , GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata (..)
    , newGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata

    -- ** IOPSPerTB
    , IOPSPerTB (..)
    , newIOPSPerTB

    -- ** Instance
    , Instance (..)
    , newInstance

    -- ** Instance_Labels
    , Instance_Labels (..)
    , newInstance_Labels

    -- ** Instance_Protocol
    , Instance_Protocol (..)

    -- ** Instance_State
    , Instance_State (..)

    -- ** Instance_SuspensionReasonsItem
    , Instance_SuspensionReasonsItem (..)

    -- ** Instance_Tags
    , Instance_Tags (..)
    , newInstance_Tags

    -- ** Instance_Tier
    , Instance_Tier (..)

    -- ** ListBackupsResponse
    , ListBackupsResponse (..)
    , newListBackupsResponse

    -- ** ListInstancesResponse
    , ListInstancesResponse (..)
    , newListInstancesResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListSnapshotsResponse
    , ListSnapshotsResponse (..)
    , newListSnapshotsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** MaintenancePolicy
    , MaintenancePolicy (..)
    , newMaintenancePolicy

    -- ** MaintenancePolicy_Labels
    , MaintenancePolicy_Labels (..)
    , newMaintenancePolicy_Labels

    -- ** MaintenancePolicy_State
    , MaintenancePolicy_State (..)

    -- ** MaintenanceWindow
    , MaintenanceWindow (..)
    , newMaintenanceWindow

    -- ** NetworkConfig
    , NetworkConfig (..)
    , newNetworkConfig

    -- ** NetworkConfig_ConnectMode
    , NetworkConfig_ConnectMode (..)

    -- ** NetworkConfig_ModesItem
    , NetworkConfig_ModesItem (..)

    -- ** NfsExportOptions
    , NfsExportOptions (..)
    , newNfsExportOptions

    -- ** NfsExportOptions_AccessMode
    , NfsExportOptions_AccessMode (..)

    -- ** NfsExportOptions_SquashMode
    , NfsExportOptions_SquashMode (..)

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OperationMetadata
    , OperationMetadata (..)
    , newOperationMetadata

    -- ** PerformanceConfig
    , PerformanceConfig (..)
    , newPerformanceConfig

    -- ** PerformanceLimits
    , PerformanceLimits (..)
    , newPerformanceLimits

    -- ** PromoteReplicaRequest
    , PromoteReplicaRequest (..)
    , newPromoteReplicaRequest

    -- ** ReplicaConfig
    , ReplicaConfig (..)
    , newReplicaConfig

    -- ** ReplicaConfig_State
    , ReplicaConfig_State (..)

    -- ** ReplicaConfig_StateReasonsItem
    , ReplicaConfig_StateReasonsItem (..)

    -- ** Replication
    , Replication (..)
    , newReplication

    -- ** Replication_Role
    , Replication_Role (..)

    -- ** RestoreInstanceRequest
    , RestoreInstanceRequest (..)
    , newRestoreInstanceRequest

    -- ** RevertInstanceRequest
    , RevertInstanceRequest (..)
    , newRevertInstanceRequest

    -- ** Schedule
    , Schedule (..)
    , newSchedule

    -- ** Schedule_Day
    , Schedule_Day (..)

    -- ** Snapshot
    , Snapshot (..)
    , newSnapshot

    -- ** Snapshot_Labels
    , Snapshot_Labels (..)
    , newSnapshot_Labels

    -- ** Snapshot_State
    , Snapshot_State (..)

    -- ** Snapshot_Tags
    , Snapshot_Tags (..)
    , newSnapshot_Tags

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** TimeOfDay'
    , TimeOfDay' (..)
    , newTimeOfDay

    -- ** UpdatePolicy
    , UpdatePolicy (..)
    , newUpdatePolicy

    -- ** UpdatePolicy_Channel
    , UpdatePolicy_Channel (..)

    -- ** WeeklyCycle
    , WeeklyCycle (..)
    , newWeeklyCycle
    ) where

import Gogol.File.Projects.Locations.Backups.Create
import Gogol.File.Projects.Locations.Backups.Delete
import Gogol.File.Projects.Locations.Backups.Get
import Gogol.File.Projects.Locations.Backups.List
import Gogol.File.Projects.Locations.Backups.Patch
import Gogol.File.Projects.Locations.Get
import Gogol.File.Projects.Locations.Instances.Create
import Gogol.File.Projects.Locations.Instances.Delete
import Gogol.File.Projects.Locations.Instances.Get
import Gogol.File.Projects.Locations.Instances.List
import Gogol.File.Projects.Locations.Instances.Patch
import Gogol.File.Projects.Locations.Instances.PromoteReplica
import Gogol.File.Projects.Locations.Instances.Restore
import Gogol.File.Projects.Locations.Instances.Revert
import Gogol.File.Projects.Locations.Instances.Snapshots.Create
import Gogol.File.Projects.Locations.Instances.Snapshots.Delete
import Gogol.File.Projects.Locations.Instances.Snapshots.Get
import Gogol.File.Projects.Locations.Instances.Snapshots.List
import Gogol.File.Projects.Locations.Instances.Snapshots.Patch
import Gogol.File.Projects.Locations.List
import Gogol.File.Projects.Locations.Operations.Cancel
import Gogol.File.Projects.Locations.Operations.Delete
import Gogol.File.Projects.Locations.Operations.Get
import Gogol.File.Projects.Locations.Operations.List
import Gogol.File.Types
