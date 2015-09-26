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
    -- * Resources
      SQLAdmin
    , FlagsAPI
    , FlagsList
    , UsersAPI
    , UsersInsert
    , UsersList
    , UsersDelete
    , UsersUpdate
    , TiersAPI
    , TiersList
    , BackupRunsAPI
    , BackupRunsList
    , BackupRunsGet
    , BackupRunsDelete
    , SslCertsAPI
    , SslCertsInsert
    , SslCertsList
    , SslCertsGet
    , SslCertsCreateEphemeral
    , SslCertsDelete
    , InstancesAPI
    , InstancesExport
    , InstancesInsert
    , InstancesList
    , InstancesStartReplica
    , InstancesClone
    , InstancesPatch
    , InstancesGet
    , InstancesRestoreBackup
    , InstancesRestart
    , InstancesImport
    , InstancesStopReplica
    , InstancesResetSslConfig
    , InstancesPromoteReplica
    , InstancesDelete
    , InstancesUpdate
    , OperationsAPI
    , OperationsList
    , OperationsGet
    , DatabasesAPI
    , DatabasesInsert
    , DatabasesList
    , DatabasesPatch
    , DatabasesGet
    , DatabasesDelete
    , DatabasesUpdate

    -- * Types

    -- ** AclEntry
    , AclEntry
    , aclEntry
    , aeKind
    , aeValue
    , aeName
    , aeExpirationTime

    -- ** BackupConfiguration
    , BackupConfiguration
    , backupConfiguration
    , bcEnabled
    , bcStartTime
    , bcKind
    , bcBinaryLogEnabled

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

    -- ** BackupRunsListResponse
    , BackupRunsListResponse
    , backupRunsListResponse
    , brlrNextPageToken
    , brlrKind
    , brlrItems

    -- ** BinLogCoordinates
    , BinLogCoordinates
    , binLogCoordinates
    , blcBinLogPosition
    , blcKind
    , blcBinLogFileName

    -- ** CloneContext
    , CloneContext
    , cloneContext
    , ccDestinationInstanceName
    , ccBinLogCoordinates
    , ccKind

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

    -- ** DatabaseFlags
    , DatabaseFlags
    , databaseFlags
    , dfValue
    , dfName

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

    -- ** DatabasesListResponse
    , DatabasesListResponse
    , databasesListResponse
    , dlrKind
    , dlrItems

    -- ** ExportContext
    , ExportContext
    , exportContext
    , ecCsvExportOptions
    , ecKind
    , ecUri
    , ecFileType
    , ecSqlExportOptions
    , ecDatabases

    -- ** ExportContextCsvExportOptions
    , ExportContextCsvExportOptions
    , exportContextCsvExportOptions
    , ecceoSelectQuery

    -- ** ExportContextSqlExportOptions
    , ExportContextSqlExportOptions
    , exportContextSqlExportOptions
    , ecseoSchemaOnly
    , ecseoTables

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

    -- ** FlagsListResponse
    , FlagsListResponse
    , flagsListResponse
    , flrKind
    , flrItems

    -- ** ImportContext
    , ImportContext
    , importContext
    , icDatabase
    , icKind
    , icCsvImportOptions
    , icUri
    , icFileType

    -- ** ImportContextCsvImportOptions
    , ImportContextCsvImportOptions
    , importContextCsvImportOptions
    , iccioColumns
    , iccioTable

    -- ** InstancesCloneRequest
    , InstancesCloneRequest
    , instancesCloneRequest
    , icrCloneContext

    -- ** InstancesExportRequest
    , InstancesExportRequest
    , instancesExportRequest
    , ierExportContext

    -- ** InstancesImportRequest
    , InstancesImportRequest
    , instancesImportRequest
    , iirImportContext

    -- ** InstancesListResponse
    , InstancesListResponse
    , instancesListResponse
    , ilrNextPageToken
    , ilrKind
    , ilrItems

    -- ** InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest
    , instancesRestoreBackupRequest
    , irbrRestoreBackupContext

    -- ** IpConfiguration
    , IpConfiguration
    , ipConfiguration
    , icAuthorizedNetworks
    , icRequireSsl
    , icIpv4Enabled

    -- ** IpMapping
    , IpMapping
    , ipMapping
    , imIpAddress
    , imTimeToRetire

    -- ** LocationPreference
    , LocationPreference
    , locationPreference
    , lpKind
    , lpFollowGaeApplication
    , lpZone

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

    -- ** OnPremisesConfiguration
    , OnPremisesConfiguration
    , onPremisesConfiguration
    , opcKind
    , opcHostPort

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

    -- ** OperationError
    , OperationError
    , operationError
    , oeKind
    , oeCode
    , oeMessage

    -- ** OperationErrors
    , OperationErrors
    , operationErrors
    , oKind
    , oErrors

    -- ** OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrKind
    , olrItems

    -- ** ReplicaConfiguration
    , ReplicaConfiguration
    , replicaConfiguration
    , rcKind
    , rcMysqlReplicaConfiguration

    -- ** RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcKind

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

    -- ** SslCertDetail
    , SslCertDetail
    , sslCertDetail
    , scdCertInfo
    , scdCertPrivateKey

    -- ** SslCertsCreateEphemeralRequest
    , SslCertsCreateEphemeralRequest
    , sslCertsCreateEphemeralRequest
    , sccerPublicKey

    -- ** SslCertsInsertRequest
    , SslCertsInsertRequest
    , sslCertsInsertRequest
    , scirCommonName

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

    -- ** Tier
    , Tier
    , tier
    , tKind
    , tTier
    , tRegion
    , tDiskQuota
    , tRAM

    -- ** TiersListResponse
    , TiersListResponse
    , tiersListResponse
    , tlrKind
    , tlrItems

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

    -- ** UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrNextPageToken
    , ulrKind
    , ulrItems
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

{- $resources
TODO
-}

type SQLAdmin =
     UsersAPI :<|>
       TiersAPI :<|>
         BackupRunsAPI :<|>
           SslCertsAPI :<|>
             InstancesAPI :<|>
               OperationsAPI :<|> DatabasesAPI :<|> FlagsAPI

type FlagsAPI = FlagsList

-- | List all available database flags for Google Cloud SQL instances.
type FlagsList =
     "sql" :> "v1beta4" :> "flags" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UsersAPI =
     UsersList :<|>
       UsersDelete :<|> UsersUpdate :<|> UsersInsert

-- | Creates a new user in a Cloud SQL instance.
type UsersInsert =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "users"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists users in the specified Cloud SQL instance.
type UsersList =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "users"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a user from a Cloud SQL instance.
type UsersDelete =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "users"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "host" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing user in a Cloud SQL instance.
type UsersUpdate =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "users"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "host" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TiersAPI = TiersList

-- | Lists all available service tiers for Google Cloud SQL, for example D1,
-- D2. For related information, see Pricing.
type TiersList =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "tiers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type BackupRunsAPI =
     BackupRunsGet :<|>
       BackupRunsDelete :<|> BackupRunsList

-- | Lists all backup runs associated with a given instance and configuration
-- in the reverse chronological order of the enqueued time.
type BackupRunsList =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "backupRuns"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a resource containing information about a backup run.
type BackupRunsGet =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "backupRuns"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the backup taken by a backup run.
type BackupRunsDelete =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "backupRuns"
       :> Capture "id" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SslCertsAPI =
     SslCertsList :<|>
       SslCertsGet :<|>
         SslCertsCreateEphemeral :<|>
           SslCertsDelete :<|> SslCertsInsert

-- | Creates an SSL certificate and returns it along with the private key and
-- server certificate authority. The new certificate will not be usable
-- until the instance is restarted.
type SslCertsInsert =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "sslCerts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists all of the current SSL certificates for the instance.
type SslCertsList =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "sslCerts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a particular SSL certificate. Does not include the private key
-- (required for usage). The private key must be saved from the response to
-- initial creation.
type SslCertsGet =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "sslCerts"
       :> Capture "sha1Fingerprint" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Generates a short-lived X509 certificate containing the provided public
-- key and signed by a private key specific to the target instance. Users
-- may use the certificate to authenticate as themselves when connecting to
-- the database.
type SslCertsCreateEphemeral =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "createEphemeral"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the SSL certificate. The change will not take effect until the
-- instance is restarted.
type SslCertsDelete =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "sslCerts"
       :> Capture "sha1Fingerprint" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type InstancesAPI =
     InstancesInsert :<|>
       InstancesList :<|>
         InstancesStartReplica :<|>
           InstancesClone :<|>
             InstancesPatch :<|>
               InstancesGet :<|>
                 InstancesRestoreBackup :<|>
                   InstancesRestart :<|>
                     InstancesImport :<|>
                       InstancesStopReplica :<|>
                         InstancesResetSslConfig :<|>
                           InstancesPromoteReplica :<|>
                             InstancesDelete :<|>
                               InstancesUpdate :<|> InstancesExport

-- | Exports data from a Cloud SQL instance to a Google Cloud Storage bucket
-- as a MySQL dump file.
type InstancesExport =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "export"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a new Cloud SQL instance.
type InstancesInsert =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists instances under a given project in the alphabetical order of the
-- instance name.
type InstancesList =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Starts the replication in the read replica instance.
type InstancesStartReplica =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "startReplica"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a Cloud SQL instance as a clone of the source instance.
type InstancesClone =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "clone"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.. This method supports patch
-- semantics.
type InstancesPatch =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a resource containing information about a Cloud SQL instance.
type InstancesGet =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Restores a backup of a Cloud SQL instance.
type InstancesRestoreBackup =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "restoreBackup"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Restarts a Cloud SQL instance.
type InstancesRestart =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "restart"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Imports data into a Cloud SQL instance from a MySQL dump file in Google
-- Cloud Storage.
type InstancesImport =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "import"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Stops the replication in the read replica instance.
type InstancesStopReplica =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "stopReplica"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes all client certificates and generates a new server SSL
-- certificate for the instance. The changes will not take effect until the
-- instance is restarted. Existing instances without a server certificate
-- will need to call this once to set a server certificate.
type InstancesResetSslConfig =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "resetSslConfig"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Promotes the read replica instance to be a stand-alone Cloud SQL
-- instance.
type InstancesPromoteReplica =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "promoteReplica"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a Cloud SQL instance.
type InstancesDelete =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.
type InstancesUpdate =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type OperationsAPI =
     OperationsGet :<|> OperationsList

-- | Lists all instance operations that have been performed on the given
-- Cloud SQL instance in the reverse chronological order of the start time.
type OperationsList =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "operations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
       :> QueryParam "instance" Text

-- | Retrieves an instance operation that has been performed on an instance.
type OperationsGet =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "operations"
       :> Capture "operation" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DatabasesAPI =
     DatabasesList :<|>
       DatabasesPatch :<|>
         DatabasesGet :<|>
           DatabasesDelete :<|>
             DatabasesUpdate :<|> DatabasesInsert

-- | Inserts a resource containing information about a database inside a
-- Cloud SQL instance.
type DatabasesInsert =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "databases"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists databases in the specified Cloud SQL instance.
type DatabasesList =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "databases"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance. This method supports patch semantics.
type DatabasesPatch =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "databases"
       :> Capture "database" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a resource containing information about a database inside a
-- Cloud SQL instance.
type DatabasesGet =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "databases"
       :> Capture "database" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a resource containing information about a database inside a
-- Cloud SQL instance.
type DatabasesDelete =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "databases"
       :> Capture "database" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance.
type DatabasesUpdate =
     "sql" :> "v1beta4" :> "projects" :>
       Capture "project" Text
       :> "instances"
       :> Capture "instance" Text
       :> "databases"
       :> Capture "database" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
