{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.File.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.File.Internal.Product
  ( -- * Backup
    Backup (..),
    newBackup,

    -- * Backup_Labels
    Backup_Labels (..),
    newBackup_Labels,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * DailyCycle
    DailyCycle (..),
    newDailyCycle,

    -- * Date
    Date (..),
    newDate,

    -- * DenyMaintenancePeriod
    DenyMaintenancePeriod (..),
    newDenyMaintenancePeriod,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FileShareConfig
    FileShareConfig (..),
    newFileShareConfig,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance
    GoogleCloudSaasacceleratorManagementProvidersV1Instance (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1Instance,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
    GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
    GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
    GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility,

    -- * GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
    GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata (..),
    newGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata,

    -- * Instance
    Instance (..),
    newInstance,

    -- * Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- * ListBackupsResponse
    ListBackupsResponse (..),
    newListBackupsResponse,

    -- * ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListSnapshotsResponse
    ListSnapshotsResponse (..),
    newListSnapshotsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * MaintenancePolicy
    MaintenancePolicy (..),
    newMaintenancePolicy,

    -- * MaintenancePolicy_Labels
    MaintenancePolicy_Labels (..),
    newMaintenancePolicy_Labels,

    -- * MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- * NetworkConfig
    NetworkConfig (..),
    newNetworkConfig,

    -- * NfsExportOptions
    NfsExportOptions (..),
    newNfsExportOptions,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * RestoreInstanceRequest
    RestoreInstanceRequest (..),
    newRestoreInstanceRequest,

    -- * Schedule
    Schedule (..),
    newSchedule,

    -- * Snapshot
    Snapshot (..),
    newSnapshot,

    -- * Snapshot_Labels
    Snapshot_Labels (..),
    newSnapshot_Labels,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- * UpdatePolicy
    UpdatePolicy (..),
    newUpdatePolicy,

    -- * WeeklyCycle
    WeeklyCycle (..),
    newWeeklyCycle,
  )
where

import Gogol.File.Internal.Sum
import qualified Gogol.Prelude as Core

-- | A Cloud Filestore backup.
--
-- /See:/ 'newBackup' smart constructor.
data Backup = Backup
  { -- | Output only. Capacity of the source file share when the backup was created.
    capacityGb :: (Core.Maybe Core.Int64),
    -- | Output only. The time when the backup was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
    description :: (Core.Maybe Core.Text),
    -- | Output only. Amount of bytes that will be downloaded if the backup is restored. This may be different than storage bytes, since sequential backups of the same disk will share storage.
    downloadBytes :: (Core.Maybe Core.Int64),
    -- | Resource labels to represent user provided metadata.
    labels :: (Core.Maybe Backup_Labels),
    -- | Output only. The resource name of the backup, in the format @projects\/{project_number}\/locations\/{location_id}\/backups\/{backup_id}@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Reserved for future use.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | Name of the file share in the source Cloud Filestore instance that the backup is created from.
    sourceFileShare :: (Core.Maybe Core.Text),
    -- | The resource name of the source Cloud Filestore instance, in the format @projects\/{project_number}\/locations\/{location_id}\/instances\/{instance_id}@, used to create this backup.
    sourceInstance :: (Core.Maybe Core.Text),
    -- | Output only. The service tier of the source Cloud Filestore instance that this backup is created from.
    sourceInstanceTier :: (Core.Maybe Backup_SourceInstanceTier),
    -- | Output only. The backup state.
    state :: (Core.Maybe Backup_State),
    -- | Output only. The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation\/deletion.
    storageBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Backup' with the minimum fields required to make a request.
newBackup ::
  Backup
newBackup =
  Backup
    { capacityGb = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      downloadBytes = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      sourceFileShare = Core.Nothing,
      sourceInstance = Core.Nothing,
      sourceInstanceTier = Core.Nothing,
      state = Core.Nothing,
      storageBytes = Core.Nothing
    }

instance Core.FromJSON Backup where
  parseJSON =
    Core.withObject
      "Backup"
      ( \o ->
          Backup
            Core.<$> ( o Core..:? "capacityGb"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> ( o Core..:? "downloadBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "sourceFileShare")
            Core.<*> (o Core..:? "sourceInstance")
            Core.<*> (o Core..:? "sourceInstanceTier")
            Core.<*> (o Core..:? "state")
            Core.<*> ( o Core..:? "storageBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Backup where
  toJSON Backup {..} =
    Core.object
      ( Core.catMaybes
          [ ("capacityGb" Core..=) Core.. Core.AsText
              Core.<$> capacityGb,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("downloadBytes" Core..=) Core.. Core.AsText
              Core.<$> downloadBytes,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("sourceFileShare" Core..=) Core.<$> sourceFileShare,
            ("sourceInstance" Core..=) Core.<$> sourceInstance,
            ("sourceInstanceTier" Core..=)
              Core.<$> sourceInstanceTier,
            ("state" Core..=) Core.<$> state,
            ("storageBytes" Core..=) Core.. Core.AsText
              Core.<$> storageBytes
          ]
      )

-- | Resource labels to represent user provided metadata.
--
-- /See:/ 'newBackup_Labels' smart constructor.
newtype Backup_Labels = Backup_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Backup_Labels' with the minimum fields required to make a request.
newBackup_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Backup_Labels
newBackup_Labels additional = Backup_Labels {additional = additional}

instance Core.FromJSON Backup_Labels where
  parseJSON =
    Core.withObject
      "Backup_Labels"
      ( \o ->
          Backup_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Backup_Labels where
  toJSON Backup_Labels {..} = Core.toJSON additional

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | Time window specified for daily operations.
--
-- /See:/ 'newDailyCycle' smart constructor.
data DailyCycle = DailyCycle
  { -- | Output only. Duration of the time window, set by service producer.
    duration :: (Core.Maybe Core.Duration),
    -- | Time within the day to start the operations.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DailyCycle' with the minimum fields required to make a request.
newDailyCycle ::
  DailyCycle
newDailyCycle = DailyCycle {duration = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON DailyCycle where
  parseJSON =
    Core.withObject
      "DailyCycle"
      ( \o ->
          DailyCycle
            Core.<$> (o Core..:? "duration")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON DailyCycle where
  toJSON DailyCycle {..} =
    Core.object
      ( Core.catMaybes
          [ ("duration" Core..=) Core.<$> duration,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values * A month and day, with a zero year (e.g., an anniversary) * A year on its own, with a zero month and a zero day * A year and month, with a zero day (e.g., a credit card expiration date) Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | DenyMaintenancePeriod definition. Maintenance is forbidden within the deny period. The start/date must be less than the end/date.
--
-- /See:/ 'newDenyMaintenancePeriod' smart constructor.
data DenyMaintenancePeriod = DenyMaintenancePeriod
  { -- | Deny period end date. This can be: * A full date, with non-zero year, month and day values. * A month and day value, with a zero year. Allows recurring deny periods each year. Date matching this period will have to be before the end.
    endDate :: (Core.Maybe Date),
    -- | Deny period start date. This can be: * A full date, with non-zero year, month and day values. * A month and day value, with a zero year. Allows recurring deny periods each year. Date matching this period will have to be the same or after the start.
    startDate :: (Core.Maybe Date),
    -- | Time in UTC when the Blackout period starts on start/date and ends on end/date. This can be: * Full time. * All zeros for 00:00:00 UTC
    time :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DenyMaintenancePeriod' with the minimum fields required to make a request.
newDenyMaintenancePeriod ::
  DenyMaintenancePeriod
newDenyMaintenancePeriod =
  DenyMaintenancePeriod
    { endDate = Core.Nothing,
      startDate = Core.Nothing,
      time = Core.Nothing
    }

instance Core.FromJSON DenyMaintenancePeriod where
  parseJSON =
    Core.withObject
      "DenyMaintenancePeriod"
      ( \o ->
          DenyMaintenancePeriod
            Core.<$> (o Core..:? "endDate")
            Core.<*> (o Core..:? "startDate")
            Core.<*> (o Core..:? "time")
      )

instance Core.ToJSON DenyMaintenancePeriod where
  toJSON DenyMaintenancePeriod {..} =
    Core.object
      ( Core.catMaybes
          [ ("endDate" Core..=) Core.<$> endDate,
            ("startDate" Core..=) Core.<$> startDate,
            ("time" Core..=) Core.<$> time
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | File share configuration for the instance.
--
-- /See:/ 'newFileShareConfig' smart constructor.
data FileShareConfig = FileShareConfig
  { -- | File share capacity in gigabytes (GB). Cloud Filestore defines 1 GB as 1024^3 bytes.
    capacityGb :: (Core.Maybe Core.Int64),
    -- | The name of the file share (must be 16 characters or less).
    name :: (Core.Maybe Core.Text),
    -- | Nfs Export Options. There is a limit of 10 export options per file share.
    nfsExportOptions :: (Core.Maybe [NfsExportOptions]),
    -- | The resource name of the backup, in the format @projects\/{project_number}\/locations\/{location_id}\/backups\/{backup_id}@, that this file share has been restored from.
    sourceBackup :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileShareConfig' with the minimum fields required to make a request.
newFileShareConfig ::
  FileShareConfig
newFileShareConfig =
  FileShareConfig
    { capacityGb = Core.Nothing,
      name = Core.Nothing,
      nfsExportOptions = Core.Nothing,
      sourceBackup = Core.Nothing
    }

instance Core.FromJSON FileShareConfig where
  parseJSON =
    Core.withObject
      "FileShareConfig"
      ( \o ->
          FileShareConfig
            Core.<$> ( o Core..:? "capacityGb"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nfsExportOptions")
            Core.<*> (o Core..:? "sourceBackup")
      )

instance Core.ToJSON FileShareConfig where
  toJSON FileShareConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("capacityGb" Core..=) Core.. Core.AsText
              Core.<$> capacityGb,
            ("name" Core..=) Core.<$> name,
            ("nfsExportOptions" Core..=)
              Core.<$> nfsExportOptions,
            ("sourceBackup" Core..=) Core.<$> sourceBackup
          ]
      )

--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1Instance' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1Instance = GoogleCloudSaasacceleratorManagementProvidersV1Instance
  { -- | consumer/defined/name is the name that is set by the consumer. On the other hand Name field represents system-assigned id of an instance so consumers are not necessarily aware of it. consumer/defined/name is used for notification\/UI purposes for consumer to recognize their instances.
    consumerDefinedName :: (Core.Maybe Core.Text),
    -- | Output only. Timestamp when the resource was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. The instance/type of this instance of format: projects\/{project/id}\/locations\/{location/id}\/instanceTypes\/{instance/type/id}. Instance Type represents a high-level tier or SKU of the service that this instance belong to. When enabled(eg: Maintenance Rollout), Rollout uses \'instance/type\' along with \'software_versions\' to determine whether instance needs an update or not.
    instanceType :: (Core.Maybe Core.Text),
    -- | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.
    labels ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels
      ),
    -- | Deprecated. The MaintenancePolicies that have been attached to the instance. The key must be of the type name of the oneof policy name defined in MaintenancePolicy, and the referenced policy must define the same policy type. For complete details of MaintenancePolicy, please refer to go\/cloud-saas-mw-ug.
    maintenancePolicyNames ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames
      ),
    -- | The MaintenanceSchedule contains the scheduling information of published maintenance schedule with same key as software_versions.
    maintenanceSchedules ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules
      ),
    -- | Optional. The MaintenanceSettings associated with instance.
    maintenanceSettings ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
      ),
    -- | Unique name of the resource. It uses the form: @projects\/{project_id|project_number}\/locations\/{location_id}\/instances\/{instance_id}@ Note: Either project/id or project/number can be used, but keep it consistent with other APIs (e.g. RescheduleUpdate)
    name :: (Core.Maybe Core.Text),
    -- | Optional. notification_parameters are information that service producers may like to include that is not relevant to Rollout. This parameter will only be passed to Gamma and Cloud Logging for notification\/logging purpose.
    notificationParameters ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters
      ),
    -- | Output only. Custom string attributes used primarily to expose producer-specific information in monitoring dashboards. See go\/get-instance-metadata.
    producerMetadata ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata
      ),
    -- | Output only. The list of data plane resources provisioned for this instance, e.g. compute VMs. See go\/get-instance-metadata.
    provisionedResources ::
      ( Core.Maybe
          [GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource]
      ),
    -- | Link to the SLM instance template. Only populated when updating SLM instances via SSA\'s Actuation service adaptor. Service producers with custom control plane (e.g. Cloud SQL) doesn\'t need to populate this field. Instead they should use software_versions.
    slmInstanceTemplate :: (Core.Maybe Core.Text),
    -- | Output only. SLO metadata for instance classification in the Standardized dataplane SLO platform. See go\/cloud-ssa-standard-slo for feature description.
    sloMetadata ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
      ),
    -- | Software versions that are used to deploy this instance. This can be mutated by rollout services.
    softwareVersions ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions
      ),
    -- | Output only. Current lifecycle state of the resource (e.g. if it\'s being created or ready to use).
    state ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_State
      ),
    -- | Output only. ID of the associated GCP tenant project. See go\/get-instance-metadata.
    tenantProjectId :: (Core.Maybe Core.Text),
    -- | Output only. Timestamp when the resource was last modified.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1Instance' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1Instance ::
  GoogleCloudSaasacceleratorManagementProvidersV1Instance
newGoogleCloudSaasacceleratorManagementProvidersV1Instance =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance
    { consumerDefinedName = Core.Nothing,
      createTime = Core.Nothing,
      instanceType = Core.Nothing,
      labels = Core.Nothing,
      maintenancePolicyNames = Core.Nothing,
      maintenanceSchedules = Core.Nothing,
      maintenanceSettings = Core.Nothing,
      name = Core.Nothing,
      notificationParameters = Core.Nothing,
      producerMetadata = Core.Nothing,
      provisionedResources = Core.Nothing,
      slmInstanceTemplate = Core.Nothing,
      sloMetadata = Core.Nothing,
      softwareVersions = Core.Nothing,
      state = Core.Nothing,
      tenantProjectId = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1Instance"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1Instance
            Core.<$> (o Core..:? "consumerDefinedName")
              Core.<*> (o Core..:? "createTime")
              Core.<*> (o Core..:? "instanceType")
              Core.<*> (o Core..:? "labels")
              Core.<*> (o Core..:? "maintenancePolicyNames")
              Core.<*> (o Core..:? "maintenanceSchedules")
              Core.<*> (o Core..:? "maintenanceSettings")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "notificationParameters")
              Core.<*> (o Core..:? "producerMetadata")
              Core.<*> (o Core..:? "provisionedResources")
              Core.<*> (o Core..:? "slmInstanceTemplate")
              Core.<*> (o Core..:? "sloMetadata")
              Core.<*> (o Core..:? "softwareVersions")
              Core.<*> (o Core..:? "state")
              Core.<*> (o Core..:? "tenantProjectId")
              Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance {..} =
      Core.object
        ( Core.catMaybes
            [ ("consumerDefinedName" Core..=)
                Core.<$> consumerDefinedName,
              ("createTime" Core..=) Core.<$> createTime,
              ("instanceType" Core..=) Core.<$> instanceType,
              ("labels" Core..=) Core.<$> labels,
              ("maintenancePolicyNames" Core..=)
                Core.<$> maintenancePolicyNames,
              ("maintenanceSchedules" Core..=)
                Core.<$> maintenanceSchedules,
              ("maintenanceSettings" Core..=)
                Core.<$> maintenanceSettings,
              ("name" Core..=) Core.<$> name,
              ("notificationParameters" Core..=)
                Core.<$> notificationParameters,
              ("producerMetadata" Core..=)
                Core.<$> producerMetadata,
              ("provisionedResources" Core..=)
                Core.<$> provisionedResources,
              ("slmInstanceTemplate" Core..=)
                Core.<$> slmInstanceTemplate,
              ("sloMetadata" Core..=) Core.<$> sloMetadata,
              ("softwareVersions" Core..=)
                Core.<$> softwareVersions,
              ("state" Core..=) Core.<$> state,
              ("tenantProjectId" Core..=) Core.<$> tenantProjectId,
              ("updateTime" Core..=) Core.<$> updateTime
            ]
        )

-- | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels = GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels additional =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_Labels {..} =
      Core.toJSON additional

-- | Deprecated. The MaintenancePolicies that have been attached to the instance. The key must be of the type name of the oneof policy name defined in MaintenancePolicy, and the referenced policy must define the same policy type. For complete details of MaintenancePolicy, please refer to go\/cloud-saas-mw-ug.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames = GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames additional =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenancePolicyNames {..} =
      Core.toJSON additional

-- | The MaintenanceSchedule contains the scheduling information of published maintenance schedule with same key as software_versions.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules = GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules
  { -- |
    additional ::
      ( Core.HashMap
          Core.Text
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules ::
  -- |  See 'additional'.
  Core.HashMap Core.Text GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule ->
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules additional =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_MaintenanceSchedules {..} =
      Core.toJSON additional

-- | Optional. notification_parameters are information that service producers may like to include that is not relevant to Rollout. This parameter will only be passed to Gamma and Cloud Logging for notification\/logging purpose.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters = GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters additional =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_NotificationParameters {..} =
      Core.toJSON additional

-- | Output only. Custom string attributes used primarily to expose producer-specific information in monitoring dashboards. See go\/get-instance-metadata.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata = GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata additional =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_ProducerMetadata {..} =
      Core.toJSON additional

-- | Software versions that are used to deploy this instance. This can be mutated by rollout services.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions = GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions
newGoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions additional =
  GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1Instance_SoftwareVersions {..} =
      Core.toJSON additional

-- | Maintenance schedule which is exposed to customer and potentially end user, indicating published upcoming future maintenance schedule
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule = GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
  { -- | This field is deprecated, and will be always set to true since reschedule can happen multiple times now. This field should not be removed until all service producers remove this for their customers.
    canReschedule :: (Core.Maybe Core.Bool),
    -- | The scheduled end time for the maintenance.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The rollout management policy this maintenance schedule is associated with. When doing reschedule update request, the reschedule should be against this given policy.
    rolloutManagementPolicy :: (Core.Maybe Core.Text),
    -- | schedule/deadline/time is the time deadline any schedule start time cannot go beyond, including reschedule. It\'s normally the initial schedule start time plus maintenance window length (1 day or 1 week). Maintenance cannot be scheduled to start beyond this deadline.
    scheduleDeadlineTime :: (Core.Maybe Core.DateTime),
    -- | The scheduled start time for the maintenance.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule ::
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule =
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
    { canReschedule = Core.Nothing,
      endTime = Core.Nothing,
      rolloutManagementPolicy = Core.Nothing,
      scheduleDeadlineTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
            Core.<$> (o Core..:? "canReschedule")
              Core.<*> (o Core..:? "endTime")
              Core.<*> (o Core..:? "rolloutManagementPolicy")
              Core.<*> (o Core..:? "scheduleDeadlineTime")
              Core.<*> (o Core..:? "startTime")
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule {..} =
      Core.object
        ( Core.catMaybes
            [ ("canReschedule" Core..=) Core.<$> canReschedule,
              ("endTime" Core..=) Core.<$> endTime,
              ("rolloutManagementPolicy" Core..=)
                Core.<$> rolloutManagementPolicy,
              ("scheduleDeadlineTime" Core..=)
                Core.<$> scheduleDeadlineTime,
              ("startTime" Core..=) Core.<$> startTime
            ]
        )

-- | Maintenance settings associated with instance. Allows service producers and end users to assign settings that controls maintenance on this instance.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings = GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
  { -- | Optional. Exclude instance from maintenance. When true, rollout service will not attempt maintenance on the instance. Rollout service will include the instance in reported rollout progress as not attempted.
    exclude :: (Core.Maybe Core.Bool),
    -- | Optional. If the update call is triggered from rollback, set the value as true.
    isRollback :: (Core.Maybe Core.Bool),
    -- | Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the type name of the oneof policy name defined in MaintenancePolicy, and the embedded policy must define the same policy type. For complete details of MaintenancePolicy, please refer to go\/cloud-saas-mw-ug. If only the name is needed (like in the deprecated Instance.maintenance/policy/names field) then only populate MaintenancePolicy.name.
    maintenancePolicies ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings ::
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings =
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
    { exclude = Core.Nothing,
      isRollback = Core.Nothing,
      maintenancePolicies = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
            Core.<$> (o Core..:? "exclude")
              Core.<*> (o Core..:? "isRollback")
              Core.<*> (o Core..:? "maintenancePolicies")
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings {..} =
      Core.object
        ( Core.catMaybes
            [ ("exclude" Core..=) Core.<$> exclude,
              ("isRollback" Core..=) Core.<$> isRollback,
              ("maintenancePolicies" Core..=)
                Core.<$> maintenancePolicies
            ]
        )

-- | Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the type name of the oneof policy name defined in MaintenancePolicy, and the embedded policy must define the same policy type. For complete details of MaintenancePolicy, please refer to go\/cloud-saas-mw-ug. If only the name is needed (like in the deprecated Instance.maintenance/policy/names field) then only populate MaintenancePolicy.name.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies = GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies
  { -- |
    additional :: (Core.HashMap Core.Text MaintenancePolicy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies ::
  -- |  See 'additional'.
  Core.HashMap Core.Text MaintenancePolicy ->
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies
newGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies additional =
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings_MaintenancePolicies {..} =
      Core.toJSON additional

-- | Node information for custom per-node SLO implementations. SSA does not support per-node SLO, but producers can populate per-node information in SloMetadata for custom precomputations. SSA Eligibility Exporter will emit per-node metric based on this information.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata = GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
  { -- | The location of the node, if different from instance location.
    location :: (Core.Maybe Core.Text),
    -- | The id of the node. This should be equal to SaasInstanceNode.node_id.
    nodeId :: (Core.Maybe Core.Text),
    -- | If present, this will override eligibility for the node coming from instance or exclusions for specified SLIs.
    perSliEligibility ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata ::
  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
newGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
    { location = Core.Nothing,
      nodeId = Core.Nothing,
      perSliEligibility = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
            Core.<$> (o Core..:? "location")
              Core.<*> (o Core..:? "nodeId")
              Core.<*> (o Core..:? "perSliEligibility")
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("location" Core..=) Core.<$> location,
              ("nodeId" Core..=) Core.<$> nodeId,
              ("perSliEligibility" Core..=)
                Core.<$> perSliEligibility
            ]
        )

-- | PerSliSloEligibility is a mapping from an SLI name to eligibility.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility = GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
  { -- | An entry in the eligibilities map specifies an eligibility for a particular SLI for the given instance. The SLI key in the name must be a valid SLI name specified in the Eligibility Exporter binary flags otherwise an error will be emitted by Eligibility Exporter and the oncaller will be alerted. If an SLI has been defined in the binary flags but the eligibilities map does not contain it, the corresponding SLI time series will not be emitted by the Eligibility Exporter. This ensures a smooth rollout and compatibility between the data produced by different versions of the Eligibility Exporters. If eligibilities map contains a key for an SLI which has not been declared in the binary flags, there will be an error message emitted in the Eligibility Exporter log and the metric for the SLI in question will not be emitted.
    eligibilities ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility ::
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility =
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
    { eligibilities = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
            Core.<$> (o Core..:? "eligibilities")
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility {..} =
      Core.object
        ( Core.catMaybes
            [("eligibilities" Core..=) Core.<$> eligibilities]
        )

-- | An entry in the eligibilities map specifies an eligibility for a particular SLI for the given instance. The SLI key in the name must be a valid SLI name specified in the Eligibility Exporter binary flags otherwise an error will be emitted by Eligibility Exporter and the oncaller will be alerted. If an SLI has been defined in the binary flags but the eligibilities map does not contain it, the corresponding SLI time series will not be emitted by the Eligibility Exporter. This ensures a smooth rollout and compatibility between the data produced by different versions of the Eligibility Exporters. If eligibilities map contains a key for an SLI which has not been declared in the binary flags, there will be an error message emitted in the Eligibility Exporter log and the metric for the SLI in question will not be emitted.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities' smart constructor.
newtype GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities = GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities
  { -- |
    additional ::
      ( Core.HashMap
          Core.Text
          GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities ::
  -- |  See 'additional'.
  Core.HashMap Core.Text GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility ->
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities
newGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities additional =
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility_Eligibilities {..} =
      Core.toJSON additional

-- | Describes provisioned dataplane resources.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource = GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
  { -- | Type of the resource. This can be either a GCP resource or a custom one (e.g. another cloud provider\'s VM). For GCP compute resources use singular form of the names listed in GCP compute API documentation (https:\/\/cloud.google.com\/compute\/docs\/reference\/rest\/v1\/), prefixed with \'compute-\', for example: \'compute-instance\', \'compute-disk\', \'compute-autoscaler\'.
    resourceType :: (Core.Maybe Core.Text),
    -- | URL identifying the resource, e.g. \"https:\/\/www.googleapis.com\/compute\/v1\/projects\/...)\".
    resourceUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource ::
  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
newGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource =
  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
    { resourceType = Core.Nothing,
      resourceUrl = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
            Core.<$> (o Core..:? "resourceType")
              Core.<*> (o Core..:? "resourceUrl")
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource {..} =
      Core.object
        ( Core.catMaybes
            [ ("resourceType" Core..=) Core.<$> resourceType,
              ("resourceUrl" Core..=) Core.<$> resourceUrl
            ]
        )

-- | SloEligibility is a tuple containing eligibility value: true if an instance is eligible for SLO calculation or false if it should be excluded from all SLO-related calculations along with a user-defined reason.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility = GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
  { -- | Whether an instance is eligible or ineligible.
    eligible :: (Core.Maybe Core.Bool),
    -- | User-defined reason for the current value of instance eligibility. Usually, this can be directly mapped to the internal state. An empty reason is allowed.
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility ::
  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
newGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility =
  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
    { eligible = Core.Nothing,
      reason = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
            Core.<$> (o Core..:? "eligible")
              Core.<*> (o Core..:? "reason")
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility {..} =
      Core.object
        ( Core.catMaybes
            [ ("eligible" Core..=) Core.<$> eligible,
              ("reason" Core..=) Core.<$> reason
            ]
        )

-- | SloMetadata contains resources required for proper SLO classification of the instance.
--
-- /See:/ 'newGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata' smart constructor.
data GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata = GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
  { -- | Optional. List of nodes. Some producers need to use per-node metadata to calculate SLO. This field allows such producers to publish per-node SLO meta data, which will be consumed by SSA Eligibility Exporter and published in the form of per node metric to Monarch.
    nodes ::
      ( Core.Maybe
          [GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata]
      ),
    -- | Optional. Multiple per-instance SLI eligibilities which apply for individual SLIs.
    perSliEligibility ::
      ( Core.Maybe
          GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
      ),
    -- | Name of the SLO tier the Instance belongs to. This name will be expected to match the tiers specified in the service SLO configuration. Field is mandatory and must not be empty.
    tier :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata' with the minimum fields required to make a request.
newGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata ::
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
newGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata =
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
    { nodes = Core.Nothing,
      perSliEligibility = Core.Nothing,
      tier = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata"
      ( \o ->
          GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
            Core.<$> (o Core..:? "nodes")
              Core.<*> (o Core..:? "perSliEligibility")
              Core.<*> (o Core..:? "tier")
      )

instance
  Core.ToJSON
    GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
  where
  toJSON
    GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("nodes" Core..=) Core.<$> nodes,
              ("perSliEligibility" Core..=)
                Core.<$> perSliEligibility,
              ("tier" Core..=) Core.<$> tier
            ]
        )

-- | A Cloud Filestore instance.
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance
  { -- | Output only. The time when the instance was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The description of the instance (2048 characters or less).
    description :: (Core.Maybe Core.Text),
    -- | Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
    etag :: (Core.Maybe Core.Text),
    -- | File system shares on the instance. For this version, only a single file share is supported.
    fileShares :: (Core.Maybe [FileShareConfig]),
    -- | KMS key name used for data encryption.
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | Resource labels to represent user provided metadata.
    labels :: (Core.Maybe Instance_Labels),
    -- | Output only. The resource name of the instance, in the format @projects\/{project}\/locations\/{location}\/instances\/{instance}@.
    name :: (Core.Maybe Core.Text),
    -- | VPC networks to which the instance is connected. For this version, only a single network is supported.
    networks :: (Core.Maybe [NetworkConfig]),
    -- | Output only. Reserved for future use.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | Output only. The instance state.
    state :: (Core.Maybe Instance_State),
    -- | Output only. Additional information about the instance state, if available.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Output only. field indicates all the reasons the instance is in \"SUSPENDED\" state.
    suspensionReasons :: (Core.Maybe [Instance_SuspensionReasonsItem]),
    -- | The service tier of the instance.
    tier :: (Core.Maybe Instance_Tier)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
newInstance ::
  Instance
newInstance =
  Instance
    { createTime = Core.Nothing,
      description = Core.Nothing,
      etag = Core.Nothing,
      fileShares = Core.Nothing,
      kmsKeyName = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      networks = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      state = Core.Nothing,
      statusMessage = Core.Nothing,
      suspensionReasons = Core.Nothing,
      tier = Core.Nothing
    }

instance Core.FromJSON Instance where
  parseJSON =
    Core.withObject
      "Instance"
      ( \o ->
          Instance
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "fileShares")
            Core.<*> (o Core..:? "kmsKeyName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networks")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "suspensionReasons")
            Core.<*> (o Core..:? "tier")
      )

instance Core.ToJSON Instance where
  toJSON Instance {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("fileShares" Core..=) Core.<$> fileShares,
            ("kmsKeyName" Core..=) Core.<$> kmsKeyName,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("networks" Core..=) Core.<$> networks,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("state" Core..=) Core.<$> state,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("suspensionReasons" Core..=)
              Core.<$> suspensionReasons,
            ("tier" Core..=) Core.<$> tier
          ]
      )

-- | Resource labels to represent user provided metadata.
--
-- /See:/ 'newInstance_Labels' smart constructor.
newtype Instance_Labels = Instance_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_Labels' with the minimum fields required to make a request.
newInstance_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Instance_Labels
newInstance_Labels additional = Instance_Labels {additional = additional}

instance Core.FromJSON Instance_Labels where
  parseJSON =
    Core.withObject
      "Instance_Labels"
      ( \o ->
          Instance_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Instance_Labels where
  toJSON Instance_Labels {..} = Core.toJSON additional

-- | ListBackupsResponse is the result of ListBackupsRequest.
--
-- /See:/ 'newListBackupsResponse' smart constructor.
data ListBackupsResponse = ListBackupsResponse
  { -- | A list of backups in the project for the specified location. If the @{location}@ value in the request is \"-\", the response contains a list of backups from all locations. If any location is unreachable, the response will only return backups in reachable locations and the \"unreachable\" field will be populated with a list of unreachable locations.
    backups :: (Core.Maybe [Backup]),
    -- | The token you can use to retrieve the next page of results. Not returned if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBackupsResponse' with the minimum fields required to make a request.
newListBackupsResponse ::
  ListBackupsResponse
newListBackupsResponse =
  ListBackupsResponse
    { backups = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListBackupsResponse where
  parseJSON =
    Core.withObject
      "ListBackupsResponse"
      ( \o ->
          ListBackupsResponse
            Core.<$> (o Core..:? "backups")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListBackupsResponse where
  toJSON ListBackupsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("backups" Core..=) Core.<$> backups,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | ListInstancesResponse is the result of ListInstancesRequest.
--
-- /See:/ 'newListInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse
  { -- | A list of instances in the project for the specified location. If the @{location}@ value in the request is \"-\", the response contains a list of instances from all locations. If any location is unreachable, the response will only return instances in reachable locations and the \"unreachable\" field will be populated with a list of unreachable locations.
    instances :: (Core.Maybe [Instance]),
    -- | The token you can use to retrieve the next page of results. Not returned if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
newListInstancesResponse ::
  ListInstancesResponse
newListInstancesResponse =
  ListInstancesResponse
    { instances = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListInstancesResponse where
  parseJSON =
    Core.withObject
      "ListInstancesResponse"
      ( \o ->
          ListInstancesResponse
            Core.<$> (o Core..:? "instances")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListInstancesResponse where
  toJSON ListInstancesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("instances" Core..=) Core.<$> instances,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | ListSnapshotsResponse is the result of ListSnapshotsRequest.
--
-- /See:/ 'newListSnapshotsResponse' smart constructor.
data ListSnapshotsResponse = ListSnapshotsResponse
  { -- | The token you can use to retrieve the next page of results. Not returned if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of snapshots in the project for the specified instance.
    snapshots :: (Core.Maybe [Snapshot])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSnapshotsResponse' with the minimum fields required to make a request.
newListSnapshotsResponse ::
  ListSnapshotsResponse
newListSnapshotsResponse =
  ListSnapshotsResponse {nextPageToken = Core.Nothing, snapshots = Core.Nothing}

instance Core.FromJSON ListSnapshotsResponse where
  parseJSON =
    Core.withObject
      "ListSnapshotsResponse"
      ( \o ->
          ListSnapshotsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "snapshots")
      )

instance Core.ToJSON ListSnapshotsResponse where
  toJSON ListSnapshotsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("snapshots" Core..=) Core.<$> snapshots
          ]
      )

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: @\"us-east1\"@.
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional = Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      ( \o ->
          Location_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata additional = Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      ( \o ->
          Location_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | Defines policies to service maintenance events.
--
-- /See:/ 'newMaintenancePolicy' smart constructor.
data MaintenancePolicy = MaintenancePolicy
  { -- | Output only. The time when the resource was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Description of what this policy is for. Create\/Update methods return INVALID_ARGUMENT if the length is greater than 512.
    description :: (Core.Maybe Core.Text),
    -- | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.
    labels :: (Core.Maybe MaintenancePolicy_Labels),
    -- | Required. MaintenancePolicy name using the form: @projects\/{project_id}\/locations\/{location_id}\/maintenancePolicies\/{maintenance_policy_id}@ where {project/id} refers to a GCP consumer project ID, {location/id} refers to a GCP region\/zone, {maintenance/policy/id} must be 1-63 characters long and match the regular expression @[a-z0-9]([-a-z0-9]*[a-z0-9])?@.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The state of the policy.
    state :: (Core.Maybe MaintenancePolicy_State),
    -- | Maintenance policy applicable to instance update.
    updatePolicy :: (Core.Maybe UpdatePolicy),
    -- | Output only. The time when the resource was updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenancePolicy' with the minimum fields required to make a request.
newMaintenancePolicy ::
  MaintenancePolicy
newMaintenancePolicy =
  MaintenancePolicy
    { createTime = Core.Nothing,
      description = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      state = Core.Nothing,
      updatePolicy = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON MaintenancePolicy where
  parseJSON =
    Core.withObject
      "MaintenancePolicy"
      ( \o ->
          MaintenancePolicy
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updatePolicy")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON MaintenancePolicy where
  toJSON MaintenancePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("state" Core..=) Core.<$> state,
            ("updatePolicy" Core..=) Core.<$> updatePolicy,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.
--
-- /See:/ 'newMaintenancePolicy_Labels' smart constructor.
newtype MaintenancePolicy_Labels = MaintenancePolicy_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenancePolicy_Labels' with the minimum fields required to make a request.
newMaintenancePolicy_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  MaintenancePolicy_Labels
newMaintenancePolicy_Labels additional =
  MaintenancePolicy_Labels {additional = additional}

instance Core.FromJSON MaintenancePolicy_Labels where
  parseJSON =
    Core.withObject
      "MaintenancePolicy_Labels"
      ( \o ->
          MaintenancePolicy_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON MaintenancePolicy_Labels where
  toJSON MaintenancePolicy_Labels {..} =
    Core.toJSON additional

-- | MaintenanceWindow definition.
--
-- /See:/ 'newMaintenanceWindow' smart constructor.
data MaintenanceWindow = MaintenanceWindow
  { -- | Daily cycle.
    dailyCycle :: (Core.Maybe DailyCycle),
    -- | Weekly cycle.
    weeklyCycle :: (Core.Maybe WeeklyCycle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
newMaintenanceWindow ::
  MaintenanceWindow
newMaintenanceWindow =
  MaintenanceWindow {dailyCycle = Core.Nothing, weeklyCycle = Core.Nothing}

instance Core.FromJSON MaintenanceWindow where
  parseJSON =
    Core.withObject
      "MaintenanceWindow"
      ( \o ->
          MaintenanceWindow
            Core.<$> (o Core..:? "dailyCycle")
            Core.<*> (o Core..:? "weeklyCycle")
      )

instance Core.ToJSON MaintenanceWindow where
  toJSON MaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("dailyCycle" Core..=) Core.<$> dailyCycle,
            ("weeklyCycle" Core..=) Core.<$> weeklyCycle
          ]
      )

-- | Network configuration for the instance.
--
-- /See:/ 'newNetworkConfig' smart constructor.
data NetworkConfig = NetworkConfig
  { -- | The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
    connectMode :: (Core.Maybe NetworkConfig_ConnectMode),
    -- | Output only. IPv4 addresses in the format @{octet1}.{octet2}.{octet3}.{octet4}@ or IPv6 addresses in the format @{block1}:{block2}:{block3}:{block4}:{block5}:{block6}:{block7}:{block8}@.
    ipAddresses :: (Core.Maybe [Core.Text]),
    -- | Internet protocol versions for which the instance has IP addresses assigned. For this version, only MODE_IPV4 is supported.
    modes :: (Core.Maybe [NetworkConfig_ModesItem]),
    -- | The name of the Google Compute Engine <https://cloud.google.com/vpc/docs/vpc VPC network> to which the instance is connected.
    network :: (Core.Maybe Core.Text),
    -- | Optional, reserved/ip/range can have one of the following two types of values. * CIDR range value when using DIRECT/PEERING connect mode. * <https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address Allocated IP address range> when using PRIVATE/SERVICE_ACCESS connect mode. When the name of an allocated IP address range is specified, it must be one of the ranges associated with the private service access connection. When specified as a direct CIDR value, it must be a \/29 CIDR block for Basic tier or a \/24 CIDR block for High Scale or Enterprise tier in one of the <https://www.arin.net/reference/research/statistics/address_filters/ internal IP address ranges> that identifies the range of IP addresses reserved for this instance. For example, 10.0.0.0\/29 or 192.168.0.0\/24. The range you specify can\'t overlap with either existing subnets or assigned IP address ranges for other Cloud Filestore instances in the selected VPC network.
    reservedIpRange :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
newNetworkConfig ::
  NetworkConfig
newNetworkConfig =
  NetworkConfig
    { connectMode = Core.Nothing,
      ipAddresses = Core.Nothing,
      modes = Core.Nothing,
      network = Core.Nothing,
      reservedIpRange = Core.Nothing
    }

instance Core.FromJSON NetworkConfig where
  parseJSON =
    Core.withObject
      "NetworkConfig"
      ( \o ->
          NetworkConfig
            Core.<$> (o Core..:? "connectMode")
            Core.<*> (o Core..:? "ipAddresses")
            Core.<*> (o Core..:? "modes")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "reservedIpRange")
      )

instance Core.ToJSON NetworkConfig where
  toJSON NetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectMode" Core..=) Core.<$> connectMode,
            ("ipAddresses" Core..=) Core.<$> ipAddresses,
            ("modes" Core..=) Core.<$> modes,
            ("network" Core..=) Core.<$> network,
            ("reservedIpRange" Core..=)
              Core.<$> reservedIpRange
          ]
      )

-- | NFS export options specifications.
--
-- /See:/ 'newNfsExportOptions' smart constructor.
data NfsExportOptions = NfsExportOptions
  { -- | Either READ/ONLY, for allowing only read requests on the exported directory, or READ/WRITE, for allowing both read and write requests. The default is READ_WRITE.
    accessMode :: (Core.Maybe NfsExportOptions_AccessMode),
    -- | An integer representing the anonymous group id with a default value of 65534. Anon/gid may only be set with squash/mode of ROOT/SQUASH. An error will be returned if this field is specified for other squash/mode settings.
    anonGid :: (Core.Maybe Core.Int64),
    -- | An integer representing the anonymous user id with a default value of 65534. Anon/uid may only be set with squash/mode of ROOT/SQUASH. An error will be returned if this field is specified for other squash/mode settings.
    anonUid :: (Core.Maybe Core.Int64),
    -- | List of either an IPv4 addresses in the format @{octet1}.{octet2}.{octet3}.{octet4}@ or CIDR ranges in the format @{octet1}.{octet2}.{octet3}.{octet4}\/{mask size}@ which may mount the file share. Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned. The limit is 64 IP ranges\/addresses for each FileShareConfig among all NfsExportOptions.
    ipRanges :: (Core.Maybe [Core.Text]),
    -- | Either NO/ROOT/SQUASH, for allowing root access on the exported directory, or ROOT/SQUASH, for not allowing root access. The default is NO/ROOT_SQUASH.
    squashMode :: (Core.Maybe NfsExportOptions_SquashMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NfsExportOptions' with the minimum fields required to make a request.
newNfsExportOptions ::
  NfsExportOptions
newNfsExportOptions =
  NfsExportOptions
    { accessMode = Core.Nothing,
      anonGid = Core.Nothing,
      anonUid = Core.Nothing,
      ipRanges = Core.Nothing,
      squashMode = Core.Nothing
    }

instance Core.FromJSON NfsExportOptions where
  parseJSON =
    Core.withObject
      "NfsExportOptions"
      ( \o ->
          NfsExportOptions
            Core.<$> (o Core..:? "accessMode")
            Core.<*> ( o Core..:? "anonGid"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "anonUid"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "ipRanges")
            Core.<*> (o Core..:? "squashMode")
      )

instance Core.ToJSON NfsExportOptions where
  toJSON NfsExportOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessMode" Core..=) Core.<$> accessMode,
            ("anonGid" Core..=) Core.. Core.AsText
              Core.<$> anonGid,
            ("anonUid" Core..=) Core.. Core.AsText
              Core.<$> anonUid,
            ("ipRanges" Core..=) Core.<$> ipRanges,
            ("squashMode" Core..=) Core.<$> squashMode
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | Output only. API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Output only. Identifies whether the user has requested cancellation of the operation. Operations that have been cancelled successfully have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    cancelRequested :: (Core.Maybe Core.Bool),
    -- | Output only. The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Human-readable status of the operation, if any.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Output only. Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Output only. Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { apiVersion = Core.Nothing,
      cancelRequested = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      statusDetail = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "cancelRequested")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("cancelRequested" Core..=) Core.<$> cancelRequested,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("statusDetail" Core..=) Core.<$> statusDetail,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | RestoreInstanceRequest restores an existing instance\'s file share from a backup.
--
-- /See:/ 'newRestoreInstanceRequest' smart constructor.
data RestoreInstanceRequest = RestoreInstanceRequest
  { -- | Required. Name of the file share in the Cloud Filestore instance that the backup is being restored to.
    fileShare :: (Core.Maybe Core.Text),
    -- | The resource name of the backup, in the format @projects\/{project_number}\/locations\/{location_id}\/backups\/{backup_id}@.
    sourceBackup :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreInstanceRequest' with the minimum fields required to make a request.
newRestoreInstanceRequest ::
  RestoreInstanceRequest
newRestoreInstanceRequest =
  RestoreInstanceRequest {fileShare = Core.Nothing, sourceBackup = Core.Nothing}

instance Core.FromJSON RestoreInstanceRequest where
  parseJSON =
    Core.withObject
      "RestoreInstanceRequest"
      ( \o ->
          RestoreInstanceRequest
            Core.<$> (o Core..:? "fileShare")
            Core.<*> (o Core..:? "sourceBackup")
      )

instance Core.ToJSON RestoreInstanceRequest where
  toJSON RestoreInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fileShare" Core..=) Core.<$> fileShare,
            ("sourceBackup" Core..=) Core.<$> sourceBackup
          ]
      )

-- | Configure the schedule.
--
-- /See:/ 'newSchedule' smart constructor.
data Schedule = Schedule
  { -- | Allows to define schedule that runs specified day of the week.
    day :: (Core.Maybe Schedule_Day),
    -- | Output only. Duration of the time window, set by service producer.
    duration :: (Core.Maybe Core.Duration),
    -- | Time within the window to start the operations.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Schedule' with the minimum fields required to make a request.
newSchedule ::
  Schedule
newSchedule =
  Schedule
    { day = Core.Nothing,
      duration = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON Schedule where
  parseJSON =
    Core.withObject
      "Schedule"
      ( \o ->
          Schedule
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON Schedule where
  toJSON Schedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("duration" Core..=) Core.<$> duration,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | A Filestore snapshot.
--
-- /See:/ 'newSnapshot' smart constructor.
data Snapshot = Snapshot
  { -- | Output only. The time when the snapshot was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The amount of bytes needed to allocate a full copy of the snapshot content
    filesystemUsedBytes :: (Core.Maybe Core.Int64),
    -- | Resource labels to represent user provided metadata.
    labels :: (Core.Maybe Snapshot_Labels),
    -- | Output only. The resource name of the snapshot, in the format @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\/snapshots\/{snapshot_id}@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The snapshot state.
    state :: (Core.Maybe Snapshot_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
newSnapshot ::
  Snapshot
newSnapshot =
  Snapshot
    { createTime = Core.Nothing,
      description = Core.Nothing,
      filesystemUsedBytes = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON Snapshot where
  parseJSON =
    Core.withObject
      "Snapshot"
      ( \o ->
          Snapshot
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> ( o Core..:? "filesystemUsedBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON Snapshot where
  toJSON Snapshot {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("filesystemUsedBytes" Core..=) Core.. Core.AsText
              Core.<$> filesystemUsedBytes,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Resource labels to represent user provided metadata.
--
-- /See:/ 'newSnapshot_Labels' smart constructor.
newtype Snapshot_Labels = Snapshot_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Snapshot_Labels' with the minimum fields required to make a request.
newSnapshot_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Snapshot_Labels
newSnapshot_Labels additional = Snapshot_Labels {additional = additional}

instance Core.FromJSON Snapshot_Labels where
  parseJSON =
    Core.withObject
      "Snapshot_Labels"
      ( \o ->
          Snapshot_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Snapshot_Labels where
  toJSON Snapshot_Labels {..} = Core.toJSON additional

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newTimeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay'
  { -- | Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Minutes of hour of day. Must be from 0 to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
    seconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
newTimeOfDay ::
  TimeOfDay'
newTimeOfDay =
  TimeOfDay'
    { hours = Core.Nothing,
      minutes = Core.Nothing,
      nanos = Core.Nothing,
      seconds = Core.Nothing
    }

instance Core.FromJSON TimeOfDay' where
  parseJSON =
    Core.withObject
      "TimeOfDay'"
      ( \o ->
          TimeOfDay'
            Core.<$> (o Core..:? "hours")
            Core.<*> (o Core..:? "minutes")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "seconds")
      )

instance Core.ToJSON TimeOfDay' where
  toJSON TimeOfDay' {..} =
    Core.object
      ( Core.catMaybes
          [ ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes,
            ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.<$> seconds
          ]
      )

-- | Maintenance policy applicable to instance updates.
--
-- /See:/ 'newUpdatePolicy' smart constructor.
data UpdatePolicy = UpdatePolicy
  { -- | Optional. Relative scheduling channel applied to resource.
    channel :: (Core.Maybe UpdatePolicy_Channel),
    -- | Deny Maintenance Period that is applied to resource to indicate when maintenance is forbidden. User can specify zero or more non-overlapping deny periods. Maximum number of deny/maintenance/periods expected is one.
    denyMaintenancePeriods :: (Core.Maybe [DenyMaintenancePeriod]),
    -- | Optional. Maintenance window that is applied to resources covered by this policy.
    window :: (Core.Maybe MaintenanceWindow)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdatePolicy' with the minimum fields required to make a request.
newUpdatePolicy ::
  UpdatePolicy
newUpdatePolicy =
  UpdatePolicy
    { channel = Core.Nothing,
      denyMaintenancePeriods = Core.Nothing,
      window = Core.Nothing
    }

instance Core.FromJSON UpdatePolicy where
  parseJSON =
    Core.withObject
      "UpdatePolicy"
      ( \o ->
          UpdatePolicy
            Core.<$> (o Core..:? "channel")
            Core.<*> (o Core..:? "denyMaintenancePeriods")
            Core.<*> (o Core..:? "window")
      )

instance Core.ToJSON UpdatePolicy where
  toJSON UpdatePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("channel" Core..=) Core.<$> channel,
            ("denyMaintenancePeriods" Core..=)
              Core.<$> denyMaintenancePeriods,
            ("window" Core..=) Core.<$> window
          ]
      )

-- | Time window specified for weekly operations.
--
-- /See:/ 'newWeeklyCycle' smart constructor.
newtype WeeklyCycle = WeeklyCycle
  { -- | User can specify multiple windows in a week. Minimum of 1 window.
    schedule :: (Core.Maybe [Schedule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WeeklyCycle' with the minimum fields required to make a request.
newWeeklyCycle ::
  WeeklyCycle
newWeeklyCycle = WeeklyCycle {schedule = Core.Nothing}

instance Core.FromJSON WeeklyCycle where
  parseJSON =
    Core.withObject
      "WeeklyCycle"
      (\o -> WeeklyCycle Core.<$> (o Core..:? "schedule"))

instance Core.ToJSON WeeklyCycle where
  toJSON WeeklyCycle {..} =
    Core.object
      ( Core.catMaybes
          [("schedule" Core..=) Core.<$> schedule]
      )
