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
    -- * REST Resources

    -- ** Cloud SQL Administration API
      SQLAdmin
    , sQLAdmin
    , sQLAdminURL

    -- ** sql.backupRuns.delete
    , module Network.Google.API.Sql.BackupRuns.Delete

    -- ** sql.backupRuns.get
    , module Network.Google.API.Sql.BackupRuns.Get

    -- ** sql.backupRuns.list
    , module Network.Google.API.Sql.BackupRuns.List

    -- ** sql.databases.delete
    , module Network.Google.API.Sql.Databases.Delete

    -- ** sql.databases.get
    , module Network.Google.API.Sql.Databases.Get

    -- ** sql.databases.insert
    , module Network.Google.API.Sql.Databases.Insert

    -- ** sql.databases.list
    , module Network.Google.API.Sql.Databases.List

    -- ** sql.databases.patch
    , module Network.Google.API.Sql.Databases.Patch

    -- ** sql.databases.update
    , module Network.Google.API.Sql.Databases.Update

    -- ** sql.flags.list
    , module Network.Google.API.Sql.Flags.List

    -- ** sql.instances.clone
    , module Network.Google.API.Sql.Instances.Clone

    -- ** sql.instances.delete
    , module Network.Google.API.Sql.Instances.Delete

    -- ** sql.instances.export
    , module Network.Google.API.Sql.Instances.Export

    -- ** sql.instances.get
    , module Network.Google.API.Sql.Instances.Get

    -- ** sql.instances.import
    , module Network.Google.API.Sql.Instances.Import

    -- ** sql.instances.insert
    , module Network.Google.API.Sql.Instances.Insert

    -- ** sql.instances.list
    , module Network.Google.API.Sql.Instances.List

    -- ** sql.instances.patch
    , module Network.Google.API.Sql.Instances.Patch

    -- ** sql.instances.promoteReplica
    , module Network.Google.API.Sql.Instances.PromoteReplica

    -- ** sql.instances.resetSslConfig
    , module Network.Google.API.Sql.Instances.ResetSSLConfig

    -- ** sql.instances.restart
    , module Network.Google.API.Sql.Instances.Restart

    -- ** sql.instances.restoreBackup
    , module Network.Google.API.Sql.Instances.RestoreBackup

    -- ** sql.instances.startReplica
    , module Network.Google.API.Sql.Instances.StartReplica

    -- ** sql.instances.stopReplica
    , module Network.Google.API.Sql.Instances.StopReplica

    -- ** sql.instances.update
    , module Network.Google.API.Sql.Instances.Update

    -- ** sql.operations.get
    , module Network.Google.API.Sql.Operations.Get

    -- ** sql.operations.list
    , module Network.Google.API.Sql.Operations.List

    -- ** sql.sslCerts.createEphemeral
    , module Network.Google.API.Sql.SSLCerts.CreateEphemeral

    -- ** sql.sslCerts.delete
    , module Network.Google.API.Sql.SSLCerts.Delete

    -- ** sql.sslCerts.get
    , module Network.Google.API.Sql.SSLCerts.Get

    -- ** sql.sslCerts.insert
    , module Network.Google.API.Sql.SSLCerts.Insert

    -- ** sql.sslCerts.list
    , module Network.Google.API.Sql.SSLCerts.List

    -- ** sql.tiers.list
    , module Network.Google.API.Sql.Tiers.List

    -- ** sql.users.delete
    , module Network.Google.API.Sql.Users.Delete

    -- ** sql.users.insert
    , module Network.Google.API.Sql.Users.Insert

    -- ** sql.users.list
    , module Network.Google.API.Sql.Users.List

    -- ** sql.users.update
    , module Network.Google.API.Sql.Users.Update

    -- * Types

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

    -- ** Alt
    , Alt (..)

    -- ** ExportContextSqlExportOptions
    , ExportContextSqlExportOptions
    , exportContextSqlExportOptions
    , ecseoSchemaOnly
    , ecseoTables

    -- ** ImportContext
    , ImportContext
    , importContext
    , icDatabase
    , icKind
    , icCsvImportOptions
    , icUri
    , icFileType

    -- ** BackupRunsListResponse
    , BackupRunsListResponse
    , backupRunsListResponse
    , brlrNextPageToken
    , brlrKind
    , brlrItems

    -- ** OperationError
    , OperationError
    , operationError
    , oeKind
    , oeCode
    , oeMessage

    -- ** InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest
    , instancesRestoreBackupRequest
    , irbrRestoreBackupContext

    -- ** SslCertDetail
    , SslCertDetail
    , sslCertDetail
    , scdCertInfo
    , scdCertPrivateKey

    -- ** ReplicaConfiguration
    , ReplicaConfiguration
    , replicaConfiguration
    , rcKind
    , rcMysqlReplicaConfiguration

    -- ** InstancesCloneRequest
    , InstancesCloneRequest
    , instancesCloneRequest
    , icrCloneContext

    -- ** InstancesListResponse
    , InstancesListResponse
    , instancesListResponse
    , ilrNextPageToken
    , ilrKind
    , ilrItems

    -- ** SslCertsInsertResponse
    , SslCertsInsertResponse
    , sslCertsInsertResponse
    , scirServerCaCert
    , scirKind
    , scirClientCert

    -- ** SslCertsListResponse
    , SslCertsListResponse
    , sslCertsListResponse
    , sclrKind
    , sclrItems

    -- ** OperationErrors
    , OperationErrors
    , operationErrors
    , oKind
    , oErrors

    -- ** RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcKind

    -- ** SslCert
    , SslCert
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

    -- ** OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrKind
    , olrItems

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

    -- ** AclEntry
    , AclEntry
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

    -- ** ExportContextCsvExportOptions
    , ExportContextCsvExportOptions
    , exportContextCsvExportOptions
    , ecceoSelectQuery

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

    -- ** ImportContextCsvImportOptions
    , ImportContextCsvImportOptions
    , importContextCsvImportOptions
    , iccioColumns
    , iccioTable

    -- ** Tier
    , Tier
    , tier
    , tKind
    , tTier
    , tRegion
    , tDiskQuota
    , tRAM

    -- ** Database
    , Database
    , database
    , datEtag
    , datProject
    , datKind
    , datCollation
    , datSelfLink
    , datName
    , datCharset
    , datInstance

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

    -- ** SslCertsCreateEphemeralRequest
    , SslCertsCreateEphemeralRequest
    , sslCertsCreateEphemeralRequest
    , sccerPublicKey

    -- ** Operation
    , Operation
    , operation
    , opeTargetId
    , opeTargetProject
    , opeStatus
    , opeInsertTime
    , opeImportContext
    , opeStartTime
    , opeKind
    , opeError
    , opeExportContext
    , opeUser
    , opeSelfLink
    , opeName
    , opeEndTime
    , opeOperationType
    , opeTargetLink

    -- ** IpMapping
    , IpMapping
    , ipMapping
    , imIpAddress
    , imTimeToRetire

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

    -- ** BackupConfiguration
    , BackupConfiguration
    , backupConfiguration
    , bcEnabled
    , bcStartTime
    , bcKind
    , bcBinaryLogEnabled

    -- ** SslCertsInsertRequest
    , SslCertsInsertRequest
    , sslCertsInsertRequest
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

    -- ** IpConfiguration
    , IpConfiguration
    , ipConfiguration
    , icAuthorizedNetworks
    , icRequireSsl
    , icIpv4Enabled
    ) where

import           Network.Google.API.Sql.BackupRuns.Delete
import           Network.Google.API.Sql.BackupRuns.Get
import           Network.Google.API.Sql.BackupRuns.List
import           Network.Google.API.Sql.Databases.Delete
import           Network.Google.API.Sql.Databases.Get
import           Network.Google.API.Sql.Databases.Insert
import           Network.Google.API.Sql.Databases.List
import           Network.Google.API.Sql.Databases.Patch
import           Network.Google.API.Sql.Databases.Update
import           Network.Google.API.Sql.Flags.List
import           Network.Google.API.Sql.Instances.Clone
import           Network.Google.API.Sql.Instances.Delete
import           Network.Google.API.Sql.Instances.Export
import           Network.Google.API.Sql.Instances.Get
import           Network.Google.API.Sql.Instances.Import
import           Network.Google.API.Sql.Instances.Insert
import           Network.Google.API.Sql.Instances.List
import           Network.Google.API.Sql.Instances.Patch
import           Network.Google.API.Sql.Instances.PromoteReplica
import           Network.Google.API.Sql.Instances.ResetSSLConfig
import           Network.Google.API.Sql.Instances.Restart
import           Network.Google.API.Sql.Instances.RestoreBackup
import           Network.Google.API.Sql.Instances.StartReplica
import           Network.Google.API.Sql.Instances.StopReplica
import           Network.Google.API.Sql.Instances.Update
import           Network.Google.API.Sql.Operations.Get
import           Network.Google.API.Sql.Operations.List
import           Network.Google.API.Sql.SSLCerts.CreateEphemeral
import           Network.Google.API.Sql.SSLCerts.Delete
import           Network.Google.API.Sql.SSLCerts.Get
import           Network.Google.API.Sql.SSLCerts.Insert
import           Network.Google.API.Sql.SSLCerts.List
import           Network.Google.API.Sql.Tiers.List
import           Network.Google.API.Sql.Users.Delete
import           Network.Google.API.Sql.Users.Insert
import           Network.Google.API.Sql.Users.List
import           Network.Google.API.Sql.Users.Update
import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

{- $resources
TODO
-}

type SQLAdmin =
     InstancesRestoreBackupAPI :<|>
       InstancesStopReplicaAPI
       :<|> InstancesImportAPI
       :<|> UsersInsertAPI
       :<|> DatabasesDeleteAPI
       :<|> InstancesCloneAPI
       :<|> SSLCertsListAPI
       :<|> SSLCertsDeleteAPI
       :<|> InstancesExportAPI
       :<|> BackupRunsDeleteAPI
       :<|> InstancesStartReplicaAPI
       :<|> BackupRunsGetAPI
       :<|> UsersListAPI
       :<|> UsersUpdateAPI
       :<|> TiersListAPI
       :<|> InstancesResetSSLConfigAPI
       :<|> OperationsGetAPI
       :<|> OperationsListAPI
       :<|> InstancesRestartAPI
       :<|> InstancesDeleteAPI
       :<|> DatabasesInsertAPI
       :<|> DatabasesUpdateAPI
       :<|> BackupRunsListAPI
       :<|> SSLCertsInsertAPI
       :<|> InstancesGetAPI
       :<|> InstancesInsertAPI
       :<|> InstancesPatchAPI
       :<|> DatabasesListAPI
       :<|> DatabasesGetAPI
       :<|> InstancesListAPI
       :<|> SSLCertsCreateEphemeralAPI
       :<|> DatabasesPatchAPI
       :<|> InstancesPromoteReplicaAPI
       :<|> InstancesUpdateAPI
       :<|> FlagsListAPI
       :<|> SSLCertsGetAPI
       :<|> UsersDeleteAPI

sQLAdmin :: Proxy SQLAdmin
sQLAdmin = Proxy
