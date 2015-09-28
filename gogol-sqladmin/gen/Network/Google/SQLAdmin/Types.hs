{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SQLAdmin.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SQLAdmin.Types
    (
    -- * Service URL
      sQLAdminURL

    -- * DatabaseInstance
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

    -- * CloneContext
    , CloneContext
    , cloneContext
    , ccDestinationInstanceName
    , ccBinLogCoordinates
    , ccKind

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
    , brEnqueuedTime
    , brInstance

    -- * Alt
    , Alt (..)

    -- * ExportContextSqlExportOptions
    , ExportContextSqlExportOptions
    , exportContextSqlExportOptions
    , ecseoSchemaOnly
    , ecseoTables

    -- * ImportContext
    , ImportContext
    , importContext
    , icDatabase
    , icKind
    , icCsvImportOptions
    , icUri
    , icFileType

    -- * BackupRunsListResponse
    , BackupRunsListResponse
    , backupRunsListResponse
    , brlrNextPageToken
    , brlrKind
    , brlrItems

    -- * OperationError
    , OperationError
    , operationError
    , oeKind
    , oeCode
    , oeMessage

    -- * InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest
    , instancesRestoreBackupRequest
    , irbrRestoreBackupContext

    -- * SslCertDetail
    , SslCertDetail
    , sslCertDetail
    , scdCertInfo
    , scdCertPrivateKey

    -- * ReplicaConfiguration
    , ReplicaConfiguration
    , replicaConfiguration
    , rcKind
    , rcMysqlReplicaConfiguration

    -- * InstancesCloneRequest
    , InstancesCloneRequest
    , instancesCloneRequest
    , icrCloneContext

    -- * InstancesListResponse
    , InstancesListResponse
    , instancesListResponse
    , ilrNextPageToken
    , ilrKind
    , ilrItems

    -- * SslCertsInsertResponse
    , SslCertsInsertResponse
    , sslCertsInsertResponse
    , scirServerCaCert
    , scirKind
    , scirClientCert

    -- * SslCertsListResponse
    , SslCertsListResponse
    , sslCertsListResponse
    , sclrKind
    , sclrItems

    -- * OperationErrors
    , OperationErrors
    , operationErrors
    , oKind
    , oErrors

    -- * RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcKind

    -- * SslCert
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

    -- * OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrKind
    , olrItems

    -- * DatabasesListResponse
    , DatabasesListResponse
    , databasesListResponse
    , dlrKind
    , dlrItems

    -- * InstancesExportRequest
    , InstancesExportRequest
    , instancesExportRequest
    , ierExportContext

    -- * OnPremisesConfiguration
    , OnPremisesConfiguration
    , onPremisesConfiguration
    , opcKind
    , opcHostPort

    -- * AclEntry
    , AclEntry
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

    -- * ExportContextCsvExportOptions
    , ExportContextCsvExportOptions
    , exportContextCsvExportOptions
    , ecceoSelectQuery

    -- * MySqlReplicaConfiguration
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

    -- * ImportContextCsvImportOptions
    , ImportContextCsvImportOptions
    , importContextCsvImportOptions
    , iccioColumns
    , iccioTable

    -- * Tier
    , Tier
    , tier
    , tKind
    , tTier
    , tRegion
    , tDiskQuota
    , tRAM

    -- * Database
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

    -- * Settings
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

    -- * SslCertsCreateEphemeralRequest
    , SslCertsCreateEphemeralRequest
    , sslCertsCreateEphemeralRequest
    , sccerPublicKey

    -- * Operation
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

    -- * IpMapping
    , IpMapping
    , ipMapping
    , imIpAddress
    , imTimeToRetire

    -- * BinLogCoordinates
    , BinLogCoordinates
    , binLogCoordinates
    , blcBinLogPosition
    , blcKind
    , blcBinLogFileName

    -- * TiersListResponse
    , TiersListResponse
    , tiersListResponse
    , tlrKind
    , tlrItems

    -- * ExportContext
    , ExportContext
    , exportContext
    , ecCsvExportOptions
    , ecKind
    , ecUri
    , ecFileType
    , ecSqlExportOptions
    , ecDatabases

    -- * UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrNextPageToken
    , ulrKind
    , ulrItems

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

    -- * BackupConfiguration
    , BackupConfiguration
    , backupConfiguration
    , bcEnabled
    , bcStartTime
    , bcKind
    , bcBinaryLogEnabled

    -- * SslCertsInsertRequest
    , SslCertsInsertRequest
    , sslCertsInsertRequest
    , scirCommonName

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

    -- * IpConfiguration
    , IpConfiguration
    , ipConfiguration
    , icAuthorizedNetworks
    , icRequireSsl
    , icIpv4Enabled
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types.Product
import           Network.Google.SQLAdmin.Types.Sum

-- | URL referring to version 'v1beta4' of the Cloud SQL Administration API.
sQLAdminURL :: BaseUrl
sQLAdminURL
  = BaseUrl Https
      "https://www.googleapis.com/sql/v1beta4/"
      443
