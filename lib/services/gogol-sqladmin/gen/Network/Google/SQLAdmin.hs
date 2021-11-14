{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SQLAdmin
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for Cloud SQL database instance management
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference>
module Network.Google.SQLAdmin
    (
    -- * Service Configuration
      sQLAdminService

    -- * OAuth Scopes
    , sqlServiceAdminScope
    , cloudPlatformScope

    -- * API Declaration
    , SQLAdminAPI

    -- * Resources

    -- ** sql.backupRuns.delete
    , module Network.Google.Resource.SQL.BackupRuns.Delete

    -- ** sql.backupRuns.get
    , module Network.Google.Resource.SQL.BackupRuns.Get

    -- ** sql.backupRuns.insert
    , module Network.Google.Resource.SQL.BackupRuns.Insert

    -- ** sql.backupRuns.list
    , module Network.Google.Resource.SQL.BackupRuns.List

    -- ** sql.connect.generateEphemeral
    , module Network.Google.Resource.SQL.Connect.GenerateEphemeral

    -- ** sql.connect.get
    , module Network.Google.Resource.SQL.Connect.Get

    -- ** sql.databases.delete
    , module Network.Google.Resource.SQL.Databases.Delete

    -- ** sql.databases.get
    , module Network.Google.Resource.SQL.Databases.Get

    -- ** sql.databases.insert
    , module Network.Google.Resource.SQL.Databases.Insert

    -- ** sql.databases.list
    , module Network.Google.Resource.SQL.Databases.List

    -- ** sql.databases.patch
    , module Network.Google.Resource.SQL.Databases.Patch

    -- ** sql.databases.update
    , module Network.Google.Resource.SQL.Databases.Update

    -- ** sql.flags.list
    , module Network.Google.Resource.SQL.Flags.List

    -- ** sql.instances.addServerCa
    , module Network.Google.Resource.SQL.Instances.AddServerCa

    -- ** sql.instances.clone
    , module Network.Google.Resource.SQL.Instances.Clone

    -- ** sql.instances.delete
    , module Network.Google.Resource.SQL.Instances.Delete

    -- ** sql.instances.demoteMaster
    , module Network.Google.Resource.SQL.Instances.DemoteMaster

    -- ** sql.instances.export
    , module Network.Google.Resource.SQL.Instances.Export

    -- ** sql.instances.failover
    , module Network.Google.Resource.SQL.Instances.Failover

    -- ** sql.instances.get
    , module Network.Google.Resource.SQL.Instances.Get

    -- ** sql.instances.import
    , module Network.Google.Resource.SQL.Instances.Import

    -- ** sql.instances.insert
    , module Network.Google.Resource.SQL.Instances.Insert

    -- ** sql.instances.list
    , module Network.Google.Resource.SQL.Instances.List

    -- ** sql.instances.listServerCas
    , module Network.Google.Resource.SQL.Instances.ListServerCas

    -- ** sql.instances.patch
    , module Network.Google.Resource.SQL.Instances.Patch

    -- ** sql.instances.promoteReplica
    , module Network.Google.Resource.SQL.Instances.PromoteReplica

    -- ** sql.instances.resetSslConfig
    , module Network.Google.Resource.SQL.Instances.ResetSSLConfig

    -- ** sql.instances.restart
    , module Network.Google.Resource.SQL.Instances.Restart

    -- ** sql.instances.restoreBackup
    , module Network.Google.Resource.SQL.Instances.RestoreBackup

    -- ** sql.instances.rotateServerCa
    , module Network.Google.Resource.SQL.Instances.RotateServerCa

    -- ** sql.instances.startReplica
    , module Network.Google.Resource.SQL.Instances.StartReplica

    -- ** sql.instances.stopReplica
    , module Network.Google.Resource.SQL.Instances.StopReplica

    -- ** sql.instances.truncateLog
    , module Network.Google.Resource.SQL.Instances.TruncateLog

    -- ** sql.instances.update
    , module Network.Google.Resource.SQL.Instances.Update

    -- ** sql.operations.get
    , module Network.Google.Resource.SQL.Operations.Get

    -- ** sql.operations.list
    , module Network.Google.Resource.SQL.Operations.List

    -- ** sql.projects.instances.rescheduleMaintenance
    , module Network.Google.Resource.SQL.Projects.Instances.RescheduleMaintenance

    -- ** sql.projects.instances.startExternalSync
    , module Network.Google.Resource.SQL.Projects.Instances.StartExternalSync

    -- ** sql.projects.instances.verifyExternalSyncSettings
    , module Network.Google.Resource.SQL.Projects.Instances.VerifyExternalSyncSettings

    -- ** sql.sslCerts.createEphemeral
    , module Network.Google.Resource.SQL.SSLCerts.CreateEphemeral

    -- ** sql.sslCerts.delete
    , module Network.Google.Resource.SQL.SSLCerts.Delete

    -- ** sql.sslCerts.get
    , module Network.Google.Resource.SQL.SSLCerts.Get

    -- ** sql.sslCerts.insert
    , module Network.Google.Resource.SQL.SSLCerts.Insert

    -- ** sql.sslCerts.list
    , module Network.Google.Resource.SQL.SSLCerts.List

    -- ** sql.tiers.list
    , module Network.Google.Resource.SQL.Tiers.List

    -- ** sql.users.delete
    , module Network.Google.Resource.SQL.Users.Delete

    -- ** sql.users.insert
    , module Network.Google.Resource.SQL.Users.Insert

    -- ** sql.users.list
    , module Network.Google.Resource.SQL.Users.List

    -- ** sql.users.update
    , module Network.Google.Resource.SQL.Users.Update

    -- * Types

    -- ** SQLServerDatabaseDetails
    , SQLServerDatabaseDetails
    , sQLServerDatabaseDetails
    , sqlsddRecoveryModel
    , sqlsddCompatibilityLevel

    -- ** DemoteMasterMySQLReplicaConfiguration
    , DemoteMasterMySQLReplicaConfiguration
    , demoteMasterMySQLReplicaConfiguration
    , dmmsqlrcKind
    , dmmsqlrcClientKey
    , dmmsqlrcUsername
    , dmmsqlrcClientCertificate
    , dmmsqlrcCaCertificate
    , dmmsqlrcPassword

    -- ** SSLCert
    , SSLCert
    , sslCert
    , scCommonName
    , scKind
    , scCertSerialNumber
    , scSelfLink
    , scCert
    , scSha1Fingerprint
    , scExpirationTime
    , scCreateTime
    , scInstance

    -- ** ConnectSettingsDatabaseVersion
    , ConnectSettingsDatabaseVersion (..)

    -- ** FlagType
    , FlagType (..)

    -- ** DatabasesListResponse
    , DatabasesListResponse
    , databasesListResponse
    , dlrKind
    , dlrItems

    -- ** InstancesExportRequest
    , InstancesExportRequest
    , instancesExportRequest
    , ierExportContext

    -- ** SQLInstancesVerifyExternalSyncSettingsResponse
    , SQLInstancesVerifyExternalSyncSettingsResponse
    , sQLInstancesVerifyExternalSyncSettingsResponse
    , sqlivessrKind
    , sqlivessrWarnings
    , sqlivessrErrors

    -- ** BackupRunType
    , BackupRunType (..)

    -- ** ConnectSettingsBackendType
    , ConnectSettingsBackendType (..)

    -- ** InstancesListServerCasResponse
    , InstancesListServerCasResponse
    , instancesListServerCasResponse
    , ilscrKind
    , ilscrCerts
    , ilscrActiveVersion

    -- ** ExportContextSQLExportOptionsMysqlExportOptions
    , ExportContextSQLExportOptionsMysqlExportOptions
    , exportContextSQLExportOptionsMysqlExportOptions
    , ecsqleomeoMasterData

    -- ** OnPremisesConfiguration
    , OnPremisesConfiguration
    , onPremisesConfiguration
    , opcKind
    , opcClientKey
    , opcUsername
    , opcHostPort
    , opcClientCertificate
    , opcCaCertificate
    , opcDumpFilePath
    , opcPassword

    -- ** InsightsConfig
    , InsightsConfig
    , insightsConfig
    , icQueryInsightsEnabled
    , icQueryPlansPerMinute
    , icRecordApplicationTags
    , icRecordClientAddress
    , icQueryStringLength

    -- ** OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrKind
    , olrItems

    -- ** APIWarning
    , APIWarning
    , apiWarning
    , awCode
    , awRegion
    , awMessage

    -- ** DiskEncryptionConfiguration
    , DiskEncryptionConfiguration
    , diskEncryptionConfiguration
    , decKind
    , decKmsKeyName

    -- ** SQLExternalSyncSettingError
    , SQLExternalSyncSettingError
    , sQLExternalSyncSettingError
    , sqlesseKind
    , sqlesseType
    , sqlesseDetail

    -- ** Reschedule
    , Reschedule
    , reschedule
    , rScheduleTime
    , rRescheduleType

    -- ** ImportContext
    , ImportContext
    , importContext
    , icDatabase
    , icKind
    , icCSVImportOptions
    , icURI
    , icFileType
    , icImportUser
    , icBakImportOptions

    -- ** GenerateEphemeralCertRequest
    , GenerateEphemeralCertRequest
    , generateEphemeralCertRequest
    , gecrReadTime
    , gecrAccessToken
    , gecrPublicKey

    -- ** BackupRetentionSettingsRetentionUnit
    , BackupRetentionSettingsRetentionUnit (..)

    -- ** Operation
    , Operation
    , operation
    , oTargetId
    , oTargetProject
    , oStatus
    , oInsertTime
    , oImportContext
    , oStartTime
    , oKind
    , oError
    , oExportContext
    , oUser
    , oSelfLink
    , oName
    , oEndTime
    , oOperationType
    , oTargetLink
    , oBackupContext

    -- ** Settings
    , Settings
    , settings
    , sStorageAutoResize
    , sReplicationType
    , sActivationPolicy
    , sSettingsVersion
    , sInsightsConfig
    , sActiveDirectoryConfig
    , sDataDiskSizeGb
    , sAuthorizedGaeApplications
    , sKind
    , sPricingPlan
    , sIPConfiguration
    , sCollation
    , sMaintenanceWindow
    , sDatabaseReplicationEnabled
    , sUserLabels
    , sTier
    , sDatabaseFlags
    , sDataDiskType
    , sDenyMaintenancePeriods
    , sCrashSafeReplicationEnabled
    , sLocationPreference
    , sBackupConfiguration
    , sAvailabilityType
    , sStorageAutoResizeLimit

    -- ** InstancesRotateServerCaRequest
    , InstancesRotateServerCaRequest
    , instancesRotateServerCaRequest
    , irscrRotateServerCaContext

    -- ** IPMApping
    , IPMApping
    , ipMApping
    , imaIPAddress
    , imaTimeToRetire
    , imaType

    -- ** Database
    , Database
    , database
    , dSQLserverDatabaseDetails
    , dEtag
    , dProject
    , dKind
    , dCollation
    , dSelfLink
    , dName
    , dCharSet
    , dInstance

    -- ** SSLCertsCreateEphemeralRequest
    , SSLCertsCreateEphemeralRequest
    , sslCertsCreateEphemeralRequest
    , sccerAccessToken
    , sccerPublicKey

    -- ** BinLogCoordinates
    , BinLogCoordinates
    , binLogCoordinates
    , blcBinLogPosition
    , blcKind
    , blcBinLogFileName

    -- ** FlagAppliesToItem
    , FlagAppliesToItem (..)

    -- ** DatabaseInstanceFailoverReplica
    , DatabaseInstanceFailoverReplica
    , databaseInstanceFailoverReplica
    , difrName
    , difrAvailable

    -- ** SQLServerUserDetails
    , SQLServerUserDetails
    , sQLServerUserDetails
    , sqlsudServerRoles
    , sqlsudDisabled

    -- ** TiersListResponse
    , TiersListResponse
    , tiersListResponse
    , tlrKind
    , tlrItems

    -- ** OperationOperationType
    , OperationOperationType (..)

    -- ** UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrNextPageToken
    , ulrKind
    , ulrItems

    -- ** ExportContext
    , ExportContext
    , exportContext
    , ecCSVExportOptions
    , ecKind
    , ecURI
    , ecFileType
    , ecOffLoad
    , ecSQLExportOptions
    , ecDatabases

    -- ** OperationErrors
    , OperationErrors
    , operationErrors
    , oeKind
    , oeErrors

    -- ** SSLCertsListResponse
    , SSLCertsListResponse
    , sslCertsListResponse
    , sclrKind
    , sclrItems

    -- ** SettingsPricingPlan
    , SettingsPricingPlan (..)

    -- ** DiskEncryptionStatus
    , DiskEncryptionStatus
    , diskEncryptionStatus
    , desKmsKeyVersionName
    , desKind

    -- ** BackupRunBackupKind
    , BackupRunBackupKind (..)

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** SQLActiveDirectoryConfig
    , SQLActiveDirectoryConfig
    , sQLActiveDirectoryConfig
    , sqladcKind
    , sqladcDomain

    -- ** SSLCertsInsertRequest
    , SSLCertsInsertRequest
    , sslCertsInsertRequest
    , scirCommonName

    -- ** IPConfiguration
    , IPConfiguration
    , ipConfiguration
    , icAuthorizedNetworks
    , icPrivateNetwork
    , icRequireSSL
    , icIPv4Enabled

    -- ** MaintenanceWindow
    , MaintenanceWindow
    , maintenanceWindow
    , mwKind
    , mwDay
    , mwHour
    , mwUpdateTrack

    -- ** ImportContextCSVImportOptions
    , ImportContextCSVImportOptions
    , importContextCSVImportOptions
    , iccioColumns
    , iccioTable

    -- ** RotateServerCaContext
    , RotateServerCaContext
    , rotateServerCaContext
    , rsccNextVersion
    , rsccKind

    -- ** ExportContextCSVExportOptions
    , ExportContextCSVExportOptions
    , exportContextCSVExportOptions
    , ecceoSelectQuery

    -- ** SettingsActivationPolicy
    , SettingsActivationPolicy (..)

    -- ** User
    , User
    , user
    , uEtag
    , uProject
    , uKind
    , uSQLserverUserDetails
    , uName
    , uPassword
    , uHost
    , uType
    , uInstance

    -- ** DatabaseInstance
    , DatabaseInstance
    , databaseInstance
    , datBackendType
    , datSatisfiesPzs
    , datMaxDiskSize
    , datOnPremisesConfiguration
    , datGceZone
    , datEtag
    , datState
    , datIPv6Address
    , datServerCaCert
    , datDatabaseVersion
    , datDiskEncryptionConfiguration
    , datProject
    , datSettings
    , datSecondaryGceZone
    , datKind
    , datDiskEncryptionStatus
    , datConnectionName
    , datCurrentDiskSize
    , datInstanceType
    , datRootPassword
    , datOutOfDiskReport
    , datReplicaNames
    , datSelfLink
    , datFailoverReplica
    , datScheduledMaintenance
    , datName
    , datMasterInstanceName
    , datReplicaConfiguration
    , datRegion
    , datServiceAccountEmailAddress
    , datIPAddresses
    , datSuspensionReason

    -- ** CloneContext
    , CloneContext
    , cloneContext
    , ccPitrTimestampMs
    , ccDestinationInstanceName
    , ccBinLogCoordinates
    , ccKind
    , ccPointInTime

    -- ** ImportContextFileType
    , ImportContextFileType (..)

    -- ** Flag
    , Flag
    , flag
    , fMaxValue
    , fInBeta
    , fKind
    , fAllowedIntValues
    , fAppliesTo
    , fName
    , fAllowedStringValues
    , fType
    , fMinValue
    , fRequiresRestart

    -- ** SettingsAvailabilityType
    , SettingsAvailabilityType (..)

    -- ** BackupRetentionSettings
    , BackupRetentionSettings
    , backupRetentionSettings
    , brsRetentionUnit
    , brsRetainedBackups

    -- ** MaintenanceWindowUpdateTrack
    , MaintenanceWindowUpdateTrack (..)

    -- ** InstancesFailoverRequest
    , InstancesFailoverRequest
    , instancesFailoverRequest
    , ifrFailoverContext

    -- ** APIWarningCode
    , APIWarningCode (..)

    -- ** GenerateEphemeralCertResponse
    , GenerateEphemeralCertResponse
    , generateEphemeralCertResponse
    , gecrEphemeralCert

    -- ** BackupRun
    , BackupRun
    , backupRun
    , brStatus
    , brDiskEncryptionConfiguration
    , brLocation
    , brStartTime
    , brKind
    , brError
    , brDiskEncryptionStatus
    , brBackupKind
    , brWindowStartTime
    , brSelfLink
    , brEndTime
    , brId
    , brType
    , brEnQueuedTime
    , brDescription
    , brInstance

    -- ** ImportContextBakImportOptions
    , ImportContextBakImportOptions
    , importContextBakImportOptions
    , icbioEncryptionOptions

    -- ** ProjectsInstancesStartExternalSyncSyncMode
    , ProjectsInstancesStartExternalSyncSyncMode (..)

    -- ** ACLEntry
    , ACLEntry
    , aclEntry
    , aeKind
    , aeValue
    , aeName
    , aeExpirationTime

    -- ** SQLInstancesRescheduleMaintenanceRequestBody
    , SQLInstancesRescheduleMaintenanceRequestBody
    , sQLInstancesRescheduleMaintenanceRequestBody
    , sqlirmrbReschedule

    -- ** Xgafv
    , Xgafv (..)

    -- ** DatabaseFlags
    , DatabaseFlags
    , databaseFlags
    , dfValue
    , dfName

    -- ** SQLExternalSyncSettingErrorType
    , SQLExternalSyncSettingErrorType (..)

    -- ** Tier
    , Tier
    , tier
    , tKind
    , tTier
    , tRegion
    , tDiskQuota
    , tRAM

    -- ** MySQLReplicaConfiguration
    , MySQLReplicaConfiguration
    , mySQLReplicaConfiguration
    , msqlrcVerifyServerCertificate
    , msqlrcKind
    , msqlrcClientKey
    , msqlrcUsername
    , msqlrcSSLCipher
    , msqlrcMasterHeartbeatPeriod
    , msqlrcConnectRetryInterval
    , msqlrcClientCertificate
    , msqlrcCaCertificate
    , msqlrcDumpFilePath
    , msqlrcPassword

    -- ** SQLOutOfDiskReport
    , SQLOutOfDiskReport
    , sQLOutOfDiskReport
    , sqloodrSQLOutOfDiskState
    , sqloodrSQLMinRecommendedIncreaseSizeGb

    -- ** SQLScheduledMaintenance
    , SQLScheduledMaintenance
    , sQLScheduledMaintenance
    , sqlsmStartTime
    , sqlsmCanReschedule
    , sqlsmCanDefer
    , sqlsmScheduleDeadlineTime

    -- ** SSLCertDetail
    , SSLCertDetail
    , sslCertDetail
    , scdCertInfo
    , scdCertPrivateKey

    -- ** DatabaseInstanceInstanceType
    , DatabaseInstanceInstanceType (..)

    -- ** InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest
    , instancesRestoreBackupRequest
    , irbrRestoreBackupContext

    -- ** InstancesDemoteMasterRequest
    , InstancesDemoteMasterRequest
    , instancesDemoteMasterRequest
    , idmrDemoteMasterContext

    -- ** BackupRunsListResponse
    , BackupRunsListResponse
    , backupRunsListResponse
    , brlrNextPageToken
    , brlrKind
    , brlrItems

    -- ** OperationError
    , OperationError
    , operationError
    , opeKind
    , opeCode
    , opeMessage

    -- ** IPMAppingType
    , IPMAppingType (..)

    -- ** TruncateLogContext
    , TruncateLogContext
    , truncateLogContext
    , tlcKind
    , tlcLogType

    -- ** ExportContextFileType
    , ExportContextFileType (..)

    -- ** InstancesCloneRequest
    , InstancesCloneRequest
    , instancesCloneRequest
    , icrCloneContext

    -- ** RescheduleRescheduleType
    , RescheduleRescheduleType (..)

    -- ** ImportContextBakImportOptionsEncryptionOptions
    , ImportContextBakImportOptionsEncryptionOptions
    , importContextBakImportOptionsEncryptionOptions
    , icbioeoPvkPath
    , icbioeoPvkPassword
    , icbioeoCertPath

    -- ** ProjectsInstancesVerifyExternalSyncSettingsSyncMode
    , ProjectsInstancesVerifyExternalSyncSettingsSyncMode (..)

    -- ** UsersListBodyType
    , UsersListBodyType (..)

    -- ** SettingsDataDiskType
    , SettingsDataDiskType (..)

    -- ** ReplicaConfiguration
    , ReplicaConfiguration
    , replicaConfiguration
    , rcFailoverTarget
    , rcKind
    , rcMysqlReplicaConfiguration

    -- ** DatabaseInstanceBackendType
    , DatabaseInstanceBackendType (..)

    -- ** DatabaseInstanceSuspensionReasonItem
    , DatabaseInstanceSuspensionReasonItem (..)

    -- ** FailoverContext
    , FailoverContext
    , failoverContext
    , fcSettingsVersion
    , fcKind

    -- ** BackupRunStatus
    , BackupRunStatus (..)

    -- ** DatabaseInstanceState
    , DatabaseInstanceState (..)

    -- ** SSLCertsInsertResponse
    , SSLCertsInsertResponse
    , sslCertsInsertResponse
    , scirServerCaCert
    , scirOperation
    , scirKind
    , scirClientCert

    -- ** ConnectSettings
    , ConnectSettings
    , connectSettings
    , csBackendType
    , csServerCaCert
    , csDatabaseVersion
    , csKind
    , csIPAddresses

    -- ** DatabaseInstanceDatabaseVersion
    , DatabaseInstanceDatabaseVersion (..)

    -- ** InstancesListResponse
    , InstancesListResponse
    , instancesListResponse
    , ilrNextPageToken
    , ilrKind
    , ilrItems
    , ilrWarnings

    -- ** DemoteMasterConfiguration
    , DemoteMasterConfiguration
    , demoteMasterConfiguration
    , dmcKind
    , dmcMysqlReplicaConfiguration

    -- ** BackupConfiguration
    , BackupConfiguration
    , backupConfiguration
    , bcReplicationLogArchivingEnabled
    , bcLocation
    , bcEnabled
    , bcStartTime
    , bcKind
    , bcBinaryLogEnabled
    , bcBackupRetentionSettings
    , bcPointInTimeRecoveryEnabled
    , bcTransactionLogRetentionDays

    -- ** DenyMaintenancePeriod
    , DenyMaintenancePeriod
    , denyMaintenancePeriod
    , dmpTime
    , dmpEndDate
    , dmpStartDate

    -- ** InstancesImportRequest
    , InstancesImportRequest
    , instancesImportRequest
    , iirImportContext

    -- ** LocationPreference
    , LocationPreference
    , locationPreference
    , lpKind
    , lpFollowGaeApplication
    , lpZone
    , lpSecondaryZone

    -- ** FlagsListResponse
    , FlagsListResponse
    , flagsListResponse
    , flrKind
    , flrItems

    -- ** InstancesTruncateLogRequest
    , InstancesTruncateLogRequest
    , instancesTruncateLogRequest
    , itlrTruncateLogContext

    -- ** UserType
    , UserType (..)

    -- ** ExportContextSQLExportOptions
    , ExportContextSQLExportOptions
    , exportContextSQLExportOptions
    , ecsqleoSchemaOnly
    , ecsqleoMysqlExportOptions
    , ecsqleoTables

    -- ** BackupContext
    , BackupContext
    , backupContext
    , bKind
    , bBackupId

    -- ** SettingsReplicationType
    , SettingsReplicationType (..)

    -- ** RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcProject
    , rbcKind

    -- ** SQLOutOfDiskReportSQLOutOfDiskState
    , SQLOutOfDiskReportSQLOutOfDiskState (..)

    -- ** DemoteMasterContext
    , DemoteMasterContext
    , demoteMasterContext
    , demVerifyGtidConsistency
    , demKind
    , demMasterInstanceName
    , demReplicaConfiguration

    -- ** SettingsUserLabels
    , SettingsUserLabels
    , settingsUserLabels
    , sulAddtional
    ) where

import Network.Google.Prelude
import Network.Google.Resource.SQL.BackupRuns.Delete
import Network.Google.Resource.SQL.BackupRuns.Get
import Network.Google.Resource.SQL.BackupRuns.Insert
import Network.Google.Resource.SQL.BackupRuns.List
import Network.Google.Resource.SQL.Connect.GenerateEphemeral
import Network.Google.Resource.SQL.Connect.Get
import Network.Google.Resource.SQL.Databases.Delete
import Network.Google.Resource.SQL.Databases.Get
import Network.Google.Resource.SQL.Databases.Insert
import Network.Google.Resource.SQL.Databases.List
import Network.Google.Resource.SQL.Databases.Patch
import Network.Google.Resource.SQL.Databases.Update
import Network.Google.Resource.SQL.Flags.List
import Network.Google.Resource.SQL.Instances.AddServerCa
import Network.Google.Resource.SQL.Instances.Clone
import Network.Google.Resource.SQL.Instances.Delete
import Network.Google.Resource.SQL.Instances.DemoteMaster
import Network.Google.Resource.SQL.Instances.Export
import Network.Google.Resource.SQL.Instances.Failover
import Network.Google.Resource.SQL.Instances.Get
import Network.Google.Resource.SQL.Instances.Import
import Network.Google.Resource.SQL.Instances.Insert
import Network.Google.Resource.SQL.Instances.List
import Network.Google.Resource.SQL.Instances.ListServerCas
import Network.Google.Resource.SQL.Instances.Patch
import Network.Google.Resource.SQL.Instances.PromoteReplica
import Network.Google.Resource.SQL.Instances.ResetSSLConfig
import Network.Google.Resource.SQL.Instances.Restart
import Network.Google.Resource.SQL.Instances.RestoreBackup
import Network.Google.Resource.SQL.Instances.RotateServerCa
import Network.Google.Resource.SQL.Instances.StartReplica
import Network.Google.Resource.SQL.Instances.StopReplica
import Network.Google.Resource.SQL.Instances.TruncateLog
import Network.Google.Resource.SQL.Instances.Update
import Network.Google.Resource.SQL.Operations.Get
import Network.Google.Resource.SQL.Operations.List
import Network.Google.Resource.SQL.Projects.Instances.RescheduleMaintenance
import Network.Google.Resource.SQL.Projects.Instances.StartExternalSync
import Network.Google.Resource.SQL.Projects.Instances.VerifyExternalSyncSettings
import Network.Google.Resource.SQL.SSLCerts.CreateEphemeral
import Network.Google.Resource.SQL.SSLCerts.Delete
import Network.Google.Resource.SQL.SSLCerts.Get
import Network.Google.Resource.SQL.SSLCerts.Insert
import Network.Google.Resource.SQL.SSLCerts.List
import Network.Google.Resource.SQL.Tiers.List
import Network.Google.Resource.SQL.Users.Delete
import Network.Google.Resource.SQL.Users.Insert
import Network.Google.Resource.SQL.Users.List
import Network.Google.Resource.SQL.Users.Update
import Network.Google.SQLAdmin.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud SQL Admin API service.
type SQLAdminAPI =
     FlagsListResource :<|> UsersInsertResource :<|>
       UsersListResource
       :<|> UsersDeleteResource
       :<|> UsersUpdateResource
       :<|> ConnectGetResource
       :<|> ConnectGenerateEphemeralResource
       :<|> TiersListResource
       :<|> BackupRunsInsertResource
       :<|> BackupRunsListResource
       :<|> BackupRunsGetResource
       :<|> BackupRunsDeleteResource
       :<|> SSLCertsInsertResource
       :<|> SSLCertsListResource
       :<|> SSLCertsGetResource
       :<|> SSLCertsCreateEphemeralResource
       :<|> SSLCertsDeleteResource
       :<|> InstancesExportResource
       :<|> InstancesInsertResource
       :<|> InstancesListResource
       :<|> InstancesStartReplicaResource
       :<|> InstancesCloneResource
       :<|> InstancesPatchResource
       :<|> InstancesDemoteMasterResource
       :<|> InstancesGetResource
       :<|> InstancesListServerCasResource
       :<|> InstancesRestoreBackupResource
       :<|> InstancesAddServerCaResource
       :<|> InstancesFailoverResource
       :<|> InstancesRestartResource
       :<|> InstancesTruncateLogResource
       :<|> InstancesImportResource
       :<|> InstancesStopReplicaResource
       :<|> InstancesResetSSLConfigResource
       :<|> InstancesPromoteReplicaResource
       :<|> InstancesRotateServerCaResource
       :<|> InstancesDeleteResource
       :<|> InstancesUpdateResource
       :<|> OperationsListResource
       :<|> OperationsGetResource
       :<|> ProjectsInstancesRescheduleMaintenanceResource
       :<|> ProjectsInstancesStartExternalSyncResource
       :<|>
       ProjectsInstancesVerifyExternalSyncSettingsResource
       :<|> DatabasesInsertResource
       :<|> DatabasesListResource
       :<|> DatabasesPatchResource
       :<|> DatabasesGetResource
       :<|> DatabasesDeleteResource
       :<|> DatabasesUpdateResource
