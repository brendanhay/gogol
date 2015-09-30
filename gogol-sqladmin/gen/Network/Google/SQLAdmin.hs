{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | API for Cloud SQL database instance management.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference>
module Network.Google.SQLAdmin
    (
    -- * API
      SQLAdminAPI
    , sQLAdminAPI
    , sQLAdminURL

    -- * Service Methods

    -- * REST Resources

    -- ** SqlBackupRunsDelete
    , module Network.Google.Resource.Sql.BackupRuns.Delete

    -- ** SqlBackupRunsGet
    , module Network.Google.Resource.Sql.BackupRuns.Get

    -- ** SqlBackupRunsList
    , module Network.Google.Resource.Sql.BackupRuns.List

    -- ** SqlDatabasesDelete
    , module Network.Google.Resource.Sql.Databases.Delete

    -- ** SqlDatabasesGet
    , module Network.Google.Resource.Sql.Databases.Get

    -- ** SqlDatabasesInsert
    , module Network.Google.Resource.Sql.Databases.Insert

    -- ** SqlDatabasesList
    , module Network.Google.Resource.Sql.Databases.List

    -- ** SqlDatabasesPatch
    , module Network.Google.Resource.Sql.Databases.Patch

    -- ** SqlDatabasesUpdate
    , module Network.Google.Resource.Sql.Databases.Update

    -- ** SqlFlagsList
    , module Network.Google.Resource.Sql.Flags.List

    -- ** SqlInstancesClone
    , module Network.Google.Resource.Sql.Instances.Clone

    -- ** SqlInstancesDelete
    , module Network.Google.Resource.Sql.Instances.Delete

    -- ** SqlInstancesExport
    , module Network.Google.Resource.Sql.Instances.Export

    -- ** SqlInstancesGet
    , module Network.Google.Resource.Sql.Instances.Get

    -- ** SqlInstancesImport
    , module Network.Google.Resource.Sql.Instances.Import

    -- ** SqlInstancesInsert
    , module Network.Google.Resource.Sql.Instances.Insert

    -- ** SqlInstancesList
    , module Network.Google.Resource.Sql.Instances.List

    -- ** SqlInstancesPatch
    , module Network.Google.Resource.Sql.Instances.Patch

    -- ** SqlInstancesPromoteReplica
    , module Network.Google.Resource.Sql.Instances.PromoteReplica

    -- ** SqlInstancesResetSSLConfig
    , module Network.Google.Resource.Sql.Instances.ResetSSLConfig

    -- ** SqlInstancesRestart
    , module Network.Google.Resource.Sql.Instances.Restart

    -- ** SqlInstancesRestoreBackup
    , module Network.Google.Resource.Sql.Instances.RestoreBackup

    -- ** SqlInstancesStartReplica
    , module Network.Google.Resource.Sql.Instances.StartReplica

    -- ** SqlInstancesStopReplica
    , module Network.Google.Resource.Sql.Instances.StopReplica

    -- ** SqlInstancesUpdate
    , module Network.Google.Resource.Sql.Instances.Update

    -- ** SqlOperationsGet
    , module Network.Google.Resource.Sql.Operations.Get

    -- ** SqlOperationsList
    , module Network.Google.Resource.Sql.Operations.List

    -- ** SqlSSLCertsCreateEphemeral
    , module Network.Google.Resource.Sql.SSLCerts.CreateEphemeral

    -- ** SqlSSLCertsDelete
    , module Network.Google.Resource.Sql.SSLCerts.Delete

    -- ** SqlSSLCertsGet
    , module Network.Google.Resource.Sql.SSLCerts.Get

    -- ** SqlSSLCertsInsert
    , module Network.Google.Resource.Sql.SSLCerts.Insert

    -- ** SqlSSLCertsList
    , module Network.Google.Resource.Sql.SSLCerts.List

    -- ** SqlTiersList
    , module Network.Google.Resource.Sql.Tiers.List

    -- ** SqlUsersDelete
    , module Network.Google.Resource.Sql.Users.Delete

    -- ** SqlUsersInsert
    , module Network.Google.Resource.Sql.Users.Insert

    -- ** SqlUsersList
    , module Network.Google.Resource.Sql.Users.List

    -- ** SqlUsersUpdate
    , module Network.Google.Resource.Sql.Users.Update

    -- * Types

    -- ** SSLCert
    , SSLCert
    , sSLCert
    , scCommonName
    , scKind
    , scCertSerialNumber
    , scSelfLink
    , scCert
    , scSha1Fingerprint
    , scExpirationTime
    , scCreateTime
    , scInstance

    -- ** InstancesExportRequest
    , InstancesExportRequest
    , instancesExportRequest
    , ierExportContext

    -- ** DatabasesListResponse
    , DatabasesListResponse
    , databasesListResponse
    , dlrKind
    , dlrItems

    -- ** OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrKind
    , olrItems

    -- ** OnPremisesConfiguration
    , OnPremisesConfiguration
    , onPremisesConfiguration
    , opcKind
    , opcHostPort

    -- ** ImportContext
    , ImportContext
    , importContext
    , icDatabase
    , icKind
    , icCsvImportOptions
    , icUri
    , icFileType

    -- ** Settings
    , Settings
    , settings
    , sReplicationType
    , sActivationPolicy
    , sSettingsVersion
    , sAuthorizedGaeApplications
    , sKind
    , sPricingPlan
    , sIpConfiguration
    , sDatabaseReplicationEnabled
    , sTier
    , sDatabaseFlags
    , sCrashSafeReplicationEnabled
    , sLocationPreference
    , sBackupConfiguration

    -- ** SSLCertsCreateEphemeralRequest
    , SSLCertsCreateEphemeralRequest
    , sSLCertsCreateEphemeralRequest
    , sccerPublicKey

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

    -- ** IPMapping
    , IPMapping
    , iPMapping
    , imIpAddress
    , imTimeToRetire

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

    -- ** TiersListResponse
    , TiersListResponse
    , tiersListResponse
    , tlrKind
    , tlrItems

    -- ** BinLogCoordinates
    , BinLogCoordinates
    , binLogCoordinates
    , blcBinLogPosition
    , blcKind
    , blcBinLogFileName

    -- ** ExportContext
    , ExportContext
    , exportContext
    , ecCsvExportOptions
    , ecKind
    , ecUri
    , ecFileType
    , ecSqlExportOptions
    , ecDatabases

    -- ** UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrNextPageToken
    , ulrKind
    , ulrItems

    -- ** OperationErrors
    , OperationErrors
    , operationErrors
    , oeKind
    , oeErrors

    -- ** SSLCertsListResponse
    , SSLCertsListResponse
    , sSLCertsListResponse
    , sclrKind
    , sclrItems

    -- ** IPConfiguration
    , IPConfiguration
    , iPConfiguration
    , icAuthorizedNetworks
    , icRequireSsl
    , icIpv4Enabled

    -- ** ExportContextCSVExportOptions
    , ExportContextCSVExportOptions
    , exportContextCSVExportOptions
    , ecceoSelectQuery

    -- ** SSLCertsInsertRequest
    , SSLCertsInsertRequest
    , sSLCertsInsertRequest
    , scirCommonName

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

    -- ** ImportContextCSVImportOptions
    , ImportContextCSVImportOptions
    , importContextCSVImportOptions
    , iccioColumns
    , iccioTable

    -- ** DatabaseInstance
    , DatabaseInstance
    , databaseInstance
    , datMaxDiskSize
    , datOnPremisesConfiguration
    , datEtag
    , datState
    , datIpv6Address
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
    , datIpAddresses

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

    -- ** CloneContext
    , CloneContext
    , cloneContext
    , ccDestinationInstanceName
    , ccBinLogCoordinates
    , ccKind

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
    , aCLEntry
    , aeKind
    , aeValue
    , aeName
    , aeExpirationTime

    -- ** MySqlReplicaConfiguration
    , MySqlReplicaConfiguration
    , mySqlReplicaConfiguration
    , msrcVerifyServerCertificate
    , msrcKind
    , msrcClientKey
    , msrcUsername
    , msrcSslCipher
    , msrcMasterHeartbeatPeriod
    , msrcConnectRetryInterval
    , msrcClientCertificate
    , msrcCaCertificate
    , msrcDumpFilePath
    , msrcPassword

    -- ** Tier
    , Tier
    , tier
    , tKind
    , tTier
    , tRegion
    , tDiskQuota
    , tRAM

    -- ** DatabaseFlags
    , DatabaseFlags
    , databaseFlags
    , dfValue
    , dfName

    -- ** InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest
    , instancesRestoreBackupRequest
    , irbrRestoreBackupContext

    -- ** OperationError
    , OperationError
    , operationError
    , opeKind
    , opeCode
    , opeMessage

    -- ** SSLCertDetail
    , SSLCertDetail
    , sSLCertDetail
    , scdCertInfo
    , scdCertPrivateKey

    -- ** BackupRunsListResponse
    , BackupRunsListResponse
    , backupRunsListResponse
    , brlrNextPageToken
    , brlrKind
    , brlrItems

    -- ** InstancesCloneRequest
    , InstancesCloneRequest
    , instancesCloneRequest
    , icrCloneContext

    -- ** ReplicaConfiguration
    , ReplicaConfiguration
    , replicaConfiguration
    , rcKind
    , rcMysqlReplicaConfiguration

    -- ** SSLCertsInsertResponse
    , SSLCertsInsertResponse
    , sSLCertsInsertResponse
    , scirServerCaCert
    , scirKind
    , scirClientCert

    -- ** InstancesListResponse
    , InstancesListResponse
    , instancesListResponse
    , ilrNextPageToken
    , ilrKind
    , ilrItems

    -- ** LocationPreference
    , LocationPreference
    , locationPreference
    , lpKind
    , lpFollowGaeApplication
    , lpZone

    -- ** InstancesImportRequest
    , InstancesImportRequest
    , instancesImportRequest
    , iirImportContext

    -- ** FlagsListResponse
    , FlagsListResponse
    , flagsListResponse
    , flrKind
    , flrItems

    -- ** BackupConfiguration
    , BackupConfiguration
    , backupConfiguration
    , bcEnabled
    , bcStartTime
    , bcKind
    , bcBinaryLogEnabled

    -- ** ExportContextSqlExportOptions
    , ExportContextSqlExportOptions
    , exportContextSqlExportOptions
    , ecseoSchemaOnly
    , ecseoTables

    -- ** RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcKind

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Sql.BackupRuns.Delete
import           Network.Google.Resource.Sql.BackupRuns.Get
import           Network.Google.Resource.Sql.BackupRuns.List
import           Network.Google.Resource.Sql.Databases.Delete
import           Network.Google.Resource.Sql.Databases.Get
import           Network.Google.Resource.Sql.Databases.Insert
import           Network.Google.Resource.Sql.Databases.List
import           Network.Google.Resource.Sql.Databases.Patch
import           Network.Google.Resource.Sql.Databases.Update
import           Network.Google.Resource.Sql.Flags.List
import           Network.Google.Resource.Sql.Instances.Clone
import           Network.Google.Resource.Sql.Instances.Delete
import           Network.Google.Resource.Sql.Instances.Export
import           Network.Google.Resource.Sql.Instances.Get
import           Network.Google.Resource.Sql.Instances.Import
import           Network.Google.Resource.Sql.Instances.Insert
import           Network.Google.Resource.Sql.Instances.List
import           Network.Google.Resource.Sql.Instances.Patch
import           Network.Google.Resource.Sql.Instances.PromoteReplica
import           Network.Google.Resource.Sql.Instances.ResetSSLConfig
import           Network.Google.Resource.Sql.Instances.Restart
import           Network.Google.Resource.Sql.Instances.RestoreBackup
import           Network.Google.Resource.Sql.Instances.StartReplica
import           Network.Google.Resource.Sql.Instances.StopReplica
import           Network.Google.Resource.Sql.Instances.Update
import           Network.Google.Resource.Sql.Operations.Get
import           Network.Google.Resource.Sql.Operations.List
import           Network.Google.Resource.Sql.SSLCerts.CreateEphemeral
import           Network.Google.Resource.Sql.SSLCerts.Delete
import           Network.Google.Resource.Sql.SSLCerts.Get
import           Network.Google.Resource.Sql.SSLCerts.Insert
import           Network.Google.Resource.Sql.SSLCerts.List
import           Network.Google.Resource.Sql.Tiers.List
import           Network.Google.Resource.Sql.Users.Delete
import           Network.Google.Resource.Sql.Users.Insert
import           Network.Google.Resource.Sql.Users.List
import           Network.Google.Resource.Sql.Users.Update
import           Network.Google.SQLAdmin.Types

{- $resources
TODO
-}

type SQLAdminAPI =
     FlagsListResource :<|> UsersInsertResource :<|>
       UsersListResource
       :<|> UsersDeleteResource
       :<|> UsersUpdateResource
       :<|> TiersListResource
       :<|> BackupRunsListResource
       :<|> BackupRunsGetResource
       :<|> BackupRunsDeleteResource
       :<|> SslCertsInsertResource
       :<|> SslCertsListResource
       :<|> SslCertsGetResource
       :<|> SslCertsCreateEphemeralResource
       :<|> SslCertsDeleteResource
       :<|> InstancesExportResource
       :<|> InstancesInsertResource
       :<|> InstancesListResource
       :<|> InstancesStartReplicaResource
       :<|> InstancesCloneResource
       :<|> InstancesPatchResource
       :<|> InstancesGetResource
       :<|> InstancesRestoreBackupResource
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

sQLAdminAPI :: Proxy SQLAdminAPI
sQLAdminAPI = Proxy
