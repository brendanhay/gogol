{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SQLAdmin.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SQLAdmin.Types
  ( -- * Configuration
    sQLAdminService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Sqlservice'Admin,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AclEntry
    AclEntry (..),
    newAclEntry,

    -- ** AcquireSsrsLeaseContext
    AcquireSsrsLeaseContext (..),
    newAcquireSsrsLeaseContext,

    -- ** AdvancedMachineFeatures
    AdvancedMachineFeatures (..),
    newAdvancedMachineFeatures,

    -- ** ApiWarning
    ApiWarning (..),
    newApiWarning,

    -- ** ApiWarning_Code
    ApiWarning_Code (..),

    -- ** AvailableDatabaseVersion
    AvailableDatabaseVersion (..),
    newAvailableDatabaseVersion,

    -- ** Backup
    Backup (..),
    newBackup,

    -- ** Backup_BackupKind
    Backup_BackupKind (..),

    -- ** Backup_State
    Backup_State (..),

    -- ** Backup_Type
    Backup_Type (..),

    -- ** BackupConfiguration
    BackupConfiguration (..),
    newBackupConfiguration,

    -- ** BackupConfiguration_TransactionalLogStorageState
    BackupConfiguration_TransactionalLogStorageState (..),

    -- ** BackupContext
    BackupContext (..),
    newBackupContext,

    -- ** BackupReencryptionConfig
    BackupReencryptionConfig (..),
    newBackupReencryptionConfig,

    -- ** BackupReencryptionConfig_BackupType
    BackupReencryptionConfig_BackupType (..),

    -- ** BackupRetentionSettings
    BackupRetentionSettings (..),
    newBackupRetentionSettings,

    -- ** BackupRetentionSettings_RetentionUnit
    BackupRetentionSettings_RetentionUnit (..),

    -- ** BackupRun
    BackupRun (..),
    newBackupRun,

    -- ** BackupRun_BackupKind
    BackupRun_BackupKind (..),

    -- ** BackupRun_Status
    BackupRun_Status (..),

    -- ** BackupRun_Type
    BackupRun_Type (..),

    -- ** BackupRunsListResponse
    BackupRunsListResponse (..),
    newBackupRunsListResponse,

    -- ** BinLogCoordinates
    BinLogCoordinates (..),
    newBinLogCoordinates,

    -- ** CloneContext
    CloneContext (..),
    newCloneContext,

    -- ** ConnectSettings
    ConnectSettings (..),
    newConnectSettings,

    -- ** ConnectSettings_BackendType
    ConnectSettings_BackendType (..),

    -- ** ConnectSettings_DatabaseVersion
    ConnectSettings_DatabaseVersion (..),

    -- ** ConnectSettings_ServerCaMode
    ConnectSettings_ServerCaMode (..),

    -- ** DataCacheConfig
    DataCacheConfig (..),
    newDataCacheConfig,

    -- ** Database
    Database (..),
    newDatabase,

    -- ** DatabaseFlags
    DatabaseFlags (..),
    newDatabaseFlags,

    -- ** DatabaseInstance
    DatabaseInstance (..),
    newDatabaseInstance,

    -- ** DatabaseInstance_BackendType
    DatabaseInstance_BackendType (..),

    -- ** DatabaseInstance_DatabaseVersion
    DatabaseInstance_DatabaseVersion (..),

    -- ** DatabaseInstance_FailoverReplica
    DatabaseInstance_FailoverReplica (..),
    newDatabaseInstance_FailoverReplica,

    -- ** DatabaseInstance_InstanceType
    DatabaseInstance_InstanceType (..),

    -- ** DatabaseInstance_SqlNetworkArchitecture
    DatabaseInstance_SqlNetworkArchitecture (..),

    -- ** DatabaseInstance_State
    DatabaseInstance_State (..),

    -- ** DatabaseInstance_SuspensionReasonItem
    DatabaseInstance_SuspensionReasonItem (..),

    -- ** DatabaseInstance_Tags
    DatabaseInstance_Tags (..),
    newDatabaseInstance_Tags,

    -- ** DatabasesListResponse
    DatabasesListResponse (..),
    newDatabasesListResponse,

    -- ** DemoteContext
    DemoteContext (..),
    newDemoteContext,

    -- ** DemoteMasterConfiguration
    DemoteMasterConfiguration (..),
    newDemoteMasterConfiguration,

    -- ** DemoteMasterContext
    DemoteMasterContext (..),
    newDemoteMasterContext,

    -- ** DemoteMasterMySqlReplicaConfiguration
    DemoteMasterMySqlReplicaConfiguration (..),
    newDemoteMasterMySqlReplicaConfiguration,

    -- ** DenyMaintenancePeriod
    DenyMaintenancePeriod (..),
    newDenyMaintenancePeriod,

    -- ** DiskEncryptionConfiguration
    DiskEncryptionConfiguration (..),
    newDiskEncryptionConfiguration,

    -- ** DiskEncryptionStatus
    DiskEncryptionStatus (..),
    newDiskEncryptionStatus,

    -- ** DnsNameMapping
    DnsNameMapping (..),
    newDnsNameMapping,

    -- ** DnsNameMapping_ConnectionType
    DnsNameMapping_ConnectionType (..),

    -- ** DnsNameMapping_DnsScope
    DnsNameMapping_DnsScope (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ExportContext
    ExportContext (..),
    newExportContext,

    -- ** ExportContext_BakExportOptions
    ExportContext_BakExportOptions (..),
    newExportContext_BakExportOptions,

    -- ** ExportContext_BakExportOptions_BakType
    ExportContext_BakExportOptions_BakType (..),

    -- ** ExportContext_CsvExportOptions
    ExportContext_CsvExportOptions (..),
    newExportContext_CsvExportOptions,

    -- ** ExportContext_FileType
    ExportContext_FileType (..),

    -- ** ExportContext_SqlExportOptions
    ExportContext_SqlExportOptions (..),
    newExportContext_SqlExportOptions,

    -- ** ExportContext_SqlExportOptions_MysqlExportOptions
    ExportContext_SqlExportOptions_MysqlExportOptions (..),
    newExportContext_SqlExportOptions_MysqlExportOptions,

    -- ** ExportContext_SqlExportOptions_PostgresExportOptions
    ExportContext_SqlExportOptions_PostgresExportOptions (..),
    newExportContext_SqlExportOptions_PostgresExportOptions,

    -- ** ExportContext_TdeExportOptions
    ExportContext_TdeExportOptions (..),
    newExportContext_TdeExportOptions,

    -- ** ExternalSyncSelectedObject
    ExternalSyncSelectedObject (..),
    newExternalSyncSelectedObject,

    -- ** FailoverContext
    FailoverContext (..),
    newFailoverContext,

    -- ** Flag
    Flag (..),
    newFlag,

    -- ** Flag_AppliesToItem
    Flag_AppliesToItem (..),

    -- ** Flag_Type
    Flag_Type (..),

    -- ** FlagsListResponse
    FlagsListResponse (..),
    newFlagsListResponse,

    -- ** GeminiInstanceConfig
    GeminiInstanceConfig (..),
    newGeminiInstanceConfig,

    -- ** GenerateEphemeralCertRequest
    GenerateEphemeralCertRequest (..),
    newGenerateEphemeralCertRequest,

    -- ** GenerateEphemeralCertResponse
    GenerateEphemeralCertResponse (..),
    newGenerateEphemeralCertResponse,

    -- ** ImportContext
    ImportContext (..),
    newImportContext,

    -- ** ImportContext_BakImportOptions
    ImportContext_BakImportOptions (..),
    newImportContext_BakImportOptions,

    -- ** ImportContext_BakImportOptions_BakType
    ImportContext_BakImportOptions_BakType (..),

    -- ** ImportContext_BakImportOptions_EncryptionOptions
    ImportContext_BakImportOptions_EncryptionOptions (..),
    newImportContext_BakImportOptions_EncryptionOptions,

    -- ** ImportContext_CsvImportOptions
    ImportContext_CsvImportOptions (..),
    newImportContext_CsvImportOptions,

    -- ** ImportContext_FileType
    ImportContext_FileType (..),

    -- ** ImportContext_SqlImportOptions
    ImportContext_SqlImportOptions (..),
    newImportContext_SqlImportOptions,

    -- ** ImportContext_SqlImportOptions_PostgresImportOptions
    ImportContext_SqlImportOptions_PostgresImportOptions (..),
    newImportContext_SqlImportOptions_PostgresImportOptions,

    -- ** ImportContext_TdeImportOptions
    ImportContext_TdeImportOptions (..),
    newImportContext_TdeImportOptions,

    -- ** InsightsConfig
    InsightsConfig (..),
    newInsightsConfig,

    -- ** InstanceReference
    InstanceReference (..),
    newInstanceReference,

    -- ** InstancesAcquireSsrsLeaseRequest
    InstancesAcquireSsrsLeaseRequest (..),
    newInstancesAcquireSsrsLeaseRequest,

    -- ** InstancesCloneRequest
    InstancesCloneRequest (..),
    newInstancesCloneRequest,

    -- ** InstancesDemoteMasterRequest
    InstancesDemoteMasterRequest (..),
    newInstancesDemoteMasterRequest,

    -- ** InstancesDemoteRequest
    InstancesDemoteRequest (..),
    newInstancesDemoteRequest,

    -- ** InstancesExportRequest
    InstancesExportRequest (..),
    newInstancesExportRequest,

    -- ** InstancesFailoverRequest
    InstancesFailoverRequest (..),
    newInstancesFailoverRequest,

    -- ** InstancesImportRequest
    InstancesImportRequest (..),
    newInstancesImportRequest,

    -- ** InstancesListResponse
    InstancesListResponse (..),
    newInstancesListResponse,

    -- ** InstancesListServerCasResponse
    InstancesListServerCasResponse (..),
    newInstancesListServerCasResponse,

    -- ** InstancesListServerCertificatesResponse
    InstancesListServerCertificatesResponse (..),
    newInstancesListServerCertificatesResponse,

    -- ** InstancesReencryptRequest
    InstancesReencryptRequest (..),
    newInstancesReencryptRequest,

    -- ** InstancesRestoreBackupRequest
    InstancesRestoreBackupRequest (..),
    newInstancesRestoreBackupRequest,

    -- ** InstancesRotateServerCaRequest
    InstancesRotateServerCaRequest (..),
    newInstancesRotateServerCaRequest,

    -- ** InstancesRotateServerCertificateRequest
    InstancesRotateServerCertificateRequest (..),
    newInstancesRotateServerCertificateRequest,

    -- ** InstancesTruncateLogRequest
    InstancesTruncateLogRequest (..),
    newInstancesTruncateLogRequest,

    -- ** Interval
    Interval (..),
    newInterval,

    -- ** IpConfiguration
    IpConfiguration (..),
    newIpConfiguration,

    -- ** IpConfiguration_ServerCaMode
    IpConfiguration_ServerCaMode (..),

    -- ** IpConfiguration_SslMode
    IpConfiguration_SslMode (..),

    -- ** IpMapping
    IpMapping (..),
    newIpMapping,

    -- ** IpMapping_Type
    IpMapping_Type (..),

    -- ** ListBackupsResponse
    ListBackupsResponse (..),
    newListBackupsResponse,

    -- ** LocationPreference
    LocationPreference (..),
    newLocationPreference,

    -- ** MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- ** MaintenanceWindow_UpdateTrack
    MaintenanceWindow_UpdateTrack (..),

    -- ** MySqlReplicaConfiguration
    MySqlReplicaConfiguration (..),
    newMySqlReplicaConfiguration,

    -- ** MySqlSyncConfig
    MySqlSyncConfig (..),
    newMySqlSyncConfig,

    -- ** OnPremisesConfiguration
    OnPremisesConfiguration (..),
    newOnPremisesConfiguration,

    -- ** OnPremisesConfiguration_SslOption
    OnPremisesConfiguration_SslOption (..),

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_OperationType
    Operation_OperationType (..),

    -- ** Operation_Status
    Operation_Status (..),

    -- ** OperationError
    OperationError (..),
    newOperationError,

    -- ** OperationErrors
    OperationErrors (..),
    newOperationErrors,

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** OperationsListResponse
    OperationsListResponse (..),
    newOperationsListResponse,

    -- ** PasswordStatus
    PasswordStatus (..),
    newPasswordStatus,

    -- ** PasswordValidationPolicy
    PasswordValidationPolicy (..),
    newPasswordValidationPolicy,

    -- ** PasswordValidationPolicy_Complexity
    PasswordValidationPolicy_Complexity (..),

    -- ** PerformDiskShrinkContext
    PerformDiskShrinkContext (..),
    newPerformDiskShrinkContext,

    -- ** PscAutoConnectionConfig
    PscAutoConnectionConfig (..),
    newPscAutoConnectionConfig,

    -- ** PscConfig
    PscConfig (..),
    newPscConfig,

    -- ** ReplicaConfiguration
    ReplicaConfiguration (..),
    newReplicaConfiguration,

    -- ** ReplicationCluster
    ReplicationCluster (..),
    newReplicationCluster,

    -- ** Reschedule
    Reschedule (..),
    newReschedule,

    -- ** Reschedule_RescheduleType
    Reschedule_RescheduleType (..),

    -- ** RestoreBackupContext
    RestoreBackupContext (..),
    newRestoreBackupContext,

    -- ** RotateServerCaContext
    RotateServerCaContext (..),
    newRotateServerCaContext,

    -- ** RotateServerCertificateContext
    RotateServerCertificateContext (..),
    newRotateServerCertificateContext,

    -- ** SelectedObjects
    SelectedObjects (..),
    newSelectedObjects,

    -- ** Settings
    Settings (..),
    newSettings,

    -- ** Settings_ActivationPolicy
    Settings_ActivationPolicy (..),

    -- ** Settings_AvailabilityType
    Settings_AvailabilityType (..),

    -- ** Settings_ConnectorEnforcement
    Settings_ConnectorEnforcement (..),

    -- ** Settings_DataDiskType
    Settings_DataDiskType (..),

    -- ** Settings_Edition
    Settings_Edition (..),

    -- ** Settings_PricingPlan
    Settings_PricingPlan (..),

    -- ** Settings_ReplicationType
    Settings_ReplicationType (..),

    -- ** Settings_UserLabels
    Settings_UserLabels (..),
    newSettings_UserLabels,

    -- ** SqlActiveDirectoryConfig
    SqlActiveDirectoryConfig (..),
    newSqlActiveDirectoryConfig,

    -- ** SqlExternalSyncSettingError
    SqlExternalSyncSettingError (..),
    newSqlExternalSyncSettingError,

    -- ** SqlExternalSyncSettingError_Type
    SqlExternalSyncSettingError_Type (..),

    -- ** SqlInstancesAcquireSsrsLeaseResponse
    SqlInstancesAcquireSsrsLeaseResponse (..),
    newSqlInstancesAcquireSsrsLeaseResponse,

    -- ** SqlInstancesGetDiskShrinkConfigResponse
    SqlInstancesGetDiskShrinkConfigResponse (..),
    newSqlInstancesGetDiskShrinkConfigResponse,

    -- ** SqlInstancesGetLatestRecoveryTimeResponse
    SqlInstancesGetLatestRecoveryTimeResponse (..),
    newSqlInstancesGetLatestRecoveryTimeResponse,

    -- ** SqlInstancesReleaseSsrsLeaseResponse
    SqlInstancesReleaseSsrsLeaseResponse (..),
    newSqlInstancesReleaseSsrsLeaseResponse,

    -- ** SqlInstancesRescheduleMaintenanceRequestBody
    SqlInstancesRescheduleMaintenanceRequestBody (..),
    newSqlInstancesRescheduleMaintenanceRequestBody,

    -- ** SqlInstancesResetReplicaSizeRequest
    SqlInstancesResetReplicaSizeRequest (..),
    newSqlInstancesResetReplicaSizeRequest,

    -- ** SqlInstancesStartExternalSyncRequest
    SqlInstancesStartExternalSyncRequest (..),
    newSqlInstancesStartExternalSyncRequest,

    -- ** SqlInstancesStartExternalSyncRequest_MigrationType
    SqlInstancesStartExternalSyncRequest_MigrationType (..),

    -- ** SqlInstancesStartExternalSyncRequest_SyncMode
    SqlInstancesStartExternalSyncRequest_SyncMode (..),

    -- ** SqlInstancesStartExternalSyncRequest_SyncParallelLevel
    SqlInstancesStartExternalSyncRequest_SyncParallelLevel (..),

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest
    SqlInstancesVerifyExternalSyncSettingsRequest (..),
    newSqlInstancesVerifyExternalSyncSettingsRequest,

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType
    SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType (..),

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
    SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode (..),

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel
    SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel (..),

    -- ** SqlInstancesVerifyExternalSyncSettingsResponse
    SqlInstancesVerifyExternalSyncSettingsResponse (..),
    newSqlInstancesVerifyExternalSyncSettingsResponse,

    -- ** SqlOutOfDiskReport
    SqlOutOfDiskReport (..),
    newSqlOutOfDiskReport,

    -- ** SqlOutOfDiskReport_SqlOutOfDiskState
    SqlOutOfDiskReport_SqlOutOfDiskState (..),

    -- ** SqlScheduledMaintenance
    SqlScheduledMaintenance (..),
    newSqlScheduledMaintenance,

    -- ** SqlServerAuditConfig
    SqlServerAuditConfig (..),
    newSqlServerAuditConfig,

    -- ** SqlServerDatabaseDetails
    SqlServerDatabaseDetails (..),
    newSqlServerDatabaseDetails,

    -- ** SqlServerUserDetails
    SqlServerUserDetails (..),
    newSqlServerUserDetails,

    -- ** SqlSubOperationType
    SqlSubOperationType (..),
    newSqlSubOperationType,

    -- ** SqlSubOperationType_MaintenanceType
    SqlSubOperationType_MaintenanceType (..),

    -- ** SslCert
    SslCert (..),
    newSslCert,

    -- ** SslCertDetail
    SslCertDetail (..),
    newSslCertDetail,

    -- ** SslCertsCreateEphemeralRequest
    SslCertsCreateEphemeralRequest (..),
    newSslCertsCreateEphemeralRequest,

    -- ** SslCertsInsertRequest
    SslCertsInsertRequest (..),
    newSslCertsInsertRequest,

    -- ** SslCertsInsertResponse
    SslCertsInsertResponse (..),
    newSslCertsInsertResponse,

    -- ** SslCertsListResponse
    SslCertsListResponse (..),
    newSslCertsListResponse,

    -- ** SyncFlags
    SyncFlags (..),
    newSyncFlags,

    -- ** Tier
    Tier (..),
    newTier,

    -- ** TiersListResponse
    TiersListResponse (..),
    newTiersListResponse,

    -- ** TruncateLogContext
    TruncateLogContext (..),
    newTruncateLogContext,

    -- ** User
    User (..),
    newUser,

    -- ** User_DualPasswordType
    User_DualPasswordType (..),

    -- ** User_Type
    User_Type (..),

    -- ** UserPasswordValidationPolicy
    UserPasswordValidationPolicy (..),
    newUserPasswordValidationPolicy,

    -- ** UsersListResponse
    UsersListResponse (..),
    newUsersListResponse,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Internal.Product
import Gogol.SQLAdmin.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud SQL Admin API. This contains the host and root path used as a starting point for constructing service requests.
sQLAdminService :: Core.ServiceConfig
sQLAdminService =
  Core.defaultService
    (Core.ServiceId "sqladmin:v1")
    "sqladmin.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | Manage your Google SQL Service instances
type Sqlservice'Admin =
  "https://www.googleapis.com/auth/sqlservice.admin"
