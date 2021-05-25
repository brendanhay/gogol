{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SQLAdmin.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SQLAdmin.Types
    (
    -- * Service Configuration
      sQLAdminService

    -- * OAuth Scopes
    , sqlServiceAdminScope
    , cloudPlatformScope

    -- * SQLServerDatabaseDetails
    , SQLServerDatabaseDetails
    , sQLServerDatabaseDetails
    , sqlsddRecoveryModel
    , sqlsddCompatibilityLevel

    -- * DemoteMasterMySQLReplicaConfiguration
    , DemoteMasterMySQLReplicaConfiguration
    , demoteMasterMySQLReplicaConfiguration
    , dmmsqlrcKind
    , dmmsqlrcClientKey
    , dmmsqlrcUsername
    , dmmsqlrcClientCertificate
    , dmmsqlrcCaCertificate
    , dmmsqlrcPassword

    -- * SSLCert
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

    -- * ConnectSettingsDatabaseVersion
    , ConnectSettingsDatabaseVersion (..)

    -- * FlagType
    , FlagType (..)

    -- * DatabasesListResponse
    , DatabasesListResponse
    , databasesListResponse
    , dlrKind
    , dlrItems

    -- * InstancesExportRequest
    , InstancesExportRequest
    , instancesExportRequest
    , ierExportContext

    -- * SQLInstancesVerifyExternalSyncSettingsResponse
    , SQLInstancesVerifyExternalSyncSettingsResponse
    , sQLInstancesVerifyExternalSyncSettingsResponse
    , sqlivessrKind
    , sqlivessrWarnings
    , sqlivessrErrors

    -- * BackupRunType
    , BackupRunType (..)

    -- * ConnectSettingsBackendType
    , ConnectSettingsBackendType (..)

    -- * InstancesListServerCasResponse
    , InstancesListServerCasResponse
    , instancesListServerCasResponse
    , ilscrKind
    , ilscrCerts
    , ilscrActiveVersion

    -- * ExportContextSQLExportOptionsMysqlExportOptions
    , ExportContextSQLExportOptionsMysqlExportOptions
    , exportContextSQLExportOptionsMysqlExportOptions
    , ecsqleomeoMasterData

    -- * OnPremisesConfiguration
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

    -- * InsightsConfig
    , InsightsConfig
    , insightsConfig
    , icQueryInsightsEnabled
    , icQueryPlansPerMinute
    , icRecordApplicationTags
    , icRecordClientAddress
    , icQueryStringLength

    -- * OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrKind
    , olrItems

    -- * APIWarning
    , APIWarning
    , apiWarning
    , awCode
    , awRegion
    , awMessage

    -- * DiskEncryptionConfiguration
    , DiskEncryptionConfiguration
    , diskEncryptionConfiguration
    , decKind
    , decKmsKeyName

    -- * SQLExternalSyncSettingError
    , SQLExternalSyncSettingError
    , sQLExternalSyncSettingError
    , sqlesseKind
    , sqlesseType
    , sqlesseDetail

    -- * Reschedule
    , Reschedule
    , reschedule
    , rScheduleTime
    , rRescheduleType

    -- * ImportContext
    , ImportContext
    , importContext
    , icDatabase
    , icKind
    , icCSVImportOptions
    , icURI
    , icFileType
    , icImportUser
    , icBakImportOptions

    -- * GenerateEphemeralCertRequest
    , GenerateEphemeralCertRequest
    , generateEphemeralCertRequest
    , gecrReadTime
    , gecrAccessToken
    , gecrPublicKey

    -- * BackupRetentionSettingsRetentionUnit
    , BackupRetentionSettingsRetentionUnit (..)

    -- * Operation
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

    -- * Settings
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

    -- * InstancesRotateServerCaRequest
    , InstancesRotateServerCaRequest
    , instancesRotateServerCaRequest
    , irscrRotateServerCaContext

    -- * IPMApping
    , IPMApping
    , ipMApping
    , imaIPAddress
    , imaTimeToRetire
    , imaType

    -- * Database
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

    -- * SSLCertsCreateEphemeralRequest
    , SSLCertsCreateEphemeralRequest
    , sslCertsCreateEphemeralRequest
    , sccerAccessToken
    , sccerPublicKey

    -- * BinLogCoordinates
    , BinLogCoordinates
    , binLogCoordinates
    , blcBinLogPosition
    , blcKind
    , blcBinLogFileName

    -- * FlagAppliesToItem
    , FlagAppliesToItem (..)

    -- * DatabaseInstanceFailoverReplica
    , DatabaseInstanceFailoverReplica
    , databaseInstanceFailoverReplica
    , difrName
    , difrAvailable

    -- * SQLServerUserDetails
    , SQLServerUserDetails
    , sQLServerUserDetails
    , sqlsudServerRoles
    , sqlsudDisabled

    -- * TiersListResponse
    , TiersListResponse
    , tiersListResponse
    , tlrKind
    , tlrItems

    -- * OperationOperationType
    , OperationOperationType (..)

    -- * UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrNextPageToken
    , ulrKind
    , ulrItems

    -- * ExportContext
    , ExportContext
    , exportContext
    , ecCSVExportOptions
    , ecKind
    , ecURI
    , ecFileType
    , ecOffLoad
    , ecSQLExportOptions
    , ecDatabases

    -- * OperationErrors
    , OperationErrors
    , operationErrors
    , oeKind
    , oeErrors

    -- * SSLCertsListResponse
    , SSLCertsListResponse
    , sslCertsListResponse
    , sclrKind
    , sclrItems

    -- * SettingsPricingPlan
    , SettingsPricingPlan (..)

    -- * DiskEncryptionStatus
    , DiskEncryptionStatus
    , diskEncryptionStatus
    , desKmsKeyVersionName
    , desKind

    -- * BackupRunBackupKind
    , BackupRunBackupKind (..)

    -- * OperationStatus
    , OperationStatus (..)

    -- * SQLActiveDirectoryConfig
    , SQLActiveDirectoryConfig
    , sQLActiveDirectoryConfig
    , sqladcKind
    , sqladcDomain

    -- * SSLCertsInsertRequest
    , SSLCertsInsertRequest
    , sslCertsInsertRequest
    , scirCommonName

    -- * IPConfiguration
    , IPConfiguration
    , ipConfiguration
    , icAuthorizedNetworks
    , icPrivateNetwork
    , icRequireSSL
    , icIPv4Enabled

    -- * MaintenanceWindow
    , MaintenanceWindow
    , maintenanceWindow
    , mwKind
    , mwDay
    , mwHour
    , mwUpdateTrack

    -- * ImportContextCSVImportOptions
    , ImportContextCSVImportOptions
    , importContextCSVImportOptions
    , iccioColumns
    , iccioTable

    -- * RotateServerCaContext
    , RotateServerCaContext
    , rotateServerCaContext
    , rsccNextVersion
    , rsccKind

    -- * ExportContextCSVExportOptions
    , ExportContextCSVExportOptions
    , exportContextCSVExportOptions
    , ecceoSelectQuery

    -- * SettingsActivationPolicy
    , SettingsActivationPolicy (..)

    -- * User
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

    -- * DatabaseInstance
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

    -- * CloneContext
    , CloneContext
    , cloneContext
    , ccPitrTimestampMs
    , ccDestinationInstanceName
    , ccBinLogCoordinates
    , ccKind
    , ccPointInTime

    -- * ImportContextFileType
    , ImportContextFileType (..)

    -- * Flag
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

    -- * SettingsAvailabilityType
    , SettingsAvailabilityType (..)

    -- * BackupRetentionSettings
    , BackupRetentionSettings
    , backupRetentionSettings
    , brsRetentionUnit
    , brsRetainedBackups

    -- * MaintenanceWindowUpdateTrack
    , MaintenanceWindowUpdateTrack (..)

    -- * InstancesFailoverRequest
    , InstancesFailoverRequest
    , instancesFailoverRequest
    , ifrFailoverContext

    -- * APIWarningCode
    , APIWarningCode (..)

    -- * GenerateEphemeralCertResponse
    , GenerateEphemeralCertResponse
    , generateEphemeralCertResponse
    , gecrEphemeralCert

    -- * BackupRun
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

    -- * ImportContextBakImportOptions
    , ImportContextBakImportOptions
    , importContextBakImportOptions
    , icbioEncryptionOptions

    -- * ProjectsInstancesStartExternalSyncSyncMode
    , ProjectsInstancesStartExternalSyncSyncMode (..)

    -- * ACLEntry
    , ACLEntry
    , aclEntry
    , aeKind
    , aeValue
    , aeName
    , aeExpirationTime

    -- * SQLInstancesRescheduleMaintenanceRequestBody
    , SQLInstancesRescheduleMaintenanceRequestBody
    , sQLInstancesRescheduleMaintenanceRequestBody
    , sqlirmrbReschedule

    -- * Xgafv
    , Xgafv (..)

    -- * DatabaseFlags
    , DatabaseFlags
    , databaseFlags
    , dfValue
    , dfName

    -- * SQLExternalSyncSettingErrorType
    , SQLExternalSyncSettingErrorType (..)

    -- * Tier
    , Tier
    , tier
    , tKind
    , tTier
    , tRegion
    , tDiskQuota
    , tRAM

    -- * MySQLReplicaConfiguration
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

    -- * SQLOutOfDiskReport
    , SQLOutOfDiskReport
    , sQLOutOfDiskReport
    , sqloodrSQLOutOfDiskState
    , sqloodrSQLMinRecommendedIncreaseSizeGb

    -- * SQLScheduledMaintenance
    , SQLScheduledMaintenance
    , sQLScheduledMaintenance
    , sqlsmStartTime
    , sqlsmCanReschedule
    , sqlsmCanDefer
    , sqlsmScheduleDeadlineTime

    -- * SSLCertDetail
    , SSLCertDetail
    , sslCertDetail
    , scdCertInfo
    , scdCertPrivateKey

    -- * DatabaseInstanceInstanceType
    , DatabaseInstanceInstanceType (..)

    -- * InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest
    , instancesRestoreBackupRequest
    , irbrRestoreBackupContext

    -- * InstancesDemoteMasterRequest
    , InstancesDemoteMasterRequest
    , instancesDemoteMasterRequest
    , idmrDemoteMasterContext

    -- * BackupRunsListResponse
    , BackupRunsListResponse
    , backupRunsListResponse
    , brlrNextPageToken
    , brlrKind
    , brlrItems

    -- * OperationError
    , OperationError
    , operationError
    , opeKind
    , opeCode
    , opeMessage

    -- * IPMAppingType
    , IPMAppingType (..)

    -- * TruncateLogContext
    , TruncateLogContext
    , truncateLogContext
    , tlcKind
    , tlcLogType

    -- * ExportContextFileType
    , ExportContextFileType (..)

    -- * InstancesCloneRequest
    , InstancesCloneRequest
    , instancesCloneRequest
    , icrCloneContext

    -- * RescheduleRescheduleType
    , RescheduleRescheduleType (..)

    -- * ImportContextBakImportOptionsEncryptionOptions
    , ImportContextBakImportOptionsEncryptionOptions
    , importContextBakImportOptionsEncryptionOptions
    , icbioeoPvkPath
    , icbioeoPvkPassword
    , icbioeoCertPath

    -- * ProjectsInstancesVerifyExternalSyncSettingsSyncMode
    , ProjectsInstancesVerifyExternalSyncSettingsSyncMode (..)

    -- * UsersListBodyType
    , UsersListBodyType (..)

    -- * SettingsDataDiskType
    , SettingsDataDiskType (..)

    -- * ReplicaConfiguration
    , ReplicaConfiguration
    , replicaConfiguration
    , rcFailoverTarget
    , rcKind
    , rcMysqlReplicaConfiguration

    -- * DatabaseInstanceBackendType
    , DatabaseInstanceBackendType (..)

    -- * DatabaseInstanceSuspensionReasonItem
    , DatabaseInstanceSuspensionReasonItem (..)

    -- * FailoverContext
    , FailoverContext
    , failoverContext
    , fcSettingsVersion
    , fcKind

    -- * BackupRunStatus
    , BackupRunStatus (..)

    -- * DatabaseInstanceState
    , DatabaseInstanceState (..)

    -- * SSLCertsInsertResponse
    , SSLCertsInsertResponse
    , sslCertsInsertResponse
    , scirServerCaCert
    , scirOperation
    , scirKind
    , scirClientCert

    -- * ConnectSettings
    , ConnectSettings
    , connectSettings
    , csBackendType
    , csServerCaCert
    , csDatabaseVersion
    , csKind
    , csIPAddresses

    -- * DatabaseInstanceDatabaseVersion
    , DatabaseInstanceDatabaseVersion (..)

    -- * InstancesListResponse
    , InstancesListResponse
    , instancesListResponse
    , ilrNextPageToken
    , ilrKind
    , ilrItems
    , ilrWarnings

    -- * DemoteMasterConfiguration
    , DemoteMasterConfiguration
    , demoteMasterConfiguration
    , dmcKind
    , dmcMysqlReplicaConfiguration

    -- * BackupConfiguration
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

    -- * DenyMaintenancePeriod
    , DenyMaintenancePeriod
    , denyMaintenancePeriod
    , dmpTime
    , dmpEndDate
    , dmpStartDate

    -- * InstancesImportRequest
    , InstancesImportRequest
    , instancesImportRequest
    , iirImportContext

    -- * LocationPreference
    , LocationPreference
    , locationPreference
    , lpKind
    , lpFollowGaeApplication
    , lpZone
    , lpSecondaryZone

    -- * FlagsListResponse
    , FlagsListResponse
    , flagsListResponse
    , flrKind
    , flrItems

    -- * InstancesTruncateLogRequest
    , InstancesTruncateLogRequest
    , instancesTruncateLogRequest
    , itlrTruncateLogContext

    -- * UserType
    , UserType (..)

    -- * ExportContextSQLExportOptions
    , ExportContextSQLExportOptions
    , exportContextSQLExportOptions
    , ecsqleoSchemaOnly
    , ecsqleoMysqlExportOptions
    , ecsqleoTables

    -- * BackupContext
    , BackupContext
    , backupContext
    , bKind
    , bBackupId

    -- * SettingsReplicationType
    , SettingsReplicationType (..)

    -- * RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcProject
    , rbcKind

    -- * SQLOutOfDiskReportSQLOutOfDiskState
    , SQLOutOfDiskReportSQLOutOfDiskState (..)

    -- * DemoteMasterContext
    , DemoteMasterContext
    , demoteMasterContext
    , demVerifyGtidConsistency
    , demKind
    , demMasterInstanceName
    , demReplicaConfiguration

    -- * SettingsUserLabels
    , SettingsUserLabels
    , settingsUserLabels
    , sulAddtional
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types.Product
import Network.Google.SQLAdmin.Types.Sum

-- | Default request referring to version 'v1' of the Cloud SQL Admin API. This contains the host and root path used as a starting point for constructing service requests.
sQLAdminService :: ServiceConfig
sQLAdminService
  = defaultService (ServiceId "sqladmin:v1")
      "sqladmin.googleapis.com"

-- | Manage your Google SQL Service instances
sqlServiceAdminScope :: Proxy '["https://www.googleapis.com/auth/sqlservice.admin"]
sqlServiceAdminScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
