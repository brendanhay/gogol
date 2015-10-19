{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SQLAdmin
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for Cloud SQL database instance management.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference>
module Network.Google.SQLAdmin
    (
    -- * Service Configuration
      sQLAdminService

    -- * API Declaration
    , SQLAdminAPI

    -- * Resources

    -- ** SQLBackupRunsDelete
    , module Network.Google.Resource.SQL.BackupRuns.Delete

    -- ** SQLBackupRunsGet
    , module Network.Google.Resource.SQL.BackupRuns.Get

    -- ** SQLBackupRunsList
    , module Network.Google.Resource.SQL.BackupRuns.List

    -- ** SQLDatabasesDelete
    , module Network.Google.Resource.SQL.Databases.Delete

    -- ** SQLDatabasesGet
    , module Network.Google.Resource.SQL.Databases.Get

    -- ** SQLDatabasesInsert
    , module Network.Google.Resource.SQL.Databases.Insert

    -- ** SQLDatabasesList
    , module Network.Google.Resource.SQL.Databases.List

    -- ** SQLDatabasesPatch
    , module Network.Google.Resource.SQL.Databases.Patch

    -- ** SQLDatabasesUpdate
    , module Network.Google.Resource.SQL.Databases.Update

    -- ** SQLFlagsList
    , module Network.Google.Resource.SQL.Flags.List

    -- ** SQLInstancesClone
    , module Network.Google.Resource.SQL.Instances.Clone

    -- ** SQLInstancesDelete
    , module Network.Google.Resource.SQL.Instances.Delete

    -- ** SQLInstancesExport
    , module Network.Google.Resource.SQL.Instances.Export

    -- ** SQLInstancesFailover
    , module Network.Google.Resource.SQL.Instances.Failover

    -- ** SQLInstancesGet
    , module Network.Google.Resource.SQL.Instances.Get

    -- ** SQLInstancesImport
    , module Network.Google.Resource.SQL.Instances.Import

    -- ** SQLInstancesInsert
    , module Network.Google.Resource.SQL.Instances.Insert

    -- ** SQLInstancesList
    , module Network.Google.Resource.SQL.Instances.List

    -- ** SQLInstancesPatch
    , module Network.Google.Resource.SQL.Instances.Patch

    -- ** SQLInstancesPromoteReplica
    , module Network.Google.Resource.SQL.Instances.PromoteReplica

    -- ** SQLInstancesResetSSLConfig
    , module Network.Google.Resource.SQL.Instances.ResetSSLConfig

    -- ** SQLInstancesRestart
    , module Network.Google.Resource.SQL.Instances.Restart

    -- ** SQLInstancesRestoreBackup
    , module Network.Google.Resource.SQL.Instances.RestoreBackup

    -- ** SQLInstancesStartReplica
    , module Network.Google.Resource.SQL.Instances.StartReplica

    -- ** SQLInstancesStopReplica
    , module Network.Google.Resource.SQL.Instances.StopReplica

    -- ** SQLInstancesUpdate
    , module Network.Google.Resource.SQL.Instances.Update

    -- ** SQLOperationsGet
    , module Network.Google.Resource.SQL.Operations.Get

    -- ** SQLOperationsList
    , module Network.Google.Resource.SQL.Operations.List

    -- ** SQLSSLCertsCreateEphemeral
    , module Network.Google.Resource.SQL.SSLCerts.CreateEphemeral

    -- ** SQLSSLCertsDelete
    , module Network.Google.Resource.SQL.SSLCerts.Delete

    -- ** SQLSSLCertsGet
    , module Network.Google.Resource.SQL.SSLCerts.Get

    -- ** SQLSSLCertsInsert
    , module Network.Google.Resource.SQL.SSLCerts.Insert

    -- ** SQLSSLCertsList
    , module Network.Google.Resource.SQL.SSLCerts.List

    -- ** SQLTiersList
    , module Network.Google.Resource.SQL.Tiers.List

    -- ** SQLUsersDelete
    , module Network.Google.Resource.SQL.Users.Delete

    -- ** SQLUsersInsert
    , module Network.Google.Resource.SQL.Users.Insert

    -- ** SQLUsersList
    , module Network.Google.Resource.SQL.Users.List

    -- ** SQLUsersUpdate
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
    , sReplicationType
    , sActivationPolicy
    , sSettingsVersion
    , sDataDiskSizeGb
    , sAuthorizedGaeApplications
    , sKind
    , sPricingPlan
    , sIPConfiguration
    , sDatabaseReplicationEnabled
    , sTier
    , sDatabaseFlags
    , sCrashSafeReplicationEnabled
    , sLocationPreference
    , sBackupConfiguration

    -- ** IPMApping
    , IPMApping
    , ipMApping
    , imaIPAddress
    , imaTimeToRetire

    -- ** Database
    , Database
    , database
    , dEtag
    , dProject
    , dKind
    , dCollation
    , dSelfLink
    , dName
    , dCharset
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
    , datCurrentDiskSize
    , datInstanceType
    , datReplicaNames
    , datSelfLink
    , datName
    , datMasterInstanceName
    , datReplicaConfiguration
    , datRegion
    , datServiceAccountEmailAddress
    , datIPAddresses

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
    , brEnqueuedTime
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
