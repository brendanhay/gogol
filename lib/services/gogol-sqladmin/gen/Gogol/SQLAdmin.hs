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
    , cloudPlatformScope
    , sqlserviceAdminScope

    -- * Resources

    -- ** sql.backupRuns.delete
    , SqlBackupRunsDeleteResource
    , newSqlBackupRunsDelete
    , SqlBackupRunsDelete

    -- ** sql.backupRuns.get
    , SqlBackupRunsGetResource
    , newSqlBackupRunsGet
    , SqlBackupRunsGet

    -- ** sql.backupRuns.insert
    , SqlBackupRunsInsertResource
    , newSqlBackupRunsInsert
    , SqlBackupRunsInsert

    -- ** sql.backupRuns.list
    , SqlBackupRunsListResource
    , newSqlBackupRunsList
    , SqlBackupRunsList

    -- ** sql.connect.generateEphemeral
    , SqlConnectGenerateEphemeralResource
    , newSqlConnectGenerateEphemeral
    , SqlConnectGenerateEphemeral

    -- ** sql.connect.get
    , SqlConnectGetResource
    , newSqlConnectGet
    , SqlConnectGet

    -- ** sql.databases.delete
    , SqlDatabasesDeleteResource
    , newSqlDatabasesDelete
    , SqlDatabasesDelete

    -- ** sql.databases.get
    , SqlDatabasesGetResource
    , newSqlDatabasesGet
    , SqlDatabasesGet

    -- ** sql.databases.insert
    , SqlDatabasesInsertResource
    , newSqlDatabasesInsert
    , SqlDatabasesInsert

    -- ** sql.databases.list
    , SqlDatabasesListResource
    , newSqlDatabasesList
    , SqlDatabasesList

    -- ** sql.databases.patch
    , SqlDatabasesPatchResource
    , newSqlDatabasesPatch
    , SqlDatabasesPatch

    -- ** sql.databases.update
    , SqlDatabasesUpdateResource
    , newSqlDatabasesUpdate
    , SqlDatabasesUpdate

    -- ** sql.flags.list
    , SqlFlagsListResource
    , newSqlFlagsList
    , SqlFlagsList

    -- ** sql.instances.addServerCa
    , SqlInstancesAddServerCaResource
    , newSqlInstancesAddServerCa
    , SqlInstancesAddServerCa

    -- ** sql.instances.clone
    , SqlInstancesCloneResource
    , newSqlInstancesClone
    , SqlInstancesClone

    -- ** sql.instances.delete
    , SqlInstancesDeleteResource
    , newSqlInstancesDelete
    , SqlInstancesDelete

    -- ** sql.instances.demoteMaster
    , SqlInstancesDemoteMasterResource
    , newSqlInstancesDemoteMaster
    , SqlInstancesDemoteMaster

    -- ** sql.instances.export
    , SqlInstancesExportResource
    , newSqlInstancesExport
    , SqlInstancesExport

    -- ** sql.instances.failover
    , SqlInstancesFailoverResource
    , newSqlInstancesFailover
    , SqlInstancesFailover

    -- ** sql.instances.get
    , SqlInstancesGetResource
    , newSqlInstancesGet
    , SqlInstancesGet

    -- ** sql.instances.import
    , SqlInstancesImportResource
    , newSqlInstancesImport
    , SqlInstancesImport

    -- ** sql.instances.insert
    , SqlInstancesInsertResource
    , newSqlInstancesInsert
    , SqlInstancesInsert

    -- ** sql.instances.list
    , SqlInstancesListResource
    , newSqlInstancesList
    , SqlInstancesList

    -- ** sql.instances.listServerCas
    , SqlInstancesListServerCasResource
    , newSqlInstancesListServerCas
    , SqlInstancesListServerCas

    -- ** sql.instances.patch
    , SqlInstancesPatchResource
    , newSqlInstancesPatch
    , SqlInstancesPatch

    -- ** sql.instances.promoteReplica
    , SqlInstancesPromoteReplicaResource
    , newSqlInstancesPromoteReplica
    , SqlInstancesPromoteReplica

    -- ** sql.instances.resetSslConfig
    , SqlInstancesResetSslConfigResource
    , newSqlInstancesResetSslConfig
    , SqlInstancesResetSslConfig

    -- ** sql.instances.restart
    , SqlInstancesRestartResource
    , newSqlInstancesRestart
    , SqlInstancesRestart

    -- ** sql.instances.restoreBackup
    , SqlInstancesRestoreBackupResource
    , newSqlInstancesRestoreBackup
    , SqlInstancesRestoreBackup

    -- ** sql.instances.rotateServerCa
    , SqlInstancesRotateServerCaResource
    , newSqlInstancesRotateServerCa
    , SqlInstancesRotateServerCa

    -- ** sql.instances.startReplica
    , SqlInstancesStartReplicaResource
    , newSqlInstancesStartReplica
    , SqlInstancesStartReplica

    -- ** sql.instances.stopReplica
    , SqlInstancesStopReplicaResource
    , newSqlInstancesStopReplica
    , SqlInstancesStopReplica

    -- ** sql.instances.truncateLog
    , SqlInstancesTruncateLogResource
    , newSqlInstancesTruncateLog
    , SqlInstancesTruncateLog

    -- ** sql.instances.update
    , SqlInstancesUpdateResource
    , newSqlInstancesUpdate
    , SqlInstancesUpdate

    -- ** sql.operations.get
    , SqlOperationsGetResource
    , newSqlOperationsGet
    , SqlOperationsGet

    -- ** sql.operations.list
    , SqlOperationsListResource
    , newSqlOperationsList
    , SqlOperationsList

    -- ** sql.projects.instances.rescheduleMaintenance
    , SqlProjectsInstancesRescheduleMaintenanceResource
    , newSqlProjectsInstancesRescheduleMaintenance
    , SqlProjectsInstancesRescheduleMaintenance

    -- ** sql.projects.instances.startExternalSync
    , SqlProjectsInstancesStartExternalSyncResource
    , newSqlProjectsInstancesStartExternalSync
    , SqlProjectsInstancesStartExternalSync

    -- ** sql.projects.instances.verifyExternalSyncSettings
    , SqlProjectsInstancesVerifyExternalSyncSettingsResource
    , newSqlProjectsInstancesVerifyExternalSyncSettings
    , SqlProjectsInstancesVerifyExternalSyncSettings

    -- ** sql.sslCerts.createEphemeral
    , SqlSslCertsCreateEphemeralResource
    , newSqlSslCertsCreateEphemeral
    , SqlSslCertsCreateEphemeral

    -- ** sql.sslCerts.delete
    , SqlSslCertsDeleteResource
    , newSqlSslCertsDelete
    , SqlSslCertsDelete

    -- ** sql.sslCerts.get
    , SqlSslCertsGetResource
    , newSqlSslCertsGet
    , SqlSslCertsGet

    -- ** sql.sslCerts.insert
    , SqlSslCertsInsertResource
    , newSqlSslCertsInsert
    , SqlSslCertsInsert

    -- ** sql.sslCerts.list
    , SqlSslCertsListResource
    , newSqlSslCertsList
    , SqlSslCertsList

    -- ** sql.tiers.list
    , SqlTiersListResource
    , newSqlTiersList
    , SqlTiersList

    -- ** sql.users.delete
    , SqlUsersDeleteResource
    , newSqlUsersDelete
    , SqlUsersDelete

    -- ** sql.users.insert
    , SqlUsersInsertResource
    , newSqlUsersInsert
    , SqlUsersInsert

    -- ** sql.users.list
    , SqlUsersListResource
    , newSqlUsersList
    , SqlUsersList

    -- ** sql.users.update
    , SqlUsersUpdateResource
    , newSqlUsersUpdate
    , SqlUsersUpdate

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AclEntry
    , AclEntry (..)
    , newAclEntry

    -- ** ApiWarning
    , ApiWarning (..)
    , newApiWarning

    -- ** ApiWarning_Code
    , ApiWarning_Code (..)

    -- ** BackupConfiguration
    , BackupConfiguration (..)
    , newBackupConfiguration

    -- ** BackupContext
    , BackupContext (..)
    , newBackupContext

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

    -- ** DatabaseInstance_State
    , DatabaseInstance_State (..)

    -- ** DatabaseInstance_SuspensionReasonItem
    , DatabaseInstance_SuspensionReasonItem (..)

    -- ** DatabasesListResponse
    , DatabasesListResponse (..)
    , newDatabasesListResponse

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

    -- ** ExportContext
    , ExportContext (..)
    , newExportContext

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

    -- ** ImportContext_BakImportOptions_EncryptionOptions
    , ImportContext_BakImportOptions_EncryptionOptions (..)
    , newImportContext_BakImportOptions_EncryptionOptions

    -- ** ImportContext_CsvImportOptions
    , ImportContext_CsvImportOptions (..)
    , newImportContext_CsvImportOptions

    -- ** ImportContext_FileType
    , ImportContext_FileType (..)

    -- ** InsightsConfig
    , InsightsConfig (..)
    , newInsightsConfig

    -- ** InstanceReference
    , InstanceReference (..)
    , newInstanceReference

    -- ** InstancesCloneRequest
    , InstancesCloneRequest (..)
    , newInstancesCloneRequest

    -- ** InstancesDemoteMasterRequest
    , InstancesDemoteMasterRequest (..)
    , newInstancesDemoteMasterRequest

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

    -- ** InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest (..)
    , newInstancesRestoreBackupRequest

    -- ** InstancesRotateServerCaRequest
    , InstancesRotateServerCaRequest (..)
    , newInstancesRotateServerCaRequest

    -- ** InstancesTruncateLogRequest
    , InstancesTruncateLogRequest (..)
    , newInstancesTruncateLogRequest

    -- ** IpConfiguration
    , IpConfiguration (..)
    , newIpConfiguration

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

    -- ** ReplicaConfiguration
    , ReplicaConfiguration (..)
    , newReplicaConfiguration

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

    -- ** Settings
    , Settings (..)
    , newSettings

    -- ** Settings_ActivationPolicy
    , Settings_ActivationPolicy (..)

    -- ** Settings_AvailabilityType
    , Settings_AvailabilityType (..)

    -- ** Settings_DataDiskType
    , Settings_DataDiskType (..)

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

    -- ** SqlInstancesRescheduleMaintenanceRequestBody
    , SqlInstancesRescheduleMaintenanceRequestBody (..)
    , newSqlInstancesRescheduleMaintenanceRequestBody

    -- ** SqlInstancesStartExternalSyncRequest
    , SqlInstancesStartExternalSyncRequest (..)
    , newSqlInstancesStartExternalSyncRequest

    -- ** SqlInstancesStartExternalSyncRequest_SyncMode
    , SqlInstancesStartExternalSyncRequest_SyncMode (..)

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest
    , SqlInstancesVerifyExternalSyncSettingsRequest (..)
    , newSqlInstancesVerifyExternalSyncSettingsRequest

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
    , SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode (..)

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
import Gogol.SQLAdmin.Sql.Instances.AddServerCa
import Gogol.SQLAdmin.Sql.Instances.Clone
import Gogol.SQLAdmin.Sql.Instances.Delete
import Gogol.SQLAdmin.Sql.Instances.DemoteMaster
import Gogol.SQLAdmin.Sql.Instances.Export
import Gogol.SQLAdmin.Sql.Instances.Failover
import Gogol.SQLAdmin.Sql.Instances.Get
import Gogol.SQLAdmin.Sql.Instances.Import
import Gogol.SQLAdmin.Sql.Instances.Insert
import Gogol.SQLAdmin.Sql.Instances.List
import Gogol.SQLAdmin.Sql.Instances.ListServerCas
import Gogol.SQLAdmin.Sql.Instances.Patch
import Gogol.SQLAdmin.Sql.Instances.PromoteReplica
import Gogol.SQLAdmin.Sql.Instances.ResetSslConfig
import Gogol.SQLAdmin.Sql.Instances.Restart
import Gogol.SQLAdmin.Sql.Instances.RestoreBackup
import Gogol.SQLAdmin.Sql.Instances.RotateServerCa
import Gogol.SQLAdmin.Sql.Instances.StartReplica
import Gogol.SQLAdmin.Sql.Instances.StopReplica
import Gogol.SQLAdmin.Sql.Instances.TruncateLog
import Gogol.SQLAdmin.Sql.Instances.Update
import Gogol.SQLAdmin.Sql.Operations.Get
import Gogol.SQLAdmin.Sql.Operations.List
import Gogol.SQLAdmin.Sql.Projects.Instances.RescheduleMaintenance
import Gogol.SQLAdmin.Sql.Projects.Instances.StartExternalSync
import Gogol.SQLAdmin.Sql.Projects.Instances.VerifyExternalSyncSettings
import Gogol.SQLAdmin.Sql.SslCerts.CreateEphemeral
import Gogol.SQLAdmin.Sql.SslCerts.Delete
import Gogol.SQLAdmin.Sql.SslCerts.Get
import Gogol.SQLAdmin.Sql.SslCerts.Insert
import Gogol.SQLAdmin.Sql.SslCerts.List
import Gogol.SQLAdmin.Sql.Tiers.List
import Gogol.SQLAdmin.Sql.Users.Delete
import Gogol.SQLAdmin.Sql.Users.Insert
import Gogol.SQLAdmin.Sql.Users.List
import Gogol.SQLAdmin.Sql.Users.Update
import Gogol.SQLAdmin.Types
