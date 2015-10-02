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
    , icCSVImportOptions
    , icURI
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
    , sIPConfiguration
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
    , imIPAddress
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
    , ecCSVExportOptions
    , ecKind
    , ecURI
    , ecFileType
    , ecSQLExportOptions
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
    , icRequireSSL
    , icIPv4Enabled

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
