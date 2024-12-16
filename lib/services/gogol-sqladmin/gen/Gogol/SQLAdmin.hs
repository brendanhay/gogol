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
-- Module      : Gogol.SQLAdmin
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for Cloud SQL database instance management
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference>
module Gogol.SQLAdmin
    (
    -- * Configuration
      sQLAdminService

    -- * OAuth Scopes
    , CloudPlatform'FullControl
    , Sqlservice'Admin

    -- * Resources

    -- ** sql.backupRuns.delete
    , SqlBackupRunsDeleteResource
    , SqlBackupRunsDelete (..)
    , newSqlBackupRunsDelete

    -- ** sql.backupRuns.get
    , SqlBackupRunsGetResource
    , SqlBackupRunsGet (..)
    , newSqlBackupRunsGet

    -- ** sql.backupRuns.insert
    , SqlBackupRunsInsertResource
    , SqlBackupRunsInsert (..)
    , newSqlBackupRunsInsert

    -- ** sql.backupRuns.list
    , SqlBackupRunsListResource
    , SqlBackupRunsList (..)
    , newSqlBackupRunsList

    -- ** sql.connect.generateEphemeral
    , SqlConnectGenerateEphemeralResource
    , SqlConnectGenerateEphemeral (..)
    , newSqlConnectGenerateEphemeral

    -- ** sql.connect.get
    , SqlConnectGetResource
    , SqlConnectGet (..)
    , newSqlConnectGet

    -- ** sql.databases.delete
    , SqlDatabasesDeleteResource
    , SqlDatabasesDelete (..)
    , newSqlDatabasesDelete

    -- ** sql.databases.get
    , SqlDatabasesGetResource
    , SqlDatabasesGet (..)
    , newSqlDatabasesGet

    -- ** sql.databases.insert
    , SqlDatabasesInsertResource
    , SqlDatabasesInsert (..)
    , newSqlDatabasesInsert

    -- ** sql.databases.list
    , SqlDatabasesListResource
    , SqlDatabasesList (..)
    , newSqlDatabasesList

    -- ** sql.databases.patch
    , SqlDatabasesPatchResource
    , SqlDatabasesPatch (..)
    , newSqlDatabasesPatch

    -- ** sql.databases.update
    , SqlDatabasesUpdateResource
    , SqlDatabasesUpdate (..)
    , newSqlDatabasesUpdate

    -- ** sql.flags.list
    , SqlFlagsListResource
    , SqlFlagsList (..)
    , newSqlFlagsList

    -- ** sql.instances.ListServerCertificates
    , SqlInstancesListServerCertificatesResource
    , SqlInstancesListServerCertificates (..)
    , newSqlInstancesListServerCertificates

    -- ** sql.instances.RotateServerCertificate
    , SqlInstancesRotateServerCertificateResource
    , SqlInstancesRotateServerCertificate (..)
    , newSqlInstancesRotateServerCertificate

    -- ** sql.instances.acquireSsrsLease
    , SqlInstancesAcquireSsrsLeaseResource
    , SqlInstancesAcquireSsrsLease (..)
    , newSqlInstancesAcquireSsrsLease

    -- ** sql.instances.addServerCa
    , SqlInstancesAddServerCaResource
    , SqlInstancesAddServerCa (..)
    , newSqlInstancesAddServerCa

    -- ** sql.instances.addServerCertificate
    , SqlInstancesAddServerCertificateResource
    , SqlInstancesAddServerCertificate (..)
    , newSqlInstancesAddServerCertificate

    -- ** sql.instances.clone
    , SqlInstancesCloneResource
    , SqlInstancesClone (..)
    , newSqlInstancesClone

    -- ** sql.instances.delete
    , SqlInstancesDeleteResource
    , SqlInstancesDelete (..)
    , newSqlInstancesDelete

    -- ** sql.instances.demote
    , SqlInstancesDemoteResource
    , SqlInstancesDemote (..)
    , newSqlInstancesDemote

    -- ** sql.instances.demoteMaster
    , SqlInstancesDemoteMasterResource
    , SqlInstancesDemoteMaster (..)
    , newSqlInstancesDemoteMaster

    -- ** sql.instances.export
    , SqlInstancesExportResource
    , SqlInstancesExport (..)
    , newSqlInstancesExport

    -- ** sql.instances.failover
    , SqlInstancesFailoverResource
    , SqlInstancesFailover (..)
    , newSqlInstancesFailover

    -- ** sql.instances.get
    , SqlInstancesGetResource
    , SqlInstancesGet (..)
    , newSqlInstancesGet

    -- ** sql.instances.import
    , SqlInstancesImportResource
    , SqlInstancesImport (..)
    , newSqlInstancesImport

    -- ** sql.instances.insert
    , SqlInstancesInsertResource
    , SqlInstancesInsert (..)
    , newSqlInstancesInsert

    -- ** sql.instances.list
    , SqlInstancesListResource
    , SqlInstancesList (..)
    , newSqlInstancesList

    -- ** sql.instances.listServerCas
    , SqlInstancesListServerCasResource
    , SqlInstancesListServerCas (..)
    , newSqlInstancesListServerCas

    -- ** sql.instances.patch
    , SqlInstancesPatchResource
    , SqlInstancesPatch (..)
    , newSqlInstancesPatch

    -- ** sql.instances.promoteReplica
    , SqlInstancesPromoteReplicaResource
    , SqlInstancesPromoteReplica (..)
    , newSqlInstancesPromoteReplica

    -- ** sql.instances.reencrypt
    , SqlInstancesReencryptResource
    , SqlInstancesReencrypt (..)
    , newSqlInstancesReencrypt

    -- ** sql.instances.releaseSsrsLease
    , SqlInstancesReleaseSsrsLeaseResource
    , SqlInstancesReleaseSsrsLease (..)
    , newSqlInstancesReleaseSsrsLease

    -- ** sql.instances.resetSslConfig
    , SqlInstancesResetSslConfigResource
    , SqlInstancesResetSslConfig (..)
    , newSqlInstancesResetSslConfig

    -- ** sql.instances.restart
    , SqlInstancesRestartResource
    , SqlInstancesRestart (..)
    , newSqlInstancesRestart

    -- ** sql.instances.restoreBackup
    , SqlInstancesRestoreBackupResource
    , SqlInstancesRestoreBackup (..)
    , newSqlInstancesRestoreBackup

    -- ** sql.instances.rotateServerCa
    , SqlInstancesRotateServerCaResource
    , SqlInstancesRotateServerCa (..)
    , newSqlInstancesRotateServerCa

    -- ** sql.instances.startReplica
    , SqlInstancesStartReplicaResource
    , SqlInstancesStartReplica (..)
    , newSqlInstancesStartReplica

    -- ** sql.instances.stopReplica
    , SqlInstancesStopReplicaResource
    , SqlInstancesStopReplica (..)
    , newSqlInstancesStopReplica

    -- ** sql.instances.switchover
    , SqlInstancesSwitchoverResource
    , SqlInstancesSwitchover (..)
    , newSqlInstancesSwitchover

    -- ** sql.instances.truncateLog
    , SqlInstancesTruncateLogResource
    , SqlInstancesTruncateLog (..)
    , newSqlInstancesTruncateLog

    -- ** sql.instances.update
    , SqlInstancesUpdateResource
    , SqlInstancesUpdate (..)
    , newSqlInstancesUpdate

    -- ** sql.operations.cancel
    , SqlOperationsCancelResource
    , SqlOperationsCancel (..)
    , newSqlOperationsCancel

    -- ** sql.operations.get
    , SqlOperationsGetResource
    , SqlOperationsGet (..)
    , newSqlOperationsGet

    -- ** sql.operations.list
    , SqlOperationsListResource
    , SqlOperationsList (..)
    , newSqlOperationsList

    -- ** sql.projects.instances.getDiskShrinkConfig
    , SqlProjectsInstancesGetDiskShrinkConfigResource
    , SqlProjectsInstancesGetDiskShrinkConfig (..)
    , newSqlProjectsInstancesGetDiskShrinkConfig

    -- ** sql.projects.instances.getLatestRecoveryTime
    , SqlProjectsInstancesGetLatestRecoveryTimeResource
    , SqlProjectsInstancesGetLatestRecoveryTime (..)
    , newSqlProjectsInstancesGetLatestRecoveryTime

    -- ** sql.projects.instances.performDiskShrink
    , SqlProjectsInstancesPerformDiskShrinkResource
    , SqlProjectsInstancesPerformDiskShrink (..)
    , newSqlProjectsInstancesPerformDiskShrink

    -- ** sql.projects.instances.rescheduleMaintenance
    , SqlProjectsInstancesRescheduleMaintenanceResource
    , SqlProjectsInstancesRescheduleMaintenance (..)
    , newSqlProjectsInstancesRescheduleMaintenance

    -- ** sql.projects.instances.resetReplicaSize
    , SqlProjectsInstancesResetReplicaSizeResource
    , SqlProjectsInstancesResetReplicaSize (..)
    , newSqlProjectsInstancesResetReplicaSize

    -- ** sql.projects.instances.startExternalSync
    , SqlProjectsInstancesStartExternalSyncResource
    , SqlProjectsInstancesStartExternalSync (..)
    , newSqlProjectsInstancesStartExternalSync

    -- ** sql.projects.instances.verifyExternalSyncSettings
    , SqlProjectsInstancesVerifyExternalSyncSettingsResource
    , SqlProjectsInstancesVerifyExternalSyncSettings (..)
    , newSqlProjectsInstancesVerifyExternalSyncSettings

    -- ** sql.sslCerts.createEphemeral
    , SqlSslCertsCreateEphemeralResource
    , SqlSslCertsCreateEphemeral (..)
    , newSqlSslCertsCreateEphemeral

    -- ** sql.sslCerts.delete
    , SqlSslCertsDeleteResource
    , SqlSslCertsDelete (..)
    , newSqlSslCertsDelete

    -- ** sql.sslCerts.get
    , SqlSslCertsGetResource
    , SqlSslCertsGet (..)
    , newSqlSslCertsGet

    -- ** sql.sslCerts.insert
    , SqlSslCertsInsertResource
    , SqlSslCertsInsert (..)
    , newSqlSslCertsInsert

    -- ** sql.sslCerts.list
    , SqlSslCertsListResource
    , SqlSslCertsList (..)
    , newSqlSslCertsList

    -- ** sql.tiers.list
    , SqlTiersListResource
    , SqlTiersList (..)
    , newSqlTiersList

    -- ** sql.users.delete
    , SqlUsersDeleteResource
    , SqlUsersDelete (..)
    , newSqlUsersDelete

    -- ** sql.users.get
    , SqlUsersGetResource
    , SqlUsersGet (..)
    , newSqlUsersGet

    -- ** sql.users.insert
    , SqlUsersInsertResource
    , SqlUsersInsert (..)
    , newSqlUsersInsert

    -- ** sql.users.list
    , SqlUsersListResource
    , SqlUsersList (..)
    , newSqlUsersList

    -- ** sql.users.update
    , SqlUsersUpdateResource
    , SqlUsersUpdate (..)
    , newSqlUsersUpdate

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AclEntry
    , AclEntry (..)
    , newAclEntry

    -- ** AcquireSsrsLeaseContext
    , AcquireSsrsLeaseContext (..)
    , newAcquireSsrsLeaseContext

    -- ** AdvancedMachineFeatures
    , AdvancedMachineFeatures (..)
    , newAdvancedMachineFeatures

    -- ** ApiWarning
    , ApiWarning (..)
    , newApiWarning

    -- ** ApiWarning_Code
    , ApiWarning_Code (..)

    -- ** AvailableDatabaseVersion
    , AvailableDatabaseVersion (..)
    , newAvailableDatabaseVersion

    -- ** BackupConfiguration
    , BackupConfiguration (..)
    , newBackupConfiguration

    -- ** BackupConfiguration_TransactionalLogStorageState
    , BackupConfiguration_TransactionalLogStorageState (..)

    -- ** BackupContext
    , BackupContext (..)
    , newBackupContext

    -- ** BackupReencryptionConfig
    , BackupReencryptionConfig (..)
    , newBackupReencryptionConfig

    -- ** BackupReencryptionConfig_BackupType
    , BackupReencryptionConfig_BackupType (..)

    -- ** BackupRetentionSettings
    , BackupRetentionSettings (..)
    , newBackupRetentionSettings

    -- ** BackupRetentionSettings_RetentionUnit
    , BackupRetentionSettings_RetentionUnit (..)

    -- ** BackupRun
    , BackupRun (..)
    , newBackupRun

    -- ** BackupRun_BackupKind
    , BackupRun_BackupKind (..)

    -- ** BackupRun_Status
    , BackupRun_Status (..)

    -- ** BackupRun_Type
    , BackupRun_Type (..)

    -- ** BackupRunsListResponse
    , BackupRunsListResponse (..)
    , newBackupRunsListResponse

    -- ** BinLogCoordinates
    , BinLogCoordinates (..)
    , newBinLogCoordinates

    -- ** CloneContext
    , CloneContext (..)
    , newCloneContext

    -- ** ConnectSettings
    , ConnectSettings (..)
    , newConnectSettings

    -- ** ConnectSettings_BackendType
    , ConnectSettings_BackendType (..)

    -- ** ConnectSettings_DatabaseVersion
    , ConnectSettings_DatabaseVersion (..)

    -- ** ConnectSettings_ServerCaMode
    , ConnectSettings_ServerCaMode (..)

    -- ** DataCacheConfig
    , DataCacheConfig (..)
    , newDataCacheConfig

    -- ** Database
    , Database (..)
    , newDatabase

    -- ** DatabaseFlags
    , DatabaseFlags (..)
    , newDatabaseFlags

    -- ** DatabaseInstance
    , DatabaseInstance (..)
    , newDatabaseInstance

    -- ** DatabaseInstance_BackendType
    , DatabaseInstance_BackendType (..)

    -- ** DatabaseInstance_DatabaseVersion
    , DatabaseInstance_DatabaseVersion (..)

    -- ** DatabaseInstance_FailoverReplica
    , DatabaseInstance_FailoverReplica (..)
    , newDatabaseInstance_FailoverReplica

    -- ** DatabaseInstance_InstanceType
    , DatabaseInstance_InstanceType (..)

    -- ** DatabaseInstance_SqlNetworkArchitecture
    , DatabaseInstance_SqlNetworkArchitecture (..)

    -- ** DatabaseInstance_State
    , DatabaseInstance_State (..)

    -- ** DatabaseInstance_SuspensionReasonItem
    , DatabaseInstance_SuspensionReasonItem (..)

    -- ** DatabaseInstance_Tags
    , DatabaseInstance_Tags (..)
    , newDatabaseInstance_Tags

    -- ** DatabasesListResponse
    , DatabasesListResponse (..)
    , newDatabasesListResponse

    -- ** DemoteContext
    , DemoteContext (..)
    , newDemoteContext

    -- ** DemoteMasterConfiguration
    , DemoteMasterConfiguration (..)
    , newDemoteMasterConfiguration

    -- ** DemoteMasterContext
    , DemoteMasterContext (..)
    , newDemoteMasterContext

    -- ** DemoteMasterMySqlReplicaConfiguration
    , DemoteMasterMySqlReplicaConfiguration (..)
    , newDemoteMasterMySqlReplicaConfiguration

    -- ** DenyMaintenancePeriod
    , DenyMaintenancePeriod (..)
    , newDenyMaintenancePeriod

    -- ** DiskEncryptionConfiguration
    , DiskEncryptionConfiguration (..)
    , newDiskEncryptionConfiguration

    -- ** DiskEncryptionStatus
    , DiskEncryptionStatus (..)
    , newDiskEncryptionStatus

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** ExportContext
    , ExportContext (..)
    , newExportContext

    -- ** ExportContext_BakExportOptions
    , ExportContext_BakExportOptions (..)
    , newExportContext_BakExportOptions

    -- ** ExportContext_BakExportOptions_BakType
    , ExportContext_BakExportOptions_BakType (..)

    -- ** ExportContext_CsvExportOptions
    , ExportContext_CsvExportOptions (..)
    , newExportContext_CsvExportOptions

    -- ** ExportContext_FileType
    , ExportContext_FileType (..)

    -- ** ExportContext_SqlExportOptions
    , ExportContext_SqlExportOptions (..)
    , newExportContext_SqlExportOptions

    -- ** ExportContext_SqlExportOptions_MysqlExportOptions
    , ExportContext_SqlExportOptions_MysqlExportOptions (..)
    , newExportContext_SqlExportOptions_MysqlExportOptions

    -- ** ExportContext_SqlExportOptions_PostgresExportOptions
    , ExportContext_SqlExportOptions_PostgresExportOptions (..)
    , newExportContext_SqlExportOptions_PostgresExportOptions

    -- ** ExternalSyncSelectedObject
    , ExternalSyncSelectedObject (..)
    , newExternalSyncSelectedObject

    -- ** FailoverContext
    , FailoverContext (..)
    , newFailoverContext

    -- ** Flag
    , Flag (..)
    , newFlag

    -- ** Flag_AppliesToItem
    , Flag_AppliesToItem (..)

    -- ** Flag_Type
    , Flag_Type (..)

    -- ** FlagsListResponse
    , FlagsListResponse (..)
    , newFlagsListResponse

    -- ** GeminiInstanceConfig
    , GeminiInstanceConfig (..)
    , newGeminiInstanceConfig

    -- ** GenerateEphemeralCertRequest
    , GenerateEphemeralCertRequest (..)
    , newGenerateEphemeralCertRequest

    -- ** GenerateEphemeralCertResponse
    , GenerateEphemeralCertResponse (..)
    , newGenerateEphemeralCertResponse

    -- ** ImportContext
    , ImportContext (..)
    , newImportContext

    -- ** ImportContext_BakImportOptions
    , ImportContext_BakImportOptions (..)
    , newImportContext_BakImportOptions

    -- ** ImportContext_BakImportOptions_BakType
    , ImportContext_BakImportOptions_BakType (..)

    -- ** ImportContext_BakImportOptions_EncryptionOptions
    , ImportContext_BakImportOptions_EncryptionOptions (..)
    , newImportContext_BakImportOptions_EncryptionOptions

    -- ** ImportContext_CsvImportOptions
    , ImportContext_CsvImportOptions (..)
    , newImportContext_CsvImportOptions

    -- ** ImportContext_FileType
    , ImportContext_FileType (..)

    -- ** ImportContext_SqlImportOptions
    , ImportContext_SqlImportOptions (..)
    , newImportContext_SqlImportOptions

    -- ** ImportContext_SqlImportOptions_PostgresImportOptions
    , ImportContext_SqlImportOptions_PostgresImportOptions (..)
    , newImportContext_SqlImportOptions_PostgresImportOptions

    -- ** InsightsConfig
    , InsightsConfig (..)
    , newInsightsConfig

    -- ** InstanceReference
    , InstanceReference (..)
    , newInstanceReference

    -- ** InstancesAcquireSsrsLeaseRequest
    , InstancesAcquireSsrsLeaseRequest (..)
    , newInstancesAcquireSsrsLeaseRequest

    -- ** InstancesCloneRequest
    , InstancesCloneRequest (..)
    , newInstancesCloneRequest

    -- ** InstancesDemoteMasterRequest
    , InstancesDemoteMasterRequest (..)
    , newInstancesDemoteMasterRequest

    -- ** InstancesDemoteRequest
    , InstancesDemoteRequest (..)
    , newInstancesDemoteRequest

    -- ** InstancesExportRequest
    , InstancesExportRequest (..)
    , newInstancesExportRequest

    -- ** InstancesFailoverRequest
    , InstancesFailoverRequest (..)
    , newInstancesFailoverRequest

    -- ** InstancesImportRequest
    , InstancesImportRequest (..)
    , newInstancesImportRequest

    -- ** InstancesListResponse
    , InstancesListResponse (..)
    , newInstancesListResponse

    -- ** InstancesListServerCasResponse
    , InstancesListServerCasResponse (..)
    , newInstancesListServerCasResponse

    -- ** InstancesListServerCertificatesResponse
    , InstancesListServerCertificatesResponse (..)
    , newInstancesListServerCertificatesResponse

    -- ** InstancesReencryptRequest
    , InstancesReencryptRequest (..)
    , newInstancesReencryptRequest

    -- ** InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest (..)
    , newInstancesRestoreBackupRequest

    -- ** InstancesRotateServerCaRequest
    , InstancesRotateServerCaRequest (..)
    , newInstancesRotateServerCaRequest

    -- ** InstancesRotateServerCertificateRequest
    , InstancesRotateServerCertificateRequest (..)
    , newInstancesRotateServerCertificateRequest

    -- ** InstancesTruncateLogRequest
    , InstancesTruncateLogRequest (..)
    , newInstancesTruncateLogRequest

    -- ** IpConfiguration
    , IpConfiguration (..)
    , newIpConfiguration

    -- ** IpConfiguration_ServerCaMode
    , IpConfiguration_ServerCaMode (..)

    -- ** IpConfiguration_SslMode
    , IpConfiguration_SslMode (..)

    -- ** IpMapping
    , IpMapping (..)
    , newIpMapping

    -- ** IpMapping_Type
    , IpMapping_Type (..)

    -- ** LocationPreference
    , LocationPreference (..)
    , newLocationPreference

    -- ** MaintenanceWindow
    , MaintenanceWindow (..)
    , newMaintenanceWindow

    -- ** MaintenanceWindow_UpdateTrack
    , MaintenanceWindow_UpdateTrack (..)

    -- ** MySqlReplicaConfiguration
    , MySqlReplicaConfiguration (..)
    , newMySqlReplicaConfiguration

    -- ** MySqlSyncConfig
    , MySqlSyncConfig (..)
    , newMySqlSyncConfig

    -- ** OnPremisesConfiguration
    , OnPremisesConfiguration (..)
    , newOnPremisesConfiguration

    -- ** OnPremisesConfiguration_SslOption
    , OnPremisesConfiguration_SslOption (..)

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_OperationType
    , Operation_OperationType (..)

    -- ** Operation_Status
    , Operation_Status (..)

    -- ** OperationError
    , OperationError (..)
    , newOperationError

    -- ** OperationErrors
    , OperationErrors (..)
    , newOperationErrors

    -- ** OperationMetadata
    , OperationMetadata (..)
    , newOperationMetadata

    -- ** OperationsListResponse
    , OperationsListResponse (..)
    , newOperationsListResponse

    -- ** PasswordStatus
    , PasswordStatus (..)
    , newPasswordStatus

    -- ** PasswordValidationPolicy
    , PasswordValidationPolicy (..)
    , newPasswordValidationPolicy

    -- ** PasswordValidationPolicy_Complexity
    , PasswordValidationPolicy_Complexity (..)

    -- ** PerformDiskShrinkContext
    , PerformDiskShrinkContext (..)
    , newPerformDiskShrinkContext

    -- ** PscAutoConnectionConfig
    , PscAutoConnectionConfig (..)
    , newPscAutoConnectionConfig

    -- ** PscConfig
    , PscConfig (..)
    , newPscConfig

    -- ** ReplicaConfiguration
    , ReplicaConfiguration (..)
    , newReplicaConfiguration

    -- ** ReplicationCluster
    , ReplicationCluster (..)
    , newReplicationCluster

    -- ** Reschedule
    , Reschedule (..)
    , newReschedule

    -- ** Reschedule_RescheduleType
    , Reschedule_RescheduleType (..)

    -- ** RestoreBackupContext
    , RestoreBackupContext (..)
    , newRestoreBackupContext

    -- ** RotateServerCaContext
    , RotateServerCaContext (..)
    , newRotateServerCaContext

    -- ** RotateServerCertificateContext
    , RotateServerCertificateContext (..)
    , newRotateServerCertificateContext

    -- ** SelectedObjects
    , SelectedObjects (..)
    , newSelectedObjects

    -- ** Settings
    , Settings (..)
    , newSettings

    -- ** Settings_ActivationPolicy
    , Settings_ActivationPolicy (..)

    -- ** Settings_AvailabilityType
    , Settings_AvailabilityType (..)

    -- ** Settings_ConnectorEnforcement
    , Settings_ConnectorEnforcement (..)

    -- ** Settings_DataDiskType
    , Settings_DataDiskType (..)

    -- ** Settings_Edition
    , Settings_Edition (..)

    -- ** Settings_PricingPlan
    , Settings_PricingPlan (..)

    -- ** Settings_ReplicationType
    , Settings_ReplicationType (..)

    -- ** Settings_UserLabels
    , Settings_UserLabels (..)
    , newSettings_UserLabels

    -- ** SqlActiveDirectoryConfig
    , SqlActiveDirectoryConfig (..)
    , newSqlActiveDirectoryConfig

    -- ** SqlExternalSyncSettingError
    , SqlExternalSyncSettingError (..)
    , newSqlExternalSyncSettingError

    -- ** SqlExternalSyncSettingError_Type
    , SqlExternalSyncSettingError_Type (..)

    -- ** SqlInstancesAcquireSsrsLeaseResponse
    , SqlInstancesAcquireSsrsLeaseResponse (..)
    , newSqlInstancesAcquireSsrsLeaseResponse

    -- ** SqlInstancesGetDiskShrinkConfigResponse
    , SqlInstancesGetDiskShrinkConfigResponse (..)
    , newSqlInstancesGetDiskShrinkConfigResponse

    -- ** SqlInstancesGetLatestRecoveryTimeResponse
    , SqlInstancesGetLatestRecoveryTimeResponse (..)
    , newSqlInstancesGetLatestRecoveryTimeResponse

    -- ** SqlInstancesReleaseSsrsLeaseResponse
    , SqlInstancesReleaseSsrsLeaseResponse (..)
    , newSqlInstancesReleaseSsrsLeaseResponse

    -- ** SqlInstancesRescheduleMaintenanceRequestBody
    , SqlInstancesRescheduleMaintenanceRequestBody (..)
    , newSqlInstancesRescheduleMaintenanceRequestBody

    -- ** SqlInstancesResetReplicaSizeRequest
    , SqlInstancesResetReplicaSizeRequest (..)
    , newSqlInstancesResetReplicaSizeRequest

    -- ** SqlInstancesStartExternalSyncRequest
    , SqlInstancesStartExternalSyncRequest (..)
    , newSqlInstancesStartExternalSyncRequest

    -- ** SqlInstancesStartExternalSyncRequest_MigrationType
    , SqlInstancesStartExternalSyncRequest_MigrationType (..)

    -- ** SqlInstancesStartExternalSyncRequest_SyncMode
    , SqlInstancesStartExternalSyncRequest_SyncMode (..)

    -- ** SqlInstancesStartExternalSyncRequest_SyncParallelLevel
    , SqlInstancesStartExternalSyncRequest_SyncParallelLevel (..)

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest
    , SqlInstancesVerifyExternalSyncSettingsRequest (..)
    , newSqlInstancesVerifyExternalSyncSettingsRequest

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType
    , SqlInstancesVerifyExternalSyncSettingsRequest_MigrationType (..)

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
    , SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode (..)

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel
    , SqlInstancesVerifyExternalSyncSettingsRequest_SyncParallelLevel (..)

    -- ** SqlInstancesVerifyExternalSyncSettingsResponse
    , SqlInstancesVerifyExternalSyncSettingsResponse (..)
    , newSqlInstancesVerifyExternalSyncSettingsResponse

    -- ** SqlOutOfDiskReport
    , SqlOutOfDiskReport (..)
    , newSqlOutOfDiskReport

    -- ** SqlOutOfDiskReport_SqlOutOfDiskState
    , SqlOutOfDiskReport_SqlOutOfDiskState (..)

    -- ** SqlScheduledMaintenance
    , SqlScheduledMaintenance (..)
    , newSqlScheduledMaintenance

    -- ** SqlServerAuditConfig
    , SqlServerAuditConfig (..)
    , newSqlServerAuditConfig

    -- ** SqlServerDatabaseDetails
    , SqlServerDatabaseDetails (..)
    , newSqlServerDatabaseDetails

    -- ** SqlServerUserDetails
    , SqlServerUserDetails (..)
    , newSqlServerUserDetails

    -- ** SqlSubOperationType
    , SqlSubOperationType (..)
    , newSqlSubOperationType

    -- ** SqlSubOperationType_MaintenanceType
    , SqlSubOperationType_MaintenanceType (..)

    -- ** SslCert
    , SslCert (..)
    , newSslCert

    -- ** SslCertDetail
    , SslCertDetail (..)
    , newSslCertDetail

    -- ** SslCertsCreateEphemeralRequest
    , SslCertsCreateEphemeralRequest (..)
    , newSslCertsCreateEphemeralRequest

    -- ** SslCertsInsertRequest
    , SslCertsInsertRequest (..)
    , newSslCertsInsertRequest

    -- ** SslCertsInsertResponse
    , SslCertsInsertResponse (..)
    , newSslCertsInsertResponse

    -- ** SslCertsListResponse
    , SslCertsListResponse (..)
    , newSslCertsListResponse

    -- ** SyncFlags
    , SyncFlags (..)
    , newSyncFlags

    -- ** Tier
    , Tier (..)
    , newTier

    -- ** TiersListResponse
    , TiersListResponse (..)
    , newTiersListResponse

    -- ** TruncateLogContext
    , TruncateLogContext (..)
    , newTruncateLogContext

    -- ** User
    , User (..)
    , newUser

    -- ** User_DualPasswordType
    , User_DualPasswordType (..)

    -- ** User_Type
    , User_Type (..)

    -- ** UserPasswordValidationPolicy
    , UserPasswordValidationPolicy (..)
    , newUserPasswordValidationPolicy

    -- ** UsersListResponse
    , UsersListResponse (..)
    , newUsersListResponse
    ) where

import Gogol.SQLAdmin.Sql.BackupRuns.Delete
import Gogol.SQLAdmin.Sql.BackupRuns.Get
import Gogol.SQLAdmin.Sql.BackupRuns.Insert
import Gogol.SQLAdmin.Sql.BackupRuns.List
import Gogol.SQLAdmin.Sql.Connect.GenerateEphemeral
import Gogol.SQLAdmin.Sql.Connect.Get
import Gogol.SQLAdmin.Sql.Databases.Delete
import Gogol.SQLAdmin.Sql.Databases.Get
import Gogol.SQLAdmin.Sql.Databases.Insert
import Gogol.SQLAdmin.Sql.Databases.List
import Gogol.SQLAdmin.Sql.Databases.Patch
import Gogol.SQLAdmin.Sql.Databases.Update
import Gogol.SQLAdmin.Sql.Flags.List
import Gogol.SQLAdmin.Sql.Instances.AcquireSsrsLease
import Gogol.SQLAdmin.Sql.Instances.AddServerCa
import Gogol.SQLAdmin.Sql.Instances.AddServerCertificate
import Gogol.SQLAdmin.Sql.Instances.Clone
import Gogol.SQLAdmin.Sql.Instances.Delete
import Gogol.SQLAdmin.Sql.Instances.Demote
import Gogol.SQLAdmin.Sql.Instances.DemoteMaster
import Gogol.SQLAdmin.Sql.Instances.Export
import Gogol.SQLAdmin.Sql.Instances.Failover
import Gogol.SQLAdmin.Sql.Instances.Get
import Gogol.SQLAdmin.Sql.Instances.Import
import Gogol.SQLAdmin.Sql.Instances.Insert
import Gogol.SQLAdmin.Sql.Instances.List
import Gogol.SQLAdmin.Sql.Instances.ListServerCas
import Gogol.SQLAdmin.Sql.Instances.ListServerCertificates
import Gogol.SQLAdmin.Sql.Instances.Patch
import Gogol.SQLAdmin.Sql.Instances.PromoteReplica
import Gogol.SQLAdmin.Sql.Instances.Reencrypt
import Gogol.SQLAdmin.Sql.Instances.ReleaseSsrsLease
import Gogol.SQLAdmin.Sql.Instances.ResetSslConfig
import Gogol.SQLAdmin.Sql.Instances.Restart
import Gogol.SQLAdmin.Sql.Instances.RestoreBackup
import Gogol.SQLAdmin.Sql.Instances.RotateServerCa
import Gogol.SQLAdmin.Sql.Instances.RotateServerCertificate
import Gogol.SQLAdmin.Sql.Instances.StartReplica
import Gogol.SQLAdmin.Sql.Instances.StopReplica
import Gogol.SQLAdmin.Sql.Instances.Switchover
import Gogol.SQLAdmin.Sql.Instances.TruncateLog
import Gogol.SQLAdmin.Sql.Instances.Update
import Gogol.SQLAdmin.Sql.Operations.Cancel
import Gogol.SQLAdmin.Sql.Operations.Get
import Gogol.SQLAdmin.Sql.Operations.List
import Gogol.SQLAdmin.Sql.Projects.Instances.GetDiskShrinkConfig
import Gogol.SQLAdmin.Sql.Projects.Instances.GetLatestRecoveryTime
import Gogol.SQLAdmin.Sql.Projects.Instances.PerformDiskShrink
import Gogol.SQLAdmin.Sql.Projects.Instances.RescheduleMaintenance
import Gogol.SQLAdmin.Sql.Projects.Instances.ResetReplicaSize
import Gogol.SQLAdmin.Sql.Projects.Instances.StartExternalSync
import Gogol.SQLAdmin.Sql.Projects.Instances.VerifyExternalSyncSettings
import Gogol.SQLAdmin.Sql.SslCerts.CreateEphemeral
import Gogol.SQLAdmin.Sql.SslCerts.Delete
import Gogol.SQLAdmin.Sql.SslCerts.Get
import Gogol.SQLAdmin.Sql.SslCerts.Insert
import Gogol.SQLAdmin.Sql.SslCerts.List
import Gogol.SQLAdmin.Sql.Tiers.List
import Gogol.SQLAdmin.Sql.Users.Delete
import Gogol.SQLAdmin.Sql.Users.Get
import Gogol.SQLAdmin.Sql.Users.Insert
import Gogol.SQLAdmin.Sql.Users.List
import Gogol.SQLAdmin.Sql.Users.Update
import Gogol.SQLAdmin.Types
