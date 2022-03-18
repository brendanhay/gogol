{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

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
    , cloudPlatformScope

    -- * Resources

    -- ** file.projects.locations.backups.create
    , FileProjectsLocationsBackupsCreateResource
    , newFileProjectsLocationsBackupsCreate
    , FileProjectsLocationsBackupsCreate

    -- ** file.projects.locations.backups.delete
    , FileProjectsLocationsBackupsDeleteResource
    , newFileProjectsLocationsBackupsDelete
    , FileProjectsLocationsBackupsDelete

    -- ** file.projects.locations.backups.get
    , FileProjectsLocationsBackupsGetResource
    , newFileProjectsLocationsBackupsGet
    , FileProjectsLocationsBackupsGet

    -- ** file.projects.locations.backups.list
    , FileProjectsLocationsBackupsListResource
    , newFileProjectsLocationsBackupsList
    , FileProjectsLocationsBackupsList

    -- ** file.projects.locations.backups.patch
    , FileProjectsLocationsBackupsPatchResource
    , newFileProjectsLocationsBackupsPatch
    , FileProjectsLocationsBackupsPatch

    -- ** file.projects.locations.get
    , FileProjectsLocationsGetResource
    , newFileProjectsLocationsGet
    , FileProjectsLocationsGet

    -- ** file.projects.locations.instances.create
    , FileProjectsLocationsInstancesCreateResource
    , newFileProjectsLocationsInstancesCreate
    , FileProjectsLocationsInstancesCreate

    -- ** file.projects.locations.instances.delete
    , FileProjectsLocationsInstancesDeleteResource
    , newFileProjectsLocationsInstancesDelete
    , FileProjectsLocationsInstancesDelete

    -- ** file.projects.locations.instances.get
    , FileProjectsLocationsInstancesGetResource
    , newFileProjectsLocationsInstancesGet
    , FileProjectsLocationsInstancesGet

    -- ** file.projects.locations.instances.list
    , FileProjectsLocationsInstancesListResource
    , newFileProjectsLocationsInstancesList
    , FileProjectsLocationsInstancesList

    -- ** file.projects.locations.instances.patch
    , FileProjectsLocationsInstancesPatchResource
    , newFileProjectsLocationsInstancesPatch
    , FileProjectsLocationsInstancesPatch

    -- ** file.projects.locations.instances.restore
    , FileProjectsLocationsInstancesRestoreResource
    , newFileProjectsLocationsInstancesRestore
    , FileProjectsLocationsInstancesRestore

    -- ** file.projects.locations.instances.snapshots.create
    , FileProjectsLocationsInstancesSnapshotsCreateResource
    , newFileProjectsLocationsInstancesSnapshotsCreate
    , FileProjectsLocationsInstancesSnapshotsCreate

    -- ** file.projects.locations.instances.snapshots.delete
    , FileProjectsLocationsInstancesSnapshotsDeleteResource
    , newFileProjectsLocationsInstancesSnapshotsDelete
    , FileProjectsLocationsInstancesSnapshotsDelete

    -- ** file.projects.locations.instances.snapshots.get
    , FileProjectsLocationsInstancesSnapshotsGetResource
    , newFileProjectsLocationsInstancesSnapshotsGet
    , FileProjectsLocationsInstancesSnapshotsGet

    -- ** file.projects.locations.instances.snapshots.list
    , FileProjectsLocationsInstancesSnapshotsListResource
    , newFileProjectsLocationsInstancesSnapshotsList
    , FileProjectsLocationsInstancesSnapshotsList

    -- ** file.projects.locations.instances.snapshots.patch
    , FileProjectsLocationsInstancesSnapshotsPatchResource
    , newFileProjectsLocationsInstancesSnapshotsPatch
    , FileProjectsLocationsInstancesSnapshotsPatch

    -- ** file.projects.locations.list
    , FileProjectsLocationsListResource
    , newFileProjectsLocationsList
    , FileProjectsLocationsList

    -- ** file.projects.locations.operations.cancel
    , FileProjectsLocationsOperationsCancelResource
    , newFileProjectsLocationsOperationsCancel
    , FileProjectsLocationsOperationsCancel

    -- ** file.projects.locations.operations.delete
    , FileProjectsLocationsOperationsDeleteResource
    , newFileProjectsLocationsOperationsDelete
    , FileProjectsLocationsOperationsDelete

    -- ** file.projects.locations.operations.get
    , FileProjectsLocationsOperationsGetResource
    , newFileProjectsLocationsOperationsGet
    , FileProjectsLocationsOperationsGet

    -- ** file.projects.locations.operations.list
    , FileProjectsLocationsOperationsListResource
    , newFileProjectsLocationsOperationsList
    , FileProjectsLocationsOperationsList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Backup
    , Backup (..)
    , newBackup

    -- ** Backup_Labels
    , Backup_Labels (..)
    , newBackup_Labels

    -- ** Backup_SourceInstanceTier
    , Backup_SourceInstanceTier (..)

    -- ** Backup_State
    , Backup_State (..)

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

    -- ** Instance
    , Instance (..)
    , newInstance

    -- ** Instance_Labels
    , Instance_Labels (..)
    , newInstance_Labels

    -- ** Instance_State
    , Instance_State (..)

    -- ** Instance_SuspensionReasonsItem
    , Instance_SuspensionReasonsItem (..)

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

    -- ** RestoreInstanceRequest
    , RestoreInstanceRequest (..)
    , newRestoreInstanceRequest

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
import Gogol.File.Projects.Locations.Instances.Restore
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
