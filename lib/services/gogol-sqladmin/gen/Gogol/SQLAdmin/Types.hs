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
-- Module      : Gogol.SQLAdmin.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SQLAdmin.Types
  ( -- * Configuration
    sQLAdminService,

    -- * OAuth Scopes
    cloudPlatformScope,
    sqlserviceAdminScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AclEntry
    AclEntry (..),
    newAclEntry,

    -- ** ApiWarning
    ApiWarning (..),
    newApiWarning,

    -- ** ApiWarning_Code
    ApiWarning_Code (..),

    -- ** BackupConfiguration
    BackupConfiguration (..),
    newBackupConfiguration,

    -- ** BackupContext
    BackupContext (..),
    newBackupContext,

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

    -- ** DatabaseInstance_State
    DatabaseInstance_State (..),

    -- ** DatabaseInstance_SuspensionReasonItem
    DatabaseInstance_SuspensionReasonItem (..),

    -- ** DatabasesListResponse
    DatabasesListResponse (..),
    newDatabasesListResponse,

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

    -- ** ExportContext
    ExportContext (..),
    newExportContext,

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

    -- ** ImportContext_BakImportOptions_EncryptionOptions
    ImportContext_BakImportOptions_EncryptionOptions (..),
    newImportContext_BakImportOptions_EncryptionOptions,

    -- ** ImportContext_CsvImportOptions
    ImportContext_CsvImportOptions (..),
    newImportContext_CsvImportOptions,

    -- ** ImportContext_FileType
    ImportContext_FileType (..),

    -- ** InsightsConfig
    InsightsConfig (..),
    newInsightsConfig,

    -- ** InstanceReference
    InstanceReference (..),
    newInstanceReference,

    -- ** InstancesCloneRequest
    InstancesCloneRequest (..),
    newInstancesCloneRequest,

    -- ** InstancesDemoteMasterRequest
    InstancesDemoteMasterRequest (..),
    newInstancesDemoteMasterRequest,

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

    -- ** InstancesRestoreBackupRequest
    InstancesRestoreBackupRequest (..),
    newInstancesRestoreBackupRequest,

    -- ** InstancesRotateServerCaRequest
    InstancesRotateServerCaRequest (..),
    newInstancesRotateServerCaRequest,

    -- ** InstancesTruncateLogRequest
    InstancesTruncateLogRequest (..),
    newInstancesTruncateLogRequest,

    -- ** IpConfiguration
    IpConfiguration (..),
    newIpConfiguration,

    -- ** IpMapping
    IpMapping (..),
    newIpMapping,

    -- ** IpMapping_Type
    IpMapping_Type (..),

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

    -- ** ReplicaConfiguration
    ReplicaConfiguration (..),
    newReplicaConfiguration,

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

    -- ** Settings
    Settings (..),
    newSettings,

    -- ** Settings_ActivationPolicy
    Settings_ActivationPolicy (..),

    -- ** Settings_AvailabilityType
    Settings_AvailabilityType (..),

    -- ** Settings_DataDiskType
    Settings_DataDiskType (..),

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

    -- ** SqlInstancesRescheduleMaintenanceRequestBody
    SqlInstancesRescheduleMaintenanceRequestBody (..),
    newSqlInstancesRescheduleMaintenanceRequestBody,

    -- ** SqlInstancesStartExternalSyncRequest
    SqlInstancesStartExternalSyncRequest (..),
    newSqlInstancesStartExternalSyncRequest,

    -- ** SqlInstancesStartExternalSyncRequest_SyncMode
    SqlInstancesStartExternalSyncRequest_SyncMode (..),

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest
    SqlInstancesVerifyExternalSyncSettingsRequest (..),
    newSqlInstancesVerifyExternalSyncSettingsRequest,

    -- ** SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode
    SqlInstancesVerifyExternalSyncSettingsRequest_SyncMode (..),

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

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Internal.Product
import Gogol.SQLAdmin.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud SQL Admin API. This contains the host and root path used as a starting point for constructing service requests.
sQLAdminService :: Core.ServiceConfig
sQLAdminService =
  Core.defaultService
    (Core.ServiceId "sqladmin:v1")
    "sqladmin.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | Manage your Google SQL Service instances
sqlserviceAdminScope :: Core.Proxy '["https://www.googleapis.com/auth/sqlservice.admin"]
sqlserviceAdminScope = Core.Proxy
