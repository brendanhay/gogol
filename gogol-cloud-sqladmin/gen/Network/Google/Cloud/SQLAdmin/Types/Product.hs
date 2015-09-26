{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Cloud.SQLAdmin.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Cloud.SQLAdmin.Types.Product where

import           Network.Google.Cloud.SQLAdmin.Types.Sum
import           Network.Google.Prelude

-- | An entry for an Access Control list.
--
-- /See:/ 'aclEntry' smart constructor.
data AclEntry = AclEntry
    { _aeKind           :: !Text
    , _aeValue          :: !(Maybe Text)
    , _aeName           :: !(Maybe Text)
    , _aeExpirationTime :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AclEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeKind'
--
-- * 'aeValue'
--
-- * 'aeName'
--
-- * 'aeExpirationTime'
aclEntry
    :: AclEntry
aclEntry =
    AclEntry
    { _aeKind = "sql#aclEntry"
    , _aeValue = Nothing
    , _aeName = Nothing
    , _aeExpirationTime = Nothing
    }

-- | This is always sql#aclEntry.
aeKind :: Lens' AclEntry Text
aeKind = lens _aeKind (\ s a -> s{_aeKind = a})

-- | The whitelisted value for the access control list.
aeValue :: Lens' AclEntry (Maybe Text)
aeValue = lens _aeValue (\ s a -> s{_aeValue = a})

-- | An optional label to identify this entry.
aeName :: Lens' AclEntry (Maybe Text)
aeName = lens _aeName (\ s a -> s{_aeName = a})

-- | The time when this access control entry expires in RFC 3339 format, for
-- example 2012-11-15T16:19:00.094Z.
aeExpirationTime :: Lens' AclEntry (Maybe UTCTime)
aeExpirationTime
  = lens _aeExpirationTime
      (\ s a -> s{_aeExpirationTime = a})

-- | Database instance backup configuration.
--
-- /See:/ 'backupConfiguration' smart constructor.
data BackupConfiguration = BackupConfiguration
    { _bcEnabled          :: !(Maybe Bool)
    , _bcStartTime        :: !(Maybe Text)
    , _bcKind             :: !Text
    , _bcBinaryLogEnabled :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcEnabled'
--
-- * 'bcStartTime'
--
-- * 'bcKind'
--
-- * 'bcBinaryLogEnabled'
backupConfiguration
    :: BackupConfiguration
backupConfiguration =
    BackupConfiguration
    { _bcEnabled = Nothing
    , _bcStartTime = Nothing
    , _bcKind = "sql#backupConfiguration"
    , _bcBinaryLogEnabled = Nothing
    }

-- | Whether this configuration is enabled.
bcEnabled :: Lens' BackupConfiguration (Maybe Bool)
bcEnabled
  = lens _bcEnabled (\ s a -> s{_bcEnabled = a})

-- | Start time for the daily backup configuration in UTC timezone in the 24
-- hour format - HH:MM.
bcStartTime :: Lens' BackupConfiguration (Maybe Text)
bcStartTime
  = lens _bcStartTime (\ s a -> s{_bcStartTime = a})

-- | This is always sql#backupConfiguration.
bcKind :: Lens' BackupConfiguration Text
bcKind = lens _bcKind (\ s a -> s{_bcKind = a})

-- | Whether binary log is enabled. If backup configuration is disabled,
-- binary log must be disabled as well.
bcBinaryLogEnabled :: Lens' BackupConfiguration (Maybe Bool)
bcBinaryLogEnabled
  = lens _bcBinaryLogEnabled
      (\ s a -> s{_bcBinaryLogEnabled = a})

-- | A database instance backup run resource.
--
-- /See:/ 'backupRun' smart constructor.
data BackupRun = BackupRun
    { _brStatus          :: !(Maybe Text)
    , _brStartTime       :: !(Maybe UTCTime)
    , _brKind            :: !Text
    , _brError           :: !(Maybe (Maybe OperationError))
    , _brWindowStartTime :: !(Maybe UTCTime)
    , _brSelfLink        :: !(Maybe Text)
    , _brEndTime         :: !(Maybe UTCTime)
    , _brId              :: !(Maybe Int64)
    , _brEnqueuedTime    :: !(Maybe UTCTime)
    , _brInstance        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brStatus'
--
-- * 'brStartTime'
--
-- * 'brKind'
--
-- * 'brError'
--
-- * 'brWindowStartTime'
--
-- * 'brSelfLink'
--
-- * 'brEndTime'
--
-- * 'brId'
--
-- * 'brEnqueuedTime'
--
-- * 'brInstance'
backupRun
    :: BackupRun
backupRun =
    BackupRun
    { _brStatus = Nothing
    , _brStartTime = Nothing
    , _brKind = "sql#backupRun"
    , _brError = Nothing
    , _brWindowStartTime = Nothing
    , _brSelfLink = Nothing
    , _brEndTime = Nothing
    , _brId = Nothing
    , _brEnqueuedTime = Nothing
    , _brInstance = Nothing
    }

-- | The status of this run.
brStatus :: Lens' BackupRun (Maybe Text)
brStatus = lens _brStatus (\ s a -> s{_brStatus = a})

-- | The time the backup operation actually started in UTC timezone in RFC
-- 3339 format, for example 2012-11-15T16:19:00.094Z.
brStartTime :: Lens' BackupRun (Maybe UTCTime)
brStartTime
  = lens _brStartTime (\ s a -> s{_brStartTime = a})

-- | This is always sql#backupRun.
brKind :: Lens' BackupRun Text
brKind = lens _brKind (\ s a -> s{_brKind = a})

-- | Information about why the backup operation failed. This is only present
-- if the run has the FAILED status.
brError :: Lens' BackupRun (Maybe (Maybe OperationError))
brError = lens _brError (\ s a -> s{_brError = a})

-- | The start time of the backup window during which this the backup was
-- attempted in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
brWindowStartTime :: Lens' BackupRun (Maybe UTCTime)
brWindowStartTime
  = lens _brWindowStartTime
      (\ s a -> s{_brWindowStartTime = a})

-- | The URI of this resource.
brSelfLink :: Lens' BackupRun (Maybe Text)
brSelfLink
  = lens _brSelfLink (\ s a -> s{_brSelfLink = a})

-- | The time the backup operation completed in UTC timezone in RFC 3339
-- format, for example 2012-11-15T16:19:00.094Z.
brEndTime :: Lens' BackupRun (Maybe UTCTime)
brEndTime
  = lens _brEndTime (\ s a -> s{_brEndTime = a})

-- | A unique identifier for this backup run. Note that this is unique only
-- within the scope of a particular Cloud SQL instance.
brId :: Lens' BackupRun (Maybe Int64)
brId = lens _brId (\ s a -> s{_brId = a})

-- | The time the run was enqueued in UTC timezone in RFC 3339 format, for
-- example 2012-11-15T16:19:00.094Z.
brEnqueuedTime :: Lens' BackupRun (Maybe UTCTime)
brEnqueuedTime
  = lens _brEnqueuedTime
      (\ s a -> s{_brEnqueuedTime = a})

-- | Name of the database instance.
brInstance :: Lens' BackupRun (Maybe Text)
brInstance
  = lens _brInstance (\ s a -> s{_brInstance = a})

-- | Backup run list results.
--
-- /See:/ 'backupRunsListResponse' smart constructor.
data BackupRunsListResponse = BackupRunsListResponse
    { _brlrNextPageToken :: !(Maybe Text)
    , _brlrKind          :: !Text
    , _brlrItems         :: !(Maybe [Maybe BackupRun])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupRunsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brlrNextPageToken'
--
-- * 'brlrKind'
--
-- * 'brlrItems'
backupRunsListResponse
    :: BackupRunsListResponse
backupRunsListResponse =
    BackupRunsListResponse
    { _brlrNextPageToken = Nothing
    , _brlrKind = "sql#backupRunsList"
    , _brlrItems = Nothing
    }

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
brlrNextPageToken :: Lens' BackupRunsListResponse (Maybe Text)
brlrNextPageToken
  = lens _brlrNextPageToken
      (\ s a -> s{_brlrNextPageToken = a})

-- | This is always sql#backupRunsList.
brlrKind :: Lens' BackupRunsListResponse Text
brlrKind = lens _brlrKind (\ s a -> s{_brlrKind = a})

-- | A list of backup runs in reverse chronological order of the enqueued
-- time.
brlrItems :: Lens' BackupRunsListResponse [Maybe BackupRun]
brlrItems
  = lens _brlrItems (\ s a -> s{_brlrItems = a}) .
      _Default
      . _Coerce

-- | Binary log coordinates.
--
-- /See:/ 'binLogCoordinates' smart constructor.
data BinLogCoordinates = BinLogCoordinates
    { _blcBinLogPosition :: !(Maybe Int64)
    , _blcKind           :: !Text
    , _blcBinLogFileName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BinLogCoordinates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blcBinLogPosition'
--
-- * 'blcKind'
--
-- * 'blcBinLogFileName'
binLogCoordinates
    :: BinLogCoordinates
binLogCoordinates =
    BinLogCoordinates
    { _blcBinLogPosition = Nothing
    , _blcKind = "sql#binLogCoordinates"
    , _blcBinLogFileName = Nothing
    }

-- | Position (offset) within the binary log file.
blcBinLogPosition :: Lens' BinLogCoordinates (Maybe Int64)
blcBinLogPosition
  = lens _blcBinLogPosition
      (\ s a -> s{_blcBinLogPosition = a})

-- | This is always sql#binLogCoordinates.
blcKind :: Lens' BinLogCoordinates Text
blcKind = lens _blcKind (\ s a -> s{_blcKind = a})

-- | Name of the binary log file for a Cloud SQL instance.
blcBinLogFileName :: Lens' BinLogCoordinates (Maybe Text)
blcBinLogFileName
  = lens _blcBinLogFileName
      (\ s a -> s{_blcBinLogFileName = a})

-- | Database instance clone context.
--
-- /See:/ 'cloneContext' smart constructor.
data CloneContext = CloneContext
    { _ccDestinationInstanceName :: !(Maybe Text)
    , _ccBinLogCoordinates       :: !(Maybe (Maybe BinLogCoordinates))
    , _ccKind                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloneContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccDestinationInstanceName'
--
-- * 'ccBinLogCoordinates'
--
-- * 'ccKind'
cloneContext
    :: CloneContext
cloneContext =
    CloneContext
    { _ccDestinationInstanceName = Nothing
    , _ccBinLogCoordinates = Nothing
    , _ccKind = "sql#cloneContext"
    }

-- | Name of the Cloud SQL instance to be created as a clone.
ccDestinationInstanceName :: Lens' CloneContext (Maybe Text)
ccDestinationInstanceName
  = lens _ccDestinationInstanceName
      (\ s a -> s{_ccDestinationInstanceName = a})

-- | Binary log coordinates, if specified, indentify the the position up to
-- which the source instance should be cloned. If not specified, the source
-- instance is cloned up to the most recent binary log coordintes.
ccBinLogCoordinates :: Lens' CloneContext (Maybe (Maybe BinLogCoordinates))
ccBinLogCoordinates
  = lens _ccBinLogCoordinates
      (\ s a -> s{_ccBinLogCoordinates = a})

-- | This is always sql#cloneContext.
ccKind :: Lens' CloneContext Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | A database resource inside a Cloud SQL instance.
--
-- /See:/ 'database' smart constructor.
data Database = Database
    { _dEtag      :: !(Maybe Text)
    , _dProject   :: !(Maybe Text)
    , _dKind      :: !Text
    , _dCollation :: !(Maybe Text)
    , _dSelfLink  :: !(Maybe Text)
    , _dName      :: !(Maybe Text)
    , _dCharset   :: !(Maybe Text)
    , _dInstance  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Database' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dEtag'
--
-- * 'dProject'
--
-- * 'dKind'
--
-- * 'dCollation'
--
-- * 'dSelfLink'
--
-- * 'dName'
--
-- * 'dCharset'
--
-- * 'dInstance'
database
    :: Database
database =
    Database
    { _dEtag = Nothing
    , _dProject = Nothing
    , _dKind = "sql#database"
    , _dCollation = Nothing
    , _dSelfLink = Nothing
    , _dName = Nothing
    , _dCharset = Nothing
    , _dInstance = Nothing
    }

-- | HTTP 1.1 Entity tag for the resource.
dEtag :: Lens' Database (Maybe Text)
dEtag = lens _dEtag (\ s a -> s{_dEtag = a})

-- | The project ID of the project containing the Cloud SQL database. The
-- Google apps domain is prefixed if applicable.
dProject :: Lens' Database (Maybe Text)
dProject = lens _dProject (\ s a -> s{_dProject = a})

-- | This is always sql#database.
dKind :: Lens' Database Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | The MySQL collation value.
dCollation :: Lens' Database (Maybe Text)
dCollation
  = lens _dCollation (\ s a -> s{_dCollation = a})

-- | The URI of this resource.
dSelfLink :: Lens' Database (Maybe Text)
dSelfLink
  = lens _dSelfLink (\ s a -> s{_dSelfLink = a})

-- | The name of the database in the Cloud SQL instance. This does not
-- include the project ID or instance name.
dName :: Lens' Database (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | The MySQL charset value.
dCharset :: Lens' Database (Maybe Text)
dCharset = lens _dCharset (\ s a -> s{_dCharset = a})

-- | The name of the Cloud SQL instance. This does not include the project
-- ID.
dInstance :: Lens' Database (Maybe Text)
dInstance
  = lens _dInstance (\ s a -> s{_dInstance = a})

-- | MySQL flags for Cloud SQL instances.
--
-- /See:/ 'databaseFlags' smart constructor.
data DatabaseFlags = DatabaseFlags
    { _dfValue :: !(Maybe Text)
    , _dfName  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabaseFlags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfValue'
--
-- * 'dfName'
databaseFlags
    :: DatabaseFlags
databaseFlags =
    DatabaseFlags
    { _dfValue = Nothing
    , _dfName = Nothing
    }

-- | The value of the flag. Booleans should be set to on for true and off for
-- false. This field must be omitted if the flag doesn\'t take a value.
dfValue :: Lens' DatabaseFlags (Maybe Text)
dfValue = lens _dfValue (\ s a -> s{_dfValue = a})

-- | The name of the flag. These flags are passed at instance startup, so
-- include both MySQL server options and MySQL system variables. Flags
-- should be specified with underscores, not hyphens. For more information,
-- see Configuring MySQL Flags in the Google Cloud SQL documentation, as
-- well as the official MySQL documentation for server options and system
-- variables.
dfName :: Lens' DatabaseFlags (Maybe Text)
dfName = lens _dfName (\ s a -> s{_dfName = a})

-- | A Cloud SQL instance resource.
--
-- /See:/ 'databaseInstance' smart constructor.
data DatabaseInstance = DatabaseInstance
    { _diMaxDiskSize                :: !(Maybe Int64)
    , _diOnPremisesConfiguration    :: !(Maybe (Maybe OnPremisesConfiguration))
    , _diEtag                       :: !(Maybe Text)
    , _diState                      :: !(Maybe Text)
    , _diIpv6Address                :: !(Maybe Text)
    , _diServerCaCert               :: !(Maybe (Maybe SslCert))
    , _diDatabaseVersion            :: !(Maybe Text)
    , _diProject                    :: !(Maybe Text)
    , _diSettings                   :: !(Maybe (Maybe Settings))
    , _diKind                       :: !Text
    , _diCurrentDiskSize            :: !(Maybe Int64)
    , _diInstanceType               :: !(Maybe Text)
    , _diReplicaNames               :: !(Maybe [Text])
    , _diSelfLink                   :: !(Maybe Text)
    , _diName                       :: !(Maybe Text)
    , _diMasterInstanceName         :: !(Maybe Text)
    , _diReplicaConfiguration       :: !(Maybe (Maybe ReplicaConfiguration))
    , _diRegion                     :: !(Maybe Text)
    , _diServiceAccountEmailAddress :: !(Maybe Text)
    , _diIpAddresses                :: !(Maybe [Maybe IpMapping])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabaseInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diMaxDiskSize'
--
-- * 'diOnPremisesConfiguration'
--
-- * 'diEtag'
--
-- * 'diState'
--
-- * 'diIpv6Address'
--
-- * 'diServerCaCert'
--
-- * 'diDatabaseVersion'
--
-- * 'diProject'
--
-- * 'diSettings'
--
-- * 'diKind'
--
-- * 'diCurrentDiskSize'
--
-- * 'diInstanceType'
--
-- * 'diReplicaNames'
--
-- * 'diSelfLink'
--
-- * 'diName'
--
-- * 'diMasterInstanceName'
--
-- * 'diReplicaConfiguration'
--
-- * 'diRegion'
--
-- * 'diServiceAccountEmailAddress'
--
-- * 'diIpAddresses'
databaseInstance
    :: DatabaseInstance
databaseInstance =
    DatabaseInstance
    { _diMaxDiskSize = Nothing
    , _diOnPremisesConfiguration = Nothing
    , _diEtag = Nothing
    , _diState = Nothing
    , _diIpv6Address = Nothing
    , _diServerCaCert = Nothing
    , _diDatabaseVersion = Nothing
    , _diProject = Nothing
    , _diSettings = Nothing
    , _diKind = "sql#instance"
    , _diCurrentDiskSize = Nothing
    , _diInstanceType = Nothing
    , _diReplicaNames = Nothing
    , _diSelfLink = Nothing
    , _diName = Nothing
    , _diMasterInstanceName = Nothing
    , _diReplicaConfiguration = Nothing
    , _diRegion = Nothing
    , _diServiceAccountEmailAddress = Nothing
    , _diIpAddresses = Nothing
    }

-- | The maximum disk size of the instance in bytes.
diMaxDiskSize :: Lens' DatabaseInstance (Maybe Int64)
diMaxDiskSize
  = lens _diMaxDiskSize
      (\ s a -> s{_diMaxDiskSize = a})

-- | Configuration specific to on-premises instances.
diOnPremisesConfiguration :: Lens' DatabaseInstance (Maybe (Maybe OnPremisesConfiguration))
diOnPremisesConfiguration
  = lens _diOnPremisesConfiguration
      (\ s a -> s{_diOnPremisesConfiguration = a})

-- | HTTP 1.1 Entity tag for the resource.
diEtag :: Lens' DatabaseInstance (Maybe Text)
diEtag = lens _diEtag (\ s a -> s{_diEtag = a})

-- | The current serving state of the Cloud SQL instance. This can be one of
-- the following. RUNNABLE: The instance is running, or is ready to run
-- when accessed. SUSPENDED: The instance is not available, for example due
-- to problems with billing. PENDING_CREATE: The instance is being created.
-- MAINTENANCE: The instance is down for maintenance. FAILED: The instance
-- creation failed. UNKNOWN_STATE: The state of the instance is unknown.
diState :: Lens' DatabaseInstance (Maybe Text)
diState = lens _diState (\ s a -> s{_diState = a})

-- | The IPv6 address assigned to the instance.
diIpv6Address :: Lens' DatabaseInstance (Maybe Text)
diIpv6Address
  = lens _diIpv6Address
      (\ s a -> s{_diIpv6Address = a})

-- | SSL configuration.
diServerCaCert :: Lens' DatabaseInstance (Maybe (Maybe SslCert))
diServerCaCert
  = lens _diServerCaCert
      (\ s a -> s{_diServerCaCert = a})

-- | The database engine type and version. Can be MYSQL_5_5 or MYSQL_5_6.
-- Defaults to MYSQL_5_5. The databaseVersion can not be changed after
-- instance creation.
diDatabaseVersion :: Lens' DatabaseInstance (Maybe Text)
diDatabaseVersion
  = lens _diDatabaseVersion
      (\ s a -> s{_diDatabaseVersion = a})

-- | The project ID of the project containing the Cloud SQL instance. The
-- Google apps domain is prefixed if applicable.
diProject :: Lens' DatabaseInstance (Maybe Text)
diProject
  = lens _diProject (\ s a -> s{_diProject = a})

-- | The user settings.
diSettings :: Lens' DatabaseInstance (Maybe (Maybe Settings))
diSettings
  = lens _diSettings (\ s a -> s{_diSettings = a})

-- | This is always sql#instance.
diKind :: Lens' DatabaseInstance Text
diKind = lens _diKind (\ s a -> s{_diKind = a})

-- | The current disk usage of the instance in bytes.
diCurrentDiskSize :: Lens' DatabaseInstance (Maybe Int64)
diCurrentDiskSize
  = lens _diCurrentDiskSize
      (\ s a -> s{_diCurrentDiskSize = a})

-- | The instance type. This can be one of the following. CLOUD_SQL_INSTANCE:
-- A Cloud SQL instance that is not replicating from a master.
-- ON_PREMISES_INSTANCE: An instance running on the customer\'s premises.
-- READ_REPLICA_INSTANCE: A Cloud SQL instance configured as a
-- read-replica.
diInstanceType :: Lens' DatabaseInstance (Maybe Text)
diInstanceType
  = lens _diInstanceType
      (\ s a -> s{_diInstanceType = a})

-- | The replicas of the instance.
diReplicaNames :: Lens' DatabaseInstance [Text]
diReplicaNames
  = lens _diReplicaNames
      (\ s a -> s{_diReplicaNames = a})
      . _Default
      . _Coerce

-- | The URI of this resource.
diSelfLink :: Lens' DatabaseInstance (Maybe Text)
diSelfLink
  = lens _diSelfLink (\ s a -> s{_diSelfLink = a})

-- | Name of the Cloud SQL instance. This does not include the project ID.
diName :: Lens' DatabaseInstance (Maybe Text)
diName = lens _diName (\ s a -> s{_diName = a})

-- | The name of the instance which will act as master in the replication
-- setup.
diMasterInstanceName :: Lens' DatabaseInstance (Maybe Text)
diMasterInstanceName
  = lens _diMasterInstanceName
      (\ s a -> s{_diMasterInstanceName = a})

-- | Configuration specific to read-replicas replicating from on-premises
-- masters.
diReplicaConfiguration :: Lens' DatabaseInstance (Maybe (Maybe ReplicaConfiguration))
diReplicaConfiguration
  = lens _diReplicaConfiguration
      (\ s a -> s{_diReplicaConfiguration = a})

-- | The geographical region. Can be us-central, asia-east1 or europe-west1.
-- Defaults to us-central. The region can not be changed after instance
-- creation.
diRegion :: Lens' DatabaseInstance (Maybe Text)
diRegion = lens _diRegion (\ s a -> s{_diRegion = a})

-- | The service account email address assigned to the instance.
diServiceAccountEmailAddress :: Lens' DatabaseInstance (Maybe Text)
diServiceAccountEmailAddress
  = lens _diServiceAccountEmailAddress
      (\ s a -> s{_diServiceAccountEmailAddress = a})

-- | The assigned IP addresses for the instance.
diIpAddresses :: Lens' DatabaseInstance [Maybe IpMapping]
diIpAddresses
  = lens _diIpAddresses
      (\ s a -> s{_diIpAddresses = a})
      . _Default
      . _Coerce

-- | Database list response.
--
-- /See:/ 'databasesListResponse' smart constructor.
data DatabasesListResponse = DatabasesListResponse
    { _dlrKind  :: !Text
    , _dlrItems :: !(Maybe [Maybe Database])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrKind'
--
-- * 'dlrItems'
databasesListResponse
    :: DatabasesListResponse
databasesListResponse =
    DatabasesListResponse
    { _dlrKind = "sql#databasesList"
    , _dlrItems = Nothing
    }

-- | This is always sql#databasesList.
dlrKind :: Lens' DatabasesListResponse Text
dlrKind = lens _dlrKind (\ s a -> s{_dlrKind = a})

-- | List of database resources in the instance.
dlrItems :: Lens' DatabasesListResponse [Maybe Database]
dlrItems
  = lens _dlrItems (\ s a -> s{_dlrItems = a}) .
      _Default
      . _Coerce

-- | Database instance export context.
--
-- /See:/ 'exportContext' smart constructor.
data ExportContext = ExportContext
    { _ecCsvExportOptions :: !(Maybe ExportContextCsvExportOptions)
    , _ecKind             :: !Text
    , _ecUri              :: !(Maybe Text)
    , _ecFileType         :: !(Maybe Text)
    , _ecSqlExportOptions :: !(Maybe ExportContextSqlExportOptions)
    , _ecDatabases        :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecCsvExportOptions'
--
-- * 'ecKind'
--
-- * 'ecUri'
--
-- * 'ecFileType'
--
-- * 'ecSqlExportOptions'
--
-- * 'ecDatabases'
exportContext
    :: ExportContext
exportContext =
    ExportContext
    { _ecCsvExportOptions = Nothing
    , _ecKind = "sql#exportContext"
    , _ecUri = Nothing
    , _ecFileType = Nothing
    , _ecSqlExportOptions = Nothing
    , _ecDatabases = Nothing
    }

-- | Options for exporting data as CSV.
ecCsvExportOptions :: Lens' ExportContext (Maybe ExportContextCsvExportOptions)
ecCsvExportOptions
  = lens _ecCsvExportOptions
      (\ s a -> s{_ecCsvExportOptions = a})

-- | This is always sql#exportContext.
ecKind :: Lens' ExportContext Text
ecKind = lens _ecKind (\ s a -> s{_ecKind = a})

-- | The path to the file in Google Cloud Storage where the export will be
-- stored. The URI is in the form gs:\/\/bucketName\/fileName. If the file
-- already exists, the operation fails. If fileType is SQL and the filename
-- ends with .gz, the contents are compressed.
ecUri :: Lens' ExportContext (Maybe Text)
ecUri = lens _ecUri (\ s a -> s{_ecUri = a})

-- | The file type for the specified uri. SQL: The file contains SQL
-- statements. CSV: The file contains CSV data.
ecFileType :: Lens' ExportContext (Maybe Text)
ecFileType
  = lens _ecFileType (\ s a -> s{_ecFileType = a})

-- | Options for exporting data as SQL statements.
ecSqlExportOptions :: Lens' ExportContext (Maybe ExportContextSqlExportOptions)
ecSqlExportOptions
  = lens _ecSqlExportOptions
      (\ s a -> s{_ecSqlExportOptions = a})

-- | Databases (for example, guestbook) from which the export is made. If
-- fileType is SQL and no database is specified, all databases are
-- exported. If fileType is CSV, you can optionally specify at most one
-- database to export. If csvExportOptions.selectQuery also specifies the
-- database, this field will be ignored.
ecDatabases :: Lens' ExportContext [Text]
ecDatabases
  = lens _ecDatabases (\ s a -> s{_ecDatabases = a}) .
      _Default
      . _Coerce

-- | Options for exporting data as CSV.
--
-- /See:/ 'exportContextCsvExportOptions' smart constructor.
newtype ExportContextCsvExportOptions = ExportContextCsvExportOptions
    { _ecceoSelectQuery :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportContextCsvExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecceoSelectQuery'
exportContextCsvExportOptions
    :: ExportContextCsvExportOptions
exportContextCsvExportOptions =
    ExportContextCsvExportOptions
    { _ecceoSelectQuery = Nothing
    }

-- | The select query used to extract the data.
ecceoSelectQuery :: Lens' ExportContextCsvExportOptions (Maybe Text)
ecceoSelectQuery
  = lens _ecceoSelectQuery
      (\ s a -> s{_ecceoSelectQuery = a})

-- | Options for exporting data as SQL statements.
--
-- /See:/ 'exportContextSqlExportOptions' smart constructor.
data ExportContextSqlExportOptions = ExportContextSqlExportOptions
    { _ecseoSchemaOnly :: !(Maybe Bool)
    , _ecseoTables     :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportContextSqlExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecseoSchemaOnly'
--
-- * 'ecseoTables'
exportContextSqlExportOptions
    :: ExportContextSqlExportOptions
exportContextSqlExportOptions =
    ExportContextSqlExportOptions
    { _ecseoSchemaOnly = Nothing
    , _ecseoTables = Nothing
    }

-- | Export only schema.
ecseoSchemaOnly :: Lens' ExportContextSqlExportOptions (Maybe Bool)
ecseoSchemaOnly
  = lens _ecseoSchemaOnly
      (\ s a -> s{_ecseoSchemaOnly = a})

-- | Tables to export, or that were exported, from the specified database. If
-- you specify tables, specify one and only one database.
ecseoTables :: Lens' ExportContextSqlExportOptions [Text]
ecseoTables
  = lens _ecseoTables (\ s a -> s{_ecseoTables = a}) .
      _Default
      . _Coerce

-- | A Google Cloud SQL service flag resource.
--
-- /See:/ 'flag' smart constructor.
data Flag = Flag
    { _fMaxValue            :: !(Maybe Int64)
    , _fKind                :: !Text
    , _fAppliesTo           :: !(Maybe [Text])
    , _fName                :: !(Maybe Text)
    , _fAllowedStringValues :: !(Maybe [Text])
    , _fType                :: !(Maybe Text)
    , _fMinValue            :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Flag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fMaxValue'
--
-- * 'fKind'
--
-- * 'fAppliesTo'
--
-- * 'fName'
--
-- * 'fAllowedStringValues'
--
-- * 'fType'
--
-- * 'fMinValue'
flag
    :: Flag
flag =
    Flag
    { _fMaxValue = Nothing
    , _fKind = "sql#flag"
    , _fAppliesTo = Nothing
    , _fName = Nothing
    , _fAllowedStringValues = Nothing
    , _fType = Nothing
    , _fMinValue = Nothing
    }

-- | For INTEGER flags, the maximum allowed value.
fMaxValue :: Lens' Flag (Maybe Int64)
fMaxValue
  = lens _fMaxValue (\ s a -> s{_fMaxValue = a})

-- | This is always sql#flag.
fKind :: Lens' Flag Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | The database version this flag applies to. Currently this can only be
-- [MYSQL_5_5].
fAppliesTo :: Lens' Flag [Text]
fAppliesTo
  = lens _fAppliesTo (\ s a -> s{_fAppliesTo = a}) .
      _Default
      . _Coerce

-- | This is the name of the flag. Flag names always use underscores, not
-- hyphens, e.g. max_allowed_packet
fName :: Lens' Flag (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | For STRING flags, a list of strings that the value can be set to.
fAllowedStringValues :: Lens' Flag [Text]
fAllowedStringValues
  = lens _fAllowedStringValues
      (\ s a -> s{_fAllowedStringValues = a})
      . _Default
      . _Coerce

-- | The type of the flag. Flags are typed to being BOOLEAN, STRING, INTEGER
-- or NONE. NONE is used for flags which do not take a value, such as
-- skip_grant_tables.
fType :: Lens' Flag (Maybe Text)
fType = lens _fType (\ s a -> s{_fType = a})

-- | For INTEGER flags, the minimum allowed value.
fMinValue :: Lens' Flag (Maybe Int64)
fMinValue
  = lens _fMinValue (\ s a -> s{_fMinValue = a})

-- | Flags list response.
--
-- /See:/ 'flagsListResponse' smart constructor.
data FlagsListResponse = FlagsListResponse
    { _flrKind  :: !Text
    , _flrItems :: !(Maybe [Maybe Flag])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FlagsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flrKind'
--
-- * 'flrItems'
flagsListResponse
    :: FlagsListResponse
flagsListResponse =
    FlagsListResponse
    { _flrKind = "sql#flagsList"
    , _flrItems = Nothing
    }

-- | This is always sql#flagsList.
flrKind :: Lens' FlagsListResponse Text
flrKind = lens _flrKind (\ s a -> s{_flrKind = a})

-- | List of flags.
flrItems :: Lens' FlagsListResponse [Maybe Flag]
flrItems
  = lens _flrItems (\ s a -> s{_flrItems = a}) .
      _Default
      . _Coerce

-- | Database instance import context.
--
-- /See:/ 'importContext' smart constructor.
data ImportContext = ImportContext
    { _icDatabase         :: !(Maybe Text)
    , _icKind             :: !Text
    , _icCsvImportOptions :: !(Maybe ImportContextCsvImportOptions)
    , _icUri              :: !(Maybe Text)
    , _icFileType         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icDatabase'
--
-- * 'icKind'
--
-- * 'icCsvImportOptions'
--
-- * 'icUri'
--
-- * 'icFileType'
importContext
    :: ImportContext
importContext =
    ImportContext
    { _icDatabase = Nothing
    , _icKind = "sql#importContext"
    , _icCsvImportOptions = Nothing
    , _icUri = Nothing
    , _icFileType = Nothing
    }

-- | The database (for example, guestbook) to which the import is made. If
-- fileType is SQL and no database is specified, it is assumed that the
-- database is specified in the file to be imported. If fileType is CSV, it
-- must be specified.
icDatabase :: Lens' ImportContext (Maybe Text)
icDatabase
  = lens _icDatabase (\ s a -> s{_icDatabase = a})

-- | This is always sql#importContext.
icKind :: Lens' ImportContext Text
icKind = lens _icKind (\ s a -> s{_icKind = a})

-- | Options for importing data as CSV.
icCsvImportOptions :: Lens' ImportContext (Maybe ImportContextCsvImportOptions)
icCsvImportOptions
  = lens _icCsvImportOptions
      (\ s a -> s{_icCsvImportOptions = a})

-- | A path to the file in Google Cloud Storage from which the import is
-- made. The URI is in the form gs:\/\/bucketName\/fileName. Compressed
-- gzip files (.gz) are supported when fileType is SQL.
icUri :: Lens' ImportContext (Maybe Text)
icUri = lens _icUri (\ s a -> s{_icUri = a})

-- | The file type for the specified uri. SQL: The file contains SQL
-- statements. CSV: The file contains CSV data.
icFileType :: Lens' ImportContext (Maybe Text)
icFileType
  = lens _icFileType (\ s a -> s{_icFileType = a})

-- | Options for importing data as CSV.
--
-- /See:/ 'importContextCsvImportOptions' smart constructor.
data ImportContextCsvImportOptions = ImportContextCsvImportOptions
    { _iccioColumns :: !(Maybe [Text])
    , _iccioTable   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportContextCsvImportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iccioColumns'
--
-- * 'iccioTable'
importContextCsvImportOptions
    :: ImportContextCsvImportOptions
importContextCsvImportOptions =
    ImportContextCsvImportOptions
    { _iccioColumns = Nothing
    , _iccioTable = Nothing
    }

-- | The columns to which CSV data is imported. If not specified, all columns
-- of the database table are loaded with CSV data.
iccioColumns :: Lens' ImportContextCsvImportOptions [Text]
iccioColumns
  = lens _iccioColumns (\ s a -> s{_iccioColumns = a})
      . _Default
      . _Coerce

-- | The table to which CSV data is imported.
iccioTable :: Lens' ImportContextCsvImportOptions (Maybe Text)
iccioTable
  = lens _iccioTable (\ s a -> s{_iccioTable = a})

-- | Database instance clone request.
--
-- /See:/ 'instancesCloneRequest' smart constructor.
newtype InstancesCloneRequest = InstancesCloneRequest
    { _icrCloneContext :: Maybe (Maybe CloneContext)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesCloneRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icrCloneContext'
instancesCloneRequest
    :: InstancesCloneRequest
instancesCloneRequest =
    InstancesCloneRequest
    { _icrCloneContext = Nothing
    }

-- | Contains details about the clone operation.
icrCloneContext :: Lens' InstancesCloneRequest (Maybe (Maybe CloneContext))
icrCloneContext
  = lens _icrCloneContext
      (\ s a -> s{_icrCloneContext = a})

-- | Database instance export request.
--
-- /See:/ 'instancesExportRequest' smart constructor.
newtype InstancesExportRequest = InstancesExportRequest
    { _ierExportContext :: Maybe (Maybe ExportContext)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesExportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ierExportContext'
instancesExportRequest
    :: InstancesExportRequest
instancesExportRequest =
    InstancesExportRequest
    { _ierExportContext = Nothing
    }

-- | Contains details about the export operation.
ierExportContext :: Lens' InstancesExportRequest (Maybe (Maybe ExportContext))
ierExportContext
  = lens _ierExportContext
      (\ s a -> s{_ierExportContext = a})

-- | Database instance import request.
--
-- /See:/ 'instancesImportRequest' smart constructor.
newtype InstancesImportRequest = InstancesImportRequest
    { _iirImportContext :: Maybe (Maybe ImportContext)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesImportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iirImportContext'
instancesImportRequest
    :: InstancesImportRequest
instancesImportRequest =
    InstancesImportRequest
    { _iirImportContext = Nothing
    }

-- | Contains details about the import operation.
iirImportContext :: Lens' InstancesImportRequest (Maybe (Maybe ImportContext))
iirImportContext
  = lens _iirImportContext
      (\ s a -> s{_iirImportContext = a})

-- | Database instances list response.
--
-- /See:/ 'instancesListResponse' smart constructor.
data InstancesListResponse = InstancesListResponse
    { _ilrNextPageToken :: !(Maybe Text)
    , _ilrKind          :: !Text
    , _ilrItems         :: !(Maybe [Maybe DatabaseInstance])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilrNextPageToken'
--
-- * 'ilrKind'
--
-- * 'ilrItems'
instancesListResponse
    :: InstancesListResponse
instancesListResponse =
    InstancesListResponse
    { _ilrNextPageToken = Nothing
    , _ilrKind = "sql#instancesList"
    , _ilrItems = Nothing
    }

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
ilrNextPageToken :: Lens' InstancesListResponse (Maybe Text)
ilrNextPageToken
  = lens _ilrNextPageToken
      (\ s a -> s{_ilrNextPageToken = a})

-- | This is always sql#instancesList.
ilrKind :: Lens' InstancesListResponse Text
ilrKind = lens _ilrKind (\ s a -> s{_ilrKind = a})

-- | List of database instance resources.
ilrItems :: Lens' InstancesListResponse [Maybe DatabaseInstance]
ilrItems
  = lens _ilrItems (\ s a -> s{_ilrItems = a}) .
      _Default
      . _Coerce

-- | Database instance restore backup request.
--
-- /See:/ 'instancesRestoreBackupRequest' smart constructor.
newtype InstancesRestoreBackupRequest = InstancesRestoreBackupRequest
    { _irbrRestoreBackupContext :: Maybe (Maybe RestoreBackupContext)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesRestoreBackupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irbrRestoreBackupContext'
instancesRestoreBackupRequest
    :: InstancesRestoreBackupRequest
instancesRestoreBackupRequest =
    InstancesRestoreBackupRequest
    { _irbrRestoreBackupContext = Nothing
    }

-- | Parameters required to perform the restore backup operation.
irbrRestoreBackupContext :: Lens' InstancesRestoreBackupRequest (Maybe (Maybe RestoreBackupContext))
irbrRestoreBackupContext
  = lens _irbrRestoreBackupContext
      (\ s a -> s{_irbrRestoreBackupContext = a})

-- | IP Management configuration.
--
-- /See:/ 'ipConfiguration' smart constructor.
data IpConfiguration = IpConfiguration
    { _icAuthorizedNetworks :: !(Maybe [Maybe AclEntry])
    , _icRequireSsl         :: !(Maybe Bool)
    , _icIpv4Enabled        :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IpConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icAuthorizedNetworks'
--
-- * 'icRequireSsl'
--
-- * 'icIpv4Enabled'
ipConfiguration
    :: IpConfiguration
ipConfiguration =
    IpConfiguration
    { _icAuthorizedNetworks = Nothing
    , _icRequireSsl = Nothing
    , _icIpv4Enabled = Nothing
    }

-- | The list of external networks that are allowed to connect to the
-- instance using the IP. In CIDR notation, also known as \'slash\'
-- notation (e.g. 192.168.100.0\/24).
icAuthorizedNetworks :: Lens' IpConfiguration [Maybe AclEntry]
icAuthorizedNetworks
  = lens _icAuthorizedNetworks
      (\ s a -> s{_icAuthorizedNetworks = a})
      . _Default
      . _Coerce

-- | Whether the mysqld should default to \'REQUIRE X509\' for users
-- connecting over IP.
icRequireSsl :: Lens' IpConfiguration (Maybe Bool)
icRequireSsl
  = lens _icRequireSsl (\ s a -> s{_icRequireSsl = a})

-- | Whether the instance should be assigned an IP address or not.
icIpv4Enabled :: Lens' IpConfiguration (Maybe Bool)
icIpv4Enabled
  = lens _icIpv4Enabled
      (\ s a -> s{_icIpv4Enabled = a})

-- | Database instance IP Mapping.
--
-- /See:/ 'ipMapping' smart constructor.
data IpMapping = IpMapping
    { _imIpAddress    :: !(Maybe Text)
    , _imTimeToRetire :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IpMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imIpAddress'
--
-- * 'imTimeToRetire'
ipMapping
    :: IpMapping
ipMapping =
    IpMapping
    { _imIpAddress = Nothing
    , _imTimeToRetire = Nothing
    }

-- | The IP address assigned.
imIpAddress :: Lens' IpMapping (Maybe Text)
imIpAddress
  = lens _imIpAddress (\ s a -> s{_imIpAddress = a})

-- | The due time for this IP to be retired in RFC 3339 format, for example
-- 2012-11-15T16:19:00.094Z. This field is only available when the IP is
-- scheduled to be retired.
imTimeToRetire :: Lens' IpMapping (Maybe UTCTime)
imTimeToRetire
  = lens _imTimeToRetire
      (\ s a -> s{_imTimeToRetire = a})

-- | Preferred location. This specifies where a Cloud SQL instance should
-- preferably be located, either in a specific Compute Engine zone, or
-- co-located with an App Engine application. Note that if the preferred
-- location is not available, the instance will be located as close as
-- possible within the region. Only one location may be specified.
--
-- /See:/ 'locationPreference' smart constructor.
data LocationPreference = LocationPreference
    { _lpKind                 :: !Text
    , _lpFollowGaeApplication :: !(Maybe Text)
    , _lpZone                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationPreference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpKind'
--
-- * 'lpFollowGaeApplication'
--
-- * 'lpZone'
locationPreference
    :: LocationPreference
locationPreference =
    LocationPreference
    { _lpKind = "sql#locationPreference"
    , _lpFollowGaeApplication = Nothing
    , _lpZone = Nothing
    }

-- | This is always sql#locationPreference.
lpKind :: Lens' LocationPreference Text
lpKind = lens _lpKind (\ s a -> s{_lpKind = a})

-- | The AppEngine application to follow, it must be in the same region as
-- the Cloud SQL instance.
lpFollowGaeApplication :: Lens' LocationPreference (Maybe Text)
lpFollowGaeApplication
  = lens _lpFollowGaeApplication
      (\ s a -> s{_lpFollowGaeApplication = a})

-- | The preferred Compute Engine zone (e.g. us-centra1-a, us-central1-b,
-- etc.).
lpZone :: Lens' LocationPreference (Maybe Text)
lpZone = lens _lpZone (\ s a -> s{_lpZone = a})

-- | Read-replica configuration specific to MySQL databases.
--
-- /See:/ 'mySqlReplicaConfiguration' smart constructor.
data MySqlReplicaConfiguration = MySqlReplicaConfiguration
    { _msrcVerifyServerCertificate :: !(Maybe Bool)
    , _msrcKind                    :: !Text
    , _msrcClientKey               :: !(Maybe Text)
    , _msrcUsername                :: !(Maybe Text)
    , _msrcSslCipher               :: !(Maybe Text)
    , _msrcMasterHeartbeatPeriod   :: !(Maybe Int64)
    , _msrcConnectRetryInterval    :: !(Maybe Int32)
    , _msrcClientCertificate       :: !(Maybe Text)
    , _msrcCaCertificate           :: !(Maybe Text)
    , _msrcDumpFilePath            :: !(Maybe Text)
    , _msrcPassword                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MySqlReplicaConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msrcVerifyServerCertificate'
--
-- * 'msrcKind'
--
-- * 'msrcClientKey'
--
-- * 'msrcUsername'
--
-- * 'msrcSslCipher'
--
-- * 'msrcMasterHeartbeatPeriod'
--
-- * 'msrcConnectRetryInterval'
--
-- * 'msrcClientCertificate'
--
-- * 'msrcCaCertificate'
--
-- * 'msrcDumpFilePath'
--
-- * 'msrcPassword'
mySqlReplicaConfiguration
    :: MySqlReplicaConfiguration
mySqlReplicaConfiguration =
    MySqlReplicaConfiguration
    { _msrcVerifyServerCertificate = Nothing
    , _msrcKind = "sql#mysqlReplicaConfiguration"
    , _msrcClientKey = Nothing
    , _msrcUsername = Nothing
    , _msrcSslCipher = Nothing
    , _msrcMasterHeartbeatPeriod = Nothing
    , _msrcConnectRetryInterval = Nothing
    , _msrcClientCertificate = Nothing
    , _msrcCaCertificate = Nothing
    , _msrcDumpFilePath = Nothing
    , _msrcPassword = Nothing
    }

-- | Whether or not to check the master\'s Common Name value in the
-- certificate that it sends during the SSL handshake.
msrcVerifyServerCertificate :: Lens' MySqlReplicaConfiguration (Maybe Bool)
msrcVerifyServerCertificate
  = lens _msrcVerifyServerCertificate
      (\ s a -> s{_msrcVerifyServerCertificate = a})

-- | This is always sql#mysqlReplicaConfiguration.
msrcKind :: Lens' MySqlReplicaConfiguration Text
msrcKind = lens _msrcKind (\ s a -> s{_msrcKind = a})

-- | PEM representation of the slave\'s private key. The corresponsing public
-- key is encoded in the client\'s certificate.
msrcClientKey :: Lens' MySqlReplicaConfiguration (Maybe Text)
msrcClientKey
  = lens _msrcClientKey
      (\ s a -> s{_msrcClientKey = a})

-- | The username for the replication connection.
msrcUsername :: Lens' MySqlReplicaConfiguration (Maybe Text)
msrcUsername
  = lens _msrcUsername (\ s a -> s{_msrcUsername = a})

-- | A list of permissible ciphers to use for SSL encryption.
msrcSslCipher :: Lens' MySqlReplicaConfiguration (Maybe Text)
msrcSslCipher
  = lens _msrcSslCipher
      (\ s a -> s{_msrcSslCipher = a})

-- | Interval in milliseconds between replication heartbeats.
msrcMasterHeartbeatPeriod :: Lens' MySqlReplicaConfiguration (Maybe Int64)
msrcMasterHeartbeatPeriod
  = lens _msrcMasterHeartbeatPeriod
      (\ s a -> s{_msrcMasterHeartbeatPeriod = a})

-- | Seconds to wait between connect retries. MySQL\'s default is 60 seconds.
msrcConnectRetryInterval :: Lens' MySqlReplicaConfiguration (Maybe Int32)
msrcConnectRetryInterval
  = lens _msrcConnectRetryInterval
      (\ s a -> s{_msrcConnectRetryInterval = a})

-- | PEM representation of the slave\'s x509 certificate.
msrcClientCertificate :: Lens' MySqlReplicaConfiguration (Maybe Text)
msrcClientCertificate
  = lens _msrcClientCertificate
      (\ s a -> s{_msrcClientCertificate = a})

-- | PEM representation of the trusted CA\'s x509 certificate.
msrcCaCertificate :: Lens' MySqlReplicaConfiguration (Maybe Text)
msrcCaCertificate
  = lens _msrcCaCertificate
      (\ s a -> s{_msrcCaCertificate = a})

-- | Path to a SQL dump file in Google Cloud Storage from which the slave
-- instance is to be created. The URI is in the form
-- gs:\/\/bucketName\/fileName. Compressed gzip files (.gz) are also
-- supported. Dumps should have the binlog co-ordinates from which
-- replication should begin. This can be accomplished by setting
-- --master-data to 1 when using mysqldump.
msrcDumpFilePath :: Lens' MySqlReplicaConfiguration (Maybe Text)
msrcDumpFilePath
  = lens _msrcDumpFilePath
      (\ s a -> s{_msrcDumpFilePath = a})

-- | The password for the replication connection.
msrcPassword :: Lens' MySqlReplicaConfiguration (Maybe Text)
msrcPassword
  = lens _msrcPassword (\ s a -> s{_msrcPassword = a})

-- | On-premises instance configuration.
--
-- /See:/ 'onPremisesConfiguration' smart constructor.
data OnPremisesConfiguration = OnPremisesConfiguration
    { _opcKind     :: !Text
    , _opcHostPort :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OnPremisesConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opcKind'
--
-- * 'opcHostPort'
onPremisesConfiguration
    :: OnPremisesConfiguration
onPremisesConfiguration =
    OnPremisesConfiguration
    { _opcKind = "sql#onPremisesConfiguration"
    , _opcHostPort = Nothing
    }

-- | This is always sql#onPremisesConfiguration.
opcKind :: Lens' OnPremisesConfiguration Text
opcKind = lens _opcKind (\ s a -> s{_opcKind = a})

-- | The host and port of the on-premises instance in host:port format
opcHostPort :: Lens' OnPremisesConfiguration (Maybe Text)
opcHostPort
  = lens _opcHostPort (\ s a -> s{_opcHostPort = a})

-- | An Operations resource contains information about database instance
-- operations such as create, delete, and restart. Operations resources are
-- created in response to operations that were initiated; you never create
-- them directly.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _opeTargetId      :: !(Maybe Text)
    , _opeTargetProject :: !(Maybe Text)
    , _opeStatus        :: !(Maybe Text)
    , _opeInsertTime    :: !(Maybe UTCTime)
    , _opeImportContext :: !(Maybe (Maybe ImportContext))
    , _opeStartTime     :: !(Maybe UTCTime)
    , _opeKind          :: !Text
    , _opeError         :: !(Maybe (Maybe OperationErrors))
    , _opeExportContext :: !(Maybe (Maybe ExportContext))
    , _opeUser          :: !(Maybe Text)
    , _opeSelfLink      :: !(Maybe Text)
    , _opeName          :: !(Maybe Text)
    , _opeEndTime       :: !(Maybe UTCTime)
    , _opeOperationType :: !(Maybe Text)
    , _opeTargetLink    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opeTargetId'
--
-- * 'opeTargetProject'
--
-- * 'opeStatus'
--
-- * 'opeInsertTime'
--
-- * 'opeImportContext'
--
-- * 'opeStartTime'
--
-- * 'opeKind'
--
-- * 'opeError'
--
-- * 'opeExportContext'
--
-- * 'opeUser'
--
-- * 'opeSelfLink'
--
-- * 'opeName'
--
-- * 'opeEndTime'
--
-- * 'opeOperationType'
--
-- * 'opeTargetLink'
operation
    :: Operation
operation =
    Operation
    { _opeTargetId = Nothing
    , _opeTargetProject = Nothing
    , _opeStatus = Nothing
    , _opeInsertTime = Nothing
    , _opeImportContext = Nothing
    , _opeStartTime = Nothing
    , _opeKind = "sql#operation"
    , _opeError = Nothing
    , _opeExportContext = Nothing
    , _opeUser = Nothing
    , _opeSelfLink = Nothing
    , _opeName = Nothing
    , _opeEndTime = Nothing
    , _opeOperationType = Nothing
    , _opeTargetLink = Nothing
    }

-- | Name of the database instance related to this operation.
opeTargetId :: Lens' Operation (Maybe Text)
opeTargetId
  = lens _opeTargetId (\ s a -> s{_opeTargetId = a})

-- | The project ID of the target instance related to this operation.
opeTargetProject :: Lens' Operation (Maybe Text)
opeTargetProject
  = lens _opeTargetProject
      (\ s a -> s{_opeTargetProject = a})

-- | The status of an operation. Valid values are PENDING, RUNNING, DONE,
-- UNKNOWN.
opeStatus :: Lens' Operation (Maybe Text)
opeStatus
  = lens _opeStatus (\ s a -> s{_opeStatus = a})

-- | The time this operation was enqueued in UTC timezone in RFC 3339 format,
-- for example 2012-11-15T16:19:00.094Z.
opeInsertTime :: Lens' Operation (Maybe UTCTime)
opeInsertTime
  = lens _opeInsertTime
      (\ s a -> s{_opeInsertTime = a})

-- | The context for import operation, if applicable.
opeImportContext :: Lens' Operation (Maybe (Maybe ImportContext))
opeImportContext
  = lens _opeImportContext
      (\ s a -> s{_opeImportContext = a})

-- | The time this operation actually started in UTC timezone in RFC 3339
-- format, for example 2012-11-15T16:19:00.094Z.
opeStartTime :: Lens' Operation (Maybe UTCTime)
opeStartTime
  = lens _opeStartTime (\ s a -> s{_opeStartTime = a})

-- | This is always sql#operation.
opeKind :: Lens' Operation Text
opeKind = lens _opeKind (\ s a -> s{_opeKind = a})

-- | If errors occurred during processing of this operation, this field will
-- be populated.
opeError :: Lens' Operation (Maybe (Maybe OperationErrors))
opeError = lens _opeError (\ s a -> s{_opeError = a})

-- | The context for export operation, if applicable.
opeExportContext :: Lens' Operation (Maybe (Maybe ExportContext))
opeExportContext
  = lens _opeExportContext
      (\ s a -> s{_opeExportContext = a})

-- | The email address of the user who initiated this operation.
opeUser :: Lens' Operation (Maybe Text)
opeUser = lens _opeUser (\ s a -> s{_opeUser = a})

-- | The URI of this resource.
opeSelfLink :: Lens' Operation (Maybe Text)
opeSelfLink
  = lens _opeSelfLink (\ s a -> s{_opeSelfLink = a})

-- | An identifier that uniquely identifies the operation. You can use this
-- identifier to retrieve the Operations resource that has information
-- about the operation.
opeName :: Lens' Operation (Maybe Text)
opeName = lens _opeName (\ s a -> s{_opeName = a})

-- | The time this operation finished in UTC timezone in RFC 3339 format, for
-- example 2012-11-15T16:19:00.094Z.
opeEndTime :: Lens' Operation (Maybe UTCTime)
opeEndTime
  = lens _opeEndTime (\ s a -> s{_opeEndTime = a})

-- | The type of the operation. Valid values are CREATE, DELETE, UPDATE,
-- RESTART, IMPORT, EXPORT, BACKUP_VOLUME, RESTORE_VOLUME, CREATE_USER,
-- DELETE_USER, CREATE_DATABASE, DELETE_DATABASE .
opeOperationType :: Lens' Operation (Maybe Text)
opeOperationType
  = lens _opeOperationType
      (\ s a -> s{_opeOperationType = a})

-- | The URI of the instance related to the operation.
opeTargetLink :: Lens' Operation (Maybe Text)
opeTargetLink
  = lens _opeTargetLink
      (\ s a -> s{_opeTargetLink = a})

-- | Database instance operation error.
--
-- /See:/ 'operationError' smart constructor.
data OperationError = OperationError
    { _oeKind    :: !Text
    , _oeCode    :: !(Maybe Text)
    , _oeMessage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeKind'
--
-- * 'oeCode'
--
-- * 'oeMessage'
operationError
    :: OperationError
operationError =
    OperationError
    { _oeKind = "sql#operationError"
    , _oeCode = Nothing
    , _oeMessage = Nothing
    }

-- | This is always sql#operationError.
oeKind :: Lens' OperationError Text
oeKind = lens _oeKind (\ s a -> s{_oeKind = a})

-- | Identifies the specific error that occurred.
oeCode :: Lens' OperationError (Maybe Text)
oeCode = lens _oeCode (\ s a -> s{_oeCode = a})

-- | Additional information about the error encountered.
oeMessage :: Lens' OperationError (Maybe Text)
oeMessage
  = lens _oeMessage (\ s a -> s{_oeMessage = a})

-- | Database instance operation errors list wrapper.
--
-- /See:/ 'operationErrors' smart constructor.
data OperationErrors = OperationErrors
    { _oKind   :: !Text
    , _oErrors :: !(Maybe [Maybe OperationError])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oKind'
--
-- * 'oErrors'
operationErrors
    :: OperationErrors
operationErrors =
    OperationErrors
    { _oKind = "sql#operationErrors"
    , _oErrors = Nothing
    }

-- | This is always sql#operationErrors.
oKind :: Lens' OperationErrors Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | The list of errors encountered while processing this operation.
oErrors :: Lens' OperationErrors [Maybe OperationError]
oErrors
  = lens _oErrors (\ s a -> s{_oErrors = a}) . _Default
      . _Coerce

-- | Database instance list operations response.
--
-- /See:/ 'operationsListResponse' smart constructor.
data OperationsListResponse = OperationsListResponse
    { _olrNextPageToken :: !(Maybe Text)
    , _olrKind          :: !Text
    , _olrItems         :: !(Maybe [Maybe Operation])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olrNextPageToken'
--
-- * 'olrKind'
--
-- * 'olrItems'
operationsListResponse
    :: OperationsListResponse
operationsListResponse =
    OperationsListResponse
    { _olrNextPageToken = Nothing
    , _olrKind = "sql#operationsList"
    , _olrItems = Nothing
    }

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
olrNextPageToken :: Lens' OperationsListResponse (Maybe Text)
olrNextPageToken
  = lens _olrNextPageToken
      (\ s a -> s{_olrNextPageToken = a})

-- | This is always sql#operationsList.
olrKind :: Lens' OperationsListResponse Text
olrKind = lens _olrKind (\ s a -> s{_olrKind = a})

-- | List of operation resources.
olrItems :: Lens' OperationsListResponse [Maybe Operation]
olrItems
  = lens _olrItems (\ s a -> s{_olrItems = a}) .
      _Default
      . _Coerce

-- | Read-replica configuration for connecting to the master.
--
-- /See:/ 'replicaConfiguration' smart constructor.
data ReplicaConfiguration = ReplicaConfiguration
    { _rcKind                      :: !Text
    , _rcMysqlReplicaConfiguration :: !(Maybe (Maybe MySqlReplicaConfiguration))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReplicaConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcKind'
--
-- * 'rcMysqlReplicaConfiguration'
replicaConfiguration
    :: ReplicaConfiguration
replicaConfiguration =
    ReplicaConfiguration
    { _rcKind = "sql#replicaConfiguration"
    , _rcMysqlReplicaConfiguration = Nothing
    }

-- | This is always sql#replicaConfiguration.
rcKind :: Lens' ReplicaConfiguration Text
rcKind = lens _rcKind (\ s a -> s{_rcKind = a})

-- | MySQL specific configuration when replicating from a MySQL on-premises
-- master. Replication configuration information such as the username,
-- password, certificates, and keys are not stored in the instance
-- metadata. The configuration information is used only to set up the
-- replication connection and is stored by MySQL in a file named
-- master.info in the data directory.
rcMysqlReplicaConfiguration :: Lens' ReplicaConfiguration (Maybe (Maybe MySqlReplicaConfiguration))
rcMysqlReplicaConfiguration
  = lens _rcMysqlReplicaConfiguration
      (\ s a -> s{_rcMysqlReplicaConfiguration = a})

-- | Database instance restore from backup context.
--
-- /See:/ 'restoreBackupContext' smart constructor.
data RestoreBackupContext = RestoreBackupContext
    { _rbcInstanceId  :: !(Maybe Text)
    , _rbcBackupRunId :: !(Maybe Int64)
    , _rbcKind        :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestoreBackupContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbcInstanceId'
--
-- * 'rbcBackupRunId'
--
-- * 'rbcKind'
restoreBackupContext
    :: RestoreBackupContext
restoreBackupContext =
    RestoreBackupContext
    { _rbcInstanceId = Nothing
    , _rbcBackupRunId = Nothing
    , _rbcKind = "sql#restoreBackupContext"
    }

-- | The ID of the instance that the backup was taken from.
rbcInstanceId :: Lens' RestoreBackupContext (Maybe Text)
rbcInstanceId
  = lens _rbcInstanceId
      (\ s a -> s{_rbcInstanceId = a})

-- | The ID of the backup run to restore from.
rbcBackupRunId :: Lens' RestoreBackupContext (Maybe Int64)
rbcBackupRunId
  = lens _rbcBackupRunId
      (\ s a -> s{_rbcBackupRunId = a})

-- | This is always sql#restoreBackupContext.
rbcKind :: Lens' RestoreBackupContext Text
rbcKind = lens _rbcKind (\ s a -> s{_rbcKind = a})

-- | Database instance settings.
--
-- /See:/ 'settings' smart constructor.
data Settings = Settings
    { _sReplicationType             :: !(Maybe Text)
    , _sActivationPolicy            :: !(Maybe Text)
    , _sSettingsVersion             :: !(Maybe Int64)
    , _sAuthorizedGaeApplications   :: !(Maybe [Text])
    , _sKind                        :: !Text
    , _sPricingPlan                 :: !(Maybe Text)
    , _sIpConfiguration             :: !(Maybe (Maybe IpConfiguration))
    , _sDatabaseReplicationEnabled  :: !(Maybe Bool)
    , _sTier                        :: !(Maybe Text)
    , _sDatabaseFlags               :: !(Maybe [Maybe DatabaseFlags])
    , _sCrashSafeReplicationEnabled :: !(Maybe Bool)
    , _sLocationPreference          :: !(Maybe (Maybe LocationPreference))
    , _sBackupConfiguration         :: !(Maybe (Maybe BackupConfiguration))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sReplicationType'
--
-- * 'sActivationPolicy'
--
-- * 'sSettingsVersion'
--
-- * 'sAuthorizedGaeApplications'
--
-- * 'sKind'
--
-- * 'sPricingPlan'
--
-- * 'sIpConfiguration'
--
-- * 'sDatabaseReplicationEnabled'
--
-- * 'sTier'
--
-- * 'sDatabaseFlags'
--
-- * 'sCrashSafeReplicationEnabled'
--
-- * 'sLocationPreference'
--
-- * 'sBackupConfiguration'
settings
    :: Settings
settings =
    Settings
    { _sReplicationType = Nothing
    , _sActivationPolicy = Nothing
    , _sSettingsVersion = Nothing
    , _sAuthorizedGaeApplications = Nothing
    , _sKind = "sql#settings"
    , _sPricingPlan = Nothing
    , _sIpConfiguration = Nothing
    , _sDatabaseReplicationEnabled = Nothing
    , _sTier = Nothing
    , _sDatabaseFlags = Nothing
    , _sCrashSafeReplicationEnabled = Nothing
    , _sLocationPreference = Nothing
    , _sBackupConfiguration = Nothing
    }

-- | The type of replication this instance uses. This can be either
-- ASYNCHRONOUS or SYNCHRONOUS.
sReplicationType :: Lens' Settings (Maybe Text)
sReplicationType
  = lens _sReplicationType
      (\ s a -> s{_sReplicationType = a})

-- | The activation policy for this instance. This specifies when the
-- instance should be activated and is applicable only when the instance
-- state is RUNNABLE. This can be one of the following. ALWAYS: The
-- instance should always be active. NEVER: The instance should never be
-- activated. ON_DEMAND: The instance is activated upon receiving requests.
sActivationPolicy :: Lens' Settings (Maybe Text)
sActivationPolicy
  = lens _sActivationPolicy
      (\ s a -> s{_sActivationPolicy = a})

-- | The version of instance settings. This is a required field for update
-- method to make sure concurrent updates are handled properly. During
-- update, use the most recent settingsVersion value for this instance and
-- do not try to update this value.
sSettingsVersion :: Lens' Settings (Maybe Int64)
sSettingsVersion
  = lens _sSettingsVersion
      (\ s a -> s{_sSettingsVersion = a})

-- | The App Engine app IDs that can access this instance.
sAuthorizedGaeApplications :: Lens' Settings [Text]
sAuthorizedGaeApplications
  = lens _sAuthorizedGaeApplications
      (\ s a -> s{_sAuthorizedGaeApplications = a})
      . _Default
      . _Coerce

-- | This is always sql#settings.
sKind :: Lens' Settings Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The pricing plan for this instance. This can be either PER_USE or
-- PACKAGE.
sPricingPlan :: Lens' Settings (Maybe Text)
sPricingPlan
  = lens _sPricingPlan (\ s a -> s{_sPricingPlan = a})

-- | The settings for IP Management. This allows to enable or disable the
-- instance IP and manage which external networks can connect to the
-- instance.
sIpConfiguration :: Lens' Settings (Maybe (Maybe IpConfiguration))
sIpConfiguration
  = lens _sIpConfiguration
      (\ s a -> s{_sIpConfiguration = a})

-- | Configuration specific to read replica instances. Indicates whether
-- replication is enabled or not.
sDatabaseReplicationEnabled :: Lens' Settings (Maybe Bool)
sDatabaseReplicationEnabled
  = lens _sDatabaseReplicationEnabled
      (\ s a -> s{_sDatabaseReplicationEnabled = a})

-- | The tier of service for this instance, for example D1, D2. For more
-- information, see pricing.
sTier :: Lens' Settings (Maybe Text)
sTier = lens _sTier (\ s a -> s{_sTier = a})

-- | The database flags passed to the instance at startup.
sDatabaseFlags :: Lens' Settings [Maybe DatabaseFlags]
sDatabaseFlags
  = lens _sDatabaseFlags
      (\ s a -> s{_sDatabaseFlags = a})
      . _Default
      . _Coerce

-- | Configuration specific to read replica instances. Indicates whether
-- database flags for crash-safe replication are enabled.
sCrashSafeReplicationEnabled :: Lens' Settings (Maybe Bool)
sCrashSafeReplicationEnabled
  = lens _sCrashSafeReplicationEnabled
      (\ s a -> s{_sCrashSafeReplicationEnabled = a})

-- | The location preference settings. This allows the instance to be located
-- as near as possible to either an App Engine app or GCE zone for better
-- performance.
sLocationPreference :: Lens' Settings (Maybe (Maybe LocationPreference))
sLocationPreference
  = lens _sLocationPreference
      (\ s a -> s{_sLocationPreference = a})

-- | The daily backup configuration for the instance.
sBackupConfiguration :: Lens' Settings (Maybe (Maybe BackupConfiguration))
sBackupConfiguration
  = lens _sBackupConfiguration
      (\ s a -> s{_sBackupConfiguration = a})

-- | SslCerts Resource
--
-- /See:/ 'sslCert' smart constructor.
data SslCert = SslCert
    { _scCommonName       :: !(Maybe Text)
    , _scKind             :: !Text
    , _scCertSerialNumber :: !(Maybe Text)
    , _scSelfLink         :: !(Maybe Text)
    , _scCert             :: !(Maybe Text)
    , _scSha1Fingerprint  :: !(Maybe Text)
    , _scExpirationTime   :: !(Maybe UTCTime)
    , _scCreateTime       :: !(Maybe UTCTime)
    , _scInstance         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SslCert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCommonName'
--
-- * 'scKind'
--
-- * 'scCertSerialNumber'
--
-- * 'scSelfLink'
--
-- * 'scCert'
--
-- * 'scSha1Fingerprint'
--
-- * 'scExpirationTime'
--
-- * 'scCreateTime'
--
-- * 'scInstance'
sslCert
    :: SslCert
sslCert =
    SslCert
    { _scCommonName = Nothing
    , _scKind = "sql#sslCert"
    , _scCertSerialNumber = Nothing
    , _scSelfLink = Nothing
    , _scCert = Nothing
    , _scSha1Fingerprint = Nothing
    , _scExpirationTime = Nothing
    , _scCreateTime = Nothing
    , _scInstance = Nothing
    }

-- | User supplied name. Constrained to [a-zA-Z.-_ ]+.
scCommonName :: Lens' SslCert (Maybe Text)
scCommonName
  = lens _scCommonName (\ s a -> s{_scCommonName = a})

-- | This is always sql#sslCert.
scKind :: Lens' SslCert Text
scKind = lens _scKind (\ s a -> s{_scKind = a})

-- | Serial number, as extracted from the certificate.
scCertSerialNumber :: Lens' SslCert (Maybe Text)
scCertSerialNumber
  = lens _scCertSerialNumber
      (\ s a -> s{_scCertSerialNumber = a})

-- | The URI of this resource.
scSelfLink :: Lens' SslCert (Maybe Text)
scSelfLink
  = lens _scSelfLink (\ s a -> s{_scSelfLink = a})

-- | PEM representation.
scCert :: Lens' SslCert (Maybe Text)
scCert = lens _scCert (\ s a -> s{_scCert = a})

-- | Sha1 Fingerprint.
scSha1Fingerprint :: Lens' SslCert (Maybe Text)
scSha1Fingerprint
  = lens _scSha1Fingerprint
      (\ s a -> s{_scSha1Fingerprint = a})

-- | The time when the certificate expires in RFC 3339 format, for example
-- 2012-11-15T16:19:00.094Z.
scExpirationTime :: Lens' SslCert (Maybe UTCTime)
scExpirationTime
  = lens _scExpirationTime
      (\ s a -> s{_scExpirationTime = a})

-- | The time when the certificate was created in RFC 3339 format, for
-- example 2012-11-15T16:19:00.094Z
scCreateTime :: Lens' SslCert (Maybe UTCTime)
scCreateTime
  = lens _scCreateTime (\ s a -> s{_scCreateTime = a})

-- | Name of the database instance.
scInstance :: Lens' SslCert (Maybe Text)
scInstance
  = lens _scInstance (\ s a -> s{_scInstance = a})

-- | SslCertDetail.
--
-- /See:/ 'sslCertDetail' smart constructor.
data SslCertDetail = SslCertDetail
    { _scdCertInfo       :: !(Maybe (Maybe SslCert))
    , _scdCertPrivateKey :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SslCertDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdCertInfo'
--
-- * 'scdCertPrivateKey'
sslCertDetail
    :: SslCertDetail
sslCertDetail =
    SslCertDetail
    { _scdCertInfo = Nothing
    , _scdCertPrivateKey = Nothing
    }

-- | The public information about the cert.
scdCertInfo :: Lens' SslCertDetail (Maybe (Maybe SslCert))
scdCertInfo
  = lens _scdCertInfo (\ s a -> s{_scdCertInfo = a})

-- | The private key for the client cert, in pem format. Keep private in
-- order to protect your security.
scdCertPrivateKey :: Lens' SslCertDetail (Maybe Text)
scdCertPrivateKey
  = lens _scdCertPrivateKey
      (\ s a -> s{_scdCertPrivateKey = a})

-- | SslCerts create ephemeral certificate request.
--
-- /See:/ 'sslCertsCreateEphemeralRequest' smart constructor.
newtype SslCertsCreateEphemeralRequest = SslCertsCreateEphemeralRequest
    { _sccerPublicKey :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SslCertsCreateEphemeralRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sccerPublicKey'
sslCertsCreateEphemeralRequest
    :: SslCertsCreateEphemeralRequest
sslCertsCreateEphemeralRequest =
    SslCertsCreateEphemeralRequest
    { _sccerPublicKey = Nothing
    }

-- | PEM encoded public key to include in the signed certificate.
sccerPublicKey :: Lens' SslCertsCreateEphemeralRequest (Maybe Text)
sccerPublicKey
  = lens _sccerPublicKey
      (\ s a -> s{_sccerPublicKey = a})

-- | SslCerts insert request.
--
-- /See:/ 'sslCertsInsertRequest' smart constructor.
newtype SslCertsInsertRequest = SslCertsInsertRequest
    { _scirCommonName :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SslCertsInsertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scirCommonName'
sslCertsInsertRequest
    :: SslCertsInsertRequest
sslCertsInsertRequest =
    SslCertsInsertRequest
    { _scirCommonName = Nothing
    }

-- | User supplied name. Must be a distinct name from the other certificates
-- for this instance. New certificates will not be usable until the
-- instance is restarted.
scirCommonName :: Lens' SslCertsInsertRequest (Maybe Text)
scirCommonName
  = lens _scirCommonName
      (\ s a -> s{_scirCommonName = a})

-- | SslCert insert response.
--
-- /See:/ 'sslCertsInsertResponse' smart constructor.
data SslCertsInsertResponse = SslCertsInsertResponse
    { _scirServerCaCert :: !(Maybe (Maybe SslCert))
    , _scirKind         :: !Text
    , _scirClientCert   :: !(Maybe (Maybe SslCertDetail))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SslCertsInsertResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scirServerCaCert'
--
-- * 'scirKind'
--
-- * 'scirClientCert'
sslCertsInsertResponse
    :: SslCertsInsertResponse
sslCertsInsertResponse =
    SslCertsInsertResponse
    { _scirServerCaCert = Nothing
    , _scirKind = "sql#sslCertsInsert"
    , _scirClientCert = Nothing
    }

-- | The server Certificate Authority\'s certificate. If this is missing you
-- can force a new one to be generated by calling resetSslConfig method on
-- instances resource.
scirServerCaCert :: Lens' SslCertsInsertResponse (Maybe (Maybe SslCert))
scirServerCaCert
  = lens _scirServerCaCert
      (\ s a -> s{_scirServerCaCert = a})

-- | This is always sql#sslCertsInsert.
scirKind :: Lens' SslCertsInsertResponse Text
scirKind = lens _scirKind (\ s a -> s{_scirKind = a})

-- | The new client certificate and private key. The new certificate will not
-- work until the instance is restarted.
scirClientCert :: Lens' SslCertsInsertResponse (Maybe (Maybe SslCertDetail))
scirClientCert
  = lens _scirClientCert
      (\ s a -> s{_scirClientCert = a})

-- | SslCerts list response.
--
-- /See:/ 'sslCertsListResponse' smart constructor.
data SslCertsListResponse = SslCertsListResponse
    { _sclrKind  :: !Text
    , _sclrItems :: !(Maybe [Maybe SslCert])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SslCertsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclrKind'
--
-- * 'sclrItems'
sslCertsListResponse
    :: SslCertsListResponse
sslCertsListResponse =
    SslCertsListResponse
    { _sclrKind = "sql#sslCertsList"
    , _sclrItems = Nothing
    }

-- | This is always sql#sslCertsList.
sclrKind :: Lens' SslCertsListResponse Text
sclrKind = lens _sclrKind (\ s a -> s{_sclrKind = a})

-- | List of client certificates for the instance.
sclrItems :: Lens' SslCertsListResponse [Maybe SslCert]
sclrItems
  = lens _sclrItems (\ s a -> s{_sclrItems = a}) .
      _Default
      . _Coerce

-- | A Google Cloud SQL service tier resource.
--
-- /See:/ 'tier' smart constructor.
data Tier = Tier
    { _tKind      :: !Text
    , _tTier      :: !(Maybe Text)
    , _tRegion    :: !(Maybe [Text])
    , _tDiskQuota :: !(Maybe Int64)
    , _tRAM       :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tKind'
--
-- * 'tTier'
--
-- * 'tRegion'
--
-- * 'tDiskQuota'
--
-- * 'tRAM'
tier
    :: Tier
tier =
    Tier
    { _tKind = "sql#tier"
    , _tTier = Nothing
    , _tRegion = Nothing
    , _tDiskQuota = Nothing
    , _tRAM = Nothing
    }

-- | This is always sql#tier.
tKind :: Lens' Tier Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | An identifier for the service tier, for example D1, D2 etc. For related
-- information, see Pricing.
tTier :: Lens' Tier (Maybe Text)
tTier = lens _tTier (\ s a -> s{_tTier = a})

-- | The applicable regions for this tier. Can be us-east1, europe-west1 or
-- asia-east1.
tRegion :: Lens' Tier [Text]
tRegion
  = lens _tRegion (\ s a -> s{_tRegion = a}) . _Default
      . _Coerce

-- | The maximum disk size of this tier in bytes.
tDiskQuota :: Lens' Tier (Maybe Int64)
tDiskQuota
  = lens _tDiskQuota (\ s a -> s{_tDiskQuota = a})

-- | The maximum RAM usage of this tier in bytes.
tRAM :: Lens' Tier (Maybe Int64)
tRAM = lens _tRAM (\ s a -> s{_tRAM = a})

-- | Tiers list response.
--
-- /See:/ 'tiersListResponse' smart constructor.
data TiersListResponse = TiersListResponse
    { _tlrKind  :: !Text
    , _tlrItems :: !(Maybe [Maybe Tier])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TiersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlrKind'
--
-- * 'tlrItems'
tiersListResponse
    :: TiersListResponse
tiersListResponse =
    TiersListResponse
    { _tlrKind = "sql#tiersList"
    , _tlrItems = Nothing
    }

-- | This is always sql#tiersList.
tlrKind :: Lens' TiersListResponse Text
tlrKind = lens _tlrKind (\ s a -> s{_tlrKind = a})

-- | List of tiers.
tlrItems :: Lens' TiersListResponse [Maybe Tier]
tlrItems
  = lens _tlrItems (\ s a -> s{_tlrItems = a}) .
      _Default
      . _Coerce

-- | A Cloud SQL user resource.
--
-- /See:/ 'user' smart constructor.
data User = User
    { _uEtag     :: !(Maybe Text)
    , _uProject  :: !(Maybe Text)
    , _uKind     :: !Text
    , _uName     :: !(Maybe Text)
    , _uPassword :: !(Maybe Text)
    , _uHost     :: !(Maybe Text)
    , _uInstance :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uEtag'
--
-- * 'uProject'
--
-- * 'uKind'
--
-- * 'uName'
--
-- * 'uPassword'
--
-- * 'uHost'
--
-- * 'uInstance'
user
    :: User
user =
    User
    { _uEtag = Nothing
    , _uProject = Nothing
    , _uKind = "sql#user"
    , _uName = Nothing
    , _uPassword = Nothing
    , _uHost = Nothing
    , _uInstance = Nothing
    }

-- | HTTP 1.1 Entity tag for the resource.
uEtag :: Lens' User (Maybe Text)
uEtag = lens _uEtag (\ s a -> s{_uEtag = a})

-- | The project ID of the project containing the Cloud SQL database. The
-- Google apps domain is prefixed if applicable. Can be omitted for update
-- since it is already specified on the URL.
uProject :: Lens' User (Maybe Text)
uProject = lens _uProject (\ s a -> s{_uProject = a})

-- | This is always sql#user.
uKind :: Lens' User Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | The name of the user in the Cloud SQL instance. Can be omitted for
-- update since it is already specified on the URL.
uName :: Lens' User (Maybe Text)
uName = lens _uName (\ s a -> s{_uName = a})

-- | The password for the user.
uPassword :: Lens' User (Maybe Text)
uPassword
  = lens _uPassword (\ s a -> s{_uPassword = a})

-- | The host name from which the user can connect. For insert operations,
-- host defaults to an empty string. For update operations, host is
-- specified as part of the request URL. The host name is not mutable with
-- this API.
uHost :: Lens' User (Maybe Text)
uHost = lens _uHost (\ s a -> s{_uHost = a})

-- | The name of the Cloud SQL instance. This does not include the project
-- ID. Can be omitted for update since it is already specified on the URL.
uInstance :: Lens' User (Maybe Text)
uInstance
  = lens _uInstance (\ s a -> s{_uInstance = a})

-- | User list response.
--
-- /See:/ 'usersListResponse' smart constructor.
data UsersListResponse = UsersListResponse
    { _ulrNextPageToken :: !(Maybe Text)
    , _ulrKind          :: !Text
    , _ulrItems         :: !(Maybe [Maybe User])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulrNextPageToken'
--
-- * 'ulrKind'
--
-- * 'ulrItems'
usersListResponse
    :: UsersListResponse
usersListResponse =
    UsersListResponse
    { _ulrNextPageToken = Nothing
    , _ulrKind = "sql#usersList"
    , _ulrItems = Nothing
    }

-- | An identifier that uniquely identifies the operation. You can use this
-- identifier to retrieve the Operations resource that has information
-- about the operation.
ulrNextPageToken :: Lens' UsersListResponse (Maybe Text)
ulrNextPageToken
  = lens _ulrNextPageToken
      (\ s a -> s{_ulrNextPageToken = a})

-- | This is always sql#usersList.
ulrKind :: Lens' UsersListResponse Text
ulrKind = lens _ulrKind (\ s a -> s{_ulrKind = a})

-- | List of user resources in the instance.
ulrItems :: Lens' UsersListResponse [Maybe User]
ulrItems
  = lens _ulrItems (\ s a -> s{_ulrItems = a}) .
      _Default
      . _Coerce
