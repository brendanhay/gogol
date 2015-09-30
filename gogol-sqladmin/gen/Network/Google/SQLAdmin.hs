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
    , module Sql.BackupRuns.Delete

    -- ** SqlBackupRunsGet
    , module Sql.BackupRuns.Get

    -- ** SqlBackupRunsList
    , module Sql.BackupRuns.List

    -- ** SqlDatabasesDelete
    , module Sql.Databases.Delete

    -- ** SqlDatabasesGet
    , module Sql.Databases.Get

    -- ** SqlDatabasesInsert
    , module Sql.Databases.Insert

    -- ** SqlDatabasesList
    , module Sql.Databases.List

    -- ** SqlDatabasesPatch
    , module Sql.Databases.Patch

    -- ** SqlDatabasesUpdate
    , module Sql.Databases.Update

    -- ** SqlFlagsList
    , module Sql.Flags.List

    -- ** SqlInstancesClone
    , module Sql.Instances.Clone

    -- ** SqlInstancesDelete
    , module Sql.Instances.Delete

    -- ** SqlInstancesExport
    , module Sql.Instances.Export

    -- ** SqlInstancesGet
    , module Sql.Instances.Get

    -- ** SqlInstancesImport
    , module Sql.Instances.Import

    -- ** SqlInstancesInsert
    , module Sql.Instances.Insert

    -- ** SqlInstancesList
    , module Sql.Instances.List

    -- ** SqlInstancesPatch
    , module Sql.Instances.Patch

    -- ** SqlInstancesPromoteReplica
    , module Sql.Instances.PromoteReplica

    -- ** SqlInstancesResetSSLConfig
    , module Sql.Instances.ResetSSLConfig

    -- ** SqlInstancesRestart
    , module Sql.Instances.Restart

    -- ** SqlInstancesRestoreBackup
    , module Sql.Instances.RestoreBackup

    -- ** SqlInstancesStartReplica
    , module Sql.Instances.StartReplica

    -- ** SqlInstancesStopReplica
    , module Sql.Instances.StopReplica

    -- ** SqlInstancesUpdate
    , module Sql.Instances.Update

    -- ** SqlOperationsGet
    , module Sql.Operations.Get

    -- ** SqlOperationsList
    , module Sql.Operations.List

    -- ** SqlSSLCertsCreateEphemeral
    , module Sql.SSLCerts.CreateEphemeral

    -- ** SqlSSLCertsDelete
    , module Sql.SSLCerts.Delete

    -- ** SqlSSLCertsGet
    , module Sql.SSLCerts.Get

    -- ** SqlSSLCertsInsert
    , module Sql.SSLCerts.Insert

    -- ** SqlSSLCertsList
    , module Sql.SSLCerts.List

    -- ** SqlTiersList
    , module Sql.Tiers.List

    -- ** SqlUsersDelete
    , module Sql.Users.Delete

    -- ** SqlUsersInsert
    , module Sql.Users.Insert

    -- ** SqlUsersList
    , module Sql.Users.List

    -- ** SqlUsersUpdate
    , module Sql.Users.Update

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

    -- ** DatabaseInstance
    , DatabaseInstance
    , databaseInstance
    , diMaxDiskSize
    , diOnPremisesConfiguration
    , diEtag
    , diState
    , diIpv6Address
    , diServerCaCert
    , diDatabaseVersion
    , diProject
    , diSettings
    , diKind
    , diCurrentDiskSize
    , diInstanceType
    , diReplicaNames
    , diSelfLink
    , diName
    , diMasterInstanceName
    , diReplicaConfiguration
    , diRegion
    , diServiceAccountEmailAddress
    , diIpAddresses

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

    -- ** RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcKind
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
     Flags :<|> Users :<|> Tiers :<|> BackupRuns :<|>
       SSLCerts
       :<|> Instances
       :<|> Operations
       :<|> Databases

sQLAdminAPI :: Proxy SQLAdminAPI
sQLAdminAPI = Proxy
