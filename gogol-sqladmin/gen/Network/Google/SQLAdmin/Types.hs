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

    -- * SSLCert
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

    -- * InstancesExportRequest
    , InstancesExportRequest
    , instancesExportRequest
    , ierExportContext

    -- * DatabasesListResponse
    , DatabasesListResponse
    , databasesListResponse
    , dlrKind
    , dlrItems

    -- * OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrKind
    , olrItems

    -- * OnPremisesConfiguration
    , OnPremisesConfiguration
    , onPremisesConfiguration
    , opcKind
    , opcHostPort

    -- * ImportContext
    , ImportContext
    , importContext
    , icDatabase
    , icKind
    , icCSVImportOptions
    , icURI
    , icFileType

    -- * Settings
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

    -- * SSLCertsCreateEphemeralRequest
    , SSLCertsCreateEphemeralRequest
    , sSLCertsCreateEphemeralRequest
    , sccerPublicKey

    -- * Database
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

    -- * IPMapping
    , IPMapping
    , iPMapping
    , imIPAddress
    , imTimeToRetire

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

    -- * TiersListResponse
    , TiersListResponse
    , tiersListResponse
    , tlrKind
    , tlrItems

    -- * BinLogCoordinates
    , BinLogCoordinates
    , binLogCoordinates
    , blcBinLogPosition
    , blcKind
    , blcBinLogFileName

    -- * ExportContext
    , ExportContext
    , exportContext
    , ecCSVExportOptions
    , ecKind
    , ecURI
    , ecFileType
    , ecSQLExportOptions
    , ecDatabases

    -- * UsersListResponse
    , UsersListResponse
    , usersListResponse
    , ulrNextPageToken
    , ulrKind
    , ulrItems

    -- * OperationErrors
    , OperationErrors
    , operationErrors
    , oeKind
    , oeErrors

    -- * SSLCertsListResponse
    , SSLCertsListResponse
    , sSLCertsListResponse
    , sclrKind
    , sclrItems

    -- * IPConfiguration
    , IPConfiguration
    , iPConfiguration
    , icAuthorizedNetworks
    , icRequireSSL
    , icIPv4Enabled

    -- * ExportContextCSVExportOptions
    , ExportContextCSVExportOptions
    , exportContextCSVExportOptions
    , ecceoSelectQuery

    -- * SSLCertsInsertRequest
    , SSLCertsInsertRequest
    , sSLCertsInsertRequest
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

    -- * ImportContextCSVImportOptions
    , ImportContextCSVImportOptions
    , importContextCSVImportOptions
    , iccioColumns
    , iccioTable

    -- * DatabaseInstance
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

    -- * ACLEntry
    , ACLEntry
    , aCLEntry
    , aeKind
    , aeValue
    , aeName
    , aeExpirationTime

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

    -- * Tier
    , Tier
    , tier
    , tKind
    , tTier
    , tRegion
    , tDiskQuota
    , tRAM

    -- * DatabaseFlags
    , DatabaseFlags
    , databaseFlags
    , dfValue
    , dfName

    -- * InstancesRestoreBackupRequest
    , InstancesRestoreBackupRequest
    , instancesRestoreBackupRequest
    , irbrRestoreBackupContext

    -- * OperationError
    , OperationError
    , operationError
    , opeKind
    , opeCode
    , opeMessage

    -- * SSLCertDetail
    , SSLCertDetail
    , sSLCertDetail
    , scdCertInfo
    , scdCertPrivateKey

    -- * BackupRunsListResponse
    , BackupRunsListResponse
    , backupRunsListResponse
    , brlrNextPageToken
    , brlrKind
    , brlrItems

    -- * InstancesCloneRequest
    , InstancesCloneRequest
    , instancesCloneRequest
    , icrCloneContext

    -- * ReplicaConfiguration
    , ReplicaConfiguration
    , replicaConfiguration
    , rcKind
    , rcMysqlReplicaConfiguration

    -- * SSLCertsInsertResponse
    , SSLCertsInsertResponse
    , sSLCertsInsertResponse
    , scirServerCaCert
    , scirKind
    , scirClientCert

    -- * InstancesListResponse
    , InstancesListResponse
    , instancesListResponse
    , ilrNextPageToken
    , ilrKind
    , ilrItems

    -- * LocationPreference
    , LocationPreference
    , locationPreference
    , lpKind
    , lpFollowGaeApplication
    , lpZone

    -- * InstancesImportRequest
    , InstancesImportRequest
    , instancesImportRequest
    , iirImportContext

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

    -- * ExportContextSQLExportOptions
    , ExportContextSQLExportOptions
    , exportContextSQLExportOptions
    , ecsqleoSchemaOnly
    , ecsqleoTables

    -- * RestoreBackupContext
    , RestoreBackupContext
    , restoreBackupContext
    , rbcInstanceId
    , rbcBackupRunId
    , rbcKind
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
