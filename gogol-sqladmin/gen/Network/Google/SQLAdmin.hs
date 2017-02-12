{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SQLAdmin
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and configures Cloud SQL instances, which provide fully-managed
-- MySQL databases.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference>
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

    -- ** sql.instances.clone
    , module Network.Google.Resource.SQL.Instances.Clone

    -- ** sql.instances.delete
    , module Network.Google.Resource.SQL.Instances.Delete

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

    -- ** DatabasesListResponse
    , DatabasesListResponse
    , databasesListResponse
    , dlrKind
    , dlrItems

    -- ** InstancesExportRequest
    , InstancesExportRequest
    , instancesExportRequest
    , ierExportContext

    -- ** OnPremisesConfiguration
    , OnPremisesConfiguration
    , onPremisesConfiguration
    , opcKind
    , opcHostPort

    -- ** OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrKind
    , olrItems

    -- ** ImportContext
    , ImportContext
    , importContext
    , icDatabase
    , icKind
    , icCSVImportOptions
    , icURI
    , icFileType

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

    -- ** Settings
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
    , sTier
    , sDatabaseFlags
    , sDataDiskType
    , sCrashSafeReplicationEnabled
    , sLocationPreference
    , sBackupConfiguration

    -- ** IPMApping
    , IPMApping
    , ipMApping
    , imaIPAddress
    , imaTimeToRetire
    , imaType

    -- ** Database
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

    -- ** SSLCertsCreateEphemeralRequest
    , SSLCertsCreateEphemeralRequest
    , sslCertsCreateEphemeralRequest
    , sccerPublicKey

    -- ** BinLogCoordinates
    , BinLogCoordinates
    , binLogCoordinates
    , blcBinLogPosition
    , blcKind
    , blcBinLogFileName

    -- ** DatabaseInstanceFailoverReplica
    , DatabaseInstanceFailoverReplica
    , databaseInstanceFailoverReplica
    , difrName
    , difrAvailable

    -- ** TiersListResponse
    , TiersListResponse
    , tiersListResponse
    , tlrKind
    , tlrItems

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

    -- ** SSLCertsInsertRequest
    , SSLCertsInsertRequest
    , sslCertsInsertRequest
    , scirCommonName

    -- ** IPConfiguration
    , IPConfiguration
    , ipConfiguration
    , icAuthorizedNetworks
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

    -- ** ExportContextCSVExportOptions
    , ExportContextCSVExportOptions
    , exportContextCSVExportOptions
    , ecceoSelectQuery

    -- ** User
    , User
    , user
    , uEtag
    , uProject
    , uKind
    , uName
    , uPassword
    , uHost
    , uInstance

    -- ** DatabaseInstance
    , DatabaseInstance
    , databaseInstance
    , datBackendType
    , datMaxDiskSize
    , datOnPremisesConfiguration
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

    -- ** CloneContext
    , CloneContext
    , cloneContext
    , ccDestinationInstanceName
    , ccBinLogCoordinates
    , ccKind

    -- ** Flag
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

    -- ** InstancesFailoverRequest
    , InstancesFailoverRequest
    , instancesFailoverRequest
    , ifrFailoverContext

    -- ** BackupRun
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

    -- ** ACLEntry
    , ACLEntry
    , aclEntry
    , aeKind
    , aeValue
    , aeName
    , aeExpirationTime

    -- ** DatabaseFlags
    , DatabaseFlags
    , databaseFlags
    , dfValue
    , dfName

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

    -- ** SSLCertDetail
    , SSLCertDetail
    , sslCertDetail
    , scdCertInfo
    , scdCertPrivateKey

    -- ** InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest
    , instancesRestoreBackupRequest
    , irbrRestoreBackupContext

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

    -- ** TruncateLogContext
    , TruncateLogContext
    , truncateLogContext
    , tlcKind
    , tlcLogType

    -- ** InstancesCloneRequest
    , InstancesCloneRequest
    , instancesCloneRequest
    , icrCloneContext

    -- ** ReplicaConfiguration
    , ReplicaConfiguration
    , replicaConfiguration
    , rcFailoverTarget
    , rcKind
    , rcMysqlReplicaConfiguration

    -- ** FailoverContext
    , FailoverContext
    , failoverContext
    , fcSettingsVersion
    , fcKind

    -- ** SSLCertsInsertResponse
    , SSLCertsInsertResponse
    , sslCertsInsertResponse
    , scirServerCaCert
    , scirOperation
    , scirKind
    , scirClientCert

    -- ** InstancesListResponse
    , InstancesListResponse
    , instancesListResponse
    , ilrNextPageToken
    , ilrKind
    , ilrItems

    -- ** BackupConfiguration
    , BackupConfiguration
    , backupConfiguration
    , bcEnabled
    , bcStartTime
    , bcKind
    , bcBinaryLogEnabled

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

    -- ** FlagsListResponse
    , FlagsListResponse
    , flagsListResponse
    , flrKind
    , flrItems

    -- ** InstancesTruncateLogRequest
    , InstancesTruncateLogRequest
    , instancesTruncateLogRequest
    , itlrTruncateLogContext

    -- ** ExportContextSQLExportOptions
    , ExportContextSQLExportOptions
    , exportContextSQLExportOptions
    , ecsqleoSchemaOnly
    , ecsqleoTables

    -- ** RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcKind
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.SQL.BackupRuns.Delete
import           Network.Google.Resource.SQL.BackupRuns.Get
import           Network.Google.Resource.SQL.BackupRuns.Insert
import           Network.Google.Resource.SQL.BackupRuns.List
import           Network.Google.Resource.SQL.Databases.Delete
import           Network.Google.Resource.SQL.Databases.Get
import           Network.Google.Resource.SQL.Databases.Insert
import           Network.Google.Resource.SQL.Databases.List
import           Network.Google.Resource.SQL.Databases.Patch
import           Network.Google.Resource.SQL.Databases.Update
import           Network.Google.Resource.SQL.Flags.List
import           Network.Google.Resource.SQL.Instances.Clone
import           Network.Google.Resource.SQL.Instances.Delete
import           Network.Google.Resource.SQL.Instances.Export
import           Network.Google.Resource.SQL.Instances.Failover
import           Network.Google.Resource.SQL.Instances.Get
import           Network.Google.Resource.SQL.Instances.Import
import           Network.Google.Resource.SQL.Instances.Insert
import           Network.Google.Resource.SQL.Instances.List
import           Network.Google.Resource.SQL.Instances.Patch
import           Network.Google.Resource.SQL.Instances.PromoteReplica
import           Network.Google.Resource.SQL.Instances.ResetSSLConfig
import           Network.Google.Resource.SQL.Instances.Restart
import           Network.Google.Resource.SQL.Instances.RestoreBackup
import           Network.Google.Resource.SQL.Instances.StartReplica
import           Network.Google.Resource.SQL.Instances.StopReplica
import           Network.Google.Resource.SQL.Instances.TruncateLog
import           Network.Google.Resource.SQL.Instances.Update
import           Network.Google.Resource.SQL.Operations.Get
import           Network.Google.Resource.SQL.Operations.List
import           Network.Google.Resource.SQL.SSLCerts.CreateEphemeral
import           Network.Google.Resource.SQL.SSLCerts.Delete
import           Network.Google.Resource.SQL.SSLCerts.Get
import           Network.Google.Resource.SQL.SSLCerts.Insert
import           Network.Google.Resource.SQL.SSLCerts.List
import           Network.Google.Resource.SQL.Tiers.List
import           Network.Google.Resource.SQL.Users.Delete
import           Network.Google.Resource.SQL.Users.Insert
import           Network.Google.Resource.SQL.Users.List
import           Network.Google.Resource.SQL.Users.Update
import           Network.Google.SQLAdmin.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud SQL Administration API service.
type SQLAdminAPI =
     FlagsListResource :<|> UsersInsertResource :<|>
       UsersListResource
       :<|> UsersDeleteResource
       :<|> UsersUpdateResource
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
       :<|> InstancesGetResource
       :<|> InstancesRestoreBackupResource
       :<|> InstancesFailoverResource
       :<|> InstancesRestartResource
       :<|> InstancesTruncateLogResource
       :<|> InstancesImportResource
       :<|> InstancesStopReplicaResource
       :<|> InstancesResetSSLConfigResource
       :<|> InstancesPromoteReplicaResource
       :<|> InstancesDeleteResource
       :<|> InstancesUpdateResource
       :<|> OperationsListResource
       :<|> OperationsGetResource
       :<|> DatabasesInsertResource
       :<|> DatabasesListResource
       :<|> DatabasesPatchResource
       :<|> DatabasesGetResource
       :<|> DatabasesDeleteResource
       :<|> DatabasesUpdateResource
