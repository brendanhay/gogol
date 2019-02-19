{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * DatabasesListResponse
    , DatabasesListResponse
    , databasesListResponse
    , dlrKind
    , dlrItems

    -- * InstancesExportRequest
    , InstancesExportRequest
    , instancesExportRequest
    , ierExportContext

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
    , opcHostPort

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
    , awMessage

    -- * ImportContext
    , ImportContext
    , importContext
    , icDatabase
    , icKind
    , icCSVImportOptions
    , icURI
    , icFileType
    , icImportUser

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

    -- * Settings
    , Settings
    , settings
    , sStorageAutoResize
    , sReplicationType
    , sActivationPolicy
    , sSettingsVersion
    , sDataDiskSizeGb
    , sAuthorizedGaeApplications
    , sKind
    , sPricingPlan
    , sIPConfiguration
    , sMaintenanceWindow
    , sDatabaseReplicationEnabled
    , sUserLabels
    , sTier
    , sDatabaseFlags
    , sDataDiskType
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
    , sccerPublicKey

    -- * BinLogCoordinates
    , BinLogCoordinates
    , binLogCoordinates
    , blcBinLogPosition
    , blcKind
    , blcBinLogFileName

    -- * DatabaseInstanceFailoverReplica
    , DatabaseInstanceFailoverReplica
    , databaseInstanceFailoverReplica
    , difrName
    , difrAvailable

    -- * TiersListResponse
    , TiersListResponse
    , tiersListResponse
    , tlrKind
    , tlrItems

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

    -- * User
    , User
    , user
    , uEtag
    , uProject
    , uKind
    , uName
    , uPassword
    , uHost
    , uInstance

    -- * DatabaseInstance
    , DatabaseInstance
    , databaseInstance
    , datBackendType
    , datMaxDiskSize
    , datOnPremisesConfiguration
    , datGceZone
    , datEtag
    , datState
    , datIPv6Address
    , datServerCaCert
    , datDatabaseVersion
    , datProject
    , datSettings
    , datKind
    , datConnectionName
    , datCurrentDiskSize
    , datInstanceType
    , datReplicaNames
    , datSelfLink
    , datFailoverReplica
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

    -- * Flag
    , Flag
    , flag
    , fMaxValue
    , fKind
    , fAppliesTo
    , fName
    , fAllowedStringValues
    , fType
    , fMinValue
    , fRequiresRestart

    -- * InstancesFailoverRequest
    , InstancesFailoverRequest
    , instancesFailoverRequest
    , ifrFailoverContext

    -- * BackupRun
    , BackupRun
    , backupRun
    , brStatus
    , brStartTime
    , brKind
    , brError
    , brWindowStartTime
    , brSelfLink
    , brEndTime
    , brId
    , brType
    , brEnQueuedTime
    , brDescription
    , brInstance

    -- * ACLEntry
    , ACLEntry
    , aclEntry
    , aeKind
    , aeValue
    , aeName
    , aeExpirationTime

    -- * DatabaseFlags
    , DatabaseFlags
    , databaseFlags
    , dfValue
    , dfName

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

    -- * SSLCertDetail
    , SSLCertDetail
    , sslCertDetail
    , scdCertInfo
    , scdCertPrivateKey

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

    -- * TruncateLogContext
    , TruncateLogContext
    , truncateLogContext
    , tlcKind
    , tlcLogType

    -- * InstancesCloneRequest
    , InstancesCloneRequest
    , instancesCloneRequest
    , icrCloneContext

    -- * ReplicaConfiguration
    , ReplicaConfiguration
    , replicaConfiguration
    , rcFailoverTarget
    , rcKind
    , rcMysqlReplicaConfiguration

    -- * FailoverContext
    , FailoverContext
    , failoverContext
    , fcSettingsVersion
    , fcKind

    -- * SSLCertsInsertResponse
    , SSLCertsInsertResponse
    , sslCertsInsertResponse
    , scirServerCaCert
    , scirOperation
    , scirKind
    , scirClientCert

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
    , bcEnabled
    , bcStartTime
    , bcKind
    , bcBinaryLogEnabled

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

    -- * FlagsListResponse
    , FlagsListResponse
    , flagsListResponse
    , flrKind
    , flrItems

    -- * InstancesTruncateLogRequest
    , InstancesTruncateLogRequest
    , instancesTruncateLogRequest
    , itlrTruncateLogContext

    -- * ExportContextSQLExportOptions
    , ExportContextSQLExportOptions
    , exportContextSQLExportOptions
    , ecsqleoSchemaOnly
    , ecsqleoMysqlExportOptions
    , ecsqleoTables

    -- * RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcKind

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

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types.Product
import           Network.Google.SQLAdmin.Types.Sum

-- | Default request referring to version 'v1beta4' of the Cloud SQL Admin API. This contains the host and root path used as a starting point for constructing service requests.
sQLAdminService :: ServiceConfig
sQLAdminService
  = defaultService (ServiceId "sqladmin:v1beta4")
      "www.googleapis.com"

-- | Manage your Google SQL Service instances
sqlServiceAdminScope :: Proxy '["https://www.googleapis.com/auth/sqlservice.admin"]
sqlServiceAdminScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
