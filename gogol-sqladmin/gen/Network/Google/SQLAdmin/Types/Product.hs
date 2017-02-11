{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SQLAdmin.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SQLAdmin.Types.Product where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types.Sum

-- | SslCerts Resource
--
-- /See:/ 'sslCert' smart constructor.
data SSLCert = SSLCert'
    { _scCommonName       :: !(Maybe Text)
    , _scKind             :: !Text
    , _scCertSerialNumber :: !(Maybe Text)
    , _scSelfLink         :: !(Maybe Text)
    , _scCert             :: !(Maybe Text)
    , _scSha1Fingerprint  :: !(Maybe Text)
    , _scExpirationTime   :: !(Maybe DateTime')
    , _scCreateTime       :: !(Maybe DateTime')
    , _scInstance         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCert' with the minimum fields required to make a request.
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
    :: SSLCert
sslCert =
    SSLCert'
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
scCommonName :: Lens' SSLCert (Maybe Text)
scCommonName
  = lens _scCommonName (\ s a -> s{_scCommonName = a})

-- | This is always sql#sslCert.
scKind :: Lens' SSLCert Text
scKind = lens _scKind (\ s a -> s{_scKind = a})

-- | Serial number, as extracted from the certificate.
scCertSerialNumber :: Lens' SSLCert (Maybe Text)
scCertSerialNumber
  = lens _scCertSerialNumber
      (\ s a -> s{_scCertSerialNumber = a})

-- | The URI of this resource.
scSelfLink :: Lens' SSLCert (Maybe Text)
scSelfLink
  = lens _scSelfLink (\ s a -> s{_scSelfLink = a})

-- | PEM representation.
scCert :: Lens' SSLCert (Maybe Text)
scCert = lens _scCert (\ s a -> s{_scCert = a})

-- | Sha1 Fingerprint.
scSha1Fingerprint :: Lens' SSLCert (Maybe Text)
scSha1Fingerprint
  = lens _scSha1Fingerprint
      (\ s a -> s{_scSha1Fingerprint = a})

-- | The time when the certificate expires in RFC 3339 format, for example
-- 2012-11-15T16:19:00.094Z.
scExpirationTime :: Lens' SSLCert (Maybe UTCTime)
scExpirationTime
  = lens _scExpirationTime
      (\ s a -> s{_scExpirationTime = a})
      . mapping _DateTime

-- | The time when the certificate was created in RFC 3339 format, for
-- example 2012-11-15T16:19:00.094Z
scCreateTime :: Lens' SSLCert (Maybe UTCTime)
scCreateTime
  = lens _scCreateTime (\ s a -> s{_scCreateTime = a})
      . mapping _DateTime

-- | Name of the database instance.
scInstance :: Lens' SSLCert (Maybe Text)
scInstance
  = lens _scInstance (\ s a -> s{_scInstance = a})

instance FromJSON SSLCert where
        parseJSON
          = withObject "SSLCert"
              (\ o ->
                 SSLCert' <$>
                   (o .:? "commonName") <*>
                     (o .:? "kind" .!= "sql#sslCert")
                     <*> (o .:? "certSerialNumber")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "cert")
                     <*> (o .:? "sha1Fingerprint")
                     <*> (o .:? "expirationTime")
                     <*> (o .:? "createTime")
                     <*> (o .:? "instance"))

instance ToJSON SSLCert where
        toJSON SSLCert'{..}
          = object
              (catMaybes
                 [("commonName" .=) <$> _scCommonName,
                  Just ("kind" .= _scKind),
                  ("certSerialNumber" .=) <$> _scCertSerialNumber,
                  ("selfLink" .=) <$> _scSelfLink,
                  ("cert" .=) <$> _scCert,
                  ("sha1Fingerprint" .=) <$> _scSha1Fingerprint,
                  ("expirationTime" .=) <$> _scExpirationTime,
                  ("createTime" .=) <$> _scCreateTime,
                  ("instance" .=) <$> _scInstance])

-- | Database list response.
--
-- /See:/ 'databasesListResponse' smart constructor.
data DatabasesListResponse = DatabasesListResponse'
    { _dlrKind  :: !Text
    , _dlrItems :: !(Maybe [Database])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatabasesListResponse'
    { _dlrKind = "sql#databasesList"
    , _dlrItems = Nothing
    }

-- | This is always sql#databasesList.
dlrKind :: Lens' DatabasesListResponse Text
dlrKind = lens _dlrKind (\ s a -> s{_dlrKind = a})

-- | List of database resources in the instance.
dlrItems :: Lens' DatabasesListResponse [Database]
dlrItems
  = lens _dlrItems (\ s a -> s{_dlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON DatabasesListResponse where
        parseJSON
          = withObject "DatabasesListResponse"
              (\ o ->
                 DatabasesListResponse' <$>
                   (o .:? "kind" .!= "sql#databasesList") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON DatabasesListResponse where
        toJSON DatabasesListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dlrKind),
                  ("items" .=) <$> _dlrItems])

-- | Database instance export request.
--
-- /See:/ 'instancesExportRequest' smart constructor.
newtype InstancesExportRequest = InstancesExportRequest'
    { _ierExportContext :: Maybe ExportContext
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesExportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ierExportContext'
instancesExportRequest
    :: InstancesExportRequest
instancesExportRequest =
    InstancesExportRequest'
    { _ierExportContext = Nothing
    }

-- | Contains details about the export operation.
ierExportContext :: Lens' InstancesExportRequest (Maybe ExportContext)
ierExportContext
  = lens _ierExportContext
      (\ s a -> s{_ierExportContext = a})

instance FromJSON InstancesExportRequest where
        parseJSON
          = withObject "InstancesExportRequest"
              (\ o ->
                 InstancesExportRequest' <$> (o .:? "exportContext"))

instance ToJSON InstancesExportRequest where
        toJSON InstancesExportRequest'{..}
          = object
              (catMaybes
                 [("exportContext" .=) <$> _ierExportContext])

-- | On-premises instance configuration.
--
-- /See:/ 'onPremisesConfiguration' smart constructor.
data OnPremisesConfiguration = OnPremisesConfiguration'
    { _opcKind     :: !Text
    , _opcHostPort :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OnPremisesConfiguration'
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

instance FromJSON OnPremisesConfiguration where
        parseJSON
          = withObject "OnPremisesConfiguration"
              (\ o ->
                 OnPremisesConfiguration' <$>
                   (o .:? "kind" .!= "sql#onPremisesConfiguration") <*>
                     (o .:? "hostPort"))

instance ToJSON OnPremisesConfiguration where
        toJSON OnPremisesConfiguration'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _opcKind),
                  ("hostPort" .=) <$> _opcHostPort])

-- | Database instance list operations response.
--
-- /See:/ 'operationsListResponse' smart constructor.
data OperationsListResponse = OperationsListResponse'
    { _olrNextPageToken :: !(Maybe Text)
    , _olrKind          :: !Text
    , _olrItems         :: !(Maybe [Operation])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OperationsListResponse'
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
olrItems :: Lens' OperationsListResponse [Operation]
olrItems
  = lens _olrItems (\ s a -> s{_olrItems = a}) .
      _Default
      . _Coerce

instance FromJSON OperationsListResponse where
        parseJSON
          = withObject "OperationsListResponse"
              (\ o ->
                 OperationsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "sql#operationsList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON OperationsListResponse where
        toJSON OperationsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olrNextPageToken,
                  Just ("kind" .= _olrKind),
                  ("items" .=) <$> _olrItems])

-- | Database instance import context.
--
-- /See:/ 'importContext' smart constructor.
data ImportContext = ImportContext'
    { _icDatabase         :: !(Maybe Text)
    , _icKind             :: !Text
    , _icCSVImportOptions :: !(Maybe ImportContextCSVImportOptions)
    , _icURI              :: !(Maybe Text)
    , _icFileType         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icDatabase'
--
-- * 'icKind'
--
-- * 'icCSVImportOptions'
--
-- * 'icURI'
--
-- * 'icFileType'
importContext
    :: ImportContext
importContext =
    ImportContext'
    { _icDatabase = Nothing
    , _icKind = "sql#importContext"
    , _icCSVImportOptions = Nothing
    , _icURI = Nothing
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
icCSVImportOptions :: Lens' ImportContext (Maybe ImportContextCSVImportOptions)
icCSVImportOptions
  = lens _icCSVImportOptions
      (\ s a -> s{_icCSVImportOptions = a})

-- | A path to the file in Google Cloud Storage from which the import is
-- made. The URI is in the form gs:\/\/bucketName\/fileName. Compressed
-- gzip files (.gz) are supported when fileType is SQL.
icURI :: Lens' ImportContext (Maybe Text)
icURI = lens _icURI (\ s a -> s{_icURI = a})

-- | The file type for the specified uri. SQL: The file contains SQL
-- statements. CSV: The file contains CSV data.
icFileType :: Lens' ImportContext (Maybe Text)
icFileType
  = lens _icFileType (\ s a -> s{_icFileType = a})

instance FromJSON ImportContext where
        parseJSON
          = withObject "ImportContext"
              (\ o ->
                 ImportContext' <$>
                   (o .:? "database") <*>
                     (o .:? "kind" .!= "sql#importContext")
                     <*> (o .:? "csvImportOptions")
                     <*> (o .:? "uri")
                     <*> (o .:? "fileType"))

instance ToJSON ImportContext where
        toJSON ImportContext'{..}
          = object
              (catMaybes
                 [("database" .=) <$> _icDatabase,
                  Just ("kind" .= _icKind),
                  ("csvImportOptions" .=) <$> _icCSVImportOptions,
                  ("uri" .=) <$> _icURI,
                  ("fileType" .=) <$> _icFileType])

-- | An Operations resource contains information about database instance
-- operations such as create, delete, and restart. Operations resources are
-- created in response to operations that were initiated; you never create
-- them directly.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oTargetId      :: !(Maybe Text)
    , _oTargetProject :: !(Maybe Text)
    , _oStatus        :: !(Maybe Text)
    , _oInsertTime    :: !(Maybe DateTime')
    , _oImportContext :: !(Maybe ImportContext)
    , _oStartTime     :: !(Maybe DateTime')
    , _oKind          :: !Text
    , _oError         :: !(Maybe OperationErrors)
    , _oExportContext :: !(Maybe ExportContext)
    , _oUser          :: !(Maybe Text)
    , _oSelfLink      :: !(Maybe Text)
    , _oName          :: !(Maybe Text)
    , _oEndTime       :: !(Maybe DateTime')
    , _oOperationType :: !(Maybe Text)
    , _oTargetLink    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oTargetId'
--
-- * 'oTargetProject'
--
-- * 'oStatus'
--
-- * 'oInsertTime'
--
-- * 'oImportContext'
--
-- * 'oStartTime'
--
-- * 'oKind'
--
-- * 'oError'
--
-- * 'oExportContext'
--
-- * 'oUser'
--
-- * 'oSelfLink'
--
-- * 'oName'
--
-- * 'oEndTime'
--
-- * 'oOperationType'
--
-- * 'oTargetLink'
operation
    :: Operation
operation =
    Operation'
    { _oTargetId = Nothing
    , _oTargetProject = Nothing
    , _oStatus = Nothing
    , _oInsertTime = Nothing
    , _oImportContext = Nothing
    , _oStartTime = Nothing
    , _oKind = "sql#operation"
    , _oError = Nothing
    , _oExportContext = Nothing
    , _oUser = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oEndTime = Nothing
    , _oOperationType = Nothing
    , _oTargetLink = Nothing
    }

-- | Name of the database instance related to this operation.
oTargetId :: Lens' Operation (Maybe Text)
oTargetId
  = lens _oTargetId (\ s a -> s{_oTargetId = a})

-- | The project ID of the target instance related to this operation.
oTargetProject :: Lens' Operation (Maybe Text)
oTargetProject
  = lens _oTargetProject
      (\ s a -> s{_oTargetProject = a})

-- | The status of an operation. Valid values are PENDING, RUNNING, DONE,
-- UNKNOWN.
oStatus :: Lens' Operation (Maybe Text)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | The time this operation was enqueued in UTC timezone in RFC 3339 format,
-- for example 2012-11-15T16:19:00.094Z.
oInsertTime :: Lens' Operation (Maybe UTCTime)
oInsertTime
  = lens _oInsertTime (\ s a -> s{_oInsertTime = a}) .
      mapping _DateTime

-- | The context for import operation, if applicable.
oImportContext :: Lens' Operation (Maybe ImportContext)
oImportContext
  = lens _oImportContext
      (\ s a -> s{_oImportContext = a})

-- | The time this operation actually started in UTC timezone in RFC 3339
-- format, for example 2012-11-15T16:19:00.094Z.
oStartTime :: Lens' Operation (Maybe UTCTime)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a}) .
      mapping _DateTime

-- | This is always sql#operation.
oKind :: Lens' Operation Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | If errors occurred during processing of this operation, this field will
-- be populated.
oError :: Lens' Operation (Maybe OperationErrors)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The context for export operation, if applicable.
oExportContext :: Lens' Operation (Maybe ExportContext)
oExportContext
  = lens _oExportContext
      (\ s a -> s{_oExportContext = a})

-- | The email address of the user who initiated this operation.
oUser :: Lens' Operation (Maybe Text)
oUser = lens _oUser (\ s a -> s{_oUser = a})

-- | The URI of this resource.
oSelfLink :: Lens' Operation (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

-- | An identifier that uniquely identifies the operation. You can use this
-- identifier to retrieve the Operations resource that has information
-- about the operation.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | The time this operation finished in UTC timezone in RFC 3339 format, for
-- example 2012-11-15T16:19:00.094Z.
oEndTime :: Lens' Operation (Maybe UTCTime)
oEndTime
  = lens _oEndTime (\ s a -> s{_oEndTime = a}) .
      mapping _DateTime

-- | The type of the operation. Valid values are CREATE, DELETE, UPDATE,
-- RESTART, IMPORT, EXPORT, BACKUP_VOLUME, RESTORE_VOLUME, CREATE_USER,
-- DELETE_USER, CREATE_DATABASE, DELETE_DATABASE .
oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | The URI of the instance related to the operation.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "targetId") <*> (o .:? "targetProject") <*>
                     (o .:? "status")
                     <*> (o .:? "insertTime")
                     <*> (o .:? "importContext")
                     <*> (o .:? "startTime")
                     <*> (o .:? "kind" .!= "sql#operation")
                     <*> (o .:? "error")
                     <*> (o .:? "exportContext")
                     <*> (o .:? "user")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "endTime")
                     <*> (o .:? "operationType")
                     <*> (o .:? "targetLink"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("targetId" .=) <$> _oTargetId,
                  ("targetProject" .=) <$> _oTargetProject,
                  ("status" .=) <$> _oStatus,
                  ("insertTime" .=) <$> _oInsertTime,
                  ("importContext" .=) <$> _oImportContext,
                  ("startTime" .=) <$> _oStartTime,
                  Just ("kind" .= _oKind), ("error" .=) <$> _oError,
                  ("exportContext" .=) <$> _oExportContext,
                  ("user" .=) <$> _oUser,
                  ("selfLink" .=) <$> _oSelfLink,
                  ("name" .=) <$> _oName, ("endTime" .=) <$> _oEndTime,
                  ("operationType" .=) <$> _oOperationType,
                  ("targetLink" .=) <$> _oTargetLink])

-- | Database instance settings.
--
-- /See:/ 'settings' smart constructor.
data Settings = Settings'
    { _sStorageAutoResize           :: !(Maybe Bool)
    , _sReplicationType             :: !(Maybe Text)
    , _sActivationPolicy            :: !(Maybe Text)
    , _sSettingsVersion             :: !(Maybe (Textual Int64))
    , _sDataDiskSizeGb              :: !(Maybe (Textual Int64))
    , _sAuthorizedGaeApplications   :: !(Maybe [Text])
    , _sKind                        :: !Text
    , _sPricingPlan                 :: !(Maybe Text)
    , _sIPConfiguration             :: !(Maybe IPConfiguration)
    , _sMaintenanceWindow           :: !(Maybe MaintenanceWindow)
    , _sDatabaseReplicationEnabled  :: !(Maybe Bool)
    , _sTier                        :: !(Maybe Text)
    , _sDatabaseFlags               :: !(Maybe [DatabaseFlags])
    , _sDataDiskType                :: !(Maybe Text)
    , _sCrashSafeReplicationEnabled :: !(Maybe Bool)
    , _sLocationPreference          :: !(Maybe LocationPreference)
    , _sBackupConfiguration         :: !(Maybe BackupConfiguration)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStorageAutoResize'
--
-- * 'sReplicationType'
--
-- * 'sActivationPolicy'
--
-- * 'sSettingsVersion'
--
-- * 'sDataDiskSizeGb'
--
-- * 'sAuthorizedGaeApplications'
--
-- * 'sKind'
--
-- * 'sPricingPlan'
--
-- * 'sIPConfiguration'
--
-- * 'sMaintenanceWindow'
--
-- * 'sDatabaseReplicationEnabled'
--
-- * 'sTier'
--
-- * 'sDatabaseFlags'
--
-- * 'sDataDiskType'
--
-- * 'sCrashSafeReplicationEnabled'
--
-- * 'sLocationPreference'
--
-- * 'sBackupConfiguration'
settings
    :: Settings
settings =
    Settings'
    { _sStorageAutoResize = Nothing
    , _sReplicationType = Nothing
    , _sActivationPolicy = Nothing
    , _sSettingsVersion = Nothing
    , _sDataDiskSizeGb = Nothing
    , _sAuthorizedGaeApplications = Nothing
    , _sKind = "sql#settings"
    , _sPricingPlan = Nothing
    , _sIPConfiguration = Nothing
    , _sMaintenanceWindow = Nothing
    , _sDatabaseReplicationEnabled = Nothing
    , _sTier = Nothing
    , _sDatabaseFlags = Nothing
    , _sDataDiskType = Nothing
    , _sCrashSafeReplicationEnabled = Nothing
    , _sLocationPreference = Nothing
    , _sBackupConfiguration = Nothing
    }

-- | Configuration to increase storage size automatically. The default value
-- is false. Applies only to Second Generation instances.
sStorageAutoResize :: Lens' Settings (Maybe Bool)
sStorageAutoResize
  = lens _sStorageAutoResize
      (\ s a -> s{_sStorageAutoResize = a})

-- | The type of replication this instance uses. This can be either
-- ASYNCHRONOUS or SYNCHRONOUS. This property is only applicable to First
-- Generation instances.
sReplicationType :: Lens' Settings (Maybe Text)
sReplicationType
  = lens _sReplicationType
      (\ s a -> s{_sReplicationType = a})

-- | The activation policy specifies when the instance is activated; it is
-- applicable only when the instance state is RUNNABLE. The activation
-- policy cannot be updated together with other settings for Second
-- Generation instances. Valid values: ALWAYS: The instance is on; it is
-- not deactivated by inactivity. NEVER: The instance is off; it is not
-- activated, even if a connection request arrives. ON_DEMAND: The instance
-- responds to incoming requests, and turns itself off when not in use.
-- Instances with PER_USE pricing turn off after 15 minutes of inactivity.
-- Instances with PER_PACKAGE pricing turn off after 12 hours of
-- inactivity.
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
      . mapping _Coerce

-- | The size of data disk, in GB. The data disk size minimum is 10GB.
-- Applies only to Second Generation instances.
sDataDiskSizeGb :: Lens' Settings (Maybe Int64)
sDataDiskSizeGb
  = lens _sDataDiskSizeGb
      (\ s a -> s{_sDataDiskSizeGb = a})
      . mapping _Coerce

-- | The App Engine app IDs that can access this instance. This property is
-- only applicable to First Generation instances.
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
-- PACKAGE. Only PER_USE is supported for Second Generation instances.
sPricingPlan :: Lens' Settings (Maybe Text)
sPricingPlan
  = lens _sPricingPlan (\ s a -> s{_sPricingPlan = a})

-- | The settings for IP Management. This allows to enable or disable the
-- instance IP and manage which external networks can connect to the
-- instance. The IPv4 address cannot be disabled for Second Generation
-- instances.
sIPConfiguration :: Lens' Settings (Maybe IPConfiguration)
sIPConfiguration
  = lens _sIPConfiguration
      (\ s a -> s{_sIPConfiguration = a})

-- | The maintenance window for this instance. This specifies when the
-- instance may be restarted for maintenance purposes. Applies only to
-- Second Generation instances.
sMaintenanceWindow :: Lens' Settings (Maybe MaintenanceWindow)
sMaintenanceWindow
  = lens _sMaintenanceWindow
      (\ s a -> s{_sMaintenanceWindow = a})

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
sDatabaseFlags :: Lens' Settings [DatabaseFlags]
sDatabaseFlags
  = lens _sDatabaseFlags
      (\ s a -> s{_sDatabaseFlags = a})
      . _Default
      . _Coerce

-- | The type of data disk. Only supported for Second Generation instances.
-- The default type is PD_SSD. Applies only to Second Generation instances.
sDataDiskType :: Lens' Settings (Maybe Text)
sDataDiskType
  = lens _sDataDiskType
      (\ s a -> s{_sDataDiskType = a})

-- | Configuration specific to read replica instances. Indicates whether
-- database flags for crash-safe replication are enabled. This property is
-- only applicable to First Generation instances.
sCrashSafeReplicationEnabled :: Lens' Settings (Maybe Bool)
sCrashSafeReplicationEnabled
  = lens _sCrashSafeReplicationEnabled
      (\ s a -> s{_sCrashSafeReplicationEnabled = a})

-- | The location preference settings. This allows the instance to be located
-- as near as possible to either an App Engine app or GCE zone for better
-- performance. App Engine co-location is only applicable to First
-- Generation instances.
sLocationPreference :: Lens' Settings (Maybe LocationPreference)
sLocationPreference
  = lens _sLocationPreference
      (\ s a -> s{_sLocationPreference = a})

-- | The daily backup configuration for the instance.
sBackupConfiguration :: Lens' Settings (Maybe BackupConfiguration)
sBackupConfiguration
  = lens _sBackupConfiguration
      (\ s a -> s{_sBackupConfiguration = a})

instance FromJSON Settings where
        parseJSON
          = withObject "Settings"
              (\ o ->
                 Settings' <$>
                   (o .:? "storageAutoResize") <*>
                     (o .:? "replicationType")
                     <*> (o .:? "activationPolicy")
                     <*> (o .:? "settingsVersion")
                     <*> (o .:? "dataDiskSizeGb")
                     <*> (o .:? "authorizedGaeApplications" .!= mempty)
                     <*> (o .:? "kind" .!= "sql#settings")
                     <*> (o .:? "pricingPlan")
                     <*> (o .:? "ipConfiguration")
                     <*> (o .:? "maintenanceWindow")
                     <*> (o .:? "databaseReplicationEnabled")
                     <*> (o .:? "tier")
                     <*> (o .:? "databaseFlags" .!= mempty)
                     <*> (o .:? "dataDiskType")
                     <*> (o .:? "crashSafeReplicationEnabled")
                     <*> (o .:? "locationPreference")
                     <*> (o .:? "backupConfiguration"))

instance ToJSON Settings where
        toJSON Settings'{..}
          = object
              (catMaybes
                 [("storageAutoResize" .=) <$> _sStorageAutoResize,
                  ("replicationType" .=) <$> _sReplicationType,
                  ("activationPolicy" .=) <$> _sActivationPolicy,
                  ("settingsVersion" .=) <$> _sSettingsVersion,
                  ("dataDiskSizeGb" .=) <$> _sDataDiskSizeGb,
                  ("authorizedGaeApplications" .=) <$>
                    _sAuthorizedGaeApplications,
                  Just ("kind" .= _sKind),
                  ("pricingPlan" .=) <$> _sPricingPlan,
                  ("ipConfiguration" .=) <$> _sIPConfiguration,
                  ("maintenanceWindow" .=) <$> _sMaintenanceWindow,
                  ("databaseReplicationEnabled" .=) <$>
                    _sDatabaseReplicationEnabled,
                  ("tier" .=) <$> _sTier,
                  ("databaseFlags" .=) <$> _sDatabaseFlags,
                  ("dataDiskType" .=) <$> _sDataDiskType,
                  ("crashSafeReplicationEnabled" .=) <$>
                    _sCrashSafeReplicationEnabled,
                  ("locationPreference" .=) <$> _sLocationPreference,
                  ("backupConfiguration" .=) <$>
                    _sBackupConfiguration])

-- | Database instance IP Mapping.
--
-- /See:/ 'ipMApping' smart constructor.
data IPMApping = IPMApping'
    { _imaIPAddress    :: !(Maybe Text)
    , _imaTimeToRetire :: !(Maybe DateTime')
    , _imaType         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IPMApping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imaIPAddress'
--
-- * 'imaTimeToRetire'
--
-- * 'imaType'
ipMApping
    :: IPMApping
ipMApping =
    IPMApping'
    { _imaIPAddress = Nothing
    , _imaTimeToRetire = Nothing
    , _imaType = Nothing
    }

-- | The IP address assigned.
imaIPAddress :: Lens' IPMApping (Maybe Text)
imaIPAddress
  = lens _imaIPAddress (\ s a -> s{_imaIPAddress = a})

-- | The due time for this IP to be retired in RFC 3339 format, for example
-- 2012-11-15T16:19:00.094Z. This field is only available when the IP is
-- scheduled to be retired.
imaTimeToRetire :: Lens' IPMApping (Maybe UTCTime)
imaTimeToRetire
  = lens _imaTimeToRetire
      (\ s a -> s{_imaTimeToRetire = a})
      . mapping _DateTime

-- | The type of this IP address. A PRIMARY address is an address that can
-- accept incoming connections. An OUTGOING address is the source address
-- of connections originating from the instance, if supported.
imaType :: Lens' IPMApping (Maybe Text)
imaType = lens _imaType (\ s a -> s{_imaType = a})

instance FromJSON IPMApping where
        parseJSON
          = withObject "IPMApping"
              (\ o ->
                 IPMApping' <$>
                   (o .:? "ipAddress") <*> (o .:? "timeToRetire") <*>
                     (o .:? "type"))

instance ToJSON IPMApping where
        toJSON IPMApping'{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _imaIPAddress,
                  ("timeToRetire" .=) <$> _imaTimeToRetire,
                  ("type" .=) <$> _imaType])

-- | A database resource inside a Cloud SQL instance.
--
-- /See:/ 'database' smart constructor.
data Database = Database'
    { _dEtag      :: !(Maybe Text)
    , _dProject   :: !(Maybe Text)
    , _dKind      :: !Text
    , _dCollation :: !(Maybe Text)
    , _dSelfLink  :: !(Maybe Text)
    , _dName      :: !(Maybe Text)
    , _dCharSet   :: !(Maybe Text)
    , _dInstance  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'dCharSet'
--
-- * 'dInstance'
database
    :: Database
database =
    Database'
    { _dEtag = Nothing
    , _dProject = Nothing
    , _dKind = "sql#database"
    , _dCollation = Nothing
    , _dSelfLink = Nothing
    , _dName = Nothing
    , _dCharSet = Nothing
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
dCharSet :: Lens' Database (Maybe Text)
dCharSet = lens _dCharSet (\ s a -> s{_dCharSet = a})

-- | The name of the Cloud SQL instance. This does not include the project
-- ID.
dInstance :: Lens' Database (Maybe Text)
dInstance
  = lens _dInstance (\ s a -> s{_dInstance = a})

instance FromJSON Database where
        parseJSON
          = withObject "Database"
              (\ o ->
                 Database' <$>
                   (o .:? "etag") <*> (o .:? "project") <*>
                     (o .:? "kind" .!= "sql#database")
                     <*> (o .:? "collation")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "charset")
                     <*> (o .:? "instance"))

instance ToJSON Database where
        toJSON Database'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _dEtag,
                  ("project" .=) <$> _dProject,
                  Just ("kind" .= _dKind),
                  ("collation" .=) <$> _dCollation,
                  ("selfLink" .=) <$> _dSelfLink,
                  ("name" .=) <$> _dName, ("charset" .=) <$> _dCharSet,
                  ("instance" .=) <$> _dInstance])

-- | SslCerts create ephemeral certificate request.
--
-- /See:/ 'sslCertsCreateEphemeralRequest' smart constructor.
newtype SSLCertsCreateEphemeralRequest = SSLCertsCreateEphemeralRequest'
    { _sccerPublicKey :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsCreateEphemeralRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sccerPublicKey'
sslCertsCreateEphemeralRequest
    :: SSLCertsCreateEphemeralRequest
sslCertsCreateEphemeralRequest =
    SSLCertsCreateEphemeralRequest'
    { _sccerPublicKey = Nothing
    }

-- | PEM encoded public key to include in the signed certificate.
sccerPublicKey :: Lens' SSLCertsCreateEphemeralRequest (Maybe Text)
sccerPublicKey
  = lens _sccerPublicKey
      (\ s a -> s{_sccerPublicKey = a})

instance FromJSON SSLCertsCreateEphemeralRequest
         where
        parseJSON
          = withObject "SSLCertsCreateEphemeralRequest"
              (\ o ->
                 SSLCertsCreateEphemeralRequest' <$>
                   (o .:? "public_key"))

instance ToJSON SSLCertsCreateEphemeralRequest where
        toJSON SSLCertsCreateEphemeralRequest'{..}
          = object
              (catMaybes [("public_key" .=) <$> _sccerPublicKey])

-- | Binary log coordinates.
--
-- /See:/ 'binLogCoordinates' smart constructor.
data BinLogCoordinates = BinLogCoordinates'
    { _blcBinLogPosition :: !(Maybe (Textual Int64))
    , _blcKind           :: !Text
    , _blcBinLogFileName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BinLogCoordinates'
    { _blcBinLogPosition = Nothing
    , _blcKind = "sql#binLogCoordinates"
    , _blcBinLogFileName = Nothing
    }

-- | Position (offset) within the binary log file.
blcBinLogPosition :: Lens' BinLogCoordinates (Maybe Int64)
blcBinLogPosition
  = lens _blcBinLogPosition
      (\ s a -> s{_blcBinLogPosition = a})
      . mapping _Coerce

-- | This is always sql#binLogCoordinates.
blcKind :: Lens' BinLogCoordinates Text
blcKind = lens _blcKind (\ s a -> s{_blcKind = a})

-- | Name of the binary log file for a Cloud SQL instance.
blcBinLogFileName :: Lens' BinLogCoordinates (Maybe Text)
blcBinLogFileName
  = lens _blcBinLogFileName
      (\ s a -> s{_blcBinLogFileName = a})

instance FromJSON BinLogCoordinates where
        parseJSON
          = withObject "BinLogCoordinates"
              (\ o ->
                 BinLogCoordinates' <$>
                   (o .:? "binLogPosition") <*>
                     (o .:? "kind" .!= "sql#binLogCoordinates")
                     <*> (o .:? "binLogFileName"))

instance ToJSON BinLogCoordinates where
        toJSON BinLogCoordinates'{..}
          = object
              (catMaybes
                 [("binLogPosition" .=) <$> _blcBinLogPosition,
                  Just ("kind" .= _blcKind),
                  ("binLogFileName" .=) <$> _blcBinLogFileName])

-- | The name and status of the failover replica. This property is applicable
-- only to Second Generation instances.
--
-- /See:/ 'databaseInstanceFailoverReplica' smart constructor.
data DatabaseInstanceFailoverReplica = DatabaseInstanceFailoverReplica'
    { _difrName      :: !(Maybe Text)
    , _difrAvailable :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabaseInstanceFailoverReplica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'difrName'
--
-- * 'difrAvailable'
databaseInstanceFailoverReplica
    :: DatabaseInstanceFailoverReplica
databaseInstanceFailoverReplica =
    DatabaseInstanceFailoverReplica'
    { _difrName = Nothing
    , _difrAvailable = Nothing
    }

-- | The name of the failover replica. If specified at instance creation, a
-- failover replica is created for the instance. The name doesn\'t include
-- the project ID. This property is applicable only to Second Generation
-- instances.
difrName :: Lens' DatabaseInstanceFailoverReplica (Maybe Text)
difrName = lens _difrName (\ s a -> s{_difrName = a})

-- | The availability status of the failover replica. A false status
-- indicates that the failover replica is out of sync. The master can only
-- failover to the falover replica when the status is true.
difrAvailable :: Lens' DatabaseInstanceFailoverReplica (Maybe Bool)
difrAvailable
  = lens _difrAvailable
      (\ s a -> s{_difrAvailable = a})

instance FromJSON DatabaseInstanceFailoverReplica
         where
        parseJSON
          = withObject "DatabaseInstanceFailoverReplica"
              (\ o ->
                 DatabaseInstanceFailoverReplica' <$>
                   (o .:? "name") <*> (o .:? "available"))

instance ToJSON DatabaseInstanceFailoverReplica where
        toJSON DatabaseInstanceFailoverReplica'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _difrName,
                  ("available" .=) <$> _difrAvailable])

-- | Tiers list response.
--
-- /See:/ 'tiersListResponse' smart constructor.
data TiersListResponse = TiersListResponse'
    { _tlrKind  :: !Text
    , _tlrItems :: !(Maybe [Tier])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TiersListResponse'
    { _tlrKind = "sql#tiersList"
    , _tlrItems = Nothing
    }

-- | This is always sql#tiersList.
tlrKind :: Lens' TiersListResponse Text
tlrKind = lens _tlrKind (\ s a -> s{_tlrKind = a})

-- | List of tiers.
tlrItems :: Lens' TiersListResponse [Tier]
tlrItems
  = lens _tlrItems (\ s a -> s{_tlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON TiersListResponse where
        parseJSON
          = withObject "TiersListResponse"
              (\ o ->
                 TiersListResponse' <$>
                   (o .:? "kind" .!= "sql#tiersList") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON TiersListResponse where
        toJSON TiersListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tlrKind),
                  ("items" .=) <$> _tlrItems])

-- | User list response.
--
-- /See:/ 'usersListResponse' smart constructor.
data UsersListResponse = UsersListResponse'
    { _ulrNextPageToken :: !(Maybe Text)
    , _ulrKind          :: !Text
    , _ulrItems         :: !(Maybe [User])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    UsersListResponse'
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
ulrItems :: Lens' UsersListResponse [User]
ulrItems
  = lens _ulrItems (\ s a -> s{_ulrItems = a}) .
      _Default
      . _Coerce

instance FromJSON UsersListResponse where
        parseJSON
          = withObject "UsersListResponse"
              (\ o ->
                 UsersListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "sql#usersList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON UsersListResponse where
        toJSON UsersListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ulrNextPageToken,
                  Just ("kind" .= _ulrKind),
                  ("items" .=) <$> _ulrItems])

-- | Database instance export context.
--
-- /See:/ 'exportContext' smart constructor.
data ExportContext = ExportContext'
    { _ecCSVExportOptions :: !(Maybe ExportContextCSVExportOptions)
    , _ecKind             :: !Text
    , _ecURI              :: !(Maybe Text)
    , _ecFileType         :: !(Maybe Text)
    , _ecSQLExportOptions :: !(Maybe ExportContextSQLExportOptions)
    , _ecDatabases        :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecCSVExportOptions'
--
-- * 'ecKind'
--
-- * 'ecURI'
--
-- * 'ecFileType'
--
-- * 'ecSQLExportOptions'
--
-- * 'ecDatabases'
exportContext
    :: ExportContext
exportContext =
    ExportContext'
    { _ecCSVExportOptions = Nothing
    , _ecKind = "sql#exportContext"
    , _ecURI = Nothing
    , _ecFileType = Nothing
    , _ecSQLExportOptions = Nothing
    , _ecDatabases = Nothing
    }

-- | Options for exporting data as CSV.
ecCSVExportOptions :: Lens' ExportContext (Maybe ExportContextCSVExportOptions)
ecCSVExportOptions
  = lens _ecCSVExportOptions
      (\ s a -> s{_ecCSVExportOptions = a})

-- | This is always sql#exportContext.
ecKind :: Lens' ExportContext Text
ecKind = lens _ecKind (\ s a -> s{_ecKind = a})

-- | The path to the file in Google Cloud Storage where the export will be
-- stored. The URI is in the form gs:\/\/bucketName\/fileName. If the file
-- already exists, the operation fails. If fileType is SQL and the filename
-- ends with .gz, the contents are compressed.
ecURI :: Lens' ExportContext (Maybe Text)
ecURI = lens _ecURI (\ s a -> s{_ecURI = a})

-- | The file type for the specified uri. SQL: The file contains SQL
-- statements. CSV: The file contains CSV data.
ecFileType :: Lens' ExportContext (Maybe Text)
ecFileType
  = lens _ecFileType (\ s a -> s{_ecFileType = a})

-- | Options for exporting data as SQL statements.
ecSQLExportOptions :: Lens' ExportContext (Maybe ExportContextSQLExportOptions)
ecSQLExportOptions
  = lens _ecSQLExportOptions
      (\ s a -> s{_ecSQLExportOptions = a})

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

instance FromJSON ExportContext where
        parseJSON
          = withObject "ExportContext"
              (\ o ->
                 ExportContext' <$>
                   (o .:? "csvExportOptions") <*>
                     (o .:? "kind" .!= "sql#exportContext")
                     <*> (o .:? "uri")
                     <*> (o .:? "fileType")
                     <*> (o .:? "sqlExportOptions")
                     <*> (o .:? "databases" .!= mempty))

instance ToJSON ExportContext where
        toJSON ExportContext'{..}
          = object
              (catMaybes
                 [("csvExportOptions" .=) <$> _ecCSVExportOptions,
                  Just ("kind" .= _ecKind), ("uri" .=) <$> _ecURI,
                  ("fileType" .=) <$> _ecFileType,
                  ("sqlExportOptions" .=) <$> _ecSQLExportOptions,
                  ("databases" .=) <$> _ecDatabases])

-- | Database instance operation errors list wrapper.
--
-- /See:/ 'operationErrors' smart constructor.
data OperationErrors = OperationErrors'
    { _oeKind   :: !Text
    , _oeErrors :: !(Maybe [OperationError])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeKind'
--
-- * 'oeErrors'
operationErrors
    :: OperationErrors
operationErrors =
    OperationErrors'
    { _oeKind = "sql#operationErrors"
    , _oeErrors = Nothing
    }

-- | This is always sql#operationErrors.
oeKind :: Lens' OperationErrors Text
oeKind = lens _oeKind (\ s a -> s{_oeKind = a})

-- | The list of errors encountered while processing this operation.
oeErrors :: Lens' OperationErrors [OperationError]
oeErrors
  = lens _oeErrors (\ s a -> s{_oeErrors = a}) .
      _Default
      . _Coerce

instance FromJSON OperationErrors where
        parseJSON
          = withObject "OperationErrors"
              (\ o ->
                 OperationErrors' <$>
                   (o .:? "kind" .!= "sql#operationErrors") <*>
                     (o .:? "errors" .!= mempty))

instance ToJSON OperationErrors where
        toJSON OperationErrors'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oeKind),
                  ("errors" .=) <$> _oeErrors])

-- | SslCerts list response.
--
-- /See:/ 'sslCertsListResponse' smart constructor.
data SSLCertsListResponse = SSLCertsListResponse'
    { _sclrKind  :: !Text
    , _sclrItems :: !(Maybe [SSLCert])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclrKind'
--
-- * 'sclrItems'
sslCertsListResponse
    :: SSLCertsListResponse
sslCertsListResponse =
    SSLCertsListResponse'
    { _sclrKind = "sql#sslCertsList"
    , _sclrItems = Nothing
    }

-- | This is always sql#sslCertsList.
sclrKind :: Lens' SSLCertsListResponse Text
sclrKind = lens _sclrKind (\ s a -> s{_sclrKind = a})

-- | List of client certificates for the instance.
sclrItems :: Lens' SSLCertsListResponse [SSLCert]
sclrItems
  = lens _sclrItems (\ s a -> s{_sclrItems = a}) .
      _Default
      . _Coerce

instance FromJSON SSLCertsListResponse where
        parseJSON
          = withObject "SSLCertsListResponse"
              (\ o ->
                 SSLCertsListResponse' <$>
                   (o .:? "kind" .!= "sql#sslCertsList") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON SSLCertsListResponse where
        toJSON SSLCertsListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _sclrKind),
                  ("items" .=) <$> _sclrItems])

-- | SslCerts insert request.
--
-- /See:/ 'sslCertsInsertRequest' smart constructor.
newtype SSLCertsInsertRequest = SSLCertsInsertRequest'
    { _scirCommonName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsInsertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scirCommonName'
sslCertsInsertRequest
    :: SSLCertsInsertRequest
sslCertsInsertRequest =
    SSLCertsInsertRequest'
    { _scirCommonName = Nothing
    }

-- | User supplied name. Must be a distinct name from the other certificates
-- for this instance. New certificates will not be usable until the
-- instance is restarted.
scirCommonName :: Lens' SSLCertsInsertRequest (Maybe Text)
scirCommonName
  = lens _scirCommonName
      (\ s a -> s{_scirCommonName = a})

instance FromJSON SSLCertsInsertRequest where
        parseJSON
          = withObject "SSLCertsInsertRequest"
              (\ o ->
                 SSLCertsInsertRequest' <$> (o .:? "commonName"))

instance ToJSON SSLCertsInsertRequest where
        toJSON SSLCertsInsertRequest'{..}
          = object
              (catMaybes [("commonName" .=) <$> _scirCommonName])

-- | IP Management configuration.
--
-- /See:/ 'ipConfiguration' smart constructor.
data IPConfiguration = IPConfiguration'
    { _icAuthorizedNetworks :: !(Maybe [ACLEntry])
    , _icRequireSSL         :: !(Maybe Bool)
    , _icIPv4Enabled        :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IPConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icAuthorizedNetworks'
--
-- * 'icRequireSSL'
--
-- * 'icIPv4Enabled'
ipConfiguration
    :: IPConfiguration
ipConfiguration =
    IPConfiguration'
    { _icAuthorizedNetworks = Nothing
    , _icRequireSSL = Nothing
    , _icIPv4Enabled = Nothing
    }

-- | The list of external networks that are allowed to connect to the
-- instance using the IP. In CIDR notation, also known as \'slash\'
-- notation (e.g. 192.168.100.0\/24).
icAuthorizedNetworks :: Lens' IPConfiguration [ACLEntry]
icAuthorizedNetworks
  = lens _icAuthorizedNetworks
      (\ s a -> s{_icAuthorizedNetworks = a})
      . _Default
      . _Coerce

-- | Whether the mysqld should default to \'REQUIRE X509\' for users
-- connecting over IP.
icRequireSSL :: Lens' IPConfiguration (Maybe Bool)
icRequireSSL
  = lens _icRequireSSL (\ s a -> s{_icRequireSSL = a})

-- | Whether the instance should be assigned an IP address or not.
icIPv4Enabled :: Lens' IPConfiguration (Maybe Bool)
icIPv4Enabled
  = lens _icIPv4Enabled
      (\ s a -> s{_icIPv4Enabled = a})

instance FromJSON IPConfiguration where
        parseJSON
          = withObject "IPConfiguration"
              (\ o ->
                 IPConfiguration' <$>
                   (o .:? "authorizedNetworks" .!= mempty) <*>
                     (o .:? "requireSsl")
                     <*> (o .:? "ipv4Enabled"))

instance ToJSON IPConfiguration where
        toJSON IPConfiguration'{..}
          = object
              (catMaybes
                 [("authorizedNetworks" .=) <$> _icAuthorizedNetworks,
                  ("requireSsl" .=) <$> _icRequireSSL,
                  ("ipv4Enabled" .=) <$> _icIPv4Enabled])

-- | Maintenance window. This specifies when a v2 Cloud SQL instance should
-- preferably be restarted for system maintenance puruposes.
--
-- /See:/ 'maintenanceWindow' smart constructor.
data MaintenanceWindow = MaintenanceWindow'
    { _mwKind        :: !Text
    , _mwDay         :: !(Maybe (Textual Int32))
    , _mwHour        :: !(Maybe (Textual Int32))
    , _mwUpdateTrack :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwKind'
--
-- * 'mwDay'
--
-- * 'mwHour'
--
-- * 'mwUpdateTrack'
maintenanceWindow
    :: MaintenanceWindow
maintenanceWindow =
    MaintenanceWindow'
    { _mwKind = "sql#maintenanceWindow"
    , _mwDay = Nothing
    , _mwHour = Nothing
    , _mwUpdateTrack = Nothing
    }

-- | This is always sql#maintenanceWindow.
mwKind :: Lens' MaintenanceWindow Text
mwKind = lens _mwKind (\ s a -> s{_mwKind = a})

-- | day of week (1-7), starting on Monday.
mwDay :: Lens' MaintenanceWindow (Maybe Int32)
mwDay
  = lens _mwDay (\ s a -> s{_mwDay = a}) .
      mapping _Coerce

-- | hour of day - 0 to 23.
mwHour :: Lens' MaintenanceWindow (Maybe Int32)
mwHour
  = lens _mwHour (\ s a -> s{_mwHour = a}) .
      mapping _Coerce

mwUpdateTrack :: Lens' MaintenanceWindow (Maybe Text)
mwUpdateTrack
  = lens _mwUpdateTrack
      (\ s a -> s{_mwUpdateTrack = a})

instance FromJSON MaintenanceWindow where
        parseJSON
          = withObject "MaintenanceWindow"
              (\ o ->
                 MaintenanceWindow' <$>
                   (o .:? "kind" .!= "sql#maintenanceWindow") <*>
                     (o .:? "day")
                     <*> (o .:? "hour")
                     <*> (o .:? "updateTrack"))

instance ToJSON MaintenanceWindow where
        toJSON MaintenanceWindow'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mwKind), ("day" .=) <$> _mwDay,
                  ("hour" .=) <$> _mwHour,
                  ("updateTrack" .=) <$> _mwUpdateTrack])

-- | Options for importing data as CSV.
--
-- /See:/ 'importContextCSVImportOptions' smart constructor.
data ImportContextCSVImportOptions = ImportContextCSVImportOptions'
    { _iccioColumns :: !(Maybe [Text])
    , _iccioTable   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportContextCSVImportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iccioColumns'
--
-- * 'iccioTable'
importContextCSVImportOptions
    :: ImportContextCSVImportOptions
importContextCSVImportOptions =
    ImportContextCSVImportOptions'
    { _iccioColumns = Nothing
    , _iccioTable = Nothing
    }

-- | The columns to which CSV data is imported. If not specified, all columns
-- of the database table are loaded with CSV data.
iccioColumns :: Lens' ImportContextCSVImportOptions [Text]
iccioColumns
  = lens _iccioColumns (\ s a -> s{_iccioColumns = a})
      . _Default
      . _Coerce

-- | The table to which CSV data is imported.
iccioTable :: Lens' ImportContextCSVImportOptions (Maybe Text)
iccioTable
  = lens _iccioTable (\ s a -> s{_iccioTable = a})

instance FromJSON ImportContextCSVImportOptions where
        parseJSON
          = withObject "ImportContextCSVImportOptions"
              (\ o ->
                 ImportContextCSVImportOptions' <$>
                   (o .:? "columns" .!= mempty) <*> (o .:? "table"))

instance ToJSON ImportContextCSVImportOptions where
        toJSON ImportContextCSVImportOptions'{..}
          = object
              (catMaybes
                 [("columns" .=) <$> _iccioColumns,
                  ("table" .=) <$> _iccioTable])

-- | Options for exporting data as CSV.
--
-- /See:/ 'exportContextCSVExportOptions' smart constructor.
newtype ExportContextCSVExportOptions = ExportContextCSVExportOptions'
    { _ecceoSelectQuery :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportContextCSVExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecceoSelectQuery'
exportContextCSVExportOptions
    :: ExportContextCSVExportOptions
exportContextCSVExportOptions =
    ExportContextCSVExportOptions'
    { _ecceoSelectQuery = Nothing
    }

-- | The select query used to extract the data.
ecceoSelectQuery :: Lens' ExportContextCSVExportOptions (Maybe Text)
ecceoSelectQuery
  = lens _ecceoSelectQuery
      (\ s a -> s{_ecceoSelectQuery = a})

instance FromJSON ExportContextCSVExportOptions where
        parseJSON
          = withObject "ExportContextCSVExportOptions"
              (\ o ->
                 ExportContextCSVExportOptions' <$>
                   (o .:? "selectQuery"))

instance ToJSON ExportContextCSVExportOptions where
        toJSON ExportContextCSVExportOptions'{..}
          = object
              (catMaybes
                 [("selectQuery" .=) <$> _ecceoSelectQuery])

-- | A Cloud SQL user resource.
--
-- /See:/ 'user' smart constructor.
data User = User'
    { _uEtag     :: !(Maybe Text)
    , _uProject  :: !(Maybe Text)
    , _uKind     :: !Text
    , _uName     :: !(Maybe Text)
    , _uPassword :: !(Maybe Text)
    , _uHost     :: !(Maybe Text)
    , _uInstance :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    User'
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
-- specified as part of the request URL. The host name cannot be updated
-- after insertion.
uHost :: Lens' User (Maybe Text)
uHost = lens _uHost (\ s a -> s{_uHost = a})

-- | The name of the Cloud SQL instance. This does not include the project
-- ID. Can be omitted for update since it is already specified on the URL.
uInstance :: Lens' User (Maybe Text)
uInstance
  = lens _uInstance (\ s a -> s{_uInstance = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$>
                   (o .:? "etag") <*> (o .:? "project") <*>
                     (o .:? "kind" .!= "sql#user")
                     <*> (o .:? "name")
                     <*> (o .:? "password")
                     <*> (o .:? "host")
                     <*> (o .:? "instance"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _uEtag,
                  ("project" .=) <$> _uProject,
                  Just ("kind" .= _uKind), ("name" .=) <$> _uName,
                  ("password" .=) <$> _uPassword,
                  ("host" .=) <$> _uHost,
                  ("instance" .=) <$> _uInstance])

-- | A Cloud SQL instance resource.
--
-- /See:/ 'databaseInstance' smart constructor.
data DatabaseInstance = DatabaseInstance'
    { _datBackendType                :: !(Maybe Text)
    , _datMaxDiskSize                :: !(Maybe (Textual Int64))
    , _datOnPremisesConfiguration    :: !(Maybe OnPremisesConfiguration)
    , _datEtag                       :: !(Maybe Text)
    , _datState                      :: !(Maybe Text)
    , _datIPv6Address                :: !(Maybe Text)
    , _datServerCaCert               :: !(Maybe SSLCert)
    , _datDatabaseVersion            :: !(Maybe Text)
    , _datProject                    :: !(Maybe Text)
    , _datSettings                   :: !(Maybe Settings)
    , _datKind                       :: !Text
    , _datConnectionName             :: !(Maybe Text)
    , _datCurrentDiskSize            :: !(Maybe (Textual Int64))
    , _datInstanceType               :: !(Maybe Text)
    , _datReplicaNames               :: !(Maybe [Text])
    , _datSelfLink                   :: !(Maybe Text)
    , _datFailoverReplica            :: !(Maybe DatabaseInstanceFailoverReplica)
    , _datName                       :: !(Maybe Text)
    , _datMasterInstanceName         :: !(Maybe Text)
    , _datReplicaConfiguration       :: !(Maybe ReplicaConfiguration)
    , _datRegion                     :: !(Maybe Text)
    , _datServiceAccountEmailAddress :: !(Maybe Text)
    , _datIPAddresses                :: !(Maybe [IPMApping])
    , _datSuspensionReason           :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabaseInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datBackendType'
--
-- * 'datMaxDiskSize'
--
-- * 'datOnPremisesConfiguration'
--
-- * 'datEtag'
--
-- * 'datState'
--
-- * 'datIPv6Address'
--
-- * 'datServerCaCert'
--
-- * 'datDatabaseVersion'
--
-- * 'datProject'
--
-- * 'datSettings'
--
-- * 'datKind'
--
-- * 'datConnectionName'
--
-- * 'datCurrentDiskSize'
--
-- * 'datInstanceType'
--
-- * 'datReplicaNames'
--
-- * 'datSelfLink'
--
-- * 'datFailoverReplica'
--
-- * 'datName'
--
-- * 'datMasterInstanceName'
--
-- * 'datReplicaConfiguration'
--
-- * 'datRegion'
--
-- * 'datServiceAccountEmailAddress'
--
-- * 'datIPAddresses'
--
-- * 'datSuspensionReason'
databaseInstance
    :: DatabaseInstance
databaseInstance =
    DatabaseInstance'
    { _datBackendType = Nothing
    , _datMaxDiskSize = Nothing
    , _datOnPremisesConfiguration = Nothing
    , _datEtag = Nothing
    , _datState = Nothing
    , _datIPv6Address = Nothing
    , _datServerCaCert = Nothing
    , _datDatabaseVersion = Nothing
    , _datProject = Nothing
    , _datSettings = Nothing
    , _datKind = "sql#instance"
    , _datConnectionName = Nothing
    , _datCurrentDiskSize = Nothing
    , _datInstanceType = Nothing
    , _datReplicaNames = Nothing
    , _datSelfLink = Nothing
    , _datFailoverReplica = Nothing
    , _datName = Nothing
    , _datMasterInstanceName = Nothing
    , _datReplicaConfiguration = Nothing
    , _datRegion = Nothing
    , _datServiceAccountEmailAddress = Nothing
    , _datIPAddresses = Nothing
    , _datSuspensionReason = Nothing
    }

-- | FIRST_GEN: Basic Cloud SQL instance that runs in a Google-managed
-- container. SECOND_GEN: A newer Cloud SQL backend that runs in a Compute
-- Engine VM. EXTERNAL: A MySQL server that is not managed by Google.
datBackendType :: Lens' DatabaseInstance (Maybe Text)
datBackendType
  = lens _datBackendType
      (\ s a -> s{_datBackendType = a})

-- | The maximum disk size of the instance in bytes.
datMaxDiskSize :: Lens' DatabaseInstance (Maybe Int64)
datMaxDiskSize
  = lens _datMaxDiskSize
      (\ s a -> s{_datMaxDiskSize = a})
      . mapping _Coerce

-- | Configuration specific to on-premises instances.
datOnPremisesConfiguration :: Lens' DatabaseInstance (Maybe OnPremisesConfiguration)
datOnPremisesConfiguration
  = lens _datOnPremisesConfiguration
      (\ s a -> s{_datOnPremisesConfiguration = a})

-- | HTTP 1.1 Entity tag for the resource.
datEtag :: Lens' DatabaseInstance (Maybe Text)
datEtag = lens _datEtag (\ s a -> s{_datEtag = a})

-- | The current serving state of the Cloud SQL instance. This can be one of
-- the following. RUNNABLE: The instance is running, or is ready to run
-- when accessed. SUSPENDED: The instance is not available, for example due
-- to problems with billing. PENDING_CREATE: The instance is being created.
-- MAINTENANCE: The instance is down for maintenance. FAILED: The instance
-- creation failed. UNKNOWN_STATE: The state of the instance is unknown.
datState :: Lens' DatabaseInstance (Maybe Text)
datState = lens _datState (\ s a -> s{_datState = a})

-- | The IPv6 address assigned to the instance. This property is applicable
-- only to First Generation instances.
datIPv6Address :: Lens' DatabaseInstance (Maybe Text)
datIPv6Address
  = lens _datIPv6Address
      (\ s a -> s{_datIPv6Address = a})

-- | SSL configuration.
datServerCaCert :: Lens' DatabaseInstance (Maybe SSLCert)
datServerCaCert
  = lens _datServerCaCert
      (\ s a -> s{_datServerCaCert = a})

-- | The database engine type and version. The databaseVersion can not be
-- changed after instance creation. Can be MYSQL_5_5, MYSQL_5_6 or
-- MYSQL_5_7. Defaults to MYSQL_5_6. MYSQL_5_7 is applicable only to Second
-- Generation instances.
datDatabaseVersion :: Lens' DatabaseInstance (Maybe Text)
datDatabaseVersion
  = lens _datDatabaseVersion
      (\ s a -> s{_datDatabaseVersion = a})

-- | The project ID of the project containing the Cloud SQL instance. The
-- Google apps domain is prefixed if applicable.
datProject :: Lens' DatabaseInstance (Maybe Text)
datProject
  = lens _datProject (\ s a -> s{_datProject = a})

-- | The user settings.
datSettings :: Lens' DatabaseInstance (Maybe Settings)
datSettings
  = lens _datSettings (\ s a -> s{_datSettings = a})

-- | This is always sql#instance.
datKind :: Lens' DatabaseInstance Text
datKind = lens _datKind (\ s a -> s{_datKind = a})

-- | Connection name of the Cloud SQL instance used in connection strings.
datConnectionName :: Lens' DatabaseInstance (Maybe Text)
datConnectionName
  = lens _datConnectionName
      (\ s a -> s{_datConnectionName = a})

-- | The current disk usage of the instance in bytes. This property has been
-- deprecated. Users should use the
-- \"cloudsql.googleapis.com\/database\/disk\/bytes_used\" metric in Cloud
-- Monitoring API instead. Please see
-- https:\/\/groups.google.com\/d\/msg\/google-cloud-sql-announce\/I_7-F9EBhT0\/BtvFtdFeAgAJ
-- for details.
datCurrentDiskSize :: Lens' DatabaseInstance (Maybe Int64)
datCurrentDiskSize
  = lens _datCurrentDiskSize
      (\ s a -> s{_datCurrentDiskSize = a})
      . mapping _Coerce

-- | The instance type. This can be one of the following. CLOUD_SQL_INSTANCE:
-- A Cloud SQL instance that is not replicating from a master.
-- ON_PREMISES_INSTANCE: An instance running on the customer\'s premises.
-- READ_REPLICA_INSTANCE: A Cloud SQL instance configured as a
-- read-replica.
datInstanceType :: Lens' DatabaseInstance (Maybe Text)
datInstanceType
  = lens _datInstanceType
      (\ s a -> s{_datInstanceType = a})

-- | The replicas of the instance.
datReplicaNames :: Lens' DatabaseInstance [Text]
datReplicaNames
  = lens _datReplicaNames
      (\ s a -> s{_datReplicaNames = a})
      . _Default
      . _Coerce

-- | The URI of this resource.
datSelfLink :: Lens' DatabaseInstance (Maybe Text)
datSelfLink
  = lens _datSelfLink (\ s a -> s{_datSelfLink = a})

-- | The name and status of the failover replica. This property is applicable
-- only to Second Generation instances.
datFailoverReplica :: Lens' DatabaseInstance (Maybe DatabaseInstanceFailoverReplica)
datFailoverReplica
  = lens _datFailoverReplica
      (\ s a -> s{_datFailoverReplica = a})

-- | Name of the Cloud SQL instance. This does not include the project ID.
datName :: Lens' DatabaseInstance (Maybe Text)
datName = lens _datName (\ s a -> s{_datName = a})

-- | The name of the instance which will act as master in the replication
-- setup.
datMasterInstanceName :: Lens' DatabaseInstance (Maybe Text)
datMasterInstanceName
  = lens _datMasterInstanceName
      (\ s a -> s{_datMasterInstanceName = a})

-- | Configuration specific to read-replicas replicating from on-premises
-- masters.
datReplicaConfiguration :: Lens' DatabaseInstance (Maybe ReplicaConfiguration)
datReplicaConfiguration
  = lens _datReplicaConfiguration
      (\ s a -> s{_datReplicaConfiguration = a})

-- | The geographical region. Can be us-central (FIRST_GEN instances only),
-- us-central1 (SECOND_GEN instances only), asia-east1 or europe-west1.
-- Defaults to us-central or us-central1 depending on the instance type
-- (First Generation or Second Generation). The region can not be changed
-- after instance creation.
datRegion :: Lens' DatabaseInstance (Maybe Text)
datRegion
  = lens _datRegion (\ s a -> s{_datRegion = a})

-- | The service account email address assigned to the instance. This
-- property is applicable only to Second Generation instances.
datServiceAccountEmailAddress :: Lens' DatabaseInstance (Maybe Text)
datServiceAccountEmailAddress
  = lens _datServiceAccountEmailAddress
      (\ s a -> s{_datServiceAccountEmailAddress = a})

-- | The assigned IP addresses for the instance.
datIPAddresses :: Lens' DatabaseInstance [IPMApping]
datIPAddresses
  = lens _datIPAddresses
      (\ s a -> s{_datIPAddresses = a})
      . _Default
      . _Coerce

-- | If the instance state is SUSPENDED, the reason for the suspension.
datSuspensionReason :: Lens' DatabaseInstance [Text]
datSuspensionReason
  = lens _datSuspensionReason
      (\ s a -> s{_datSuspensionReason = a})
      . _Default
      . _Coerce

instance FromJSON DatabaseInstance where
        parseJSON
          = withObject "DatabaseInstance"
              (\ o ->
                 DatabaseInstance' <$>
                   (o .:? "backendType") <*> (o .:? "maxDiskSize") <*>
                     (o .:? "onPremisesConfiguration")
                     <*> (o .:? "etag")
                     <*> (o .:? "state")
                     <*> (o .:? "ipv6Address")
                     <*> (o .:? "serverCaCert")
                     <*> (o .:? "databaseVersion")
                     <*> (o .:? "project")
                     <*> (o .:? "settings")
                     <*> (o .:? "kind" .!= "sql#instance")
                     <*> (o .:? "connectionName")
                     <*> (o .:? "currentDiskSize")
                     <*> (o .:? "instanceType")
                     <*> (o .:? "replicaNames" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "failoverReplica")
                     <*> (o .:? "name")
                     <*> (o .:? "masterInstanceName")
                     <*> (o .:? "replicaConfiguration")
                     <*> (o .:? "region")
                     <*> (o .:? "serviceAccountEmailAddress")
                     <*> (o .:? "ipAddresses" .!= mempty)
                     <*> (o .:? "suspensionReason" .!= mempty))

instance ToJSON DatabaseInstance where
        toJSON DatabaseInstance'{..}
          = object
              (catMaybes
                 [("backendType" .=) <$> _datBackendType,
                  ("maxDiskSize" .=) <$> _datMaxDiskSize,
                  ("onPremisesConfiguration" .=) <$>
                    _datOnPremisesConfiguration,
                  ("etag" .=) <$> _datEtag, ("state" .=) <$> _datState,
                  ("ipv6Address" .=) <$> _datIPv6Address,
                  ("serverCaCert" .=) <$> _datServerCaCert,
                  ("databaseVersion" .=) <$> _datDatabaseVersion,
                  ("project" .=) <$> _datProject,
                  ("settings" .=) <$> _datSettings,
                  Just ("kind" .= _datKind),
                  ("connectionName" .=) <$> _datConnectionName,
                  ("currentDiskSize" .=) <$> _datCurrentDiskSize,
                  ("instanceType" .=) <$> _datInstanceType,
                  ("replicaNames" .=) <$> _datReplicaNames,
                  ("selfLink" .=) <$> _datSelfLink,
                  ("failoverReplica" .=) <$> _datFailoverReplica,
                  ("name" .=) <$> _datName,
                  ("masterInstanceName" .=) <$> _datMasterInstanceName,
                  ("replicaConfiguration" .=) <$>
                    _datReplicaConfiguration,
                  ("region" .=) <$> _datRegion,
                  ("serviceAccountEmailAddress" .=) <$>
                    _datServiceAccountEmailAddress,
                  ("ipAddresses" .=) <$> _datIPAddresses,
                  ("suspensionReason" .=) <$> _datSuspensionReason])

-- | Database instance clone context.
--
-- /See:/ 'cloneContext' smart constructor.
data CloneContext = CloneContext'
    { _ccDestinationInstanceName :: !(Maybe Text)
    , _ccBinLogCoordinates       :: !(Maybe BinLogCoordinates)
    , _ccKind                    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CloneContext'
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
ccBinLogCoordinates :: Lens' CloneContext (Maybe BinLogCoordinates)
ccBinLogCoordinates
  = lens _ccBinLogCoordinates
      (\ s a -> s{_ccBinLogCoordinates = a})

-- | This is always sql#cloneContext.
ccKind :: Lens' CloneContext Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

instance FromJSON CloneContext where
        parseJSON
          = withObject "CloneContext"
              (\ o ->
                 CloneContext' <$>
                   (o .:? "destinationInstanceName") <*>
                     (o .:? "binLogCoordinates")
                     <*> (o .:? "kind" .!= "sql#cloneContext"))

instance ToJSON CloneContext where
        toJSON CloneContext'{..}
          = object
              (catMaybes
                 [("destinationInstanceName" .=) <$>
                    _ccDestinationInstanceName,
                  ("binLogCoordinates" .=) <$> _ccBinLogCoordinates,
                  Just ("kind" .= _ccKind)])

-- | A Google Cloud SQL service flag resource.
--
-- /See:/ 'flag' smart constructor.
data Flag = Flag'
    { _fMaxValue            :: !(Maybe (Textual Int64))
    , _fKind                :: !Text
    , _fAppliesTo           :: !(Maybe [Text])
    , _fName                :: !(Maybe Text)
    , _fAllowedStringValues :: !(Maybe [Text])
    , _fType                :: !(Maybe Text)
    , _fMinValue            :: !(Maybe (Textual Int64))
    , _fRequiresRestart     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
--
-- * 'fRequiresRestart'
flag
    :: Flag
flag =
    Flag'
    { _fMaxValue = Nothing
    , _fKind = "sql#flag"
    , _fAppliesTo = Nothing
    , _fName = Nothing
    , _fAllowedStringValues = Nothing
    , _fType = Nothing
    , _fMinValue = Nothing
    , _fRequiresRestart = Nothing
    }

-- | For INTEGER flags, the maximum allowed value.
fMaxValue :: Lens' Flag (Maybe Int64)
fMaxValue
  = lens _fMaxValue (\ s a -> s{_fMaxValue = a}) .
      mapping _Coerce

-- | This is always sql#flag.
fKind :: Lens' Flag Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | The database version this flag applies to. Can be MYSQL_5_5, MYSQL_5_6,
-- or MYSQL_5_7. MYSQL_5_7 is applicable only to Second Generation
-- instances.
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
  = lens _fMinValue (\ s a -> s{_fMinValue = a}) .
      mapping _Coerce

-- | Indicates whether changing this flag will trigger a database restart.
-- Only applicable to Second Generation instances.
fRequiresRestart :: Lens' Flag (Maybe Bool)
fRequiresRestart
  = lens _fRequiresRestart
      (\ s a -> s{_fRequiresRestart = a})

instance FromJSON Flag where
        parseJSON
          = withObject "Flag"
              (\ o ->
                 Flag' <$>
                   (o .:? "maxValue") <*> (o .:? "kind" .!= "sql#flag")
                     <*> (o .:? "appliesTo" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "allowedStringValues" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "minValue")
                     <*> (o .:? "requiresRestart"))

instance ToJSON Flag where
        toJSON Flag'{..}
          = object
              (catMaybes
                 [("maxValue" .=) <$> _fMaxValue,
                  Just ("kind" .= _fKind),
                  ("appliesTo" .=) <$> _fAppliesTo,
                  ("name" .=) <$> _fName,
                  ("allowedStringValues" .=) <$> _fAllowedStringValues,
                  ("type" .=) <$> _fType,
                  ("minValue" .=) <$> _fMinValue,
                  ("requiresRestart" .=) <$> _fRequiresRestart])

-- | Instance failover request.
--
-- /See:/ 'instancesFailoverRequest' smart constructor.
newtype InstancesFailoverRequest = InstancesFailoverRequest'
    { _ifrFailoverContext :: Maybe FailoverContext
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesFailoverRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifrFailoverContext'
instancesFailoverRequest
    :: InstancesFailoverRequest
instancesFailoverRequest =
    InstancesFailoverRequest'
    { _ifrFailoverContext = Nothing
    }

-- | Failover Context.
ifrFailoverContext :: Lens' InstancesFailoverRequest (Maybe FailoverContext)
ifrFailoverContext
  = lens _ifrFailoverContext
      (\ s a -> s{_ifrFailoverContext = a})

instance FromJSON InstancesFailoverRequest where
        parseJSON
          = withObject "InstancesFailoverRequest"
              (\ o ->
                 InstancesFailoverRequest' <$>
                   (o .:? "failoverContext"))

instance ToJSON InstancesFailoverRequest where
        toJSON InstancesFailoverRequest'{..}
          = object
              (catMaybes
                 [("failoverContext" .=) <$> _ifrFailoverContext])

-- | A database instance backup run resource.
--
-- /See:/ 'backupRun' smart constructor.
data BackupRun = BackupRun'
    { _brStatus          :: !(Maybe Text)
    , _brStartTime       :: !(Maybe DateTime')
    , _brKind            :: !Text
    , _brError           :: !(Maybe OperationError)
    , _brWindowStartTime :: !(Maybe DateTime')
    , _brSelfLink        :: !(Maybe Text)
    , _brEndTime         :: !(Maybe DateTime')
    , _brId              :: !(Maybe (Textual Int64))
    , _brType            :: !(Maybe Text)
    , _brEnQueuedTime    :: !(Maybe DateTime')
    , _brDescription     :: !(Maybe Text)
    , _brInstance        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'brType'
--
-- * 'brEnQueuedTime'
--
-- * 'brDescription'
--
-- * 'brInstance'
backupRun
    :: BackupRun
backupRun =
    BackupRun'
    { _brStatus = Nothing
    , _brStartTime = Nothing
    , _brKind = "sql#backupRun"
    , _brError = Nothing
    , _brWindowStartTime = Nothing
    , _brSelfLink = Nothing
    , _brEndTime = Nothing
    , _brId = Nothing
    , _brType = Nothing
    , _brEnQueuedTime = Nothing
    , _brDescription = Nothing
    , _brInstance = Nothing
    }

-- | The status of this run.
brStatus :: Lens' BackupRun (Maybe Text)
brStatus = lens _brStatus (\ s a -> s{_brStatus = a})

-- | The time the backup operation actually started in UTC timezone in RFC
-- 3339 format, for example 2012-11-15T16:19:00.094Z.
brStartTime :: Lens' BackupRun (Maybe UTCTime)
brStartTime
  = lens _brStartTime (\ s a -> s{_brStartTime = a}) .
      mapping _DateTime

-- | This is always sql#backupRun.
brKind :: Lens' BackupRun Text
brKind = lens _brKind (\ s a -> s{_brKind = a})

-- | Information about why the backup operation failed. This is only present
-- if the run has the FAILED status.
brError :: Lens' BackupRun (Maybe OperationError)
brError = lens _brError (\ s a -> s{_brError = a})

-- | The start time of the backup window during which this the backup was
-- attempted in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
brWindowStartTime :: Lens' BackupRun (Maybe UTCTime)
brWindowStartTime
  = lens _brWindowStartTime
      (\ s a -> s{_brWindowStartTime = a})
      . mapping _DateTime

-- | The URI of this resource.
brSelfLink :: Lens' BackupRun (Maybe Text)
brSelfLink
  = lens _brSelfLink (\ s a -> s{_brSelfLink = a})

-- | The time the backup operation completed in UTC timezone in RFC 3339
-- format, for example 2012-11-15T16:19:00.094Z.
brEndTime :: Lens' BackupRun (Maybe UTCTime)
brEndTime
  = lens _brEndTime (\ s a -> s{_brEndTime = a}) .
      mapping _DateTime

-- | A unique identifier for this backup run. Note that this is unique only
-- within the scope of a particular Cloud SQL instance.
brId :: Lens' BackupRun (Maybe Int64)
brId
  = lens _brId (\ s a -> s{_brId = a}) .
      mapping _Coerce

-- | The type of this run; can be either \"AUTOMATED\" or \"ON_DEMAND\".
brType :: Lens' BackupRun (Maybe Text)
brType = lens _brType (\ s a -> s{_brType = a})

-- | The time the run was enqueued in UTC timezone in RFC 3339 format, for
-- example 2012-11-15T16:19:00.094Z.
brEnQueuedTime :: Lens' BackupRun (Maybe UTCTime)
brEnQueuedTime
  = lens _brEnQueuedTime
      (\ s a -> s{_brEnQueuedTime = a})
      . mapping _DateTime

-- | The description of this run, only applicable to on-demand backups.
brDescription :: Lens' BackupRun (Maybe Text)
brDescription
  = lens _brDescription
      (\ s a -> s{_brDescription = a})

-- | Name of the database instance.
brInstance :: Lens' BackupRun (Maybe Text)
brInstance
  = lens _brInstance (\ s a -> s{_brInstance = a})

instance FromJSON BackupRun where
        parseJSON
          = withObject "BackupRun"
              (\ o ->
                 BackupRun' <$>
                   (o .:? "status") <*> (o .:? "startTime") <*>
                     (o .:? "kind" .!= "sql#backupRun")
                     <*> (o .:? "error")
                     <*> (o .:? "windowStartTime")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "endTime")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "enqueuedTime")
                     <*> (o .:? "description")
                     <*> (o .:? "instance"))

instance ToJSON BackupRun where
        toJSON BackupRun'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _brStatus,
                  ("startTime" .=) <$> _brStartTime,
                  Just ("kind" .= _brKind), ("error" .=) <$> _brError,
                  ("windowStartTime" .=) <$> _brWindowStartTime,
                  ("selfLink" .=) <$> _brSelfLink,
                  ("endTime" .=) <$> _brEndTime, ("id" .=) <$> _brId,
                  ("type" .=) <$> _brType,
                  ("enqueuedTime" .=) <$> _brEnQueuedTime,
                  ("description" .=) <$> _brDescription,
                  ("instance" .=) <$> _brInstance])

-- | An entry for an Access Control list.
--
-- /See:/ 'aclEntry' smart constructor.
data ACLEntry = ACLEntry'
    { _aeKind           :: !Text
    , _aeValue          :: !(Maybe Text)
    , _aeName           :: !(Maybe Text)
    , _aeExpirationTime :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLEntry' with the minimum fields required to make a request.
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
    :: ACLEntry
aclEntry =
    ACLEntry'
    { _aeKind = "sql#aclEntry"
    , _aeValue = Nothing
    , _aeName = Nothing
    , _aeExpirationTime = Nothing
    }

-- | This is always sql#aclEntry.
aeKind :: Lens' ACLEntry Text
aeKind = lens _aeKind (\ s a -> s{_aeKind = a})

-- | The whitelisted value for the access control list.
aeValue :: Lens' ACLEntry (Maybe Text)
aeValue = lens _aeValue (\ s a -> s{_aeValue = a})

-- | An optional label to identify this entry.
aeName :: Lens' ACLEntry (Maybe Text)
aeName = lens _aeName (\ s a -> s{_aeName = a})

-- | The time when this access control entry expires in RFC 3339 format, for
-- example 2012-11-15T16:19:00.094Z.
aeExpirationTime :: Lens' ACLEntry (Maybe UTCTime)
aeExpirationTime
  = lens _aeExpirationTime
      (\ s a -> s{_aeExpirationTime = a})
      . mapping _DateTime

instance FromJSON ACLEntry where
        parseJSON
          = withObject "ACLEntry"
              (\ o ->
                 ACLEntry' <$>
                   (o .:? "kind" .!= "sql#aclEntry") <*> (o .:? "value")
                     <*> (o .:? "name")
                     <*> (o .:? "expirationTime"))

instance ToJSON ACLEntry where
        toJSON ACLEntry'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aeKind), ("value" .=) <$> _aeValue,
                  ("name" .=) <$> _aeName,
                  ("expirationTime" .=) <$> _aeExpirationTime])

-- | MySQL flags for Cloud SQL instances.
--
-- /See:/ 'databaseFlags' smart constructor.
data DatabaseFlags = DatabaseFlags'
    { _dfValue :: !(Maybe Text)
    , _dfName  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatabaseFlags'
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

instance FromJSON DatabaseFlags where
        parseJSON
          = withObject "DatabaseFlags"
              (\ o ->
                 DatabaseFlags' <$>
                   (o .:? "value") <*> (o .:? "name"))

instance ToJSON DatabaseFlags where
        toJSON DatabaseFlags'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _dfValue, ("name" .=) <$> _dfName])

-- | A Google Cloud SQL service tier resource.
--
-- /See:/ 'tier' smart constructor.
data Tier = Tier'
    { _tKind      :: !Text
    , _tTier      :: !(Maybe Text)
    , _tRegion    :: !(Maybe [Text])
    , _tDiskQuota :: !(Maybe (Textual Int64))
    , _tRAM       :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Tier'
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

-- | The applicable regions for this tier.
tRegion :: Lens' Tier [Text]
tRegion
  = lens _tRegion (\ s a -> s{_tRegion = a}) . _Default
      . _Coerce

-- | The maximum disk size of this tier in bytes.
tDiskQuota :: Lens' Tier (Maybe Int64)
tDiskQuota
  = lens _tDiskQuota (\ s a -> s{_tDiskQuota = a}) .
      mapping _Coerce

-- | The maximum RAM usage of this tier in bytes.
tRAM :: Lens' Tier (Maybe Int64)
tRAM
  = lens _tRAM (\ s a -> s{_tRAM = a}) .
      mapping _Coerce

instance FromJSON Tier where
        parseJSON
          = withObject "Tier"
              (\ o ->
                 Tier' <$>
                   (o .:? "kind" .!= "sql#tier") <*> (o .:? "tier") <*>
                     (o .:? "region" .!= mempty)
                     <*> (o .:? "DiskQuota")
                     <*> (o .:? "RAM"))

instance ToJSON Tier where
        toJSON Tier'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tKind), ("tier" .=) <$> _tTier,
                  ("region" .=) <$> _tRegion,
                  ("DiskQuota" .=) <$> _tDiskQuota,
                  ("RAM" .=) <$> _tRAM])

-- | Read-replica configuration specific to MySQL databases.
--
-- /See:/ 'mySQLReplicaConfiguration' smart constructor.
data MySQLReplicaConfiguration = MySQLReplicaConfiguration'
    { _msqlrcVerifyServerCertificate :: !(Maybe Bool)
    , _msqlrcKind                    :: !Text
    , _msqlrcClientKey               :: !(Maybe Text)
    , _msqlrcUsername                :: !(Maybe Text)
    , _msqlrcSSLCipher               :: !(Maybe Text)
    , _msqlrcMasterHeartbeatPeriod   :: !(Maybe (Textual Int64))
    , _msqlrcConnectRetryInterval    :: !(Maybe (Textual Int32))
    , _msqlrcClientCertificate       :: !(Maybe Text)
    , _msqlrcCaCertificate           :: !(Maybe Text)
    , _msqlrcDumpFilePath            :: !(Maybe Text)
    , _msqlrcPassword                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MySQLReplicaConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msqlrcVerifyServerCertificate'
--
-- * 'msqlrcKind'
--
-- * 'msqlrcClientKey'
--
-- * 'msqlrcUsername'
--
-- * 'msqlrcSSLCipher'
--
-- * 'msqlrcMasterHeartbeatPeriod'
--
-- * 'msqlrcConnectRetryInterval'
--
-- * 'msqlrcClientCertificate'
--
-- * 'msqlrcCaCertificate'
--
-- * 'msqlrcDumpFilePath'
--
-- * 'msqlrcPassword'
mySQLReplicaConfiguration
    :: MySQLReplicaConfiguration
mySQLReplicaConfiguration =
    MySQLReplicaConfiguration'
    { _msqlrcVerifyServerCertificate = Nothing
    , _msqlrcKind = "sql#mysqlReplicaConfiguration"
    , _msqlrcClientKey = Nothing
    , _msqlrcUsername = Nothing
    , _msqlrcSSLCipher = Nothing
    , _msqlrcMasterHeartbeatPeriod = Nothing
    , _msqlrcConnectRetryInterval = Nothing
    , _msqlrcClientCertificate = Nothing
    , _msqlrcCaCertificate = Nothing
    , _msqlrcDumpFilePath = Nothing
    , _msqlrcPassword = Nothing
    }

-- | Whether or not to check the master\'s Common Name value in the
-- certificate that it sends during the SSL handshake.
msqlrcVerifyServerCertificate :: Lens' MySQLReplicaConfiguration (Maybe Bool)
msqlrcVerifyServerCertificate
  = lens _msqlrcVerifyServerCertificate
      (\ s a -> s{_msqlrcVerifyServerCertificate = a})

-- | This is always sql#mysqlReplicaConfiguration.
msqlrcKind :: Lens' MySQLReplicaConfiguration Text
msqlrcKind
  = lens _msqlrcKind (\ s a -> s{_msqlrcKind = a})

-- | PEM representation of the slave\'s private key. The corresponsing public
-- key is encoded in the client\'s certificate.
msqlrcClientKey :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcClientKey
  = lens _msqlrcClientKey
      (\ s a -> s{_msqlrcClientKey = a})

-- | The username for the replication connection.
msqlrcUsername :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcUsername
  = lens _msqlrcUsername
      (\ s a -> s{_msqlrcUsername = a})

-- | A list of permissible ciphers to use for SSL encryption.
msqlrcSSLCipher :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcSSLCipher
  = lens _msqlrcSSLCipher
      (\ s a -> s{_msqlrcSSLCipher = a})

-- | Interval in milliseconds between replication heartbeats.
msqlrcMasterHeartbeatPeriod :: Lens' MySQLReplicaConfiguration (Maybe Int64)
msqlrcMasterHeartbeatPeriod
  = lens _msqlrcMasterHeartbeatPeriod
      (\ s a -> s{_msqlrcMasterHeartbeatPeriod = a})
      . mapping _Coerce

-- | Seconds to wait between connect retries. MySQL\'s default is 60 seconds.
msqlrcConnectRetryInterval :: Lens' MySQLReplicaConfiguration (Maybe Int32)
msqlrcConnectRetryInterval
  = lens _msqlrcConnectRetryInterval
      (\ s a -> s{_msqlrcConnectRetryInterval = a})
      . mapping _Coerce

-- | PEM representation of the slave\'s x509 certificate.
msqlrcClientCertificate :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcClientCertificate
  = lens _msqlrcClientCertificate
      (\ s a -> s{_msqlrcClientCertificate = a})

-- | PEM representation of the trusted CA\'s x509 certificate.
msqlrcCaCertificate :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcCaCertificate
  = lens _msqlrcCaCertificate
      (\ s a -> s{_msqlrcCaCertificate = a})

-- | Path to a SQL dump file in Google Cloud Storage from which the slave
-- instance is to be created. The URI is in the form
-- gs:\/\/bucketName\/fileName. Compressed gzip files (.gz) are also
-- supported. Dumps should have the binlog co-ordinates from which
-- replication should begin. This can be accomplished by setting
-- --master-data to 1 when using mysqldump.
msqlrcDumpFilePath :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcDumpFilePath
  = lens _msqlrcDumpFilePath
      (\ s a -> s{_msqlrcDumpFilePath = a})

-- | The password for the replication connection.
msqlrcPassword :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcPassword
  = lens _msqlrcPassword
      (\ s a -> s{_msqlrcPassword = a})

instance FromJSON MySQLReplicaConfiguration where
        parseJSON
          = withObject "MySQLReplicaConfiguration"
              (\ o ->
                 MySQLReplicaConfiguration' <$>
                   (o .:? "verifyServerCertificate") <*>
                     (o .:? "kind" .!= "sql#mysqlReplicaConfiguration")
                     <*> (o .:? "clientKey")
                     <*> (o .:? "username")
                     <*> (o .:? "sslCipher")
                     <*> (o .:? "masterHeartbeatPeriod")
                     <*> (o .:? "connectRetryInterval")
                     <*> (o .:? "clientCertificate")
                     <*> (o .:? "caCertificate")
                     <*> (o .:? "dumpFilePath")
                     <*> (o .:? "password"))

instance ToJSON MySQLReplicaConfiguration where
        toJSON MySQLReplicaConfiguration'{..}
          = object
              (catMaybes
                 [("verifyServerCertificate" .=) <$>
                    _msqlrcVerifyServerCertificate,
                  Just ("kind" .= _msqlrcKind),
                  ("clientKey" .=) <$> _msqlrcClientKey,
                  ("username" .=) <$> _msqlrcUsername,
                  ("sslCipher" .=) <$> _msqlrcSSLCipher,
                  ("masterHeartbeatPeriod" .=) <$>
                    _msqlrcMasterHeartbeatPeriod,
                  ("connectRetryInterval" .=) <$>
                    _msqlrcConnectRetryInterval,
                  ("clientCertificate" .=) <$>
                    _msqlrcClientCertificate,
                  ("caCertificate" .=) <$> _msqlrcCaCertificate,
                  ("dumpFilePath" .=) <$> _msqlrcDumpFilePath,
                  ("password" .=) <$> _msqlrcPassword])

-- | SslCertDetail.
--
-- /See:/ 'sslCertDetail' smart constructor.
data SSLCertDetail = SSLCertDetail'
    { _scdCertInfo       :: !(Maybe SSLCert)
    , _scdCertPrivateKey :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdCertInfo'
--
-- * 'scdCertPrivateKey'
sslCertDetail
    :: SSLCertDetail
sslCertDetail =
    SSLCertDetail'
    { _scdCertInfo = Nothing
    , _scdCertPrivateKey = Nothing
    }

-- | The public information about the cert.
scdCertInfo :: Lens' SSLCertDetail (Maybe SSLCert)
scdCertInfo
  = lens _scdCertInfo (\ s a -> s{_scdCertInfo = a})

-- | The private key for the client cert, in pem format. Keep private in
-- order to protect your security.
scdCertPrivateKey :: Lens' SSLCertDetail (Maybe Text)
scdCertPrivateKey
  = lens _scdCertPrivateKey
      (\ s a -> s{_scdCertPrivateKey = a})

instance FromJSON SSLCertDetail where
        parseJSON
          = withObject "SSLCertDetail"
              (\ o ->
                 SSLCertDetail' <$>
                   (o .:? "certInfo") <*> (o .:? "certPrivateKey"))

instance ToJSON SSLCertDetail where
        toJSON SSLCertDetail'{..}
          = object
              (catMaybes
                 [("certInfo" .=) <$> _scdCertInfo,
                  ("certPrivateKey" .=) <$> _scdCertPrivateKey])

-- | Database instance restore backup request.
--
-- /See:/ 'instancesRestoreBackupRequest' smart constructor.
newtype InstancesRestoreBackupRequest = InstancesRestoreBackupRequest'
    { _irbrRestoreBackupContext :: Maybe RestoreBackupContext
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesRestoreBackupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irbrRestoreBackupContext'
instancesRestoreBackupRequest
    :: InstancesRestoreBackupRequest
instancesRestoreBackupRequest =
    InstancesRestoreBackupRequest'
    { _irbrRestoreBackupContext = Nothing
    }

-- | Parameters required to perform the restore backup operation.
irbrRestoreBackupContext :: Lens' InstancesRestoreBackupRequest (Maybe RestoreBackupContext)
irbrRestoreBackupContext
  = lens _irbrRestoreBackupContext
      (\ s a -> s{_irbrRestoreBackupContext = a})

instance FromJSON InstancesRestoreBackupRequest where
        parseJSON
          = withObject "InstancesRestoreBackupRequest"
              (\ o ->
                 InstancesRestoreBackupRequest' <$>
                   (o .:? "restoreBackupContext"))

instance ToJSON InstancesRestoreBackupRequest where
        toJSON InstancesRestoreBackupRequest'{..}
          = object
              (catMaybes
                 [("restoreBackupContext" .=) <$>
                    _irbrRestoreBackupContext])

-- | Backup run list results.
--
-- /See:/ 'backupRunsListResponse' smart constructor.
data BackupRunsListResponse = BackupRunsListResponse'
    { _brlrNextPageToken :: !(Maybe Text)
    , _brlrKind          :: !Text
    , _brlrItems         :: !(Maybe [BackupRun])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BackupRunsListResponse'
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
brlrItems :: Lens' BackupRunsListResponse [BackupRun]
brlrItems
  = lens _brlrItems (\ s a -> s{_brlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON BackupRunsListResponse where
        parseJSON
          = withObject "BackupRunsListResponse"
              (\ o ->
                 BackupRunsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "sql#backupRunsList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON BackupRunsListResponse where
        toJSON BackupRunsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _brlrNextPageToken,
                  Just ("kind" .= _brlrKind),
                  ("items" .=) <$> _brlrItems])

-- | Database instance operation error.
--
-- /See:/ 'operationError' smart constructor.
data OperationError = OperationError'
    { _opeKind    :: !Text
    , _opeCode    :: !(Maybe Text)
    , _opeMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opeKind'
--
-- * 'opeCode'
--
-- * 'opeMessage'
operationError
    :: OperationError
operationError =
    OperationError'
    { _opeKind = "sql#operationError"
    , _opeCode = Nothing
    , _opeMessage = Nothing
    }

-- | This is always sql#operationError.
opeKind :: Lens' OperationError Text
opeKind = lens _opeKind (\ s a -> s{_opeKind = a})

-- | Identifies the specific error that occurred.
opeCode :: Lens' OperationError (Maybe Text)
opeCode = lens _opeCode (\ s a -> s{_opeCode = a})

-- | Additional information about the error encountered.
opeMessage :: Lens' OperationError (Maybe Text)
opeMessage
  = lens _opeMessage (\ s a -> s{_opeMessage = a})

instance FromJSON OperationError where
        parseJSON
          = withObject "OperationError"
              (\ o ->
                 OperationError' <$>
                   (o .:? "kind" .!= "sql#operationError") <*>
                     (o .:? "code")
                     <*> (o .:? "message"))

instance ToJSON OperationError where
        toJSON OperationError'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _opeKind), ("code" .=) <$> _opeCode,
                  ("message" .=) <$> _opeMessage])

-- | Database Instance truncate log context.
--
-- /See:/ 'truncateLogContext' smart constructor.
data TruncateLogContext = TruncateLogContext'
    { _tlcKind    :: !Text
    , _tlcLogType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TruncateLogContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlcKind'
--
-- * 'tlcLogType'
truncateLogContext
    :: TruncateLogContext
truncateLogContext =
    TruncateLogContext'
    { _tlcKind = "sql#truncateLogContext"
    , _tlcLogType = Nothing
    }

-- | This is always sql#truncateLogContext.
tlcKind :: Lens' TruncateLogContext Text
tlcKind = lens _tlcKind (\ s a -> s{_tlcKind = a})

-- | The type of log to truncate. Valid values are MYSQL_GENERAL_TABLE and
-- MYSQL_SLOW_TABLE.
tlcLogType :: Lens' TruncateLogContext (Maybe Text)
tlcLogType
  = lens _tlcLogType (\ s a -> s{_tlcLogType = a})

instance FromJSON TruncateLogContext where
        parseJSON
          = withObject "TruncateLogContext"
              (\ o ->
                 TruncateLogContext' <$>
                   (o .:? "kind" .!= "sql#truncateLogContext") <*>
                     (o .:? "logType"))

instance ToJSON TruncateLogContext where
        toJSON TruncateLogContext'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tlcKind),
                  ("logType" .=) <$> _tlcLogType])

-- | Database instance clone request.
--
-- /See:/ 'instancesCloneRequest' smart constructor.
newtype InstancesCloneRequest = InstancesCloneRequest'
    { _icrCloneContext :: Maybe CloneContext
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesCloneRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icrCloneContext'
instancesCloneRequest
    :: InstancesCloneRequest
instancesCloneRequest =
    InstancesCloneRequest'
    { _icrCloneContext = Nothing
    }

-- | Contains details about the clone operation.
icrCloneContext :: Lens' InstancesCloneRequest (Maybe CloneContext)
icrCloneContext
  = lens _icrCloneContext
      (\ s a -> s{_icrCloneContext = a})

instance FromJSON InstancesCloneRequest where
        parseJSON
          = withObject "InstancesCloneRequest"
              (\ o ->
                 InstancesCloneRequest' <$> (o .:? "cloneContext"))

instance ToJSON InstancesCloneRequest where
        toJSON InstancesCloneRequest'{..}
          = object
              (catMaybes
                 [("cloneContext" .=) <$> _icrCloneContext])

-- | Read-replica configuration for connecting to the master.
--
-- /See:/ 'replicaConfiguration' smart constructor.
data ReplicaConfiguration = ReplicaConfiguration'
    { _rcFailoverTarget            :: !(Maybe Bool)
    , _rcKind                      :: !Text
    , _rcMysqlReplicaConfiguration :: !(Maybe MySQLReplicaConfiguration)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReplicaConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcFailoverTarget'
--
-- * 'rcKind'
--
-- * 'rcMysqlReplicaConfiguration'
replicaConfiguration
    :: ReplicaConfiguration
replicaConfiguration =
    ReplicaConfiguration'
    { _rcFailoverTarget = Nothing
    , _rcKind = "sql#replicaConfiguration"
    , _rcMysqlReplicaConfiguration = Nothing
    }

-- | Specifies if the replica is the failover target. If the field is set to
-- true the replica will be designated as a failover replica. In case the
-- master instance fails, the replica instance will be promoted as the new
-- master instance. Only one replica can be specified as failover target,
-- and the replica has to be in different zone with the master instance.
rcFailoverTarget :: Lens' ReplicaConfiguration (Maybe Bool)
rcFailoverTarget
  = lens _rcFailoverTarget
      (\ s a -> s{_rcFailoverTarget = a})

-- | This is always sql#replicaConfiguration.
rcKind :: Lens' ReplicaConfiguration Text
rcKind = lens _rcKind (\ s a -> s{_rcKind = a})

-- | MySQL specific configuration when replicating from a MySQL on-premises
-- master. Replication configuration information such as the username,
-- password, certificates, and keys are not stored in the instance
-- metadata. The configuration information is used only to set up the
-- replication connection and is stored by MySQL in a file named
-- master.info in the data directory.
rcMysqlReplicaConfiguration :: Lens' ReplicaConfiguration (Maybe MySQLReplicaConfiguration)
rcMysqlReplicaConfiguration
  = lens _rcMysqlReplicaConfiguration
      (\ s a -> s{_rcMysqlReplicaConfiguration = a})

instance FromJSON ReplicaConfiguration where
        parseJSON
          = withObject "ReplicaConfiguration"
              (\ o ->
                 ReplicaConfiguration' <$>
                   (o .:? "failoverTarget") <*>
                     (o .:? "kind" .!= "sql#replicaConfiguration")
                     <*> (o .:? "mysqlReplicaConfiguration"))

instance ToJSON ReplicaConfiguration where
        toJSON ReplicaConfiguration'{..}
          = object
              (catMaybes
                 [("failoverTarget" .=) <$> _rcFailoverTarget,
                  Just ("kind" .= _rcKind),
                  ("mysqlReplicaConfiguration" .=) <$>
                    _rcMysqlReplicaConfiguration])

-- | Database instance failover context.
--
-- /See:/ 'failoverContext' smart constructor.
data FailoverContext = FailoverContext'
    { _fcSettingsVersion :: !(Maybe (Textual Int64))
    , _fcKind            :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FailoverContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcSettingsVersion'
--
-- * 'fcKind'
failoverContext
    :: FailoverContext
failoverContext =
    FailoverContext'
    { _fcSettingsVersion = Nothing
    , _fcKind = "sql#failoverContext"
    }

-- | The current settings version of this instance. Request will be rejected
-- if this version doesn\'t match the current settings version.
fcSettingsVersion :: Lens' FailoverContext (Maybe Int64)
fcSettingsVersion
  = lens _fcSettingsVersion
      (\ s a -> s{_fcSettingsVersion = a})
      . mapping _Coerce

-- | This is always sql#failoverContext.
fcKind :: Lens' FailoverContext Text
fcKind = lens _fcKind (\ s a -> s{_fcKind = a})

instance FromJSON FailoverContext where
        parseJSON
          = withObject "FailoverContext"
              (\ o ->
                 FailoverContext' <$>
                   (o .:? "settingsVersion") <*>
                     (o .:? "kind" .!= "sql#failoverContext"))

instance ToJSON FailoverContext where
        toJSON FailoverContext'{..}
          = object
              (catMaybes
                 [("settingsVersion" .=) <$> _fcSettingsVersion,
                  Just ("kind" .= _fcKind)])

-- | SslCert insert response.
--
-- /See:/ 'sslCertsInsertResponse' smart constructor.
data SSLCertsInsertResponse = SSLCertsInsertResponse'
    { _scirServerCaCert :: !(Maybe SSLCert)
    , _scirOperation    :: !(Maybe Operation)
    , _scirKind         :: !Text
    , _scirClientCert   :: !(Maybe SSLCertDetail)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsInsertResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scirServerCaCert'
--
-- * 'scirOperation'
--
-- * 'scirKind'
--
-- * 'scirClientCert'
sslCertsInsertResponse
    :: SSLCertsInsertResponse
sslCertsInsertResponse =
    SSLCertsInsertResponse'
    { _scirServerCaCert = Nothing
    , _scirOperation = Nothing
    , _scirKind = "sql#sslCertsInsert"
    , _scirClientCert = Nothing
    }

-- | The server Certificate Authority\'s certificate. If this is missing you
-- can force a new one to be generated by calling resetSslConfig method on
-- instances resource.
scirServerCaCert :: Lens' SSLCertsInsertResponse (Maybe SSLCert)
scirServerCaCert
  = lens _scirServerCaCert
      (\ s a -> s{_scirServerCaCert = a})

-- | The operation to track the ssl certs insert request.
scirOperation :: Lens' SSLCertsInsertResponse (Maybe Operation)
scirOperation
  = lens _scirOperation
      (\ s a -> s{_scirOperation = a})

-- | This is always sql#sslCertsInsert.
scirKind :: Lens' SSLCertsInsertResponse Text
scirKind = lens _scirKind (\ s a -> s{_scirKind = a})

-- | The new client certificate and private key. The new certificate will not
-- work until the instance is restarted for First Generation instances.
scirClientCert :: Lens' SSLCertsInsertResponse (Maybe SSLCertDetail)
scirClientCert
  = lens _scirClientCert
      (\ s a -> s{_scirClientCert = a})

instance FromJSON SSLCertsInsertResponse where
        parseJSON
          = withObject "SSLCertsInsertResponse"
              (\ o ->
                 SSLCertsInsertResponse' <$>
                   (o .:? "serverCaCert") <*> (o .:? "operation") <*>
                     (o .:? "kind" .!= "sql#sslCertsInsert")
                     <*> (o .:? "clientCert"))

instance ToJSON SSLCertsInsertResponse where
        toJSON SSLCertsInsertResponse'{..}
          = object
              (catMaybes
                 [("serverCaCert" .=) <$> _scirServerCaCert,
                  ("operation" .=) <$> _scirOperation,
                  Just ("kind" .= _scirKind),
                  ("clientCert" .=) <$> _scirClientCert])

-- | Database instances list response.
--
-- /See:/ 'instancesListResponse' smart constructor.
data InstancesListResponse = InstancesListResponse'
    { _ilrNextPageToken :: !(Maybe Text)
    , _ilrKind          :: !Text
    , _ilrItems         :: !(Maybe [DatabaseInstance])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    InstancesListResponse'
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
ilrItems :: Lens' InstancesListResponse [DatabaseInstance]
ilrItems
  = lens _ilrItems (\ s a -> s{_ilrItems = a}) .
      _Default
      . _Coerce

instance FromJSON InstancesListResponse where
        parseJSON
          = withObject "InstancesListResponse"
              (\ o ->
                 InstancesListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "sql#instancesList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON InstancesListResponse where
        toJSON InstancesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ilrNextPageToken,
                  Just ("kind" .= _ilrKind),
                  ("items" .=) <$> _ilrItems])

-- | Database instance backup configuration.
--
-- /See:/ 'backupConfiguration' smart constructor.
data BackupConfiguration = BackupConfiguration'
    { _bcEnabled          :: !(Maybe Bool)
    , _bcStartTime        :: !(Maybe Text)
    , _bcKind             :: !Text
    , _bcBinaryLogEnabled :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BackupConfiguration'
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

instance FromJSON BackupConfiguration where
        parseJSON
          = withObject "BackupConfiguration"
              (\ o ->
                 BackupConfiguration' <$>
                   (o .:? "enabled") <*> (o .:? "startTime") <*>
                     (o .:? "kind" .!= "sql#backupConfiguration")
                     <*> (o .:? "binaryLogEnabled"))

instance ToJSON BackupConfiguration where
        toJSON BackupConfiguration'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _bcEnabled,
                  ("startTime" .=) <$> _bcStartTime,
                  Just ("kind" .= _bcKind),
                  ("binaryLogEnabled" .=) <$> _bcBinaryLogEnabled])

-- | Database instance import request.
--
-- /See:/ 'instancesImportRequest' smart constructor.
newtype InstancesImportRequest = InstancesImportRequest'
    { _iirImportContext :: Maybe ImportContext
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesImportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iirImportContext'
instancesImportRequest
    :: InstancesImportRequest
instancesImportRequest =
    InstancesImportRequest'
    { _iirImportContext = Nothing
    }

-- | Contains details about the import operation.
iirImportContext :: Lens' InstancesImportRequest (Maybe ImportContext)
iirImportContext
  = lens _iirImportContext
      (\ s a -> s{_iirImportContext = a})

instance FromJSON InstancesImportRequest where
        parseJSON
          = withObject "InstancesImportRequest"
              (\ o ->
                 InstancesImportRequest' <$> (o .:? "importContext"))

instance ToJSON InstancesImportRequest where
        toJSON InstancesImportRequest'{..}
          = object
              (catMaybes
                 [("importContext" .=) <$> _iirImportContext])

-- | Preferred location. This specifies where a Cloud SQL instance should
-- preferably be located, either in a specific Compute Engine zone, or
-- co-located with an App Engine application. Note that if the preferred
-- location is not available, the instance will be located as close as
-- possible within the region. Only one location may be specified.
--
-- /See:/ 'locationPreference' smart constructor.
data LocationPreference = LocationPreference'
    { _lpKind                 :: !Text
    , _lpFollowGaeApplication :: !(Maybe Text)
    , _lpZone                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    LocationPreference'
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

instance FromJSON LocationPreference where
        parseJSON
          = withObject "LocationPreference"
              (\ o ->
                 LocationPreference' <$>
                   (o .:? "kind" .!= "sql#locationPreference") <*>
                     (o .:? "followGaeApplication")
                     <*> (o .:? "zone"))

instance ToJSON LocationPreference where
        toJSON LocationPreference'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _lpKind),
                  ("followGaeApplication" .=) <$>
                    _lpFollowGaeApplication,
                  ("zone" .=) <$> _lpZone])

-- | Flags list response.
--
-- /See:/ 'flagsListResponse' smart constructor.
data FlagsListResponse = FlagsListResponse'
    { _flrKind  :: !Text
    , _flrItems :: !(Maybe [Flag])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    FlagsListResponse'
    { _flrKind = "sql#flagsList"
    , _flrItems = Nothing
    }

-- | This is always sql#flagsList.
flrKind :: Lens' FlagsListResponse Text
flrKind = lens _flrKind (\ s a -> s{_flrKind = a})

-- | List of flags.
flrItems :: Lens' FlagsListResponse [Flag]
flrItems
  = lens _flrItems (\ s a -> s{_flrItems = a}) .
      _Default
      . _Coerce

instance FromJSON FlagsListResponse where
        parseJSON
          = withObject "FlagsListResponse"
              (\ o ->
                 FlagsListResponse' <$>
                   (o .:? "kind" .!= "sql#flagsList") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON FlagsListResponse where
        toJSON FlagsListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _flrKind),
                  ("items" .=) <$> _flrItems])

-- | Instance truncate log request.
--
-- /See:/ 'instancesTruncateLogRequest' smart constructor.
newtype InstancesTruncateLogRequest = InstancesTruncateLogRequest'
    { _itlrTruncateLogContext :: Maybe TruncateLogContext
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesTruncateLogRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlrTruncateLogContext'
instancesTruncateLogRequest
    :: InstancesTruncateLogRequest
instancesTruncateLogRequest =
    InstancesTruncateLogRequest'
    { _itlrTruncateLogContext = Nothing
    }

-- | Contains details about the truncate log operation.
itlrTruncateLogContext :: Lens' InstancesTruncateLogRequest (Maybe TruncateLogContext)
itlrTruncateLogContext
  = lens _itlrTruncateLogContext
      (\ s a -> s{_itlrTruncateLogContext = a})

instance FromJSON InstancesTruncateLogRequest where
        parseJSON
          = withObject "InstancesTruncateLogRequest"
              (\ o ->
                 InstancesTruncateLogRequest' <$>
                   (o .:? "truncateLogContext"))

instance ToJSON InstancesTruncateLogRequest where
        toJSON InstancesTruncateLogRequest'{..}
          = object
              (catMaybes
                 [("truncateLogContext" .=) <$>
                    _itlrTruncateLogContext])

-- | Options for exporting data as SQL statements.
--
-- /See:/ 'exportContextSQLExportOptions' smart constructor.
data ExportContextSQLExportOptions = ExportContextSQLExportOptions'
    { _ecsqleoSchemaOnly :: !(Maybe Bool)
    , _ecsqleoTables     :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportContextSQLExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecsqleoSchemaOnly'
--
-- * 'ecsqleoTables'
exportContextSQLExportOptions
    :: ExportContextSQLExportOptions
exportContextSQLExportOptions =
    ExportContextSQLExportOptions'
    { _ecsqleoSchemaOnly = Nothing
    , _ecsqleoTables = Nothing
    }

-- | Export only schemas.
ecsqleoSchemaOnly :: Lens' ExportContextSQLExportOptions (Maybe Bool)
ecsqleoSchemaOnly
  = lens _ecsqleoSchemaOnly
      (\ s a -> s{_ecsqleoSchemaOnly = a})

-- | Tables to export, or that were exported, from the specified database. If
-- you specify tables, specify one and only one database.
ecsqleoTables :: Lens' ExportContextSQLExportOptions [Text]
ecsqleoTables
  = lens _ecsqleoTables
      (\ s a -> s{_ecsqleoTables = a})
      . _Default
      . _Coerce

instance FromJSON ExportContextSQLExportOptions where
        parseJSON
          = withObject "ExportContextSQLExportOptions"
              (\ o ->
                 ExportContextSQLExportOptions' <$>
                   (o .:? "schemaOnly") <*> (o .:? "tables" .!= mempty))

instance ToJSON ExportContextSQLExportOptions where
        toJSON ExportContextSQLExportOptions'{..}
          = object
              (catMaybes
                 [("schemaOnly" .=) <$> _ecsqleoSchemaOnly,
                  ("tables" .=) <$> _ecsqleoTables])

-- | Database instance restore from backup context.
--
-- /See:/ 'restoreBackupContext' smart constructor.
data RestoreBackupContext = RestoreBackupContext'
    { _rbcInstanceId  :: !(Maybe Text)
    , _rbcBackupRunId :: !(Maybe (Textual Int64))
    , _rbcKind        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    RestoreBackupContext'
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
      . mapping _Coerce

-- | This is always sql#restoreBackupContext.
rbcKind :: Lens' RestoreBackupContext Text
rbcKind = lens _rbcKind (\ s a -> s{_rbcKind = a})

instance FromJSON RestoreBackupContext where
        parseJSON
          = withObject "RestoreBackupContext"
              (\ o ->
                 RestoreBackupContext' <$>
                   (o .:? "instanceId") <*> (o .:? "backupRunId") <*>
                     (o .:? "kind" .!= "sql#restoreBackupContext"))

instance ToJSON RestoreBackupContext where
        toJSON RestoreBackupContext'{..}
          = object
              (catMaybes
                 [("instanceId" .=) <$> _rbcInstanceId,
                  ("backupRunId" .=) <$> _rbcBackupRunId,
                  Just ("kind" .= _rbcKind)])
