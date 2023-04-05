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
-- Module      : Gogol.SQLAdmin.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SQLAdmin.Internal.Product
  ( -- * AclEntry
    AclEntry (..),
    newAclEntry,

    -- * ApiWarning
    ApiWarning (..),
    newApiWarning,

    -- * BackupConfiguration
    BackupConfiguration (..),
    newBackupConfiguration,

    -- * BackupContext
    BackupContext (..),
    newBackupContext,

    -- * BackupRetentionSettings
    BackupRetentionSettings (..),
    newBackupRetentionSettings,

    -- * BackupRun
    BackupRun (..),
    newBackupRun,

    -- * BackupRunsListResponse
    BackupRunsListResponse (..),
    newBackupRunsListResponse,

    -- * BinLogCoordinates
    BinLogCoordinates (..),
    newBinLogCoordinates,

    -- * CloneContext
    CloneContext (..),
    newCloneContext,

    -- * ConnectSettings
    ConnectSettings (..),
    newConnectSettings,

    -- * Database
    Database (..),
    newDatabase,

    -- * DatabaseFlags
    DatabaseFlags (..),
    newDatabaseFlags,

    -- * DatabaseInstance
    DatabaseInstance (..),
    newDatabaseInstance,

    -- * DatabaseInstance_FailoverReplica
    DatabaseInstance_FailoverReplica (..),
    newDatabaseInstance_FailoverReplica,

    -- * DatabasesListResponse
    DatabasesListResponse (..),
    newDatabasesListResponse,

    -- * DemoteMasterConfiguration
    DemoteMasterConfiguration (..),
    newDemoteMasterConfiguration,

    -- * DemoteMasterContext
    DemoteMasterContext (..),
    newDemoteMasterContext,

    -- * DemoteMasterMySqlReplicaConfiguration
    DemoteMasterMySqlReplicaConfiguration (..),
    newDemoteMasterMySqlReplicaConfiguration,

    -- * DenyMaintenancePeriod
    DenyMaintenancePeriod (..),
    newDenyMaintenancePeriod,

    -- * DiskEncryptionConfiguration
    DiskEncryptionConfiguration (..),
    newDiskEncryptionConfiguration,

    -- * DiskEncryptionStatus
    DiskEncryptionStatus (..),
    newDiskEncryptionStatus,

    -- * ExportContext
    ExportContext (..),
    newExportContext,

    -- * ExportContext_BakExportOptions
    ExportContext_BakExportOptions (..),
    newExportContext_BakExportOptions,

    -- * ExportContext_CsvExportOptions
    ExportContext_CsvExportOptions (..),
    newExportContext_CsvExportOptions,

    -- * ExportContext_SqlExportOptions
    ExportContext_SqlExportOptions (..),
    newExportContext_SqlExportOptions,

    -- * ExportContext_SqlExportOptions_MysqlExportOptions
    ExportContext_SqlExportOptions_MysqlExportOptions (..),
    newExportContext_SqlExportOptions_MysqlExportOptions,

    -- * FailoverContext
    FailoverContext (..),
    newFailoverContext,

    -- * Flag
    Flag (..),
    newFlag,

    -- * FlagsListResponse
    FlagsListResponse (..),
    newFlagsListResponse,

    -- * GenerateEphemeralCertRequest
    GenerateEphemeralCertRequest (..),
    newGenerateEphemeralCertRequest,

    -- * GenerateEphemeralCertResponse
    GenerateEphemeralCertResponse (..),
    newGenerateEphemeralCertResponse,

    -- * ImportContext
    ImportContext (..),
    newImportContext,

    -- * ImportContext_BakImportOptions
    ImportContext_BakImportOptions (..),
    newImportContext_BakImportOptions,

    -- * ImportContext_BakImportOptions_EncryptionOptions
    ImportContext_BakImportOptions_EncryptionOptions (..),
    newImportContext_BakImportOptions_EncryptionOptions,

    -- * ImportContext_CsvImportOptions
    ImportContext_CsvImportOptions (..),
    newImportContext_CsvImportOptions,

    -- * InsightsConfig
    InsightsConfig (..),
    newInsightsConfig,

    -- * InstanceReference
    InstanceReference (..),
    newInstanceReference,

    -- * InstancesCloneRequest
    InstancesCloneRequest (..),
    newInstancesCloneRequest,

    -- * InstancesDemoteMasterRequest
    InstancesDemoteMasterRequest (..),
    newInstancesDemoteMasterRequest,

    -- * InstancesExportRequest
    InstancesExportRequest (..),
    newInstancesExportRequest,

    -- * InstancesFailoverRequest
    InstancesFailoverRequest (..),
    newInstancesFailoverRequest,

    -- * InstancesImportRequest
    InstancesImportRequest (..),
    newInstancesImportRequest,

    -- * InstancesListResponse
    InstancesListResponse (..),
    newInstancesListResponse,

    -- * InstancesListServerCasResponse
    InstancesListServerCasResponse (..),
    newInstancesListServerCasResponse,

    -- * InstancesRestoreBackupRequest
    InstancesRestoreBackupRequest (..),
    newInstancesRestoreBackupRequest,

    -- * InstancesRotateServerCaRequest
    InstancesRotateServerCaRequest (..),
    newInstancesRotateServerCaRequest,

    -- * InstancesTruncateLogRequest
    InstancesTruncateLogRequest (..),
    newInstancesTruncateLogRequest,

    -- * IpConfiguration
    IpConfiguration (..),
    newIpConfiguration,

    -- * IpMapping
    IpMapping (..),
    newIpMapping,

    -- * LocationPreference
    LocationPreference (..),
    newLocationPreference,

    -- * MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- * MySqlReplicaConfiguration
    MySqlReplicaConfiguration (..),
    newMySqlReplicaConfiguration,

    -- * MySqlSyncConfig
    MySqlSyncConfig (..),
    newMySqlSyncConfig,

    -- * OnPremisesConfiguration
    OnPremisesConfiguration (..),
    newOnPremisesConfiguration,

    -- * Operation
    Operation (..),
    newOperation,

    -- * OperationError
    OperationError (..),
    newOperationError,

    -- * OperationErrors
    OperationErrors (..),
    newOperationErrors,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * OperationsListResponse
    OperationsListResponse (..),
    newOperationsListResponse,

    -- * PasswordStatus
    PasswordStatus (..),
    newPasswordStatus,

    -- * PasswordValidationPolicy
    PasswordValidationPolicy (..),
    newPasswordValidationPolicy,

    -- * PerformDiskShrinkContext
    PerformDiskShrinkContext (..),
    newPerformDiskShrinkContext,

    -- * ReplicaConfiguration
    ReplicaConfiguration (..),
    newReplicaConfiguration,

    -- * Reschedule
    Reschedule (..),
    newReschedule,

    -- * RestoreBackupContext
    RestoreBackupContext (..),
    newRestoreBackupContext,

    -- * RotateServerCaContext
    RotateServerCaContext (..),
    newRotateServerCaContext,

    -- * Settings
    Settings (..),
    newSettings,

    -- * Settings_UserLabels
    Settings_UserLabels (..),
    newSettings_UserLabels,

    -- * SqlActiveDirectoryConfig
    SqlActiveDirectoryConfig (..),
    newSqlActiveDirectoryConfig,

    -- * SqlExternalSyncSettingError
    SqlExternalSyncSettingError (..),
    newSqlExternalSyncSettingError,

    -- * SqlInstancesGetDiskShrinkConfigResponse
    SqlInstancesGetDiskShrinkConfigResponse (..),
    newSqlInstancesGetDiskShrinkConfigResponse,

    -- * SqlInstancesRescheduleMaintenanceRequestBody
    SqlInstancesRescheduleMaintenanceRequestBody (..),
    newSqlInstancesRescheduleMaintenanceRequestBody,

    -- * SqlInstancesResetReplicaSizeRequest
    SqlInstancesResetReplicaSizeRequest (..),
    newSqlInstancesResetReplicaSizeRequest,

    -- * SqlInstancesStartExternalSyncRequest
    SqlInstancesStartExternalSyncRequest (..),
    newSqlInstancesStartExternalSyncRequest,

    -- * SqlInstancesVerifyExternalSyncSettingsRequest
    SqlInstancesVerifyExternalSyncSettingsRequest (..),
    newSqlInstancesVerifyExternalSyncSettingsRequest,

    -- * SqlInstancesVerifyExternalSyncSettingsResponse
    SqlInstancesVerifyExternalSyncSettingsResponse (..),
    newSqlInstancesVerifyExternalSyncSettingsResponse,

    -- * SqlOutOfDiskReport
    SqlOutOfDiskReport (..),
    newSqlOutOfDiskReport,

    -- * SqlScheduledMaintenance
    SqlScheduledMaintenance (..),
    newSqlScheduledMaintenance,

    -- * SqlServerAuditConfig
    SqlServerAuditConfig (..),
    newSqlServerAuditConfig,

    -- * SqlServerDatabaseDetails
    SqlServerDatabaseDetails (..),
    newSqlServerDatabaseDetails,

    -- * SqlServerUserDetails
    SqlServerUserDetails (..),
    newSqlServerUserDetails,

    -- * SslCert
    SslCert (..),
    newSslCert,

    -- * SslCertDetail
    SslCertDetail (..),
    newSslCertDetail,

    -- * SslCertsCreateEphemeralRequest
    SslCertsCreateEphemeralRequest (..),
    newSslCertsCreateEphemeralRequest,

    -- * SslCertsInsertRequest
    SslCertsInsertRequest (..),
    newSslCertsInsertRequest,

    -- * SslCertsInsertResponse
    SslCertsInsertResponse (..),
    newSslCertsInsertResponse,

    -- * SslCertsListResponse
    SslCertsListResponse (..),
    newSslCertsListResponse,

    -- * SyncFlags
    SyncFlags (..),
    newSyncFlags,

    -- * Tier
    Tier (..),
    newTier,

    -- * TiersListResponse
    TiersListResponse (..),
    newTiersListResponse,

    -- * TruncateLogContext
    TruncateLogContext (..),
    newTruncateLogContext,

    -- * User
    User (..),
    newUser,

    -- * UserPasswordValidationPolicy
    UserPasswordValidationPolicy (..),
    newUserPasswordValidationPolicy,

    -- * UsersListResponse
    UsersListResponse (..),
    newUsersListResponse,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Internal.Sum

-- | An entry for an Access Control list.
--
-- /See:/ 'newAclEntry' smart constructor.
data AclEntry = AclEntry
  { -- | The time when this access control entry expires in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    expirationTime :: (Core.Maybe Core.DateTime),
    -- | This is always @sql#aclEntry@.
    kind :: (Core.Maybe Core.Text),
    -- | Optional. A label to identify this entry.
    name :: (Core.Maybe Core.Text),
    -- | The allowlisted value for the access control list.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AclEntry' with the minimum fields required to make a request.
newAclEntry ::
  AclEntry
newAclEntry =
  AclEntry
    { expirationTime = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON AclEntry where
  parseJSON =
    Core.withObject
      "AclEntry"
      ( \o ->
          AclEntry
            Core.<$> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON AclEntry where
  toJSON AclEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("expirationTime" Core..=) Core.<$> expirationTime,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | An Admin API warning message.
--
-- /See:/ 'newApiWarning' smart constructor.
data ApiWarning = ApiWarning
  { -- | Code to uniquely identify the warning type.
    code :: (Core.Maybe ApiWarning_Code),
    -- | The warning message.
    message :: (Core.Maybe Core.Text),
    -- | The region name for REGION_UNREACHABLE warning.
    region :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApiWarning' with the minimum fields required to make a request.
newApiWarning ::
  ApiWarning
newApiWarning =
  ApiWarning
    { code = Core.Nothing,
      message = Core.Nothing,
      region = Core.Nothing
    }

instance Core.FromJSON ApiWarning where
  parseJSON =
    Core.withObject
      "ApiWarning"
      ( \o ->
          ApiWarning
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "region")
      )

instance Core.ToJSON ApiWarning where
  toJSON ApiWarning {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("message" Core..=) Core.<$> message,
            ("region" Core..=) Core.<$> region
          ]
      )

-- | Database instance backup configuration.
--
-- /See:/ 'newBackupConfiguration' smart constructor.
data BackupConfiguration = BackupConfiguration
  { -- | Backup retention settings.
    backupRetentionSettings :: (Core.Maybe BackupRetentionSettings),
    -- | (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
    binaryLogEnabled :: (Core.Maybe Core.Bool),
    -- | Whether this configuration is enabled.
    enabled :: (Core.Maybe Core.Bool),
    -- | This is always @sql#backupConfiguration@.
    kind :: (Core.Maybe Core.Text),
    -- | Location of the backup
    location :: (Core.Maybe Core.Text),
    -- | (Postgres only) Whether point in time recovery is enabled.
    pointInTimeRecoveryEnabled :: (Core.Maybe Core.Bool),
    -- | Reserved for future use.
    replicationLogArchivingEnabled :: (Core.Maybe Core.Bool),
    -- | Start time for the daily backup configuration in UTC timezone in the 24 hour format - @HH:MM@.
    startTime :: (Core.Maybe Core.Text),
    -- | The number of days of transaction logs we retain for point in time restore, from 1-7.
    transactionLogRetentionDays :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupConfiguration' with the minimum fields required to make a request.
newBackupConfiguration ::
  BackupConfiguration
newBackupConfiguration =
  BackupConfiguration
    { backupRetentionSettings = Core.Nothing,
      binaryLogEnabled = Core.Nothing,
      enabled = Core.Nothing,
      kind = Core.Nothing,
      location = Core.Nothing,
      pointInTimeRecoveryEnabled = Core.Nothing,
      replicationLogArchivingEnabled = Core.Nothing,
      startTime = Core.Nothing,
      transactionLogRetentionDays = Core.Nothing
    }

instance Core.FromJSON BackupConfiguration where
  parseJSON =
    Core.withObject
      "BackupConfiguration"
      ( \o ->
          BackupConfiguration
            Core.<$> (o Core..:? "backupRetentionSettings")
            Core.<*> (o Core..:? "binaryLogEnabled")
            Core.<*> (o Core..:? "enabled")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "pointInTimeRecoveryEnabled")
            Core.<*> (o Core..:? "replicationLogArchivingEnabled")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "transactionLogRetentionDays")
      )

instance Core.ToJSON BackupConfiguration where
  toJSON BackupConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupRetentionSettings" Core..=)
              Core.<$> backupRetentionSettings,
            ("binaryLogEnabled" Core..=)
              Core.<$> binaryLogEnabled,
            ("enabled" Core..=) Core.<$> enabled,
            ("kind" Core..=) Core.<$> kind,
            ("location" Core..=) Core.<$> location,
            ("pointInTimeRecoveryEnabled" Core..=)
              Core.<$> pointInTimeRecoveryEnabled,
            ("replicationLogArchivingEnabled" Core..=)
              Core.<$> replicationLogArchivingEnabled,
            ("startTime" Core..=) Core.<$> startTime,
            ("transactionLogRetentionDays" Core..=)
              Core.<$> transactionLogRetentionDays
          ]
      )

-- | Backup context.
--
-- /See:/ 'newBackupContext' smart constructor.
data BackupContext = BackupContext
  { -- | The identifier of the backup.
    backupId :: (Core.Maybe Core.Int64),
    -- | This is always @sql#backupContext@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupContext' with the minimum fields required to make a request.
newBackupContext ::
  BackupContext
newBackupContext = BackupContext {backupId = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON BackupContext where
  parseJSON =
    Core.withObject
      "BackupContext"
      ( \o ->
          BackupContext
            Core.<$> ( o Core..:? "backupId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON BackupContext where
  toJSON BackupContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupId" Core..=) Core.. Core.AsText
              Core.<$> backupId,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | We currently only support backup retention by specifying the number of backups we will retain.
--
-- /See:/ 'newBackupRetentionSettings' smart constructor.
data BackupRetentionSettings = BackupRetentionSettings
  { -- | Depending on the value of retention/unit, this is used to determine if a backup needs to be deleted. If retention/unit is \'COUNT\', we will retain this many backups.
    retainedBackups :: (Core.Maybe Core.Int32),
    -- | The unit that \'retained_backups\' represents.
    retentionUnit :: (Core.Maybe BackupRetentionSettings_RetentionUnit)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupRetentionSettings' with the minimum fields required to make a request.
newBackupRetentionSettings ::
  BackupRetentionSettings
newBackupRetentionSettings =
  BackupRetentionSettings
    { retainedBackups = Core.Nothing,
      retentionUnit = Core.Nothing
    }

instance Core.FromJSON BackupRetentionSettings where
  parseJSON =
    Core.withObject
      "BackupRetentionSettings"
      ( \o ->
          BackupRetentionSettings
            Core.<$> (o Core..:? "retainedBackups")
            Core.<*> (o Core..:? "retentionUnit")
      )

instance Core.ToJSON BackupRetentionSettings where
  toJSON BackupRetentionSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("retainedBackups" Core..=)
              Core.<$> retainedBackups,
            ("retentionUnit" Core..=) Core.<$> retentionUnit
          ]
      )

-- | A BackupRun resource.
--
-- /See:/ 'newBackupRun' smart constructor.
data BackupRun = BackupRun
  { -- | Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
    backupKind :: (Core.Maybe BackupRun_BackupKind),
    -- | The description of this run, only applicable to on-demand backups.
    description :: (Core.Maybe Core.Text),
    -- | Encryption configuration specific to a backup.
    diskEncryptionConfiguration :: (Core.Maybe DiskEncryptionConfiguration),
    -- | Encryption status specific to a backup.
    diskEncryptionStatus :: (Core.Maybe DiskEncryptionStatus),
    -- | The time the backup operation completed in UTC timezone in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The time the run was enqueued in UTC timezone in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    enqueuedTime :: (Core.Maybe Core.DateTime),
    -- | Information about why the backup operation failed. This is only present if the run has the FAILED status.
    error :: (Core.Maybe OperationError),
    -- | The identifier for this backup run. Unique only for a specific Cloud SQL instance.
    id :: (Core.Maybe Core.Int64),
    -- | Name of the database instance.
    instance' :: (Core.Maybe Core.Text),
    -- | This is always @sql#backupRun@.
    kind :: (Core.Maybe Core.Text),
    -- | Location of the backups.
    location :: (Core.Maybe Core.Text),
    -- | The URI of this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | The time the backup operation actually started in UTC timezone in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The status of this run.
    status :: (Core.Maybe BackupRun_Status),
    -- | Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
    timeZone :: (Core.Maybe Core.Text),
    -- | The type of this run; can be either \"AUTOMATED\" or \"ON/DEMAND\" or \"FINAL\". This field defaults to \"ON/DEMAND\" and is ignored, when specified for insert requests.
    type' :: (Core.Maybe BackupRun_Type),
    -- | The start time of the backup window during which this the backup was attempted in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    windowStartTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupRun' with the minimum fields required to make a request.
newBackupRun ::
  BackupRun
newBackupRun =
  BackupRun
    { backupKind = Core.Nothing,
      description = Core.Nothing,
      diskEncryptionConfiguration = Core.Nothing,
      diskEncryptionStatus = Core.Nothing,
      endTime = Core.Nothing,
      enqueuedTime = Core.Nothing,
      error = Core.Nothing,
      id = Core.Nothing,
      instance' = Core.Nothing,
      kind = Core.Nothing,
      location = Core.Nothing,
      selfLink = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      timeZone = Core.Nothing,
      type' = Core.Nothing,
      windowStartTime = Core.Nothing
    }

instance Core.FromJSON BackupRun where
  parseJSON =
    Core.withObject
      "BackupRun"
      ( \o ->
          BackupRun
            Core.<$> (o Core..:? "backupKind")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "diskEncryptionConfiguration")
            Core.<*> (o Core..:? "diskEncryptionStatus")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "enqueuedTime")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "instance")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "timeZone")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "windowStartTime")
      )

instance Core.ToJSON BackupRun where
  toJSON BackupRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupKind" Core..=) Core.<$> backupKind,
            ("description" Core..=) Core.<$> description,
            ("diskEncryptionConfiguration" Core..=)
              Core.<$> diskEncryptionConfiguration,
            ("diskEncryptionStatus" Core..=)
              Core.<$> diskEncryptionStatus,
            ("endTime" Core..=) Core.<$> endTime,
            ("enqueuedTime" Core..=) Core.<$> enqueuedTime,
            ("error" Core..=) Core.<$> error,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("instance" Core..=) Core.<$> instance',
            ("kind" Core..=) Core.<$> kind,
            ("location" Core..=) Core.<$> location,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("timeZone" Core..=) Core.<$> timeZone,
            ("type" Core..=) Core.<$> type',
            ("windowStartTime" Core..=)
              Core.<$> windowStartTime
          ]
      )

-- | Backup run list results.
--
-- /See:/ 'newBackupRunsListResponse' smart constructor.
data BackupRunsListResponse = BackupRunsListResponse
  { -- | A list of backup runs in reverse chronological order of the enqueued time.
    items :: (Core.Maybe [BackupRun]),
    -- | This is always @sql#backupRunsList@.
    kind :: (Core.Maybe Core.Text),
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackupRunsListResponse' with the minimum fields required to make a request.
newBackupRunsListResponse ::
  BackupRunsListResponse
newBackupRunsListResponse =
  BackupRunsListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON BackupRunsListResponse where
  parseJSON =
    Core.withObject
      "BackupRunsListResponse"
      ( \o ->
          BackupRunsListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON BackupRunsListResponse where
  toJSON BackupRunsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Binary log coordinates.
--
-- /See:/ 'newBinLogCoordinates' smart constructor.
data BinLogCoordinates = BinLogCoordinates
  { -- | Name of the binary log file for a Cloud SQL instance.
    binLogFileName :: (Core.Maybe Core.Text),
    -- | Position (offset) within the binary log file.
    binLogPosition :: (Core.Maybe Core.Int64),
    -- | This is always @sql#binLogCoordinates@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinLogCoordinates' with the minimum fields required to make a request.
newBinLogCoordinates ::
  BinLogCoordinates
newBinLogCoordinates =
  BinLogCoordinates
    { binLogFileName = Core.Nothing,
      binLogPosition = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON BinLogCoordinates where
  parseJSON =
    Core.withObject
      "BinLogCoordinates"
      ( \o ->
          BinLogCoordinates
            Core.<$> (o Core..:? "binLogFileName")
            Core.<*> ( o Core..:? "binLogPosition"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON BinLogCoordinates where
  toJSON BinLogCoordinates {..} =
    Core.object
      ( Core.catMaybes
          [ ("binLogFileName" Core..=) Core.<$> binLogFileName,
            ("binLogPosition" Core..=) Core.. Core.AsText
              Core.<$> binLogPosition,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Database instance clone context.
--
-- /See:/ 'newCloneContext' smart constructor.
data CloneContext = CloneContext
  { -- | The name of the allocated ip range for the private ip Cloud SQL instance. For example: \"google-managed-services-default\". If set, the cloned instance ip will be created in the allocated range. The range name must comply with <https://tools.ietf.org/html/rfc1035 RFC 1035>. Specifically, the name must be 1-63 characters long and match the regular expression <%5B-a-z0-9%5D*%5Ba-z0-9%5D a-z>?. Reserved for future use.
    allocatedIpRange :: (Core.Maybe Core.Text),
    -- | Binary log coordinates, if specified, identify the position up to which the source instance is cloned. If not specified, the source instance is cloned up to the most recent binary log coordinates.
    binLogCoordinates :: (Core.Maybe BinLogCoordinates),
    -- | (SQL Server only) Clone only the specified databases from the source instance. Clone all databases if empty.
    databaseNames :: (Core.Maybe [Core.Text]),
    -- | Name of the Cloud SQL instance to be created as a clone.
    destinationInstanceName :: (Core.Maybe Core.Text),
    -- | This is always @sql#cloneContext@.
    kind :: (Core.Maybe Core.Text),
    -- | Reserved for future use.
    pitrTimestampMs :: (Core.Maybe Core.Int64),
    -- | Timestamp, if specified, identifies the time to which the source instance is cloned.
    pointInTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloneContext' with the minimum fields required to make a request.
newCloneContext ::
  CloneContext
newCloneContext =
  CloneContext
    { allocatedIpRange = Core.Nothing,
      binLogCoordinates = Core.Nothing,
      databaseNames = Core.Nothing,
      destinationInstanceName = Core.Nothing,
      kind = Core.Nothing,
      pitrTimestampMs = Core.Nothing,
      pointInTime = Core.Nothing
    }

instance Core.FromJSON CloneContext where
  parseJSON =
    Core.withObject
      "CloneContext"
      ( \o ->
          CloneContext
            Core.<$> (o Core..:? "allocatedIpRange")
            Core.<*> (o Core..:? "binLogCoordinates")
            Core.<*> (o Core..:? "databaseNames")
            Core.<*> (o Core..:? "destinationInstanceName")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "pitrTimestampMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "pointInTime")
      )

instance Core.ToJSON CloneContext where
  toJSON CloneContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("allocatedIpRange" Core..=)
              Core.<$> allocatedIpRange,
            ("binLogCoordinates" Core..=)
              Core.<$> binLogCoordinates,
            ("databaseNames" Core..=) Core.<$> databaseNames,
            ("destinationInstanceName" Core..=)
              Core.<$> destinationInstanceName,
            ("kind" Core..=) Core.<$> kind,
            ("pitrTimestampMs" Core..=) Core.. Core.AsText
              Core.<$> pitrTimestampMs,
            ("pointInTime" Core..=) Core.<$> pointInTime
          ]
      )

-- | Connect settings retrieval response.
--
-- /See:/ 'newConnectSettings' smart constructor.
data ConnectSettings = ConnectSettings
  { -- | @SECOND_GEN@: Cloud SQL database instance. @EXTERNAL@: A database server that is not managed by Google. This property is read-only; use the @tier@ property in the @settings@ object to determine the database type.
    backendType :: (Core.Maybe ConnectSettings_BackendType),
    -- | The database engine type and version. The @databaseVersion@ field cannot be changed after instance creation. MySQL instances: @MYSQL_8_0@, @MYSQL_5_7@ (default), or @MYSQL_5_6@. PostgreSQL instances: @POSTGRES_9_6@, @POSTGRES_10@, @POSTGRES_11@, @POSTGRES_12@ (default), @POSTGRES_13@, or @POSTGRES_14@. SQL Server instances: @SQLSERVER_2017_STANDARD@ (default), @SQLSERVER_2017_ENTERPRISE@, @SQLSERVER_2017_EXPRESS@, @SQLSERVER_2017_WEB@, @SQLSERVER_2019_STANDARD@, @SQLSERVER_2019_ENTERPRISE@, @SQLSERVER_2019_EXPRESS@, or @SQLSERVER_2019_WEB@.
    databaseVersion :: (Core.Maybe ConnectSettings_DatabaseVersion),
    -- | The assigned IP addresses for the instance.
    ipAddresses :: (Core.Maybe [IpMapping]),
    -- | This is always @sql#connectSettings@.
    kind :: (Core.Maybe Core.Text),
    -- | The cloud region for the instance. For example, @us-central1@, @europe-west1@. The region cannot be changed after instance creation.
    region :: (Core.Maybe Core.Text),
    -- | SSL configuration.
    serverCaCert :: (Core.Maybe SslCert)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConnectSettings' with the minimum fields required to make a request.
newConnectSettings ::
  ConnectSettings
newConnectSettings =
  ConnectSettings
    { backendType = Core.Nothing,
      databaseVersion = Core.Nothing,
      ipAddresses = Core.Nothing,
      kind = Core.Nothing,
      region = Core.Nothing,
      serverCaCert = Core.Nothing
    }

instance Core.FromJSON ConnectSettings where
  parseJSON =
    Core.withObject
      "ConnectSettings"
      ( \o ->
          ConnectSettings
            Core.<$> (o Core..:? "backendType")
            Core.<*> (o Core..:? "databaseVersion")
            Core.<*> (o Core..:? "ipAddresses")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "serverCaCert")
      )

instance Core.ToJSON ConnectSettings where
  toJSON ConnectSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("backendType" Core..=) Core.<$> backendType,
            ("databaseVersion" Core..=) Core.<$> databaseVersion,
            ("ipAddresses" Core..=) Core.<$> ipAddresses,
            ("kind" Core..=) Core.<$> kind,
            ("region" Core..=) Core.<$> region,
            ("serverCaCert" Core..=) Core.<$> serverCaCert
          ]
      )

-- | Represents a SQL database on the Cloud SQL instance.
--
-- /See:/ 'newDatabase' smart constructor.
data Database = Database
  { -- | The Cloud SQL charset value.
    charset :: (Core.Maybe Core.Text),
    -- | The Cloud SQL collation value.
    collation :: (Core.Maybe Core.Text),
    -- | This field is deprecated and will be removed from a future version of the API.
    etag :: (Core.Maybe Core.Text),
    -- | The name of the Cloud SQL instance. This does not include the project ID.
    instance' :: (Core.Maybe Core.Text),
    -- | This is always @sql#database@.
    kind :: (Core.Maybe Core.Text),
    -- | The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
    name :: (Core.Maybe Core.Text),
    -- | The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
    project :: (Core.Maybe Core.Text),
    -- | The URI of this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- |
    sqlserverDatabaseDetails :: (Core.Maybe SqlServerDatabaseDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Database' with the minimum fields required to make a request.
newDatabase ::
  Database
newDatabase =
  Database
    { charset = Core.Nothing,
      collation = Core.Nothing,
      etag = Core.Nothing,
      instance' = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      project = Core.Nothing,
      selfLink = Core.Nothing,
      sqlserverDatabaseDetails = Core.Nothing
    }

instance Core.FromJSON Database where
  parseJSON =
    Core.withObject
      "Database"
      ( \o ->
          Database
            Core.<$> (o Core..:? "charset")
            Core.<*> (o Core..:? "collation")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "instance")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "project")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "sqlserverDatabaseDetails")
      )

instance Core.ToJSON Database where
  toJSON Database {..} =
    Core.object
      ( Core.catMaybes
          [ ("charset" Core..=) Core.<$> charset,
            ("collation" Core..=) Core.<$> collation,
            ("etag" Core..=) Core.<$> etag,
            ("instance" Core..=) Core.<$> instance',
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("project" Core..=) Core.<$> project,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("sqlserverDatabaseDetails" Core..=)
              Core.<$> sqlserverDatabaseDetails
          ]
      )

-- | Database flags for Cloud SQL instances.
--
-- /See:/ 'newDatabaseFlags' smart constructor.
data DatabaseFlags = DatabaseFlags
  { -- | The name of the flag. These flags are passed at instance startup, so include both server options and system variables. Flags are specified with underscores, not hyphens. For more information, see <https://cloud.google.com/sql/docs/mysql/flags Configuring Database Flags> in the Cloud SQL documentation.
    name :: (Core.Maybe Core.Text),
    -- | The value of the flag. Boolean flags are set to @on@ for true and @off@ for false. This field must be omitted if the flag doesn\'t take a value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseFlags' with the minimum fields required to make a request.
newDatabaseFlags ::
  DatabaseFlags
newDatabaseFlags = DatabaseFlags {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON DatabaseFlags where
  parseJSON =
    Core.withObject
      "DatabaseFlags"
      ( \o ->
          DatabaseFlags
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON DatabaseFlags where
  toJSON DatabaseFlags {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A Cloud SQL instance resource.
--
-- /See:/ 'newDatabaseInstance' smart constructor.
data DatabaseInstance = DatabaseInstance
  { -- | List all maintenance versions applicable on the instance
    availableMaintenanceVersions :: (Core.Maybe [Core.Text]),
    -- | The backend type. @SECOND_GEN@: Cloud SQL database instance. @EXTERNAL@: A database server that is not managed by Google. This property is read-only; use the @tier@ property in the @settings@ object to determine the database type.
    backendType :: (Core.Maybe DatabaseInstance_BackendType),
    -- | Connection name of the Cloud SQL instance used in connection strings.
    connectionName :: (Core.Maybe Core.Text),
    -- | Output only. The time when the instance was created in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The current disk usage of the instance in bytes. This property has been deprecated. Use the \"cloudsql.googleapis.com\/database\/disk\/bytes_used\" metric in Cloud Monitoring API instead. Please see <https://groups.google.com/d/msg/google-cloud-sql-announce/I_7-F9EBhT0/BtvFtdFeAgAJ this announcement> for details.
    currentDiskSize :: (Core.Maybe Core.Int64),
    -- | Output only. Stores the current database version running on the instance including minor version such as @MYSQL_8_0_18@.
    databaseInstalledVersion :: (Core.Maybe Core.Text),
    -- | The database engine type and version. The @databaseVersion@ field cannot be changed after instance creation.
    databaseVersion :: (Core.Maybe DatabaseInstance_DatabaseVersion),
    -- | Disk encryption configuration specific to an instance.
    diskEncryptionConfiguration :: (Core.Maybe DiskEncryptionConfiguration),
    -- | Disk encryption status specific to an instance.
    diskEncryptionStatus :: (Core.Maybe DiskEncryptionStatus),
    -- | This field is deprecated and will be removed from a future version of the API. Use the @settings.settingsVersion@ field instead.
    etag :: (Core.Maybe Core.Text),
    -- | The name and status of the failover replica.
    failoverReplica :: (Core.Maybe DatabaseInstance_FailoverReplica),
    -- | The Compute Engine zone that the instance is currently serving from. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary zone. WARNING: Changing this might restart the instance.
    gceZone :: (Core.Maybe Core.Text),
    -- | The instance type.
    instanceType :: (Core.Maybe DatabaseInstance_InstanceType),
    -- | The assigned IP addresses for the instance.
    ipAddresses :: (Core.Maybe [IpMapping]),
    -- | The IPv6 address assigned to the instance. (Deprecated) This property was applicable only to First Generation instances.
    ipv6Address :: (Core.Maybe Core.Text),
    -- | This is always @sql#instance@.
    kind :: (Core.Maybe Core.Text),
    -- | The current software version on the instance.
    maintenanceVersion :: (Core.Maybe Core.Text),
    -- | The name of the instance which will act as primary in the replication setup.
    masterInstanceName :: (Core.Maybe Core.Text),
    -- | The maximum disk size of the instance in bytes.
    maxDiskSize :: (Core.Maybe Core.Int64),
    -- | Name of the Cloud SQL instance. This does not include the project ID.
    name :: (Core.Maybe Core.Text),
    -- | Configuration specific to on-premises instances.
    onPremisesConfiguration :: (Core.Maybe OnPremisesConfiguration),
    -- | This field represents the report generated by the proactive database wellness job for OutOfDisk issues. * Writers: * the proactive database wellness job for OOD. * Readers: * the proactive database wellness job
    outOfDiskReport :: (Core.Maybe SqlOutOfDiskReport),
    -- | The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefixed if applicable.
    project :: (Core.Maybe Core.Text),
    -- | The geographical region. Can be: * @us-central@ (@FIRST_GEN@ instances only) * @us-central1@ (@SECOND_GEN@ instances only) * @asia-east1@ or @europe-west1@. Defaults to @us-central@ or @us-central1@ depending on the instance type. The region cannot be changed after instance creation.
    region :: (Core.Maybe Core.Text),
    -- | Configuration specific to failover replicas and read replicas.
    replicaConfiguration :: (Core.Maybe ReplicaConfiguration),
    -- | The replicas of the instance.
    replicaNames :: (Core.Maybe [Core.Text]),
    -- | Initial root password. Use only on creation. You must set root passwords before you can connect to PostgreSQL instances.
    rootPassword :: (Core.Maybe Core.Text),
    -- | The status indicating if instance satisfiesPzs. Reserved for future use.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | The start time of any upcoming scheduled maintenance for this instance.
    scheduledMaintenance :: (Core.Maybe SqlScheduledMaintenance),
    -- | The Compute Engine zone that the failover instance is currently serving from for a regional instance. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary\/failover zone.
    secondaryGceZone :: (Core.Maybe Core.Text),
    -- | The URI of this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | SSL configuration.
    serverCaCert :: (Core.Maybe SslCert),
    -- | The service account email address assigned to the instance.\\This property is read-only.
    serviceAccountEmailAddress :: (Core.Maybe Core.Text),
    -- | The user settings.
    settings :: (Core.Maybe Settings),
    -- | The current serving state of the Cloud SQL instance.
    state :: (Core.Maybe DatabaseInstance_State),
    -- | If the instance state is SUSPENDED, the reason for the suspension.
    suspensionReason :: (Core.Maybe [DatabaseInstance_SuspensionReasonItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseInstance' with the minimum fields required to make a request.
newDatabaseInstance ::
  DatabaseInstance
newDatabaseInstance =
  DatabaseInstance
    { availableMaintenanceVersions = Core.Nothing,
      backendType = Core.Nothing,
      connectionName = Core.Nothing,
      createTime = Core.Nothing,
      currentDiskSize = Core.Nothing,
      databaseInstalledVersion = Core.Nothing,
      databaseVersion = Core.Nothing,
      diskEncryptionConfiguration = Core.Nothing,
      diskEncryptionStatus = Core.Nothing,
      etag = Core.Nothing,
      failoverReplica = Core.Nothing,
      gceZone = Core.Nothing,
      instanceType = Core.Nothing,
      ipAddresses = Core.Nothing,
      ipv6Address = Core.Nothing,
      kind = Core.Nothing,
      maintenanceVersion = Core.Nothing,
      masterInstanceName = Core.Nothing,
      maxDiskSize = Core.Nothing,
      name = Core.Nothing,
      onPremisesConfiguration = Core.Nothing,
      outOfDiskReport = Core.Nothing,
      project = Core.Nothing,
      region = Core.Nothing,
      replicaConfiguration = Core.Nothing,
      replicaNames = Core.Nothing,
      rootPassword = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      scheduledMaintenance = Core.Nothing,
      secondaryGceZone = Core.Nothing,
      selfLink = Core.Nothing,
      serverCaCert = Core.Nothing,
      serviceAccountEmailAddress = Core.Nothing,
      settings = Core.Nothing,
      state = Core.Nothing,
      suspensionReason = Core.Nothing
    }

instance Core.FromJSON DatabaseInstance where
  parseJSON =
    Core.withObject
      "DatabaseInstance"
      ( \o ->
          DatabaseInstance
            Core.<$> (o Core..:? "availableMaintenanceVersions")
            Core.<*> (o Core..:? "backendType")
            Core.<*> (o Core..:? "connectionName")
            Core.<*> (o Core..:? "createTime")
            Core.<*> ( o Core..:? "currentDiskSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "databaseInstalledVersion")
            Core.<*> (o Core..:? "databaseVersion")
            Core.<*> (o Core..:? "diskEncryptionConfiguration")
            Core.<*> (o Core..:? "diskEncryptionStatus")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "failoverReplica")
            Core.<*> (o Core..:? "gceZone")
            Core.<*> (o Core..:? "instanceType")
            Core.<*> (o Core..:? "ipAddresses")
            Core.<*> (o Core..:? "ipv6Address")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "maintenanceVersion")
            Core.<*> (o Core..:? "masterInstanceName")
            Core.<*> ( o Core..:? "maxDiskSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onPremisesConfiguration")
            Core.<*> (o Core..:? "outOfDiskReport")
            Core.<*> (o Core..:? "project")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "replicaConfiguration")
            Core.<*> (o Core..:? "replicaNames")
            Core.<*> (o Core..:? "rootPassword")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "scheduledMaintenance")
            Core.<*> (o Core..:? "secondaryGceZone")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "serverCaCert")
            Core.<*> (o Core..:? "serviceAccountEmailAddress")
            Core.<*> (o Core..:? "settings")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "suspensionReason")
      )

instance Core.ToJSON DatabaseInstance where
  toJSON DatabaseInstance {..} =
    Core.object
      ( Core.catMaybes
          [ ("availableMaintenanceVersions" Core..=)
              Core.<$> availableMaintenanceVersions,
            ("backendType" Core..=) Core.<$> backendType,
            ("connectionName" Core..=) Core.<$> connectionName,
            ("createTime" Core..=) Core.<$> createTime,
            ("currentDiskSize" Core..=) Core.. Core.AsText
              Core.<$> currentDiskSize,
            ("databaseInstalledVersion" Core..=)
              Core.<$> databaseInstalledVersion,
            ("databaseVersion" Core..=) Core.<$> databaseVersion,
            ("diskEncryptionConfiguration" Core..=)
              Core.<$> diskEncryptionConfiguration,
            ("diskEncryptionStatus" Core..=)
              Core.<$> diskEncryptionStatus,
            ("etag" Core..=) Core.<$> etag,
            ("failoverReplica" Core..=) Core.<$> failoverReplica,
            ("gceZone" Core..=) Core.<$> gceZone,
            ("instanceType" Core..=) Core.<$> instanceType,
            ("ipAddresses" Core..=) Core.<$> ipAddresses,
            ("ipv6Address" Core..=) Core.<$> ipv6Address,
            ("kind" Core..=) Core.<$> kind,
            ("maintenanceVersion" Core..=)
              Core.<$> maintenanceVersion,
            ("masterInstanceName" Core..=)
              Core.<$> masterInstanceName,
            ("maxDiskSize" Core..=) Core.. Core.AsText
              Core.<$> maxDiskSize,
            ("name" Core..=) Core.<$> name,
            ("onPremisesConfiguration" Core..=)
              Core.<$> onPremisesConfiguration,
            ("outOfDiskReport" Core..=) Core.<$> outOfDiskReport,
            ("project" Core..=) Core.<$> project,
            ("region" Core..=) Core.<$> region,
            ("replicaConfiguration" Core..=)
              Core.<$> replicaConfiguration,
            ("replicaNames" Core..=) Core.<$> replicaNames,
            ("rootPassword" Core..=) Core.<$> rootPassword,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("scheduledMaintenance" Core..=)
              Core.<$> scheduledMaintenance,
            ("secondaryGceZone" Core..=)
              Core.<$> secondaryGceZone,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("serverCaCert" Core..=) Core.<$> serverCaCert,
            ("serviceAccountEmailAddress" Core..=)
              Core.<$> serviceAccountEmailAddress,
            ("settings" Core..=) Core.<$> settings,
            ("state" Core..=) Core.<$> state,
            ("suspensionReason" Core..=)
              Core.<$> suspensionReason
          ]
      )

-- | The name and status of the failover replica.
--
-- /See:/ 'newDatabaseInstance_FailoverReplica' smart constructor.
data DatabaseInstance_FailoverReplica = DatabaseInstance_FailoverReplica
  { -- | The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.
    available :: (Core.Maybe Core.Bool),
    -- | The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn\'t include the project ID.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseInstance_FailoverReplica' with the minimum fields required to make a request.
newDatabaseInstance_FailoverReplica ::
  DatabaseInstance_FailoverReplica
newDatabaseInstance_FailoverReplica =
  DatabaseInstance_FailoverReplica
    { available = Core.Nothing,
      name = Core.Nothing
    }

instance
  Core.FromJSON
    DatabaseInstance_FailoverReplica
  where
  parseJSON =
    Core.withObject
      "DatabaseInstance_FailoverReplica"
      ( \o ->
          DatabaseInstance_FailoverReplica
            Core.<$> (o Core..:? "available")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON DatabaseInstance_FailoverReplica where
  toJSON DatabaseInstance_FailoverReplica {..} =
    Core.object
      ( Core.catMaybes
          [ ("available" Core..=) Core.<$> available,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Database list response.
--
-- /See:/ 'newDatabasesListResponse' smart constructor.
data DatabasesListResponse = DatabasesListResponse
  { -- | List of database resources in the instance.
    items :: (Core.Maybe [Database]),
    -- | This is always @sql#databasesList@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabasesListResponse' with the minimum fields required to make a request.
newDatabasesListResponse ::
  DatabasesListResponse
newDatabasesListResponse =
  DatabasesListResponse {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON DatabasesListResponse where
  parseJSON =
    Core.withObject
      "DatabasesListResponse"
      ( \o ->
          DatabasesListResponse
            Core.<$> (o Core..:? "items") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON DatabasesListResponse where
  toJSON DatabasesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Read-replica configuration for connecting to the on-premises primary instance.
--
-- /See:/ 'newDemoteMasterConfiguration' smart constructor.
data DemoteMasterConfiguration = DemoteMasterConfiguration
  { -- | This is always @sql#demoteMasterConfiguration@.
    kind :: (Core.Maybe Core.Text),
    -- | MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named @master.info@ in the data directory.
    mysqlReplicaConfiguration :: (Core.Maybe DemoteMasterMySqlReplicaConfiguration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DemoteMasterConfiguration' with the minimum fields required to make a request.
newDemoteMasterConfiguration ::
  DemoteMasterConfiguration
newDemoteMasterConfiguration =
  DemoteMasterConfiguration
    { kind = Core.Nothing,
      mysqlReplicaConfiguration = Core.Nothing
    }

instance Core.FromJSON DemoteMasterConfiguration where
  parseJSON =
    Core.withObject
      "DemoteMasterConfiguration"
      ( \o ->
          DemoteMasterConfiguration
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "mysqlReplicaConfiguration")
      )

instance Core.ToJSON DemoteMasterConfiguration where
  toJSON DemoteMasterConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("mysqlReplicaConfiguration" Core..=)
              Core.<$> mysqlReplicaConfiguration
          ]
      )

-- | Database instance demote primary instance context.
--
-- /See:/ 'newDemoteMasterContext' smart constructor.
data DemoteMasterContext = DemoteMasterContext
  { -- | This is always @sql#demoteMasterContext@.
    kind :: (Core.Maybe Core.Text),
    -- | The name of the instance which will act as on-premises primary instance in the replication setup.
    masterInstanceName :: (Core.Maybe Core.Text),
    -- | Configuration specific to read-replicas replicating from the on-premises primary instance.
    replicaConfiguration :: (Core.Maybe DemoteMasterConfiguration),
    -- | Flag to skip replication setup on the instance.
    skipReplicationSetup :: (Core.Maybe Core.Bool),
    -- | Verify the GTID consistency for demote operation. Default value: @True@. Setting this flag to @false@ enables you to bypass the GTID consistency check between on-premises primary instance and Cloud SQL instance during the demotion operation but also exposes you to the risk of future replication failures. Change the value only if you know the reason for the GTID divergence and are confident that doing so will not cause any replication issues.
    verifyGtidConsistency :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DemoteMasterContext' with the minimum fields required to make a request.
newDemoteMasterContext ::
  DemoteMasterContext
newDemoteMasterContext =
  DemoteMasterContext
    { kind = Core.Nothing,
      masterInstanceName = Core.Nothing,
      replicaConfiguration = Core.Nothing,
      skipReplicationSetup = Core.Nothing,
      verifyGtidConsistency = Core.Nothing
    }

instance Core.FromJSON DemoteMasterContext where
  parseJSON =
    Core.withObject
      "DemoteMasterContext"
      ( \o ->
          DemoteMasterContext
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "masterInstanceName")
            Core.<*> (o Core..:? "replicaConfiguration")
            Core.<*> (o Core..:? "skipReplicationSetup")
            Core.<*> (o Core..:? "verifyGtidConsistency")
      )

instance Core.ToJSON DemoteMasterContext where
  toJSON DemoteMasterContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("masterInstanceName" Core..=)
              Core.<$> masterInstanceName,
            ("replicaConfiguration" Core..=)
              Core.<$> replicaConfiguration,
            ("skipReplicationSetup" Core..=)
              Core.<$> skipReplicationSetup,
            ("verifyGtidConsistency" Core..=)
              Core.<$> verifyGtidConsistency
          ]
      )

-- | Read-replica configuration specific to MySQL databases.
--
-- /See:/ 'newDemoteMasterMySqlReplicaConfiguration' smart constructor.
data DemoteMasterMySqlReplicaConfiguration = DemoteMasterMySqlReplicaConfiguration
  { -- | PEM representation of the trusted CA\'s x509 certificate.
    caCertificate :: (Core.Maybe Core.Text),
    -- | PEM representation of the replica\'s x509 certificate.
    clientCertificate :: (Core.Maybe Core.Text),
    -- | PEM representation of the replica\'s private key. The corresponsing public key is encoded in the client\'s certificate. The format of the replica\'s private key can be either PKCS #1 or PKCS #8.
    clientKey :: (Core.Maybe Core.Text),
    -- | This is always @sql#demoteMasterMysqlReplicaConfiguration@.
    kind :: (Core.Maybe Core.Text),
    -- | The password for the replication connection.
    password :: (Core.Maybe Core.Text),
    -- | The username for the replication connection.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DemoteMasterMySqlReplicaConfiguration' with the minimum fields required to make a request.
newDemoteMasterMySqlReplicaConfiguration ::
  DemoteMasterMySqlReplicaConfiguration
newDemoteMasterMySqlReplicaConfiguration =
  DemoteMasterMySqlReplicaConfiguration
    { caCertificate = Core.Nothing,
      clientCertificate = Core.Nothing,
      clientKey = Core.Nothing,
      kind = Core.Nothing,
      password = Core.Nothing,
      username = Core.Nothing
    }

instance
  Core.FromJSON
    DemoteMasterMySqlReplicaConfiguration
  where
  parseJSON =
    Core.withObject
      "DemoteMasterMySqlReplicaConfiguration"
      ( \o ->
          DemoteMasterMySqlReplicaConfiguration
            Core.<$> (o Core..:? "caCertificate")
            Core.<*> (o Core..:? "clientCertificate")
            Core.<*> (o Core..:? "clientKey")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "username")
      )

instance
  Core.ToJSON
    DemoteMasterMySqlReplicaConfiguration
  where
  toJSON DemoteMasterMySqlReplicaConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("caCertificate" Core..=) Core.<$> caCertificate,
            ("clientCertificate" Core..=)
              Core.<$> clientCertificate,
            ("clientKey" Core..=) Core.<$> clientKey,
            ("kind" Core..=) Core.<$> kind,
            ("password" Core..=) Core.<$> password,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | Deny maintenance Periods. This specifies a date range during when all CSA rollout will be denied.
--
-- /See:/ 'newDenyMaintenancePeriod' smart constructor.
data DenyMaintenancePeriod = DenyMaintenancePeriod
  { -- | \"deny maintenance period\" end date. If the year of the end date is empty, the year of the start date also must be empty. In this case, it means the no maintenance interval recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
    endDate :: (Core.Maybe Core.Text),
    -- | \"deny maintenance period\" start date. If the year of the start date is empty, the year of the end date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
    startDate :: (Core.Maybe Core.Text),
    -- | Time in UTC when the \"deny maintenance period\" starts on start/date and ends on end/date. The time is in format: HH:mm:SS, i.e., 00:00:00
    time :: (Core.Maybe Core.Text)
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

-- | Disk encryption configuration for an instance.
--
-- /See:/ 'newDiskEncryptionConfiguration' smart constructor.
data DiskEncryptionConfiguration = DiskEncryptionConfiguration
  { -- | This is always @sql#diskEncryptionConfiguration@.
    kind :: (Core.Maybe Core.Text),
    -- | Resource name of KMS key for disk encryption
    kmsKeyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiskEncryptionConfiguration' with the minimum fields required to make a request.
newDiskEncryptionConfiguration ::
  DiskEncryptionConfiguration
newDiskEncryptionConfiguration =
  DiskEncryptionConfiguration {kind = Core.Nothing, kmsKeyName = Core.Nothing}

instance Core.FromJSON DiskEncryptionConfiguration where
  parseJSON =
    Core.withObject
      "DiskEncryptionConfiguration"
      ( \o ->
          DiskEncryptionConfiguration
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "kmsKeyName")
      )

instance Core.ToJSON DiskEncryptionConfiguration where
  toJSON DiskEncryptionConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("kmsKeyName" Core..=) Core.<$> kmsKeyName
          ]
      )

-- | Disk encryption status for an instance.
--
-- /See:/ 'newDiskEncryptionStatus' smart constructor.
data DiskEncryptionStatus = DiskEncryptionStatus
  { -- | This is always @sql#diskEncryptionStatus@.
    kind :: (Core.Maybe Core.Text),
    -- | KMS key version used to encrypt the Cloud SQL instance resource
    kmsKeyVersionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiskEncryptionStatus' with the minimum fields required to make a request.
newDiskEncryptionStatus ::
  DiskEncryptionStatus
newDiskEncryptionStatus =
  DiskEncryptionStatus {kind = Core.Nothing, kmsKeyVersionName = Core.Nothing}

instance Core.FromJSON DiskEncryptionStatus where
  parseJSON =
    Core.withObject
      "DiskEncryptionStatus"
      ( \o ->
          DiskEncryptionStatus
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "kmsKeyVersionName")
      )

instance Core.ToJSON DiskEncryptionStatus where
  toJSON DiskEncryptionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("kmsKeyVersionName" Core..=)
              Core.<$> kmsKeyVersionName
          ]
      )

-- | Database instance export context.
--
-- /See:/ 'newExportContext' smart constructor.
data ExportContext = ExportContext
  { -- | Options for exporting BAK files (SQL Server-only)
    bakExportOptions :: (Core.Maybe ExportContext_BakExportOptions),
    -- | Options for exporting data as CSV. @MySQL@ and @PostgreSQL@ instances only.
    csvExportOptions :: (Core.Maybe ExportContext_CsvExportOptions),
    -- | Databases to be exported. @MySQL instances:@ If @fileType@ is @SQL@ and no database is specified, all databases are exported, except for the @mysql@ system database. If @fileType@ is @CSV@, you can specify one database, either by using this property or by using the @csvExportOptions.selectQuery@ property, which takes precedence over this property. @PostgreSQL instances:@ You must specify one database to be exported. If @fileType@ is @CSV@, this database must match the one specified in the @csvExportOptions.selectQuery@ property. @SQL Server instances:@ You must specify one database to be exported, and the @fileType@ must be @BAK@.
    databases :: (Core.Maybe [Core.Text]),
    -- | The file type for the specified uri.
    fileType :: (Core.Maybe ExportContext_FileType),
    -- | This is always @sql#exportContext@.
    kind :: (Core.Maybe Core.Text),
    -- | Option for export offload.
    offload :: (Core.Maybe Core.Bool),
    -- | Options for exporting data as SQL statements.
    sqlExportOptions :: (Core.Maybe ExportContext_SqlExportOptions),
    -- | The path to the file in Google Cloud Storage where the export will be stored. The URI is in the form @gs:\/\/bucketName\/fileName@. If the file already exists, the request succeeds, but the operation fails. If @fileType@ is @SQL@ and the filename ends with .gz, the contents are compressed.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportContext' with the minimum fields required to make a request.
newExportContext ::
  ExportContext
newExportContext =
  ExportContext
    { bakExportOptions = Core.Nothing,
      csvExportOptions = Core.Nothing,
      databases = Core.Nothing,
      fileType = Core.Nothing,
      kind = Core.Nothing,
      offload = Core.Nothing,
      sqlExportOptions = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON ExportContext where
  parseJSON =
    Core.withObject
      "ExportContext"
      ( \o ->
          ExportContext
            Core.<$> (o Core..:? "bakExportOptions")
            Core.<*> (o Core..:? "csvExportOptions")
            Core.<*> (o Core..:? "databases")
            Core.<*> (o Core..:? "fileType")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "offload")
            Core.<*> (o Core..:? "sqlExportOptions")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON ExportContext where
  toJSON ExportContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("bakExportOptions" Core..=)
              Core.<$> bakExportOptions,
            ("csvExportOptions" Core..=)
              Core.<$> csvExportOptions,
            ("databases" Core..=) Core.<$> databases,
            ("fileType" Core..=) Core.<$> fileType,
            ("kind" Core..=) Core.<$> kind,
            ("offload" Core..=) Core.<$> offload,
            ("sqlExportOptions" Core..=)
              Core.<$> sqlExportOptions,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Options for exporting BAK files (SQL Server-only)
--
-- /See:/ 'newExportContext_BakExportOptions' smart constructor.
data ExportContext_BakExportOptions = ExportContext_BakExportOptions
  { -- | Option for specifying how many stripes to use for the export. If blank, and the value of the striped field is true, the number of stripes is automatically chosen.
    stripeCount :: (Core.Maybe Core.Int32),
    -- | Whether or not the export should be striped.
    striped :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportContext_BakExportOptions' with the minimum fields required to make a request.
newExportContext_BakExportOptions ::
  ExportContext_BakExportOptions
newExportContext_BakExportOptions =
  ExportContext_BakExportOptions
    { stripeCount = Core.Nothing,
      striped = Core.Nothing
    }

instance Core.FromJSON ExportContext_BakExportOptions where
  parseJSON =
    Core.withObject
      "ExportContext_BakExportOptions"
      ( \o ->
          ExportContext_BakExportOptions
            Core.<$> (o Core..:? "stripeCount")
            Core.<*> (o Core..:? "striped")
      )

instance Core.ToJSON ExportContext_BakExportOptions where
  toJSON ExportContext_BakExportOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("stripeCount" Core..=) Core.<$> stripeCount,
            ("striped" Core..=) Core.<$> striped
          ]
      )

-- | Options for exporting data as CSV. @MySQL@ and @PostgreSQL@ instances only.
--
-- /See:/ 'newExportContext_CsvExportOptions' smart constructor.
data ExportContext_CsvExportOptions = ExportContext_CsvExportOptions
  { -- | Specifies the character that should appear before a data character that needs to be escaped.
    escapeCharacter :: (Core.Maybe Core.Text),
    -- | Specifies the character that separates columns within each row (line) of the file.
    fieldsTerminatedBy :: (Core.Maybe Core.Text),
    -- | This is used to separate lines. If a line does not contain all fields, the rest of the columns are set to their default values.
    linesTerminatedBy :: (Core.Maybe Core.Text),
    -- | Specifies the quoting character to be used when a data value is quoted.
    quoteCharacter :: (Core.Maybe Core.Text),
    -- | The select query used to extract the data.
    selectQuery :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportContext_CsvExportOptions' with the minimum fields required to make a request.
newExportContext_CsvExportOptions ::
  ExportContext_CsvExportOptions
newExportContext_CsvExportOptions =
  ExportContext_CsvExportOptions
    { escapeCharacter = Core.Nothing,
      fieldsTerminatedBy = Core.Nothing,
      linesTerminatedBy = Core.Nothing,
      quoteCharacter = Core.Nothing,
      selectQuery = Core.Nothing
    }

instance Core.FromJSON ExportContext_CsvExportOptions where
  parseJSON =
    Core.withObject
      "ExportContext_CsvExportOptions"
      ( \o ->
          ExportContext_CsvExportOptions
            Core.<$> (o Core..:? "escapeCharacter")
            Core.<*> (o Core..:? "fieldsTerminatedBy")
            Core.<*> (o Core..:? "linesTerminatedBy")
            Core.<*> (o Core..:? "quoteCharacter")
            Core.<*> (o Core..:? "selectQuery")
      )

instance Core.ToJSON ExportContext_CsvExportOptions where
  toJSON ExportContext_CsvExportOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("escapeCharacter" Core..=)
              Core.<$> escapeCharacter,
            ("fieldsTerminatedBy" Core..=)
              Core.<$> fieldsTerminatedBy,
            ("linesTerminatedBy" Core..=)
              Core.<$> linesTerminatedBy,
            ("quoteCharacter" Core..=) Core.<$> quoteCharacter,
            ("selectQuery" Core..=) Core.<$> selectQuery
          ]
      )

-- | Options for exporting data as SQL statements.
--
-- /See:/ 'newExportContext_SqlExportOptions' smart constructor.
data ExportContext_SqlExportOptions = ExportContext_SqlExportOptions
  { -- | Options for exporting from MySQL.
    mysqlExportOptions :: (Core.Maybe ExportContext_SqlExportOptions_MysqlExportOptions),
    -- | Export only schemas.
    schemaOnly :: (Core.Maybe Core.Bool),
    -- | Tables to export, or that were exported, from the specified database. If you specify tables, specify one and only one database. For PostgreSQL instances, you can specify only one table.
    tables :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportContext_SqlExportOptions' with the minimum fields required to make a request.
newExportContext_SqlExportOptions ::
  ExportContext_SqlExportOptions
newExportContext_SqlExportOptions =
  ExportContext_SqlExportOptions
    { mysqlExportOptions = Core.Nothing,
      schemaOnly = Core.Nothing,
      tables = Core.Nothing
    }

instance Core.FromJSON ExportContext_SqlExportOptions where
  parseJSON =
    Core.withObject
      "ExportContext_SqlExportOptions"
      ( \o ->
          ExportContext_SqlExportOptions
            Core.<$> (o Core..:? "mysqlExportOptions")
            Core.<*> (o Core..:? "schemaOnly")
            Core.<*> (o Core..:? "tables")
      )

instance Core.ToJSON ExportContext_SqlExportOptions where
  toJSON ExportContext_SqlExportOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("mysqlExportOptions" Core..=)
              Core.<$> mysqlExportOptions,
            ("schemaOnly" Core..=) Core.<$> schemaOnly,
            ("tables" Core..=) Core.<$> tables
          ]
      )

-- | Options for exporting from MySQL.
--
-- /See:/ 'newExportContext_SqlExportOptions_MysqlExportOptions' smart constructor.
newtype ExportContext_SqlExportOptions_MysqlExportOptions = ExportContext_SqlExportOptions_MysqlExportOptions
  { -- | Option to include SQL statement required to set up replication. If set to @1@, the dump file includes a CHANGE MASTER TO statement with the binary log coordinates, and --set-gtid-purged is set to ON. If set to @2@, the CHANGE MASTER TO statement is written as a SQL comment and has no effect. If set to any value other than @1@, --set-gtid-purged is set to OFF.
    masterData :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportContext_SqlExportOptions_MysqlExportOptions' with the minimum fields required to make a request.
newExportContext_SqlExportOptions_MysqlExportOptions ::
  ExportContext_SqlExportOptions_MysqlExportOptions
newExportContext_SqlExportOptions_MysqlExportOptions =
  ExportContext_SqlExportOptions_MysqlExportOptions {masterData = Core.Nothing}

instance
  Core.FromJSON
    ExportContext_SqlExportOptions_MysqlExportOptions
  where
  parseJSON =
    Core.withObject
      "ExportContext_SqlExportOptions_MysqlExportOptions"
      ( \o ->
          ExportContext_SqlExportOptions_MysqlExportOptions
            Core.<$> (o Core..:? "masterData")
      )

instance
  Core.ToJSON
    ExportContext_SqlExportOptions_MysqlExportOptions
  where
  toJSON
    ExportContext_SqlExportOptions_MysqlExportOptions {..} =
      Core.object
        ( Core.catMaybes
            [("masterData" Core..=) Core.<$> masterData]
        )

-- | Database instance failover context.
--
-- /See:/ 'newFailoverContext' smart constructor.
data FailoverContext = FailoverContext
  { -- | This is always @sql#failoverContext@.
    kind :: (Core.Maybe Core.Text),
    -- | The current settings version of this instance. Request will be rejected if this version doesn\'t match the current settings version.
    settingsVersion :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FailoverContext' with the minimum fields required to make a request.
newFailoverContext ::
  FailoverContext
newFailoverContext =
  FailoverContext {kind = Core.Nothing, settingsVersion = Core.Nothing}

instance Core.FromJSON FailoverContext where
  parseJSON =
    Core.withObject
      "FailoverContext"
      ( \o ->
          FailoverContext
            Core.<$> (o Core..:? "kind")
            Core.<*> ( o Core..:? "settingsVersion"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON FailoverContext where
  toJSON FailoverContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("settingsVersion" Core..=) Core.. Core.AsText
              Core.<$> settingsVersion
          ]
      )

-- | A flag resource.
--
-- /See:/ 'newFlag' smart constructor.
data Flag = Flag
  { -- | Use this field if only certain integers are accepted. Can be combined with min/value and max/value to add additional values.
    allowedIntValues :: (Core.Maybe [Core.Int64]),
    -- | For @STRING@ flags, a list of strings that the value can be set to.
    allowedStringValues :: (Core.Maybe [Core.Text]),
    -- | The database version this flag applies to. Can be MySQL instances: @MYSQL_8_0@, @MYSQL_8_0_18@, @MYSQL_8_0_26@, @MYSQL_5_7@, or @MYSQL_5_6@. PostgreSQL instances: @POSTGRES_9_6@, @POSTGRES_10@, @POSTGRES_11@ or @POSTGRES_12@. SQL Server instances: @SQLSERVER_2017_STANDARD@, @SQLSERVER_2017_ENTERPRISE@, @SQLSERVER_2017_EXPRESS@, @SQLSERVER_2017_WEB@, @SQLSERVER_2019_STANDARD@, @SQLSERVER_2019_ENTERPRISE@, @SQLSERVER_2019_EXPRESS@, or @SQLSERVER_2019_WEB@. See </sql/docs/mysql/admin-api/rest/v1/SqlDatabaseVersion the complete list>.
    appliesTo :: (Core.Maybe [Flag_AppliesToItem]),
    -- | Whether or not the flag is considered in beta.
    inBeta :: (Core.Maybe Core.Bool),
    -- | This is always @sql#flag@.
    kind :: (Core.Maybe Core.Text),
    -- | For @INTEGER@ flags, the maximum allowed value.
    maxValue :: (Core.Maybe Core.Int64),
    -- | For @INTEGER@ flags, the minimum allowed value.
    minValue :: (Core.Maybe Core.Int64),
    -- | This is the name of the flag. Flag names always use underscores, not hyphens, for example: @max_allowed_packet@
    name :: (Core.Maybe Core.Text),
    -- | Indicates whether changing this flag will trigger a database restart. Only applicable to Second Generation instances.
    requiresRestart :: (Core.Maybe Core.Bool),
    -- | The type of the flag. Flags are typed to being @BOOLEAN@, @STRING@, @INTEGER@ or @NONE@. @NONE@ is used for flags that do not take a value, such as @skip_grant_tables@.
    type' :: (Core.Maybe Flag_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Flag' with the minimum fields required to make a request.
newFlag ::
  Flag
newFlag =
  Flag
    { allowedIntValues = Core.Nothing,
      allowedStringValues = Core.Nothing,
      appliesTo = Core.Nothing,
      inBeta = Core.Nothing,
      kind = Core.Nothing,
      maxValue = Core.Nothing,
      minValue = Core.Nothing,
      name = Core.Nothing,
      requiresRestart = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Flag where
  parseJSON =
    Core.withObject
      "Flag"
      ( \o ->
          Flag
            Core.<$> ( o Core..:? "allowedIntValues"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "allowedStringValues")
            Core.<*> (o Core..:? "appliesTo")
            Core.<*> (o Core..:? "inBeta")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "maxValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "minValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "requiresRestart")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Flag where
  toJSON Flag {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedIntValues" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> allowedIntValues,
            ("allowedStringValues" Core..=)
              Core.<$> allowedStringValues,
            ("appliesTo" Core..=) Core.<$> appliesTo,
            ("inBeta" Core..=) Core.<$> inBeta,
            ("kind" Core..=) Core.<$> kind,
            ("maxValue" Core..=) Core.. Core.AsText
              Core.<$> maxValue,
            ("minValue" Core..=) Core.. Core.AsText
              Core.<$> minValue,
            ("name" Core..=) Core.<$> name,
            ("requiresRestart" Core..=) Core.<$> requiresRestart,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Flags list response.
--
-- /See:/ 'newFlagsListResponse' smart constructor.
data FlagsListResponse = FlagsListResponse
  { -- | List of flags.
    items :: (Core.Maybe [Flag]),
    -- | This is always @sql#flagsList@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FlagsListResponse' with the minimum fields required to make a request.
newFlagsListResponse ::
  FlagsListResponse
newFlagsListResponse =
  FlagsListResponse {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON FlagsListResponse where
  parseJSON =
    Core.withObject
      "FlagsListResponse"
      ( \o ->
          FlagsListResponse
            Core.<$> (o Core..:? "items") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON FlagsListResponse where
  toJSON FlagsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Ephemeral certificate creation request.
--
-- /See:/ 'newGenerateEphemeralCertRequest' smart constructor.
data GenerateEphemeralCertRequest = GenerateEphemeralCertRequest
  { -- | Optional. Access token to include in the signed certificate.
    accessToken :: (Core.Maybe Core.Text),
    -- | PEM encoded public key to include in the signed certificate.
    publicKey :: (Core.Maybe Core.Text),
    -- | Optional. Optional snapshot read timestamp to trade freshness for performance.
    readTime :: (Core.Maybe Core.DateTime),
    -- | Optional. If set, it will contain the cert valid duration.
    validDuration :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateEphemeralCertRequest' with the minimum fields required to make a request.
newGenerateEphemeralCertRequest ::
  GenerateEphemeralCertRequest
newGenerateEphemeralCertRequest =
  GenerateEphemeralCertRequest
    { accessToken = Core.Nothing,
      publicKey = Core.Nothing,
      readTime = Core.Nothing,
      validDuration = Core.Nothing
    }

instance Core.FromJSON GenerateEphemeralCertRequest where
  parseJSON =
    Core.withObject
      "GenerateEphemeralCertRequest"
      ( \o ->
          GenerateEphemeralCertRequest
            Core.<$> (o Core..:? "access_token")
            Core.<*> (o Core..:? "public_key")
            Core.<*> (o Core..:? "readTime")
            Core.<*> (o Core..:? "validDuration")
      )

instance Core.ToJSON GenerateEphemeralCertRequest where
  toJSON GenerateEphemeralCertRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("access_token" Core..=) Core.<$> accessToken,
            ("public_key" Core..=) Core.<$> publicKey,
            ("readTime" Core..=) Core.<$> readTime,
            ("validDuration" Core..=) Core.<$> validDuration
          ]
      )

-- | Ephemeral certificate creation request.
--
-- /See:/ 'newGenerateEphemeralCertResponse' smart constructor.
newtype GenerateEphemeralCertResponse = GenerateEphemeralCertResponse
  { -- | Generated cert
    ephemeralCert :: (Core.Maybe SslCert)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateEphemeralCertResponse' with the minimum fields required to make a request.
newGenerateEphemeralCertResponse ::
  GenerateEphemeralCertResponse
newGenerateEphemeralCertResponse =
  GenerateEphemeralCertResponse {ephemeralCert = Core.Nothing}

instance Core.FromJSON GenerateEphemeralCertResponse where
  parseJSON =
    Core.withObject
      "GenerateEphemeralCertResponse"
      ( \o ->
          GenerateEphemeralCertResponse
            Core.<$> (o Core..:? "ephemeralCert")
      )

instance Core.ToJSON GenerateEphemeralCertResponse where
  toJSON GenerateEphemeralCertResponse {..} =
    Core.object
      ( Core.catMaybes
          [("ephemeralCert" Core..=) Core.<$> ephemeralCert]
      )

-- | Database instance import context.
--
-- /See:/ 'newImportContext' smart constructor.
data ImportContext = ImportContext
  { -- | Import parameters specific to SQL Server .BAK files
    bakImportOptions :: (Core.Maybe ImportContext_BakImportOptions),
    -- | Options for importing data as CSV.
    csvImportOptions :: (Core.Maybe ImportContext_CsvImportOptions),
    -- | The target database for the import. If @fileType@ is @SQL@, this field is required only if the import file does not specify a database, and is overridden by any database specification in the import file. If @fileType@ is @CSV@, one database must be specified.
    database :: (Core.Maybe Core.Text),
    -- | The file type for the specified uri.\`SQL@: The file contains SQL statements. \\@CSV\`: The file contains CSV data.
    fileType :: (Core.Maybe ImportContext_FileType),
    -- | The PostgreSQL user for this import operation. PostgreSQL instances only.
    importUser :: (Core.Maybe Core.Text),
    -- | This is always @sql#importContext@.
    kind :: (Core.Maybe Core.Text),
    -- | Path to the import file in Cloud Storage, in the form @gs:\/\/bucketName\/fileName@. Compressed gzip files (.gz) are supported when @fileType@ is @SQL@. The instance must have write permissions to the bucket and read access to the file.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportContext' with the minimum fields required to make a request.
newImportContext ::
  ImportContext
newImportContext =
  ImportContext
    { bakImportOptions = Core.Nothing,
      csvImportOptions = Core.Nothing,
      database = Core.Nothing,
      fileType = Core.Nothing,
      importUser = Core.Nothing,
      kind = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON ImportContext where
  parseJSON =
    Core.withObject
      "ImportContext"
      ( \o ->
          ImportContext
            Core.<$> (o Core..:? "bakImportOptions")
            Core.<*> (o Core..:? "csvImportOptions")
            Core.<*> (o Core..:? "database")
            Core.<*> (o Core..:? "fileType")
            Core.<*> (o Core..:? "importUser")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON ImportContext where
  toJSON ImportContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("bakImportOptions" Core..=)
              Core.<$> bakImportOptions,
            ("csvImportOptions" Core..=)
              Core.<$> csvImportOptions,
            ("database" Core..=) Core.<$> database,
            ("fileType" Core..=) Core.<$> fileType,
            ("importUser" Core..=) Core.<$> importUser,
            ("kind" Core..=) Core.<$> kind,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Import parameters specific to SQL Server .BAK files
--
-- /See:/ 'newImportContext_BakImportOptions' smart constructor.
data ImportContext_BakImportOptions = ImportContext_BakImportOptions
  { -- |
    encryptionOptions :: (Core.Maybe ImportContext_BakImportOptions_EncryptionOptions),
    -- | Whether or not the backup set being restored is striped. Applies only to Cloud SQL for SQL Server.
    striped :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportContext_BakImportOptions' with the minimum fields required to make a request.
newImportContext_BakImportOptions ::
  ImportContext_BakImportOptions
newImportContext_BakImportOptions =
  ImportContext_BakImportOptions
    { encryptionOptions = Core.Nothing,
      striped = Core.Nothing
    }

instance Core.FromJSON ImportContext_BakImportOptions where
  parseJSON =
    Core.withObject
      "ImportContext_BakImportOptions"
      ( \o ->
          ImportContext_BakImportOptions
            Core.<$> (o Core..:? "encryptionOptions")
            Core.<*> (o Core..:? "striped")
      )

instance Core.ToJSON ImportContext_BakImportOptions where
  toJSON ImportContext_BakImportOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("encryptionOptions" Core..=)
              Core.<$> encryptionOptions,
            ("striped" Core..=) Core.<$> striped
          ]
      )

--
-- /See:/ 'newImportContext_BakImportOptions_EncryptionOptions' smart constructor.
data ImportContext_BakImportOptions_EncryptionOptions = ImportContext_BakImportOptions_EncryptionOptions
  { -- | Path to the Certificate (.cer) in Cloud Storage, in the form @gs:\/\/bucketName\/fileName@. The instance must have write permissions to the bucket and read access to the file.
    certPath :: (Core.Maybe Core.Text),
    -- | Password that encrypts the private key
    pvkPassword :: (Core.Maybe Core.Text),
    -- | Path to the Certificate Private Key (.pvk) in Cloud Storage, in the form @gs:\/\/bucketName\/fileName@. The instance must have write permissions to the bucket and read access to the file.
    pvkPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportContext_BakImportOptions_EncryptionOptions' with the minimum fields required to make a request.
newImportContext_BakImportOptions_EncryptionOptions ::
  ImportContext_BakImportOptions_EncryptionOptions
newImportContext_BakImportOptions_EncryptionOptions =
  ImportContext_BakImportOptions_EncryptionOptions
    { certPath = Core.Nothing,
      pvkPassword = Core.Nothing,
      pvkPath = Core.Nothing
    }

instance
  Core.FromJSON
    ImportContext_BakImportOptions_EncryptionOptions
  where
  parseJSON =
    Core.withObject
      "ImportContext_BakImportOptions_EncryptionOptions"
      ( \o ->
          ImportContext_BakImportOptions_EncryptionOptions
            Core.<$> (o Core..:? "certPath")
              Core.<*> (o Core..:? "pvkPassword")
              Core.<*> (o Core..:? "pvkPath")
      )

instance
  Core.ToJSON
    ImportContext_BakImportOptions_EncryptionOptions
  where
  toJSON
    ImportContext_BakImportOptions_EncryptionOptions {..} =
      Core.object
        ( Core.catMaybes
            [ ("certPath" Core..=) Core.<$> certPath,
              ("pvkPassword" Core..=) Core.<$> pvkPassword,
              ("pvkPath" Core..=) Core.<$> pvkPath
            ]
        )

-- | Options for importing data as CSV.
--
-- /See:/ 'newImportContext_CsvImportOptions' smart constructor.
data ImportContext_CsvImportOptions = ImportContext_CsvImportOptions
  { -- | The columns to which CSV data is imported. If not specified, all columns of the database table are loaded with CSV data.
    columns :: (Core.Maybe [Core.Text]),
    -- | Specifies the character that should appear before a data character that needs to be escaped.
    escapeCharacter :: (Core.Maybe Core.Text),
    -- | Specifies the character that separates columns within each row (line) of the file.
    fieldsTerminatedBy :: (Core.Maybe Core.Text),
    -- | This is used to separate lines. If a line does not contain all fields, the rest of the columns are set to their default values.
    linesTerminatedBy :: (Core.Maybe Core.Text),
    -- | Specifies the quoting character to be used when a data value is quoted.
    quoteCharacter :: (Core.Maybe Core.Text),
    -- | The table to which CSV data is imported.
    table :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportContext_CsvImportOptions' with the minimum fields required to make a request.
newImportContext_CsvImportOptions ::
  ImportContext_CsvImportOptions
newImportContext_CsvImportOptions =
  ImportContext_CsvImportOptions
    { columns = Core.Nothing,
      escapeCharacter = Core.Nothing,
      fieldsTerminatedBy = Core.Nothing,
      linesTerminatedBy = Core.Nothing,
      quoteCharacter = Core.Nothing,
      table = Core.Nothing
    }

instance Core.FromJSON ImportContext_CsvImportOptions where
  parseJSON =
    Core.withObject
      "ImportContext_CsvImportOptions"
      ( \o ->
          ImportContext_CsvImportOptions
            Core.<$> (o Core..:? "columns")
            Core.<*> (o Core..:? "escapeCharacter")
            Core.<*> (o Core..:? "fieldsTerminatedBy")
            Core.<*> (o Core..:? "linesTerminatedBy")
            Core.<*> (o Core..:? "quoteCharacter")
            Core.<*> (o Core..:? "table")
      )

instance Core.ToJSON ImportContext_CsvImportOptions where
  toJSON ImportContext_CsvImportOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("escapeCharacter" Core..=) Core.<$> escapeCharacter,
            ("fieldsTerminatedBy" Core..=)
              Core.<$> fieldsTerminatedBy,
            ("linesTerminatedBy" Core..=)
              Core.<$> linesTerminatedBy,
            ("quoteCharacter" Core..=) Core.<$> quoteCharacter,
            ("table" Core..=) Core.<$> table
          ]
      )

-- | Insights configuration. This specifies when Cloud SQL Insights feature is enabled and optional configuration.
--
-- /See:/ 'newInsightsConfig' smart constructor.
data InsightsConfig = InsightsConfig
  { -- | Whether Query Insights feature is enabled.
    queryInsightsEnabled :: (Core.Maybe Core.Bool),
    -- | Number of query execution plans captured by Insights per minute for all queries combined. Default is 5.
    queryPlansPerMinute :: (Core.Maybe Core.Int32),
    -- | Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than this field value will be truncated to this value. When unset, query length will be the default value. Changing query length will restart the database.
    queryStringLength :: (Core.Maybe Core.Int32),
    -- | Whether Query Insights will record application tags from query when enabled.
    recordApplicationTags :: (Core.Maybe Core.Bool),
    -- | Whether Query Insights will record client address when enabled.
    recordClientAddress :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsightsConfig' with the minimum fields required to make a request.
newInsightsConfig ::
  InsightsConfig
newInsightsConfig =
  InsightsConfig
    { queryInsightsEnabled = Core.Nothing,
      queryPlansPerMinute = Core.Nothing,
      queryStringLength = Core.Nothing,
      recordApplicationTags = Core.Nothing,
      recordClientAddress = Core.Nothing
    }

instance Core.FromJSON InsightsConfig where
  parseJSON =
    Core.withObject
      "InsightsConfig"
      ( \o ->
          InsightsConfig
            Core.<$> (o Core..:? "queryInsightsEnabled")
            Core.<*> (o Core..:? "queryPlansPerMinute")
            Core.<*> (o Core..:? "queryStringLength")
            Core.<*> (o Core..:? "recordApplicationTags")
            Core.<*> (o Core..:? "recordClientAddress")
      )

instance Core.ToJSON InsightsConfig where
  toJSON InsightsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("queryInsightsEnabled" Core..=)
              Core.<$> queryInsightsEnabled,
            ("queryPlansPerMinute" Core..=)
              Core.<$> queryPlansPerMinute,
            ("queryStringLength" Core..=)
              Core.<$> queryStringLength,
            ("recordApplicationTags" Core..=)
              Core.<$> recordApplicationTags,
            ("recordClientAddress" Core..=)
              Core.<$> recordClientAddress
          ]
      )

-- | Reference to another Cloud SQL instance.
--
-- /See:/ 'newInstanceReference' smart constructor.
data InstanceReference = InstanceReference
  { -- | The name of the Cloud SQL instance being referenced. This does not include the project ID.
    name :: (Core.Maybe Core.Text),
    -- | The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
    project :: (Core.Maybe Core.Text),
    -- | The region of the Cloud SQL instance being referenced.
    region :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceReference' with the minimum fields required to make a request.
newInstanceReference ::
  InstanceReference
newInstanceReference =
  InstanceReference
    { name = Core.Nothing,
      project = Core.Nothing,
      region = Core.Nothing
    }

instance Core.FromJSON InstanceReference where
  parseJSON =
    Core.withObject
      "InstanceReference"
      ( \o ->
          InstanceReference
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "project")
            Core.<*> (o Core..:? "region")
      )

instance Core.ToJSON InstanceReference where
  toJSON InstanceReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("project" Core..=) Core.<$> project,
            ("region" Core..=) Core.<$> region
          ]
      )

-- | Database instance clone request.
--
-- /See:/ 'newInstancesCloneRequest' smart constructor.
newtype InstancesCloneRequest = InstancesCloneRequest
  { -- | Contains details about the clone operation.
    cloneContext :: (Core.Maybe CloneContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesCloneRequest' with the minimum fields required to make a request.
newInstancesCloneRequest ::
  InstancesCloneRequest
newInstancesCloneRequest = InstancesCloneRequest {cloneContext = Core.Nothing}

instance Core.FromJSON InstancesCloneRequest where
  parseJSON =
    Core.withObject
      "InstancesCloneRequest"
      ( \o ->
          InstancesCloneRequest
            Core.<$> (o Core..:? "cloneContext")
      )

instance Core.ToJSON InstancesCloneRequest where
  toJSON InstancesCloneRequest {..} =
    Core.object
      ( Core.catMaybes
          [("cloneContext" Core..=) Core.<$> cloneContext]
      )

-- | Database demote primary instance request.
--
-- /See:/ 'newInstancesDemoteMasterRequest' smart constructor.
newtype InstancesDemoteMasterRequest = InstancesDemoteMasterRequest
  { -- | Contains details about the demoteMaster operation.
    demoteMasterContext :: (Core.Maybe DemoteMasterContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesDemoteMasterRequest' with the minimum fields required to make a request.
newInstancesDemoteMasterRequest ::
  InstancesDemoteMasterRequest
newInstancesDemoteMasterRequest =
  InstancesDemoteMasterRequest {demoteMasterContext = Core.Nothing}

instance Core.FromJSON InstancesDemoteMasterRequest where
  parseJSON =
    Core.withObject
      "InstancesDemoteMasterRequest"
      ( \o ->
          InstancesDemoteMasterRequest
            Core.<$> (o Core..:? "demoteMasterContext")
      )

instance Core.ToJSON InstancesDemoteMasterRequest where
  toJSON InstancesDemoteMasterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("demoteMasterContext" Core..=)
              Core.<$> demoteMasterContext
          ]
      )

-- | Database instance export request.
--
-- /See:/ 'newInstancesExportRequest' smart constructor.
newtype InstancesExportRequest = InstancesExportRequest
  { -- | Contains details about the export operation.
    exportContext :: (Core.Maybe ExportContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesExportRequest' with the minimum fields required to make a request.
newInstancesExportRequest ::
  InstancesExportRequest
newInstancesExportRequest =
  InstancesExportRequest {exportContext = Core.Nothing}

instance Core.FromJSON InstancesExportRequest where
  parseJSON =
    Core.withObject
      "InstancesExportRequest"
      ( \o ->
          InstancesExportRequest
            Core.<$> (o Core..:? "exportContext")
      )

instance Core.ToJSON InstancesExportRequest where
  toJSON InstancesExportRequest {..} =
    Core.object
      ( Core.catMaybes
          [("exportContext" Core..=) Core.<$> exportContext]
      )

-- | Instance failover request.
--
-- /See:/ 'newInstancesFailoverRequest' smart constructor.
newtype InstancesFailoverRequest = InstancesFailoverRequest
  { -- | Failover Context.
    failoverContext :: (Core.Maybe FailoverContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesFailoverRequest' with the minimum fields required to make a request.
newInstancesFailoverRequest ::
  InstancesFailoverRequest
newInstancesFailoverRequest =
  InstancesFailoverRequest {failoverContext = Core.Nothing}

instance Core.FromJSON InstancesFailoverRequest where
  parseJSON =
    Core.withObject
      "InstancesFailoverRequest"
      ( \o ->
          InstancesFailoverRequest
            Core.<$> (o Core..:? "failoverContext")
      )

instance Core.ToJSON InstancesFailoverRequest where
  toJSON InstancesFailoverRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("failoverContext" Core..=)
              Core.<$> failoverContext
          ]
      )

-- | Database instance import request.
--
-- /See:/ 'newInstancesImportRequest' smart constructor.
newtype InstancesImportRequest = InstancesImportRequest
  { -- | Contains details about the import operation.
    importContext :: (Core.Maybe ImportContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesImportRequest' with the minimum fields required to make a request.
newInstancesImportRequest ::
  InstancesImportRequest
newInstancesImportRequest =
  InstancesImportRequest {importContext = Core.Nothing}

instance Core.FromJSON InstancesImportRequest where
  parseJSON =
    Core.withObject
      "InstancesImportRequest"
      ( \o ->
          InstancesImportRequest
            Core.<$> (o Core..:? "importContext")
      )

instance Core.ToJSON InstancesImportRequest where
  toJSON InstancesImportRequest {..} =
    Core.object
      ( Core.catMaybes
          [("importContext" Core..=) Core.<$> importContext]
      )

-- | Database instances list response.
--
-- /See:/ 'newInstancesListResponse' smart constructor.
data InstancesListResponse = InstancesListResponse
  { -- | List of database instance resources.
    items :: (Core.Maybe [DatabaseInstance]),
    -- | This is always @sql#instancesList@.
    kind :: (Core.Maybe Core.Text),
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of warnings that occurred while handling the request.
    warnings :: (Core.Maybe [ApiWarning])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesListResponse' with the minimum fields required to make a request.
newInstancesListResponse ::
  InstancesListResponse
newInstancesListResponse =
  InstancesListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON InstancesListResponse where
  parseJSON =
    Core.withObject
      "InstancesListResponse"
      ( \o ->
          InstancesListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON InstancesListResponse where
  toJSON InstancesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Instances ListServerCas response.
--
-- /See:/ 'newInstancesListServerCasResponse' smart constructor.
data InstancesListServerCasResponse = InstancesListServerCasResponse
  { -- |
    activeVersion :: (Core.Maybe Core.Text),
    -- | List of server CA certificates for the instance.
    certs :: (Core.Maybe [SslCert]),
    -- | This is always @sql#instancesListServerCas@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesListServerCasResponse' with the minimum fields required to make a request.
newInstancesListServerCasResponse ::
  InstancesListServerCasResponse
newInstancesListServerCasResponse =
  InstancesListServerCasResponse
    { activeVersion = Core.Nothing,
      certs = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON InstancesListServerCasResponse where
  parseJSON =
    Core.withObject
      "InstancesListServerCasResponse"
      ( \o ->
          InstancesListServerCasResponse
            Core.<$> (o Core..:? "activeVersion")
            Core.<*> (o Core..:? "certs")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON InstancesListServerCasResponse where
  toJSON InstancesListServerCasResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeVersion" Core..=) Core.<$> activeVersion,
            ("certs" Core..=) Core.<$> certs,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Database instance restore backup request.
--
-- /See:/ 'newInstancesRestoreBackupRequest' smart constructor.
newtype InstancesRestoreBackupRequest = InstancesRestoreBackupRequest
  { -- | Parameters required to perform the restore backup operation.
    restoreBackupContext :: (Core.Maybe RestoreBackupContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesRestoreBackupRequest' with the minimum fields required to make a request.
newInstancesRestoreBackupRequest ::
  InstancesRestoreBackupRequest
newInstancesRestoreBackupRequest =
  InstancesRestoreBackupRequest {restoreBackupContext = Core.Nothing}

instance Core.FromJSON InstancesRestoreBackupRequest where
  parseJSON =
    Core.withObject
      "InstancesRestoreBackupRequest"
      ( \o ->
          InstancesRestoreBackupRequest
            Core.<$> (o Core..:? "restoreBackupContext")
      )

instance Core.ToJSON InstancesRestoreBackupRequest where
  toJSON InstancesRestoreBackupRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("restoreBackupContext" Core..=)
              Core.<$> restoreBackupContext
          ]
      )

-- | Rotate server CA request.
--
-- /See:/ 'newInstancesRotateServerCaRequest' smart constructor.
newtype InstancesRotateServerCaRequest = InstancesRotateServerCaRequest
  { -- | Contains details about the rotate server CA operation.
    rotateServerCaContext :: (Core.Maybe RotateServerCaContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesRotateServerCaRequest' with the minimum fields required to make a request.
newInstancesRotateServerCaRequest ::
  InstancesRotateServerCaRequest
newInstancesRotateServerCaRequest =
  InstancesRotateServerCaRequest {rotateServerCaContext = Core.Nothing}

instance Core.FromJSON InstancesRotateServerCaRequest where
  parseJSON =
    Core.withObject
      "InstancesRotateServerCaRequest"
      ( \o ->
          InstancesRotateServerCaRequest
            Core.<$> (o Core..:? "rotateServerCaContext")
      )

instance Core.ToJSON InstancesRotateServerCaRequest where
  toJSON InstancesRotateServerCaRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("rotateServerCaContext" Core..=)
              Core.<$> rotateServerCaContext
          ]
      )

-- | Instance truncate log request.
--
-- /See:/ 'newInstancesTruncateLogRequest' smart constructor.
newtype InstancesTruncateLogRequest = InstancesTruncateLogRequest
  { -- | Contains details about the truncate log operation.
    truncateLogContext :: (Core.Maybe TruncateLogContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstancesTruncateLogRequest' with the minimum fields required to make a request.
newInstancesTruncateLogRequest ::
  InstancesTruncateLogRequest
newInstancesTruncateLogRequest =
  InstancesTruncateLogRequest {truncateLogContext = Core.Nothing}

instance Core.FromJSON InstancesTruncateLogRequest where
  parseJSON =
    Core.withObject
      "InstancesTruncateLogRequest"
      ( \o ->
          InstancesTruncateLogRequest
            Core.<$> (o Core..:? "truncateLogContext")
      )

instance Core.ToJSON InstancesTruncateLogRequest where
  toJSON InstancesTruncateLogRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("truncateLogContext" Core..=)
              Core.<$> truncateLogContext
          ]
      )

-- | IP Management configuration.
--
-- /See:/ 'newIpConfiguration' smart constructor.
data IpConfiguration = IpConfiguration
  { -- | The name of the allocated ip range for the private ip Cloud SQL instance. For example: \"google-managed-services-default\". If set, the instance ip will be created in the allocated range. The range name must comply with <https://tools.ietf.org/html/rfc1035 RFC 1035>. Specifically, the name must be 1-63 characters long and match the regular expression @[a-z]([-a-z0-9]*[a-z0-9])?.@
    allocatedIpRange :: (Core.Maybe Core.Text),
    -- | The list of external networks that are allowed to connect to the instance using the IP. In \'CIDR\' notation, also known as \'slash\' notation (for example: @157.197.200.0\/24@).
    authorizedNetworks :: (Core.Maybe [AclEntry]),
    -- | Controls connectivity to private IP instances from Google services, such as BigQuery.
    enablePrivatePathForGoogleCloudServices :: (Core.Maybe Core.Bool),
    -- | Whether the instance is assigned a public IP address or not.
    ipv4Enabled :: (Core.Maybe Core.Bool),
    -- | The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, @\/projects\/myProject\/global\/networks\/default@. This setting can be updated, but it cannot be removed after it is set.
    privateNetwork :: (Core.Maybe Core.Text),
    -- | Whether SSL connections over IP are enforced or not.
    requireSsl :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IpConfiguration' with the minimum fields required to make a request.
newIpConfiguration ::
  IpConfiguration
newIpConfiguration =
  IpConfiguration
    { allocatedIpRange = Core.Nothing,
      authorizedNetworks = Core.Nothing,
      enablePrivatePathForGoogleCloudServices = Core.Nothing,
      ipv4Enabled = Core.Nothing,
      privateNetwork = Core.Nothing,
      requireSsl = Core.Nothing
    }

instance Core.FromJSON IpConfiguration where
  parseJSON =
    Core.withObject
      "IpConfiguration"
      ( \o ->
          IpConfiguration
            Core.<$> (o Core..:? "allocatedIpRange")
            Core.<*> (o Core..:? "authorizedNetworks")
            Core.<*> ( o
                         Core..:? "enablePrivatePathForGoogleCloudServices"
                     )
            Core.<*> (o Core..:? "ipv4Enabled")
            Core.<*> (o Core..:? "privateNetwork")
            Core.<*> (o Core..:? "requireSsl")
      )

instance Core.ToJSON IpConfiguration where
  toJSON IpConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("allocatedIpRange" Core..=)
              Core.<$> allocatedIpRange,
            ("authorizedNetworks" Core..=)
              Core.<$> authorizedNetworks,
            ("enablePrivatePathForGoogleCloudServices" Core..=)
              Core.<$> enablePrivatePathForGoogleCloudServices,
            ("ipv4Enabled" Core..=) Core.<$> ipv4Enabled,
            ("privateNetwork" Core..=) Core.<$> privateNetwork,
            ("requireSsl" Core..=) Core.<$> requireSsl
          ]
      )

-- | Database instance IP Mapping.
--
-- /See:/ 'newIpMapping' smart constructor.
data IpMapping = IpMapping
  { -- | The IP address assigned.
    ipAddress :: (Core.Maybe Core.Text),
    -- | The due time for this IP to be retired in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@. This field is only available when the IP is scheduled to be retired.
    timeToRetire :: (Core.Maybe Core.DateTime),
    -- | The type of this IP address. A @PRIMARY@ address is a public address that can accept incoming connections. A @PRIVATE@ address is a private address that can accept incoming connections. An @OUTGOING@ address is the source address of connections originating from the instance, if supported.
    type' :: (Core.Maybe IpMapping_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IpMapping' with the minimum fields required to make a request.
newIpMapping ::
  IpMapping
newIpMapping =
  IpMapping
    { ipAddress = Core.Nothing,
      timeToRetire = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON IpMapping where
  parseJSON =
    Core.withObject
      "IpMapping"
      ( \o ->
          IpMapping
            Core.<$> (o Core..:? "ipAddress")
            Core.<*> (o Core..:? "timeToRetire")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON IpMapping where
  toJSON IpMapping {..} =
    Core.object
      ( Core.catMaybes
          [ ("ipAddress" Core..=) Core.<$> ipAddress,
            ("timeToRetire" Core..=) Core.<$> timeToRetire,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Preferred location. This specifies where a Cloud SQL instance is located. Note that if the preferred location is not available, the instance will be located as close as possible within the region. Only one location may be specified.
--
-- /See:/ 'newLocationPreference' smart constructor.
data LocationPreference = LocationPreference
  { -- | The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.
    followGaeApplication :: (Core.Maybe Core.Text),
    -- | This is always @sql#locationPreference@.
    kind :: (Core.Maybe Core.Text),
    -- | The preferred Compute Engine zone for the secondary\/failover (for example: us-central1-a, us-central1-b, etc.).
    secondaryZone :: (Core.Maybe Core.Text),
    -- | The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationPreference' with the minimum fields required to make a request.
newLocationPreference ::
  LocationPreference
newLocationPreference =
  LocationPreference
    { followGaeApplication = Core.Nothing,
      kind = Core.Nothing,
      secondaryZone = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON LocationPreference where
  parseJSON =
    Core.withObject
      "LocationPreference"
      ( \o ->
          LocationPreference
            Core.<$> (o Core..:? "followGaeApplication")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "secondaryZone")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON LocationPreference where
  toJSON LocationPreference {..} =
    Core.object
      ( Core.catMaybes
          [ ("followGaeApplication" Core..=)
              Core.<$> followGaeApplication,
            ("kind" Core..=) Core.<$> kind,
            ("secondaryZone" Core..=) Core.<$> secondaryZone,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | Maintenance window. This specifies when a Cloud SQL instance is restarted for system maintenance purposes.
--
-- /See:/ 'newMaintenanceWindow' smart constructor.
data MaintenanceWindow = MaintenanceWindow
  { -- | day of week (1-7), starting on Monday.
    day :: (Core.Maybe Core.Int32),
    -- | hour of day - 0 to 23.
    hour :: (Core.Maybe Core.Int32),
    -- | This is always @sql#maintenanceWindow@.
    kind :: (Core.Maybe Core.Text),
    -- | Maintenance timing setting: @canary@ (Earlier) or @stable@ (Later). <https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen Learn more>.
    updateTrack :: (Core.Maybe MaintenanceWindow_UpdateTrack)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
newMaintenanceWindow ::
  MaintenanceWindow
newMaintenanceWindow =
  MaintenanceWindow
    { day = Core.Nothing,
      hour = Core.Nothing,
      kind = Core.Nothing,
      updateTrack = Core.Nothing
    }

instance Core.FromJSON MaintenanceWindow where
  parseJSON =
    Core.withObject
      "MaintenanceWindow"
      ( \o ->
          MaintenanceWindow
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "hour")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "updateTrack")
      )

instance Core.ToJSON MaintenanceWindow where
  toJSON MaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("hour" Core..=) Core.<$> hour,
            ("kind" Core..=) Core.<$> kind,
            ("updateTrack" Core..=) Core.<$> updateTrack
          ]
      )

-- | Read-replica configuration specific to MySQL databases.
--
-- /See:/ 'newMySqlReplicaConfiguration' smart constructor.
data MySqlReplicaConfiguration = MySqlReplicaConfiguration
  { -- | PEM representation of the trusted CA\'s x509 certificate.
    caCertificate :: (Core.Maybe Core.Text),
    -- | PEM representation of the replica\'s x509 certificate.
    clientCertificate :: (Core.Maybe Core.Text),
    -- | PEM representation of the replica\'s private key. The corresponsing public key is encoded in the client\'s certificate.
    clientKey :: (Core.Maybe Core.Text),
    -- | Seconds to wait between connect retries. MySQL\'s default is 60 seconds.
    connectRetryInterval :: (Core.Maybe Core.Int32),
    -- | Path to a SQL dump file in Google Cloud Storage from which the replica instance is to be created. The URI is in the form gs:\/\/bucketName\/fileName. Compressed gzip files (.gz) are also supported. Dumps have the binlog co-ordinates from which replication begins. This can be accomplished by setting --master-data to 1 when using mysqldump.
    dumpFilePath :: (Core.Maybe Core.Text),
    -- | This is always @sql#mysqlReplicaConfiguration@.
    kind :: (Core.Maybe Core.Text),
    -- | Interval in milliseconds between replication heartbeats.
    masterHeartbeatPeriod :: (Core.Maybe Core.Int64),
    -- | The password for the replication connection.
    password :: (Core.Maybe Core.Text),
    -- | A list of permissible ciphers to use for SSL encryption.
    sslCipher :: (Core.Maybe Core.Text),
    -- | The username for the replication connection.
    username :: (Core.Maybe Core.Text),
    -- | Whether or not to check the primary instance\'s Common Name value in the certificate that it sends during the SSL handshake.
    verifyServerCertificate :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MySqlReplicaConfiguration' with the minimum fields required to make a request.
newMySqlReplicaConfiguration ::
  MySqlReplicaConfiguration
newMySqlReplicaConfiguration =
  MySqlReplicaConfiguration
    { caCertificate = Core.Nothing,
      clientCertificate = Core.Nothing,
      clientKey = Core.Nothing,
      connectRetryInterval = Core.Nothing,
      dumpFilePath = Core.Nothing,
      kind = Core.Nothing,
      masterHeartbeatPeriod = Core.Nothing,
      password = Core.Nothing,
      sslCipher = Core.Nothing,
      username = Core.Nothing,
      verifyServerCertificate = Core.Nothing
    }

instance Core.FromJSON MySqlReplicaConfiguration where
  parseJSON =
    Core.withObject
      "MySqlReplicaConfiguration"
      ( \o ->
          MySqlReplicaConfiguration
            Core.<$> (o Core..:? "caCertificate")
            Core.<*> (o Core..:? "clientCertificate")
            Core.<*> (o Core..:? "clientKey")
            Core.<*> (o Core..:? "connectRetryInterval")
            Core.<*> (o Core..:? "dumpFilePath")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "masterHeartbeatPeriod"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "sslCipher")
            Core.<*> (o Core..:? "username")
            Core.<*> (o Core..:? "verifyServerCertificate")
      )

instance Core.ToJSON MySqlReplicaConfiguration where
  toJSON MySqlReplicaConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("caCertificate" Core..=) Core.<$> caCertificate,
            ("clientCertificate" Core..=)
              Core.<$> clientCertificate,
            ("clientKey" Core..=) Core.<$> clientKey,
            ("connectRetryInterval" Core..=)
              Core.<$> connectRetryInterval,
            ("dumpFilePath" Core..=) Core.<$> dumpFilePath,
            ("kind" Core..=) Core.<$> kind,
            ("masterHeartbeatPeriod" Core..=) Core.. Core.AsText
              Core.<$> masterHeartbeatPeriod,
            ("password" Core..=) Core.<$> password,
            ("sslCipher" Core..=) Core.<$> sslCipher,
            ("username" Core..=) Core.<$> username,
            ("verifyServerCertificate" Core..=)
              Core.<$> verifyServerCertificate
          ]
      )

-- | MySQL-specific external server sync settings.
--
-- /See:/ 'newMySqlSyncConfig' smart constructor.
newtype MySqlSyncConfig = MySqlSyncConfig
  { -- | Flags to use for the initial dump.
    initialSyncFlags :: (Core.Maybe [SyncFlags])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MySqlSyncConfig' with the minimum fields required to make a request.
newMySqlSyncConfig ::
  MySqlSyncConfig
newMySqlSyncConfig = MySqlSyncConfig {initialSyncFlags = Core.Nothing}

instance Core.FromJSON MySqlSyncConfig where
  parseJSON =
    Core.withObject
      "MySqlSyncConfig"
      ( \o ->
          MySqlSyncConfig
            Core.<$> (o Core..:? "initialSyncFlags")
      )

instance Core.ToJSON MySqlSyncConfig where
  toJSON MySqlSyncConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("initialSyncFlags" Core..=)
              Core.<$> initialSyncFlags
          ]
      )

-- | On-premises instance configuration.
--
-- /See:/ 'newOnPremisesConfiguration' smart constructor.
data OnPremisesConfiguration = OnPremisesConfiguration
  { -- | PEM representation of the trusted CA\'s x509 certificate.
    caCertificate :: (Core.Maybe Core.Text),
    -- | PEM representation of the replica\'s x509 certificate.
    clientCertificate :: (Core.Maybe Core.Text),
    -- | PEM representation of the replica\'s private key. The corresponsing public key is encoded in the client\'s certificate.
    clientKey :: (Core.Maybe Core.Text),
    -- | The dump file to create the Cloud SQL replica.
    dumpFilePath :: (Core.Maybe Core.Text),
    -- | The host and port of the on-premises instance in host:port format
    hostPort :: (Core.Maybe Core.Text),
    -- | This is always @sql#onPremisesConfiguration@.
    kind :: (Core.Maybe Core.Text),
    -- | The password for connecting to on-premises instance.
    password :: (Core.Maybe Core.Text),
    -- | The reference to Cloud SQL instance if the source is Cloud SQL.
    sourceInstance :: (Core.Maybe InstanceReference),
    -- | The username for connecting to on-premises instance.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OnPremisesConfiguration' with the minimum fields required to make a request.
newOnPremisesConfiguration ::
  OnPremisesConfiguration
newOnPremisesConfiguration =
  OnPremisesConfiguration
    { caCertificate = Core.Nothing,
      clientCertificate = Core.Nothing,
      clientKey = Core.Nothing,
      dumpFilePath = Core.Nothing,
      hostPort = Core.Nothing,
      kind = Core.Nothing,
      password = Core.Nothing,
      sourceInstance = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON OnPremisesConfiguration where
  parseJSON =
    Core.withObject
      "OnPremisesConfiguration"
      ( \o ->
          OnPremisesConfiguration
            Core.<$> (o Core..:? "caCertificate")
            Core.<*> (o Core..:? "clientCertificate")
            Core.<*> (o Core..:? "clientKey")
            Core.<*> (o Core..:? "dumpFilePath")
            Core.<*> (o Core..:? "hostPort")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "sourceInstance")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON OnPremisesConfiguration where
  toJSON OnPremisesConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("caCertificate" Core..=) Core.<$> caCertificate,
            ("clientCertificate" Core..=)
              Core.<$> clientCertificate,
            ("clientKey" Core..=) Core.<$> clientKey,
            ("dumpFilePath" Core..=) Core.<$> dumpFilePath,
            ("hostPort" Core..=) Core.<$> hostPort,
            ("kind" Core..=) Core.<$> kind,
            ("password" Core..=) Core.<$> password,
            ("sourceInstance" Core..=) Core.<$> sourceInstance,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | An Operation resource. For successful operations that return an Operation resource, only the fields relevant to the operation are populated in the resource.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | The context for backup operation, if applicable.
    backupContext :: (Core.Maybe BackupContext),
    -- | The time this operation finished in UTC timezone in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    endTime :: (Core.Maybe Core.DateTime),
    -- | If errors occurred during processing of this operation, this field will be populated.
    error :: (Core.Maybe OperationErrors),
    -- | The context for export operation, if applicable.
    exportContext :: (Core.Maybe ExportContext),
    -- | The context for import operation, if applicable.
    importContext :: (Core.Maybe ImportContext),
    -- | The time this operation was enqueued in UTC timezone in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    insertTime :: (Core.Maybe Core.DateTime),
    -- | This is always @sql#operation@.
    kind :: (Core.Maybe Core.Text),
    -- | An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation.
    name :: (Core.Maybe Core.Text),
    -- | The type of the operation. Valid values are: * @CREATE@ * @DELETE@ * @UPDATE@ * @RESTART@ * @IMPORT@ * @EXPORT@ * @BACKUP_VOLUME@ * @RESTORE_VOLUME@ * @CREATE_USER@ * @DELETE_USER@ * @CREATE_DATABASE@ * @DELETE_DATABASE@
    operationType :: (Core.Maybe Operation_OperationType),
    -- | The URI of this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | The time this operation actually started in UTC timezone in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The status of an operation.
    status :: (Core.Maybe Operation_Status),
    -- | Name of the database instance related to this operation.
    targetId :: (Core.Maybe Core.Text),
    -- |
    targetLink :: (Core.Maybe Core.Text),
    -- | The project ID of the target instance related to this operation.
    targetProject :: (Core.Maybe Core.Text),
    -- | The email address of the user who initiated this operation.
    user :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { backupContext = Core.Nothing,
      endTime = Core.Nothing,
      error = Core.Nothing,
      exportContext = Core.Nothing,
      importContext = Core.Nothing,
      insertTime = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      operationType = Core.Nothing,
      selfLink = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      targetId = Core.Nothing,
      targetLink = Core.Nothing,
      targetProject = Core.Nothing,
      user = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "backupContext")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "exportContext")
            Core.<*> (o Core..:? "importContext")
            Core.<*> (o Core..:? "insertTime")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "targetId")
            Core.<*> (o Core..:? "targetLink")
            Core.<*> (o Core..:? "targetProject")
            Core.<*> (o Core..:? "user")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupContext" Core..=) Core.<$> backupContext,
            ("endTime" Core..=) Core.<$> endTime,
            ("error" Core..=) Core.<$> error,
            ("exportContext" Core..=) Core.<$> exportContext,
            ("importContext" Core..=) Core.<$> importContext,
            ("insertTime" Core..=) Core.<$> insertTime,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("operationType" Core..=) Core.<$> operationType,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("targetId" Core..=) Core.<$> targetId,
            ("targetLink" Core..=) Core.<$> targetLink,
            ("targetProject" Core..=) Core.<$> targetProject,
            ("user" Core..=) Core.<$> user
          ]
      )

-- | Database instance operation error.
--
-- /See:/ 'newOperationError' smart constructor.
data OperationError = OperationError
  { -- | Identifies the specific error that occurred.
    code :: (Core.Maybe Core.Text),
    -- | This is always @sql#operationError@.
    kind :: (Core.Maybe Core.Text),
    -- | Additional information about the error encountered.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationError' with the minimum fields required to make a request.
newOperationError ::
  OperationError
newOperationError =
  OperationError
    { code = Core.Nothing,
      kind = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON OperationError where
  parseJSON =
    Core.withObject
      "OperationError"
      ( \o ->
          OperationError
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON OperationError where
  toJSON OperationError {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("kind" Core..=) Core.<$> kind,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | Database instance operation errors list wrapper.
--
-- /See:/ 'newOperationErrors' smart constructor.
data OperationErrors = OperationErrors
  { -- | The list of errors encountered while processing this operation.
    errors :: (Core.Maybe [OperationError]),
    -- | This is always @sql#operationErrors@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationErrors' with the minimum fields required to make a request.
newOperationErrors ::
  OperationErrors
newOperationErrors =
  OperationErrors {errors = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON OperationErrors where
  parseJSON =
    Core.withObject
      "OperationErrors"
      ( \o ->
          OperationErrors
            Core.<$> (o Core..:? "errors") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON OperationErrors where
  toJSON OperationErrors {..} =
    Core.object
      ( Core.catMaybes
          [ ("errors" Core..=) Core.<$> errors,
            ("kind" Core..=) Core.<$> kind
          ]
      )

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

-- | Operations list response.
--
-- /See:/ 'newOperationsListResponse' smart constructor.
data OperationsListResponse = OperationsListResponse
  { -- | List of operation resources.
    items :: (Core.Maybe [Operation]),
    -- | This is always @sql#operationsList@.
    kind :: (Core.Maybe Core.Text),
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationsListResponse' with the minimum fields required to make a request.
newOperationsListResponse ::
  OperationsListResponse
newOperationsListResponse =
  OperationsListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON OperationsListResponse where
  parseJSON =
    Core.withObject
      "OperationsListResponse"
      ( \o ->
          OperationsListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON OperationsListResponse where
  toJSON OperationsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Read-only password status.
--
-- /See:/ 'newPasswordStatus' smart constructor.
data PasswordStatus = PasswordStatus
  { -- | If true, user does not have login privileges.
    locked :: (Core.Maybe Core.Bool),
    -- | The expiration time of the current password.
    passwordExpirationTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PasswordStatus' with the minimum fields required to make a request.
newPasswordStatus ::
  PasswordStatus
newPasswordStatus =
  PasswordStatus {locked = Core.Nothing, passwordExpirationTime = Core.Nothing}

instance Core.FromJSON PasswordStatus where
  parseJSON =
    Core.withObject
      "PasswordStatus"
      ( \o ->
          PasswordStatus
            Core.<$> (o Core..:? "locked")
            Core.<*> (o Core..:? "passwordExpirationTime")
      )

instance Core.ToJSON PasswordStatus where
  toJSON PasswordStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("locked" Core..=) Core.<$> locked,
            ("passwordExpirationTime" Core..=)
              Core.<$> passwordExpirationTime
          ]
      )

-- | Database instance local user password validation policy
--
-- /See:/ 'newPasswordValidationPolicy' smart constructor.
data PasswordValidationPolicy = PasswordValidationPolicy
  { -- | The complexity of the password.
    complexity :: (Core.Maybe PasswordValidationPolicy_Complexity),
    -- | Disallow username as a part of the password.
    disallowUsernameSubstring :: (Core.Maybe Core.Bool),
    -- | Whether the password policy is enabled or not.
    enablePasswordPolicy :: (Core.Maybe Core.Bool),
    -- | Minimum number of characters allowed.
    minLength :: (Core.Maybe Core.Int32),
    -- | Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.
    passwordChangeInterval :: (Core.Maybe Core.Duration),
    -- | Number of previous passwords that cannot be reused.
    reuseInterval :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PasswordValidationPolicy' with the minimum fields required to make a request.
newPasswordValidationPolicy ::
  PasswordValidationPolicy
newPasswordValidationPolicy =
  PasswordValidationPolicy
    { complexity = Core.Nothing,
      disallowUsernameSubstring = Core.Nothing,
      enablePasswordPolicy = Core.Nothing,
      minLength = Core.Nothing,
      passwordChangeInterval = Core.Nothing,
      reuseInterval = Core.Nothing
    }

instance Core.FromJSON PasswordValidationPolicy where
  parseJSON =
    Core.withObject
      "PasswordValidationPolicy"
      ( \o ->
          PasswordValidationPolicy
            Core.<$> (o Core..:? "complexity")
            Core.<*> (o Core..:? "disallowUsernameSubstring")
            Core.<*> (o Core..:? "enablePasswordPolicy")
            Core.<*> (o Core..:? "minLength")
            Core.<*> (o Core..:? "passwordChangeInterval")
            Core.<*> (o Core..:? "reuseInterval")
      )

instance Core.ToJSON PasswordValidationPolicy where
  toJSON PasswordValidationPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("complexity" Core..=) Core.<$> complexity,
            ("disallowUsernameSubstring" Core..=)
              Core.<$> disallowUsernameSubstring,
            ("enablePasswordPolicy" Core..=)
              Core.<$> enablePasswordPolicy,
            ("minLength" Core..=) Core.<$> minLength,
            ("passwordChangeInterval" Core..=)
              Core.<$> passwordChangeInterval,
            ("reuseInterval" Core..=) Core.<$> reuseInterval
          ]
      )

-- | Perform disk shrink context.
--
-- /See:/ 'newPerformDiskShrinkContext' smart constructor.
newtype PerformDiskShrinkContext = PerformDiskShrinkContext
  { -- | The target disk shrink size in GigaBytes.
    targetSizeGb :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PerformDiskShrinkContext' with the minimum fields required to make a request.
newPerformDiskShrinkContext ::
  PerformDiskShrinkContext
newPerformDiskShrinkContext =
  PerformDiskShrinkContext {targetSizeGb = Core.Nothing}

instance Core.FromJSON PerformDiskShrinkContext where
  parseJSON =
    Core.withObject
      "PerformDiskShrinkContext"
      ( \o ->
          PerformDiskShrinkContext
            Core.<$> ( o Core..:? "targetSizeGb"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON PerformDiskShrinkContext where
  toJSON PerformDiskShrinkContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("targetSizeGb" Core..=) Core.. Core.AsText
              Core.<$> targetSizeGb
          ]
      )

-- | Read-replica configuration for connecting to the primary instance.
--
-- /See:/ 'newReplicaConfiguration' smart constructor.
data ReplicaConfiguration = ReplicaConfiguration
  { -- | Specifies if the replica is the failover target. If the field is set to @true@, the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.
    failoverTarget :: (Core.Maybe Core.Bool),
    -- | This is always @sql#replicaConfiguration@.
    kind :: (Core.Maybe Core.Text),
    -- | MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named @master.info@ in the data directory.
    mysqlReplicaConfiguration :: (Core.Maybe MySqlReplicaConfiguration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaConfiguration' with the minimum fields required to make a request.
newReplicaConfiguration ::
  ReplicaConfiguration
newReplicaConfiguration =
  ReplicaConfiguration
    { failoverTarget = Core.Nothing,
      kind = Core.Nothing,
      mysqlReplicaConfiguration = Core.Nothing
    }

instance Core.FromJSON ReplicaConfiguration where
  parseJSON =
    Core.withObject
      "ReplicaConfiguration"
      ( \o ->
          ReplicaConfiguration
            Core.<$> (o Core..:? "failoverTarget")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "mysqlReplicaConfiguration")
      )

instance Core.ToJSON ReplicaConfiguration where
  toJSON ReplicaConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("failoverTarget" Core..=) Core.<$> failoverTarget,
            ("kind" Core..=) Core.<$> kind,
            ("mysqlReplicaConfiguration" Core..=)
              Core.<$> mysqlReplicaConfiguration
          ]
      )

--
-- /See:/ 'newReschedule' smart constructor.
data Reschedule = Reschedule
  { -- | Required. The type of the reschedule.
    rescheduleType :: (Core.Maybe Reschedule_RescheduleType),
    -- | Optional. Timestamp when the maintenance shall be rescheduled to if reschedule/type=SPECIFIC/TIME, in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    scheduleTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Reschedule' with the minimum fields required to make a request.
newReschedule ::
  Reschedule
newReschedule =
  Reschedule {rescheduleType = Core.Nothing, scheduleTime = Core.Nothing}

instance Core.FromJSON Reschedule where
  parseJSON =
    Core.withObject
      "Reschedule"
      ( \o ->
          Reschedule
            Core.<$> (o Core..:? "rescheduleType")
            Core.<*> (o Core..:? "scheduleTime")
      )

instance Core.ToJSON Reschedule where
  toJSON Reschedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("rescheduleType" Core..=) Core.<$> rescheduleType,
            ("scheduleTime" Core..=) Core.<$> scheduleTime
          ]
      )

-- | Database instance restore from backup context. Backup context contains source instance id and project id.
--
-- /See:/ 'newRestoreBackupContext' smart constructor.
data RestoreBackupContext = RestoreBackupContext
  { -- | The ID of the backup run to restore from.
    backupRunId :: (Core.Maybe Core.Int64),
    -- | The ID of the instance that the backup was taken from.
    instanceId :: (Core.Maybe Core.Text),
    -- | This is always @sql#restoreBackupContext@.
    kind :: (Core.Maybe Core.Text),
    -- | The full project ID of the source instance.
    project :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreBackupContext' with the minimum fields required to make a request.
newRestoreBackupContext ::
  RestoreBackupContext
newRestoreBackupContext =
  RestoreBackupContext
    { backupRunId = Core.Nothing,
      instanceId = Core.Nothing,
      kind = Core.Nothing,
      project = Core.Nothing
    }

instance Core.FromJSON RestoreBackupContext where
  parseJSON =
    Core.withObject
      "RestoreBackupContext"
      ( \o ->
          RestoreBackupContext
            Core.<$> ( o Core..:? "backupRunId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "instanceId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "project")
      )

instance Core.ToJSON RestoreBackupContext where
  toJSON RestoreBackupContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupRunId" Core..=) Core.. Core.AsText
              Core.<$> backupRunId,
            ("instanceId" Core..=) Core.<$> instanceId,
            ("kind" Core..=) Core.<$> kind,
            ("project" Core..=) Core.<$> project
          ]
      )

-- | Instance rotate server CA context.
--
-- /See:/ 'newRotateServerCaContext' smart constructor.
data RotateServerCaContext = RotateServerCaContext
  { -- | This is always @sql#rotateServerCaContext@.
    kind :: (Core.Maybe Core.Text),
    -- | The fingerprint of the next version to be rotated to. If left unspecified, will be rotated to the most recently added server CA version.
    nextVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RotateServerCaContext' with the minimum fields required to make a request.
newRotateServerCaContext ::
  RotateServerCaContext
newRotateServerCaContext =
  RotateServerCaContext {kind = Core.Nothing, nextVersion = Core.Nothing}

instance Core.FromJSON RotateServerCaContext where
  parseJSON =
    Core.withObject
      "RotateServerCaContext"
      ( \o ->
          RotateServerCaContext
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextVersion")
      )

instance Core.ToJSON RotateServerCaContext where
  toJSON RotateServerCaContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("nextVersion" Core..=) Core.<$> nextVersion
          ]
      )

-- | Database instance settings.
--
-- /See:/ 'newSettings' smart constructor.
data Settings = Settings
  { -- | The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * @ALWAYS@: The instance is on, and remains so even in the absence of connection requests. * @NEVER@: The instance is off; it is not activated, even if a connection request arrives.
    activationPolicy :: (Core.Maybe Settings_ActivationPolicy),
    -- | Active Directory configuration, relevant only for Cloud SQL for SQL Server.
    activeDirectoryConfig :: (Core.Maybe SqlActiveDirectoryConfig),
    -- | The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
    authorizedGaeApplications :: (Core.Maybe [Core.Text]),
    -- | Availability type. Potential values: * @ZONAL@: The instance serves data from only one zone. Outages in that zone affect data accessibility. * @REGIONAL@: The instance can serve data from more than one zone in a region (it is highly available).\/ For more information, see <https://cloud.google.com/sql/docs/mysql/high-availability Overview of the High Availability Configuration>.
    availabilityType :: (Core.Maybe Settings_AvailabilityType),
    -- | The daily backup configuration for the instance.
    backupConfiguration :: (Core.Maybe BackupConfiguration),
    -- | The name of server Instance collation.
    collation :: (Core.Maybe Core.Text),
    -- | Specifies if connections must use Cloud SQL connectors. Option values include the following: @NOT_REQUIRED@ (Cloud SQL instances can be connected without Cloud SQL Connectors) and @REQUIRED@ (Only allow connections that use Cloud SQL Connectors). Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
    connectorEnforcement :: (Core.Maybe Settings_ConnectorEnforcement),
    -- | Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
    crashSafeReplicationEnabled :: (Core.Maybe Core.Bool),
    -- | The size of data disk, in GB. The data disk size minimum is 10GB.
    dataDiskSizeGb :: (Core.Maybe Core.Int64),
    -- | The type of data disk: @PD_SSD@ (default) or @PD_HDD@. Not used for First Generation instances.
    dataDiskType :: (Core.Maybe Settings_DataDiskType),
    -- | The database flags passed to the instance at startup.
    databaseFlags :: (Core.Maybe [DatabaseFlags]),
    -- | Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
    databaseReplicationEnabled :: (Core.Maybe Core.Bool),
    -- | Configuration to protect against accidental instance deletion.
    deletionProtectionEnabled :: (Core.Maybe Core.Bool),
    -- | Deny maintenance periods
    denyMaintenancePeriods :: (Core.Maybe [DenyMaintenancePeriod]),
    -- | Insights configuration, for now relevant only for Postgres.
    insightsConfig :: (Core.Maybe InsightsConfig),
    -- | The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
    ipConfiguration :: (Core.Maybe IpConfiguration),
    -- | This is always @sql#settings@.
    kind :: (Core.Maybe Core.Text),
    -- | The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
    locationPreference :: (Core.Maybe LocationPreference),
    -- | The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
    maintenanceWindow :: (Core.Maybe MaintenanceWindow),
    -- | The local user password validation policy of the instance.
    passwordValidationPolicy :: (Core.Maybe PasswordValidationPolicy),
    -- | The pricing plan for this instance. This can be either @PER_USE@ or @PACKAGE@. Only @PER_USE@ is supported for Second Generation instances.
    pricingPlan :: (Core.Maybe Settings_PricingPlan),
    -- | The type of replication this instance uses. This can be either @ASYNCHRONOUS@ or @SYNCHRONOUS@. (Deprecated) This property was only applicable to First Generation instances.
    replicationType :: (Core.Maybe Settings_ReplicationType),
    -- | The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
    settingsVersion :: (Core.Maybe Core.Int64),
    -- | SQL Server specific audit configuration.
    sqlServerAuditConfig :: (Core.Maybe SqlServerAuditConfig),
    -- | Configuration to increase storage size automatically. The default value is true.
    storageAutoResize :: (Core.Maybe Core.Bool),
    -- | The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
    storageAutoResizeLimit :: (Core.Maybe Core.Int64),
    -- | The tier (or machine type) for this instance, for example @db-custom-1-3840@. WARNING: Changing this restarts the instance.
    tier :: (Core.Maybe Core.Text),
    -- | Server timezone, relevant only for Cloud SQL for SQL Server.
    timeZone :: (Core.Maybe Core.Text),
    -- | User-provided labels, represented as a dictionary where each label is a single key value pair.
    userLabels :: (Core.Maybe Settings_UserLabels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
newSettings ::
  Settings
newSettings =
  Settings
    { activationPolicy = Core.Nothing,
      activeDirectoryConfig = Core.Nothing,
      authorizedGaeApplications = Core.Nothing,
      availabilityType = Core.Nothing,
      backupConfiguration = Core.Nothing,
      collation = Core.Nothing,
      connectorEnforcement = Core.Nothing,
      crashSafeReplicationEnabled = Core.Nothing,
      dataDiskSizeGb = Core.Nothing,
      dataDiskType = Core.Nothing,
      databaseFlags = Core.Nothing,
      databaseReplicationEnabled = Core.Nothing,
      deletionProtectionEnabled = Core.Nothing,
      denyMaintenancePeriods = Core.Nothing,
      insightsConfig = Core.Nothing,
      ipConfiguration = Core.Nothing,
      kind = Core.Nothing,
      locationPreference = Core.Nothing,
      maintenanceWindow = Core.Nothing,
      passwordValidationPolicy = Core.Nothing,
      pricingPlan = Core.Nothing,
      replicationType = Core.Nothing,
      settingsVersion = Core.Nothing,
      sqlServerAuditConfig = Core.Nothing,
      storageAutoResize = Core.Nothing,
      storageAutoResizeLimit = Core.Nothing,
      tier = Core.Nothing,
      timeZone = Core.Nothing,
      userLabels = Core.Nothing
    }

instance Core.FromJSON Settings where
  parseJSON =
    Core.withObject
      "Settings"
      ( \o ->
          Settings
            Core.<$> (o Core..:? "activationPolicy")
            Core.<*> (o Core..:? "activeDirectoryConfig")
            Core.<*> (o Core..:? "authorizedGaeApplications")
            Core.<*> (o Core..:? "availabilityType")
            Core.<*> (o Core..:? "backupConfiguration")
            Core.<*> (o Core..:? "collation")
            Core.<*> (o Core..:? "connectorEnforcement")
            Core.<*> (o Core..:? "crashSafeReplicationEnabled")
            Core.<*> ( o Core..:? "dataDiskSizeGb"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "dataDiskType")
            Core.<*> (o Core..:? "databaseFlags")
            Core.<*> (o Core..:? "databaseReplicationEnabled")
            Core.<*> (o Core..:? "deletionProtectionEnabled")
            Core.<*> (o Core..:? "denyMaintenancePeriods")
            Core.<*> (o Core..:? "insightsConfig")
            Core.<*> (o Core..:? "ipConfiguration")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "locationPreference")
            Core.<*> (o Core..:? "maintenanceWindow")
            Core.<*> (o Core..:? "passwordValidationPolicy")
            Core.<*> (o Core..:? "pricingPlan")
            Core.<*> (o Core..:? "replicationType")
            Core.<*> ( o Core..:? "settingsVersion"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "sqlServerAuditConfig")
            Core.<*> (o Core..:? "storageAutoResize")
            Core.<*> ( o Core..:? "storageAutoResizeLimit"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "tier")
            Core.<*> (o Core..:? "timeZone")
            Core.<*> (o Core..:? "userLabels")
      )

instance Core.ToJSON Settings where
  toJSON Settings {..} =
    Core.object
      ( Core.catMaybes
          [ ("activationPolicy" Core..=)
              Core.<$> activationPolicy,
            ("activeDirectoryConfig" Core..=)
              Core.<$> activeDirectoryConfig,
            ("authorizedGaeApplications" Core..=)
              Core.<$> authorizedGaeApplications,
            ("availabilityType" Core..=)
              Core.<$> availabilityType,
            ("backupConfiguration" Core..=)
              Core.<$> backupConfiguration,
            ("collation" Core..=) Core.<$> collation,
            ("connectorEnforcement" Core..=)
              Core.<$> connectorEnforcement,
            ("crashSafeReplicationEnabled" Core..=)
              Core.<$> crashSafeReplicationEnabled,
            ("dataDiskSizeGb" Core..=) Core.. Core.AsText
              Core.<$> dataDiskSizeGb,
            ("dataDiskType" Core..=) Core.<$> dataDiskType,
            ("databaseFlags" Core..=) Core.<$> databaseFlags,
            ("databaseReplicationEnabled" Core..=)
              Core.<$> databaseReplicationEnabled,
            ("deletionProtectionEnabled" Core..=)
              Core.<$> deletionProtectionEnabled,
            ("denyMaintenancePeriods" Core..=)
              Core.<$> denyMaintenancePeriods,
            ("insightsConfig" Core..=) Core.<$> insightsConfig,
            ("ipConfiguration" Core..=) Core.<$> ipConfiguration,
            ("kind" Core..=) Core.<$> kind,
            ("locationPreference" Core..=)
              Core.<$> locationPreference,
            ("maintenanceWindow" Core..=)
              Core.<$> maintenanceWindow,
            ("passwordValidationPolicy" Core..=)
              Core.<$> passwordValidationPolicy,
            ("pricingPlan" Core..=) Core.<$> pricingPlan,
            ("replicationType" Core..=) Core.<$> replicationType,
            ("settingsVersion" Core..=) Core.. Core.AsText
              Core.<$> settingsVersion,
            ("sqlServerAuditConfig" Core..=)
              Core.<$> sqlServerAuditConfig,
            ("storageAutoResize" Core..=)
              Core.<$> storageAutoResize,
            ("storageAutoResizeLimit" Core..=) Core.. Core.AsText
              Core.<$> storageAutoResizeLimit,
            ("tier" Core..=) Core.<$> tier,
            ("timeZone" Core..=) Core.<$> timeZone,
            ("userLabels" Core..=) Core.<$> userLabels
          ]
      )

-- | User-provided labels, represented as a dictionary where each label is a single key value pair.
--
-- /See:/ 'newSettings_UserLabels' smart constructor.
newtype Settings_UserLabels = Settings_UserLabels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Settings_UserLabels' with the minimum fields required to make a request.
newSettings_UserLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Settings_UserLabels
newSettings_UserLabels additional =
  Settings_UserLabels {additional = additional}

instance Core.FromJSON Settings_UserLabels where
  parseJSON =
    Core.withObject
      "Settings_UserLabels"
      ( \o ->
          Settings_UserLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Settings_UserLabels where
  toJSON Settings_UserLabels {..} =
    Core.toJSON additional

-- | Active Directory configuration, relevant only for Cloud SQL for SQL Server.
--
-- /See:/ 'newSqlActiveDirectoryConfig' smart constructor.
data SqlActiveDirectoryConfig = SqlActiveDirectoryConfig
  { -- | The name of the domain (e.g., mydomain.com).
    domain :: (Core.Maybe Core.Text),
    -- | This is always sql#activeDirectoryConfig.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlActiveDirectoryConfig' with the minimum fields required to make a request.
newSqlActiveDirectoryConfig ::
  SqlActiveDirectoryConfig
newSqlActiveDirectoryConfig =
  SqlActiveDirectoryConfig {domain = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON SqlActiveDirectoryConfig where
  parseJSON =
    Core.withObject
      "SqlActiveDirectoryConfig"
      ( \o ->
          SqlActiveDirectoryConfig
            Core.<$> (o Core..:? "domain") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON SqlActiveDirectoryConfig where
  toJSON SqlActiveDirectoryConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | External primary instance migration setting error\/warning.
--
-- /See:/ 'newSqlExternalSyncSettingError' smart constructor.
data SqlExternalSyncSettingError = SqlExternalSyncSettingError
  { -- | Additional information about the error encountered.
    detail :: (Core.Maybe Core.Text),
    -- | Can be @sql#externalSyncSettingError@ or @sql#externalSyncSettingWarning@.
    kind :: (Core.Maybe Core.Text),
    -- | Identifies the specific error that occurred.
    type' :: (Core.Maybe SqlExternalSyncSettingError_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlExternalSyncSettingError' with the minimum fields required to make a request.
newSqlExternalSyncSettingError ::
  SqlExternalSyncSettingError
newSqlExternalSyncSettingError =
  SqlExternalSyncSettingError
    { detail = Core.Nothing,
      kind = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON SqlExternalSyncSettingError where
  parseJSON =
    Core.withObject
      "SqlExternalSyncSettingError"
      ( \o ->
          SqlExternalSyncSettingError
            Core.<$> (o Core..:? "detail")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SqlExternalSyncSettingError where
  toJSON SqlExternalSyncSettingError {..} =
    Core.object
      ( Core.catMaybes
          [ ("detail" Core..=) Core.<$> detail,
            ("kind" Core..=) Core.<$> kind,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Instance get disk shrink config response.
--
-- /See:/ 'newSqlInstancesGetDiskShrinkConfigResponse' smart constructor.
data SqlInstancesGetDiskShrinkConfigResponse = SqlInstancesGetDiskShrinkConfigResponse
  { -- | This is always @sql#getDiskShrinkConfig@.
    kind :: (Core.Maybe Core.Text),
    -- | The minimum size to which a disk can be shrunk in GigaBytes.
    minimalTargetSizeGb :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesGetDiskShrinkConfigResponse' with the minimum fields required to make a request.
newSqlInstancesGetDiskShrinkConfigResponse ::
  SqlInstancesGetDiskShrinkConfigResponse
newSqlInstancesGetDiskShrinkConfigResponse =
  SqlInstancesGetDiskShrinkConfigResponse
    { kind = Core.Nothing,
      minimalTargetSizeGb = Core.Nothing
    }

instance
  Core.FromJSON
    SqlInstancesGetDiskShrinkConfigResponse
  where
  parseJSON =
    Core.withObject
      "SqlInstancesGetDiskShrinkConfigResponse"
      ( \o ->
          SqlInstancesGetDiskShrinkConfigResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> ( o Core..:? "minimalTargetSizeGb"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    SqlInstancesGetDiskShrinkConfigResponse
  where
  toJSON SqlInstancesGetDiskShrinkConfigResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("minimalTargetSizeGb" Core..=) Core.. Core.AsText
              Core.<$> minimalTargetSizeGb
          ]
      )

-- | Reschedule options for maintenance windows.
--
-- /See:/ 'newSqlInstancesRescheduleMaintenanceRequestBody' smart constructor.
newtype SqlInstancesRescheduleMaintenanceRequestBody = SqlInstancesRescheduleMaintenanceRequestBody
  { -- | Required. The type of the reschedule the user wants.
    reschedule :: (Core.Maybe Reschedule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesRescheduleMaintenanceRequestBody' with the minimum fields required to make a request.
newSqlInstancesRescheduleMaintenanceRequestBody ::
  SqlInstancesRescheduleMaintenanceRequestBody
newSqlInstancesRescheduleMaintenanceRequestBody =
  SqlInstancesRescheduleMaintenanceRequestBody {reschedule = Core.Nothing}

instance
  Core.FromJSON
    SqlInstancesRescheduleMaintenanceRequestBody
  where
  parseJSON =
    Core.withObject
      "SqlInstancesRescheduleMaintenanceRequestBody"
      ( \o ->
          SqlInstancesRescheduleMaintenanceRequestBody
            Core.<$> (o Core..:? "reschedule")
      )

instance
  Core.ToJSON
    SqlInstancesRescheduleMaintenanceRequestBody
  where
  toJSON
    SqlInstancesRescheduleMaintenanceRequestBody {..} =
      Core.object
        ( Core.catMaybes
            [("reschedule" Core..=) Core.<$> reschedule]
        )

-- | Instance reset replica size request.
--
-- /See:/ 'newSqlInstancesResetReplicaSizeRequest' smart constructor.
data SqlInstancesResetReplicaSizeRequest = SqlInstancesResetReplicaSizeRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesResetReplicaSizeRequest' with the minimum fields required to make a request.
newSqlInstancesResetReplicaSizeRequest ::
  SqlInstancesResetReplicaSizeRequest
newSqlInstancesResetReplicaSizeRequest = SqlInstancesResetReplicaSizeRequest

instance
  Core.FromJSON
    SqlInstancesResetReplicaSizeRequest
  where
  parseJSON =
    Core.withObject
      "SqlInstancesResetReplicaSizeRequest"
      ( \o ->
          Core.pure SqlInstancesResetReplicaSizeRequest
      )

instance
  Core.ToJSON
    SqlInstancesResetReplicaSizeRequest
  where
  toJSON = Core.const Core.emptyObject

-- | Instance start external sync request.
--
-- /See:/ 'newSqlInstancesStartExternalSyncRequest' smart constructor.
data SqlInstancesStartExternalSyncRequest = SqlInstancesStartExternalSyncRequest
  { -- | MySQL-specific settings for start external sync.
    mysqlSyncConfig :: (Core.Maybe MySqlSyncConfig),
    -- | Whether to skip the verification step (VESS).
    skipVerification :: (Core.Maybe Core.Bool),
    -- | External sync mode.
    syncMode :: (Core.Maybe SqlInstancesStartExternalSyncRequest_SyncMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesStartExternalSyncRequest' with the minimum fields required to make a request.
newSqlInstancesStartExternalSyncRequest ::
  SqlInstancesStartExternalSyncRequest
newSqlInstancesStartExternalSyncRequest =
  SqlInstancesStartExternalSyncRequest
    { mysqlSyncConfig = Core.Nothing,
      skipVerification = Core.Nothing,
      syncMode = Core.Nothing
    }

instance
  Core.FromJSON
    SqlInstancesStartExternalSyncRequest
  where
  parseJSON =
    Core.withObject
      "SqlInstancesStartExternalSyncRequest"
      ( \o ->
          SqlInstancesStartExternalSyncRequest
            Core.<$> (o Core..:? "mysqlSyncConfig")
            Core.<*> (o Core..:? "skipVerification")
            Core.<*> (o Core..:? "syncMode")
      )

instance
  Core.ToJSON
    SqlInstancesStartExternalSyncRequest
  where
  toJSON SqlInstancesStartExternalSyncRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("mysqlSyncConfig" Core..=)
              Core.<$> mysqlSyncConfig,
            ("skipVerification" Core..=)
              Core.<$> skipVerification,
            ("syncMode" Core..=) Core.<$> syncMode
          ]
      )

-- | Instance verify external sync settings request.
--
-- /See:/ 'newSqlInstancesVerifyExternalSyncSettingsRequest' smart constructor.
data SqlInstancesVerifyExternalSyncSettingsRequest = SqlInstancesVerifyExternalSyncSettingsRequest
  { -- | Optional. MySQL-specific settings for start external sync.
    mysqlSyncConfig :: (Core.Maybe MySqlSyncConfig),
    -- | External sync mode
    syncMode :: (Core.Maybe SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode),
    -- | Flag to enable verifying connection only
    verifyConnectionOnly :: (Core.Maybe Core.Bool),
    -- | Optional. Flag to verify settings required by replication setup only
    verifyReplicationOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesVerifyExternalSyncSettingsRequest' with the minimum fields required to make a request.
newSqlInstancesVerifyExternalSyncSettingsRequest ::
  SqlInstancesVerifyExternalSyncSettingsRequest
newSqlInstancesVerifyExternalSyncSettingsRequest =
  SqlInstancesVerifyExternalSyncSettingsRequest
    { mysqlSyncConfig = Core.Nothing,
      syncMode = Core.Nothing,
      verifyConnectionOnly = Core.Nothing,
      verifyReplicationOnly = Core.Nothing
    }

instance
  Core.FromJSON
    SqlInstancesVerifyExternalSyncSettingsRequest
  where
  parseJSON =
    Core.withObject
      "SqlInstancesVerifyExternalSyncSettingsRequest"
      ( \o ->
          SqlInstancesVerifyExternalSyncSettingsRequest
            Core.<$> (o Core..:? "mysqlSyncConfig")
              Core.<*> (o Core..:? "syncMode")
              Core.<*> (o Core..:? "verifyConnectionOnly")
              Core.<*> (o Core..:? "verifyReplicationOnly")
      )

instance
  Core.ToJSON
    SqlInstancesVerifyExternalSyncSettingsRequest
  where
  toJSON
    SqlInstancesVerifyExternalSyncSettingsRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("mysqlSyncConfig" Core..=)
                Core.<$> mysqlSyncConfig,
              ("syncMode" Core..=) Core.<$> syncMode,
              ("verifyConnectionOnly" Core..=)
                Core.<$> verifyConnectionOnly,
              ("verifyReplicationOnly" Core..=)
                Core.<$> verifyReplicationOnly
            ]
        )

-- | Instance verify external sync settings response.
--
-- /See:/ 'newSqlInstancesVerifyExternalSyncSettingsResponse' smart constructor.
data SqlInstancesVerifyExternalSyncSettingsResponse = SqlInstancesVerifyExternalSyncSettingsResponse
  { -- | List of migration violations.
    errors :: (Core.Maybe [SqlExternalSyncSettingError]),
    -- | This is always @sql#migrationSettingErrorList@.
    kind :: (Core.Maybe Core.Text),
    -- | List of migration warnings.
    warnings :: (Core.Maybe [SqlExternalSyncSettingError])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesVerifyExternalSyncSettingsResponse' with the minimum fields required to make a request.
newSqlInstancesVerifyExternalSyncSettingsResponse ::
  SqlInstancesVerifyExternalSyncSettingsResponse
newSqlInstancesVerifyExternalSyncSettingsResponse =
  SqlInstancesVerifyExternalSyncSettingsResponse
    { errors = Core.Nothing,
      kind = Core.Nothing,
      warnings = Core.Nothing
    }

instance
  Core.FromJSON
    SqlInstancesVerifyExternalSyncSettingsResponse
  where
  parseJSON =
    Core.withObject
      "SqlInstancesVerifyExternalSyncSettingsResponse"
      ( \o ->
          SqlInstancesVerifyExternalSyncSettingsResponse
            Core.<$> (o Core..:? "errors") Core.<*> (o Core..:? "kind")
              Core.<*> (o Core..:? "warnings")
      )

instance
  Core.ToJSON
    SqlInstancesVerifyExternalSyncSettingsResponse
  where
  toJSON
    SqlInstancesVerifyExternalSyncSettingsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("errors" Core..=) Core.<$> errors,
              ("kind" Core..=) Core.<$> kind,
              ("warnings" Core..=) Core.<$> warnings
            ]
        )

-- | This message wraps up the information written by out-of-disk detection job.
--
-- /See:/ 'newSqlOutOfDiskReport' smart constructor.
data SqlOutOfDiskReport = SqlOutOfDiskReport
  { -- | The minimum recommended increase size in GigaBytes This field is consumed by the frontend * Writers: * the proactive database wellness job for OOD. * Readers:
    sqlMinRecommendedIncreaseSizeGb :: (Core.Maybe Core.Int32),
    -- | This field represents the state generated by the proactive database wellness job for OutOfDisk issues. * Writers: * the proactive database wellness job for OOD. * Readers: * the proactive database wellness job
    sqlOutOfDiskState :: (Core.Maybe SqlOutOfDiskReport_SqlOutOfDiskState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlOutOfDiskReport' with the minimum fields required to make a request.
newSqlOutOfDiskReport ::
  SqlOutOfDiskReport
newSqlOutOfDiskReport =
  SqlOutOfDiskReport
    { sqlMinRecommendedIncreaseSizeGb = Core.Nothing,
      sqlOutOfDiskState = Core.Nothing
    }

instance Core.FromJSON SqlOutOfDiskReport where
  parseJSON =
    Core.withObject
      "SqlOutOfDiskReport"
      ( \o ->
          SqlOutOfDiskReport
            Core.<$> (o Core..:? "sqlMinRecommendedIncreaseSizeGb")
            Core.<*> (o Core..:? "sqlOutOfDiskState")
      )

instance Core.ToJSON SqlOutOfDiskReport where
  toJSON SqlOutOfDiskReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("sqlMinRecommendedIncreaseSizeGb" Core..=)
              Core.<$> sqlMinRecommendedIncreaseSizeGb,
            ("sqlOutOfDiskState" Core..=)
              Core.<$> sqlOutOfDiskState
          ]
      )

-- | Any scheduled maintenance for this instance.
--
-- /See:/ 'newSqlScheduledMaintenance' smart constructor.
data SqlScheduledMaintenance = SqlScheduledMaintenance
  { -- |
    canDefer :: (Core.Maybe Core.Bool),
    -- | If the scheduled maintenance can be rescheduled.
    canReschedule :: (Core.Maybe Core.Bool),
    -- | Maintenance cannot be rescheduled to start beyond this deadline.
    scheduleDeadlineTime :: (Core.Maybe Core.DateTime),
    -- | The start time of any upcoming scheduled maintenance for this instance.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlScheduledMaintenance' with the minimum fields required to make a request.
newSqlScheduledMaintenance ::
  SqlScheduledMaintenance
newSqlScheduledMaintenance =
  SqlScheduledMaintenance
    { canDefer = Core.Nothing,
      canReschedule = Core.Nothing,
      scheduleDeadlineTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON SqlScheduledMaintenance where
  parseJSON =
    Core.withObject
      "SqlScheduledMaintenance"
      ( \o ->
          SqlScheduledMaintenance
            Core.<$> (o Core..:? "canDefer")
            Core.<*> (o Core..:? "canReschedule")
            Core.<*> (o Core..:? "scheduleDeadlineTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON SqlScheduledMaintenance where
  toJSON SqlScheduledMaintenance {..} =
    Core.object
      ( Core.catMaybes
          [ ("canDefer" Core..=) Core.<$> canDefer,
            ("canReschedule" Core..=) Core.<$> canReschedule,
            ("scheduleDeadlineTime" Core..=)
              Core.<$> scheduleDeadlineTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | SQL Server specific audit configuration.
--
-- /See:/ 'newSqlServerAuditConfig' smart constructor.
data SqlServerAuditConfig = SqlServerAuditConfig
  { -- | The name of the destination bucket (e.g., gs:\/\/mybucket).
    bucket :: (Core.Maybe Core.Text),
    -- | This is always sql#sqlServerAuditConfig
    kind :: (Core.Maybe Core.Text),
    -- | How long to keep generated audit files.
    retentionInterval :: (Core.Maybe Core.Duration),
    -- | How often to upload generated audit files.
    uploadInterval :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlServerAuditConfig' with the minimum fields required to make a request.
newSqlServerAuditConfig ::
  SqlServerAuditConfig
newSqlServerAuditConfig =
  SqlServerAuditConfig
    { bucket = Core.Nothing,
      kind = Core.Nothing,
      retentionInterval = Core.Nothing,
      uploadInterval = Core.Nothing
    }

instance Core.FromJSON SqlServerAuditConfig where
  parseJSON =
    Core.withObject
      "SqlServerAuditConfig"
      ( \o ->
          SqlServerAuditConfig
            Core.<$> (o Core..:? "bucket")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "retentionInterval")
            Core.<*> (o Core..:? "uploadInterval")
      )

instance Core.ToJSON SqlServerAuditConfig where
  toJSON SqlServerAuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucket" Core..=) Core.<$> bucket,
            ("kind" Core..=) Core.<$> kind,
            ("retentionInterval" Core..=)
              Core.<$> retentionInterval,
            ("uploadInterval" Core..=) Core.<$> uploadInterval
          ]
      )

-- | Represents a Sql Server database on the Cloud SQL instance.
--
-- /See:/ 'newSqlServerDatabaseDetails' smart constructor.
data SqlServerDatabaseDetails = SqlServerDatabaseDetails
  { -- | The version of SQL Server with which the database is to be made compatible
    compatibilityLevel :: (Core.Maybe Core.Int32),
    -- | The recovery model of a SQL Server database
    recoveryModel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlServerDatabaseDetails' with the minimum fields required to make a request.
newSqlServerDatabaseDetails ::
  SqlServerDatabaseDetails
newSqlServerDatabaseDetails =
  SqlServerDatabaseDetails
    { compatibilityLevel = Core.Nothing,
      recoveryModel = Core.Nothing
    }

instance Core.FromJSON SqlServerDatabaseDetails where
  parseJSON =
    Core.withObject
      "SqlServerDatabaseDetails"
      ( \o ->
          SqlServerDatabaseDetails
            Core.<$> (o Core..:? "compatibilityLevel")
            Core.<*> (o Core..:? "recoveryModel")
      )

instance Core.ToJSON SqlServerDatabaseDetails where
  toJSON SqlServerDatabaseDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("compatibilityLevel" Core..=)
              Core.<$> compatibilityLevel,
            ("recoveryModel" Core..=) Core.<$> recoveryModel
          ]
      )

-- | Represents a Sql Server user on the Cloud SQL instance.
--
-- /See:/ 'newSqlServerUserDetails' smart constructor.
data SqlServerUserDetails = SqlServerUserDetails
  { -- | If the user has been disabled
    disabled :: (Core.Maybe Core.Bool),
    -- | The server roles for this user
    serverRoles :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlServerUserDetails' with the minimum fields required to make a request.
newSqlServerUserDetails ::
  SqlServerUserDetails
newSqlServerUserDetails =
  SqlServerUserDetails {disabled = Core.Nothing, serverRoles = Core.Nothing}

instance Core.FromJSON SqlServerUserDetails where
  parseJSON =
    Core.withObject
      "SqlServerUserDetails"
      ( \o ->
          SqlServerUserDetails
            Core.<$> (o Core..:? "disabled")
            Core.<*> (o Core..:? "serverRoles")
      )

instance Core.ToJSON SqlServerUserDetails where
  toJSON SqlServerUserDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("disabled" Core..=) Core.<$> disabled,
            ("serverRoles" Core..=) Core.<$> serverRoles
          ]
      )

-- | SslCerts Resource
--
-- /See:/ 'newSslCert' smart constructor.
data SslCert = SslCert
  { -- | PEM representation.
    cert :: (Core.Maybe Core.Text),
    -- | Serial number, as extracted from the certificate.
    certSerialNumber :: (Core.Maybe Core.Text),
    -- | User supplied name. Constrained to [a-zA-Z.-_ ]+.
    commonName :: (Core.Maybe Core.Text),
    -- | The time when the certificate was created in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@
    createTime :: (Core.Maybe Core.DateTime),
    -- | The time when the certificate expires in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2012-11-15T16:19:00.094Z@.
    expirationTime :: (Core.Maybe Core.DateTime),
    -- | Name of the database instance.
    instance' :: (Core.Maybe Core.Text),
    -- | This is always @sql#sslCert@.
    kind :: (Core.Maybe Core.Text),
    -- | The URI of this resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | Sha1 Fingerprint.
    sha1Fingerprint :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SslCert' with the minimum fields required to make a request.
newSslCert ::
  SslCert
newSslCert =
  SslCert
    { cert = Core.Nothing,
      certSerialNumber = Core.Nothing,
      commonName = Core.Nothing,
      createTime = Core.Nothing,
      expirationTime = Core.Nothing,
      instance' = Core.Nothing,
      kind = Core.Nothing,
      selfLink = Core.Nothing,
      sha1Fingerprint = Core.Nothing
    }

instance Core.FromJSON SslCert where
  parseJSON =
    Core.withObject
      "SslCert"
      ( \o ->
          SslCert
            Core.<$> (o Core..:? "cert")
            Core.<*> (o Core..:? "certSerialNumber")
            Core.<*> (o Core..:? "commonName")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "instance")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "sha1Fingerprint")
      )

instance Core.ToJSON SslCert where
  toJSON SslCert {..} =
    Core.object
      ( Core.catMaybes
          [ ("cert" Core..=) Core.<$> cert,
            ("certSerialNumber" Core..=)
              Core.<$> certSerialNumber,
            ("commonName" Core..=) Core.<$> commonName,
            ("createTime" Core..=) Core.<$> createTime,
            ("expirationTime" Core..=) Core.<$> expirationTime,
            ("instance" Core..=) Core.<$> instance',
            ("kind" Core..=) Core.<$> kind,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("sha1Fingerprint" Core..=)
              Core.<$> sha1Fingerprint
          ]
      )

-- | SslCertDetail.
--
-- /See:/ 'newSslCertDetail' smart constructor.
data SslCertDetail = SslCertDetail
  { -- | The public information about the cert.
    certInfo :: (Core.Maybe SslCert),
    -- | The private key for the client cert, in pem format. Keep private in order to protect your security.
    certPrivateKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SslCertDetail' with the minimum fields required to make a request.
newSslCertDetail ::
  SslCertDetail
newSslCertDetail =
  SslCertDetail {certInfo = Core.Nothing, certPrivateKey = Core.Nothing}

instance Core.FromJSON SslCertDetail where
  parseJSON =
    Core.withObject
      "SslCertDetail"
      ( \o ->
          SslCertDetail
            Core.<$> (o Core..:? "certInfo")
            Core.<*> (o Core..:? "certPrivateKey")
      )

instance Core.ToJSON SslCertDetail where
  toJSON SslCertDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("certInfo" Core..=) Core.<$> certInfo,
            ("certPrivateKey" Core..=) Core.<$> certPrivateKey
          ]
      )

-- | SslCerts create ephemeral certificate request.
--
-- /See:/ 'newSslCertsCreateEphemeralRequest' smart constructor.
data SslCertsCreateEphemeralRequest = SslCertsCreateEphemeralRequest
  { -- | Access token to include in the signed certificate.
    accessToken :: (Core.Maybe Core.Text),
    -- | PEM encoded public key to include in the signed certificate.
    publicKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SslCertsCreateEphemeralRequest' with the minimum fields required to make a request.
newSslCertsCreateEphemeralRequest ::
  SslCertsCreateEphemeralRequest
newSslCertsCreateEphemeralRequest =
  SslCertsCreateEphemeralRequest
    { accessToken = Core.Nothing,
      publicKey = Core.Nothing
    }

instance Core.FromJSON SslCertsCreateEphemeralRequest where
  parseJSON =
    Core.withObject
      "SslCertsCreateEphemeralRequest"
      ( \o ->
          SslCertsCreateEphemeralRequest
            Core.<$> (o Core..:? "access_token")
            Core.<*> (o Core..:? "public_key")
      )

instance Core.ToJSON SslCertsCreateEphemeralRequest where
  toJSON SslCertsCreateEphemeralRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("access_token" Core..=) Core.<$> accessToken,
            ("public_key" Core..=) Core.<$> publicKey
          ]
      )

-- | SslCerts insert request.
--
-- /See:/ 'newSslCertsInsertRequest' smart constructor.
newtype SslCertsInsertRequest = SslCertsInsertRequest
  { -- | User supplied name. Must be a distinct name from the other certificates for this instance.
    commonName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SslCertsInsertRequest' with the minimum fields required to make a request.
newSslCertsInsertRequest ::
  SslCertsInsertRequest
newSslCertsInsertRequest = SslCertsInsertRequest {commonName = Core.Nothing}

instance Core.FromJSON SslCertsInsertRequest where
  parseJSON =
    Core.withObject
      "SslCertsInsertRequest"
      ( \o ->
          SslCertsInsertRequest
            Core.<$> (o Core..:? "commonName")
      )

instance Core.ToJSON SslCertsInsertRequest where
  toJSON SslCertsInsertRequest {..} =
    Core.object
      ( Core.catMaybes
          [("commonName" Core..=) Core.<$> commonName]
      )

-- | SslCert insert response.
--
-- /See:/ 'newSslCertsInsertResponse' smart constructor.
data SslCertsInsertResponse = SslCertsInsertResponse
  { -- | The new client certificate and private key.
    clientCert :: (Core.Maybe SslCertDetail),
    -- | This is always @sql#sslCertsInsert@.
    kind :: (Core.Maybe Core.Text),
    -- | The operation to track the ssl certs insert request.
    operation :: (Core.Maybe Operation),
    -- | The server Certificate Authority\'s certificate. If this is missing you can force a new one to be generated by calling resetSslConfig method on instances resource.
    serverCaCert :: (Core.Maybe SslCert)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SslCertsInsertResponse' with the minimum fields required to make a request.
newSslCertsInsertResponse ::
  SslCertsInsertResponse
newSslCertsInsertResponse =
  SslCertsInsertResponse
    { clientCert = Core.Nothing,
      kind = Core.Nothing,
      operation = Core.Nothing,
      serverCaCert = Core.Nothing
    }

instance Core.FromJSON SslCertsInsertResponse where
  parseJSON =
    Core.withObject
      "SslCertsInsertResponse"
      ( \o ->
          SslCertsInsertResponse
            Core.<$> (o Core..:? "clientCert")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "operation")
            Core.<*> (o Core..:? "serverCaCert")
      )

instance Core.ToJSON SslCertsInsertResponse where
  toJSON SslCertsInsertResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientCert" Core..=) Core.<$> clientCert,
            ("kind" Core..=) Core.<$> kind,
            ("operation" Core..=) Core.<$> operation,
            ("serverCaCert" Core..=) Core.<$> serverCaCert
          ]
      )

-- | SslCerts list response.
--
-- /See:/ 'newSslCertsListResponse' smart constructor.
data SslCertsListResponse = SslCertsListResponse
  { -- | List of client certificates for the instance.
    items :: (Core.Maybe [SslCert]),
    -- | This is always @sql#sslCertsList@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SslCertsListResponse' with the minimum fields required to make a request.
newSslCertsListResponse ::
  SslCertsListResponse
newSslCertsListResponse =
  SslCertsListResponse {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON SslCertsListResponse where
  parseJSON =
    Core.withObject
      "SslCertsListResponse"
      ( \o ->
          SslCertsListResponse
            Core.<$> (o Core..:? "items") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON SslCertsListResponse where
  toJSON SslCertsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Initial sync flags for certain Cloud SQL APIs. Currently used for the MySQL external server initial dump.
--
-- /See:/ 'newSyncFlags' smart constructor.
data SyncFlags = SyncFlags
  { -- | The name of the flag.
    name :: (Core.Maybe Core.Text),
    -- | The value of the flag. This field must be omitted if the flag doesn\'t take a value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SyncFlags' with the minimum fields required to make a request.
newSyncFlags ::
  SyncFlags
newSyncFlags = SyncFlags {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON SyncFlags where
  parseJSON =
    Core.withObject
      "SyncFlags"
      ( \o ->
          SyncFlags
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON SyncFlags where
  toJSON SyncFlags {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A Google Cloud SQL service tier resource.
--
-- /See:/ 'newTier' smart constructor.
data Tier = Tier
  { -- | The maximum disk size of this tier in bytes.
    diskQuota :: (Core.Maybe Core.Int64),
    -- | The maximum RAM usage of this tier in bytes.
    rAM :: (Core.Maybe Core.Int64),
    -- | This is always @sql#tier@.
    kind :: (Core.Maybe Core.Text),
    -- | The applicable regions for this tier.
    region :: (Core.Maybe [Core.Text]),
    -- | An identifier for the machine type, for example, @db-custom-1-3840@. For related information, see </sql/pricing Pricing>.
    tier :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tier' with the minimum fields required to make a request.
newTier ::
  Tier
newTier =
  Tier
    { diskQuota = Core.Nothing,
      rAM = Core.Nothing,
      kind = Core.Nothing,
      region = Core.Nothing,
      tier = Core.Nothing
    }

instance Core.FromJSON Tier where
  parseJSON =
    Core.withObject
      "Tier"
      ( \o ->
          Tier
            Core.<$> ( o Core..:? "DiskQuota"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "RAM" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "tier")
      )

instance Core.ToJSON Tier where
  toJSON Tier {..} =
    Core.object
      ( Core.catMaybes
          [ ("DiskQuota" Core..=) Core.. Core.AsText
              Core.<$> diskQuota,
            ("RAM" Core..=) Core.. Core.AsText Core.<$> rAM,
            ("kind" Core..=) Core.<$> kind,
            ("region" Core..=) Core.<$> region,
            ("tier" Core..=) Core.<$> tier
          ]
      )

-- | Tiers list response.
--
-- /See:/ 'newTiersListResponse' smart constructor.
data TiersListResponse = TiersListResponse
  { -- | List of tiers.
    items :: (Core.Maybe [Tier]),
    -- | This is always @sql#tiersList@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TiersListResponse' with the minimum fields required to make a request.
newTiersListResponse ::
  TiersListResponse
newTiersListResponse =
  TiersListResponse {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON TiersListResponse where
  parseJSON =
    Core.withObject
      "TiersListResponse"
      ( \o ->
          TiersListResponse
            Core.<$> (o Core..:? "items") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON TiersListResponse where
  toJSON TiersListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Database Instance truncate log context.
--
-- /See:/ 'newTruncateLogContext' smart constructor.
data TruncateLogContext = TruncateLogContext
  { -- | This is always @sql#truncateLogContext@.
    kind :: (Core.Maybe Core.Text),
    -- | The type of log to truncate. Valid values are @MYSQL_GENERAL_TABLE@ and @MYSQL_SLOW_TABLE@.
    logType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TruncateLogContext' with the minimum fields required to make a request.
newTruncateLogContext ::
  TruncateLogContext
newTruncateLogContext =
  TruncateLogContext {kind = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON TruncateLogContext where
  parseJSON =
    Core.withObject
      "TruncateLogContext"
      ( \o ->
          TruncateLogContext
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON TruncateLogContext where
  toJSON TruncateLogContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | A Cloud SQL user resource.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | Dual password status for the user.
    dualPasswordType :: (Core.Maybe User_DualPasswordType),
    -- | This field is deprecated and will be removed from a future version of the API.
    etag :: (Core.Maybe Core.Text),
    -- | Optional. The host from which the user can connect. For @insert@ operations, host defaults to an empty string. For @update@ operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it\'s required; for a PostgreSQL or SQL Server instance, it\'s optional.
    host :: (Core.Maybe Core.Text),
    -- | The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for @update@ because it is already specified on the URL.
    instance' :: (Core.Maybe Core.Text),
    -- | This is always @sql#user@.
    kind :: (Core.Maybe Core.Text),
    -- | The name of the user in the Cloud SQL instance. Can be omitted for @update@ because it is already specified in the URL.
    name :: (Core.Maybe Core.Text),
    -- | The password for the user.
    password :: (Core.Maybe Core.Text),
    -- | User level password validation policy.
    passwordPolicy :: (Core.Maybe UserPasswordValidationPolicy),
    -- | The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for @update@ because it is already specified on the URL.
    project :: (Core.Maybe Core.Text),
    -- |
    sqlserverUserDetails :: (Core.Maybe SqlServerUserDetails),
    -- | The user type. It determines the method to authenticate the user during login. The default is the database\'s built-in user type.
    type' :: (Core.Maybe User_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { dualPasswordType = Core.Nothing,
      etag = Core.Nothing,
      host = Core.Nothing,
      instance' = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      password = Core.Nothing,
      passwordPolicy = Core.Nothing,
      project = Core.Nothing,
      sqlserverUserDetails = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "dualPasswordType")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "instance")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "passwordPolicy")
            Core.<*> (o Core..:? "project")
            Core.<*> (o Core..:? "sqlserverUserDetails")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("dualPasswordType" Core..=)
              Core.<$> dualPasswordType,
            ("etag" Core..=) Core.<$> etag,
            ("host" Core..=) Core.<$> host,
            ("instance" Core..=) Core.<$> instance',
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("password" Core..=) Core.<$> password,
            ("passwordPolicy" Core..=) Core.<$> passwordPolicy,
            ("project" Core..=) Core.<$> project,
            ("sqlserverUserDetails" Core..=)
              Core.<$> sqlserverUserDetails,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | User level password validation policy.
--
-- /See:/ 'newUserPasswordValidationPolicy' smart constructor.
data UserPasswordValidationPolicy = UserPasswordValidationPolicy
  { -- | Number of failed login attempts allowed before user get locked.
    allowedFailedAttempts :: (Core.Maybe Core.Int32),
    -- | If true, failed login attempts check will be enabled.
    enableFailedAttemptsCheck :: (Core.Maybe Core.Bool),
    -- | If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
    enablePasswordVerification :: (Core.Maybe Core.Bool),
    -- | Expiration duration after password is updated.
    passwordExpirationDuration :: (Core.Maybe Core.Duration),
    -- | Output only. Read-only password status.
    status :: (Core.Maybe PasswordStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserPasswordValidationPolicy' with the minimum fields required to make a request.
newUserPasswordValidationPolicy ::
  UserPasswordValidationPolicy
newUserPasswordValidationPolicy =
  UserPasswordValidationPolicy
    { allowedFailedAttempts = Core.Nothing,
      enableFailedAttemptsCheck = Core.Nothing,
      enablePasswordVerification = Core.Nothing,
      passwordExpirationDuration = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON UserPasswordValidationPolicy where
  parseJSON =
    Core.withObject
      "UserPasswordValidationPolicy"
      ( \o ->
          UserPasswordValidationPolicy
            Core.<$> (o Core..:? "allowedFailedAttempts")
            Core.<*> (o Core..:? "enableFailedAttemptsCheck")
            Core.<*> (o Core..:? "enablePasswordVerification")
            Core.<*> (o Core..:? "passwordExpirationDuration")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON UserPasswordValidationPolicy where
  toJSON UserPasswordValidationPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedFailedAttempts" Core..=)
              Core.<$> allowedFailedAttempts,
            ("enableFailedAttemptsCheck" Core..=)
              Core.<$> enableFailedAttemptsCheck,
            ("enablePasswordVerification" Core..=)
              Core.<$> enablePasswordVerification,
            ("passwordExpirationDuration" Core..=)
              Core.<$> passwordExpirationDuration,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | User list response.
--
-- /See:/ 'newUsersListResponse' smart constructor.
data UsersListResponse = UsersListResponse
  { -- | List of user resources in the instance.
    items :: (Core.Maybe [User]),
    -- | This is always @sql#usersList@.
    kind :: (Core.Maybe Core.Text),
    -- | Unused.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsersListResponse' with the minimum fields required to make a request.
newUsersListResponse ::
  UsersListResponse
newUsersListResponse =
  UsersListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON UsersListResponse where
  parseJSON =
    Core.withObject
      "UsersListResponse"
      ( \o ->
          UsersListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON UsersListResponse where
  toJSON UsersListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )
