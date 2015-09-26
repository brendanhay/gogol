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
    -- * API Definition
      SQLAdmin



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

import           Network.Google.SQLAdmin.Types

{- $resources
TODO
-}

type SQLAdmin = ()

sQLAdmin :: Proxy SQLAdmin
sQLAdmin = Proxy




