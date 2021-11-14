{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SQLAdmin.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SQLAdmin.Types.Product where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types.Sum

-- | Represents a Sql Server database on the Cloud SQL instance.
--
-- /See:/ 'sQLServerDatabaseDetails' smart constructor.
data SQLServerDatabaseDetails =
  SQLServerDatabaseDetails'
    { _sqlsddRecoveryModel :: !(Maybe Text)
    , _sqlsddCompatibilityLevel :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SQLServerDatabaseDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqlsddRecoveryModel'
--
-- * 'sqlsddCompatibilityLevel'
sQLServerDatabaseDetails
    :: SQLServerDatabaseDetails
sQLServerDatabaseDetails =
  SQLServerDatabaseDetails'
    {_sqlsddRecoveryModel = Nothing, _sqlsddCompatibilityLevel = Nothing}


-- | The recovery model of a SQL Server database
sqlsddRecoveryModel :: Lens' SQLServerDatabaseDetails (Maybe Text)
sqlsddRecoveryModel
  = lens _sqlsddRecoveryModel
      (\ s a -> s{_sqlsddRecoveryModel = a})

-- | The version of SQL Server with which the database is to be made
-- compatible
sqlsddCompatibilityLevel :: Lens' SQLServerDatabaseDetails (Maybe Int32)
sqlsddCompatibilityLevel
  = lens _sqlsddCompatibilityLevel
      (\ s a -> s{_sqlsddCompatibilityLevel = a})
      . mapping _Coerce

instance FromJSON SQLServerDatabaseDetails where
        parseJSON
          = withObject "SQLServerDatabaseDetails"
              (\ o ->
                 SQLServerDatabaseDetails' <$>
                   (o .:? "recoveryModel") <*>
                     (o .:? "compatibilityLevel"))

instance ToJSON SQLServerDatabaseDetails where
        toJSON SQLServerDatabaseDetails'{..}
          = object
              (catMaybes
                 [("recoveryModel" .=) <$> _sqlsddRecoveryModel,
                  ("compatibilityLevel" .=) <$>
                    _sqlsddCompatibilityLevel])

-- | Read-replica configuration specific to MySQL databases.
--
-- /See:/ 'demoteMasterMySQLReplicaConfiguration' smart constructor.
data DemoteMasterMySQLReplicaConfiguration =
  DemoteMasterMySQLReplicaConfiguration'
    { _dmmsqlrcKind :: !(Maybe Text)
    , _dmmsqlrcClientKey :: !(Maybe Text)
    , _dmmsqlrcUsername :: !(Maybe Text)
    , _dmmsqlrcClientCertificate :: !(Maybe Text)
    , _dmmsqlrcCaCertificate :: !(Maybe Text)
    , _dmmsqlrcPassword :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DemoteMasterMySQLReplicaConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmmsqlrcKind'
--
-- * 'dmmsqlrcClientKey'
--
-- * 'dmmsqlrcUsername'
--
-- * 'dmmsqlrcClientCertificate'
--
-- * 'dmmsqlrcCaCertificate'
--
-- * 'dmmsqlrcPassword'
demoteMasterMySQLReplicaConfiguration
    :: DemoteMasterMySQLReplicaConfiguration
demoteMasterMySQLReplicaConfiguration =
  DemoteMasterMySQLReplicaConfiguration'
    { _dmmsqlrcKind = Nothing
    , _dmmsqlrcClientKey = Nothing
    , _dmmsqlrcUsername = Nothing
    , _dmmsqlrcClientCertificate = Nothing
    , _dmmsqlrcCaCertificate = Nothing
    , _dmmsqlrcPassword = Nothing
    }


-- | This is always **sql#demoteMasterMysqlReplicaConfiguration**.
dmmsqlrcKind :: Lens' DemoteMasterMySQLReplicaConfiguration (Maybe Text)
dmmsqlrcKind
  = lens _dmmsqlrcKind (\ s a -> s{_dmmsqlrcKind = a})

-- | PEM representation of the replica\'s private key. The corresponsing
-- public key is encoded in the client\'s certificate. The format of the
-- replica\'s private key can be either PKCS #1 or PKCS #8.
dmmsqlrcClientKey :: Lens' DemoteMasterMySQLReplicaConfiguration (Maybe Text)
dmmsqlrcClientKey
  = lens _dmmsqlrcClientKey
      (\ s a -> s{_dmmsqlrcClientKey = a})

-- | The username for the replication connection.
dmmsqlrcUsername :: Lens' DemoteMasterMySQLReplicaConfiguration (Maybe Text)
dmmsqlrcUsername
  = lens _dmmsqlrcUsername
      (\ s a -> s{_dmmsqlrcUsername = a})

-- | PEM representation of the replica\'s x509 certificate.
dmmsqlrcClientCertificate :: Lens' DemoteMasterMySQLReplicaConfiguration (Maybe Text)
dmmsqlrcClientCertificate
  = lens _dmmsqlrcClientCertificate
      (\ s a -> s{_dmmsqlrcClientCertificate = a})

-- | PEM representation of the trusted CA\'s x509 certificate.
dmmsqlrcCaCertificate :: Lens' DemoteMasterMySQLReplicaConfiguration (Maybe Text)
dmmsqlrcCaCertificate
  = lens _dmmsqlrcCaCertificate
      (\ s a -> s{_dmmsqlrcCaCertificate = a})

-- | The password for the replication connection.
dmmsqlrcPassword :: Lens' DemoteMasterMySQLReplicaConfiguration (Maybe Text)
dmmsqlrcPassword
  = lens _dmmsqlrcPassword
      (\ s a -> s{_dmmsqlrcPassword = a})

instance FromJSON
           DemoteMasterMySQLReplicaConfiguration
         where
        parseJSON
          = withObject "DemoteMasterMySQLReplicaConfiguration"
              (\ o ->
                 DemoteMasterMySQLReplicaConfiguration' <$>
                   (o .:? "kind") <*> (o .:? "clientKey") <*>
                     (o .:? "username")
                     <*> (o .:? "clientCertificate")
                     <*> (o .:? "caCertificate")
                     <*> (o .:? "password"))

instance ToJSON DemoteMasterMySQLReplicaConfiguration
         where
        toJSON DemoteMasterMySQLReplicaConfiguration'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _dmmsqlrcKind,
                  ("clientKey" .=) <$> _dmmsqlrcClientKey,
                  ("username" .=) <$> _dmmsqlrcUsername,
                  ("clientCertificate" .=) <$>
                    _dmmsqlrcClientCertificate,
                  ("caCertificate" .=) <$> _dmmsqlrcCaCertificate,
                  ("password" .=) <$> _dmmsqlrcPassword])

-- | SslCerts Resource
--
-- /See:/ 'sslCert' smart constructor.
data SSLCert =
  SSLCert'
    { _scCommonName :: !(Maybe Text)
    , _scKind :: !(Maybe Text)
    , _scCertSerialNumber :: !(Maybe Text)
    , _scSelfLink :: !(Maybe Text)
    , _scCert :: !(Maybe Text)
    , _scSha1Fingerprint :: !(Maybe Text)
    , _scExpirationTime :: !(Maybe DateTime')
    , _scCreateTime :: !(Maybe DateTime')
    , _scInstance :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    , _scKind = Nothing
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
scKind :: Lens' SSLCert (Maybe Text)
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

-- | The time when the certificate expires in [RFC
-- 3339](https:\/\/tools.ietf.org\/html\/rfc3339) format, for example
-- **2012-11-15T16:19:00.094Z**.
scExpirationTime :: Lens' SSLCert (Maybe UTCTime)
scExpirationTime
  = lens _scExpirationTime
      (\ s a -> s{_scExpirationTime = a})
      . mapping _DateTime

-- | The time when the certificate was created in [RFC
-- 3339](https:\/\/tools.ietf.org\/html\/rfc3339) format, for example
-- **2012-11-15T16:19:00.094Z**
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
                   (o .:? "commonName") <*> (o .:? "kind") <*>
                     (o .:? "certSerialNumber")
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
                  ("kind" .=) <$> _scKind,
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
data DatabasesListResponse =
  DatabasesListResponse'
    { _dlrKind :: !(Maybe Text)
    , _dlrItems :: !(Maybe [Database])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  DatabasesListResponse' {_dlrKind = Nothing, _dlrItems = Nothing}


-- | This is always *sql#databasesList*.
dlrKind :: Lens' DatabasesListResponse (Maybe Text)
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
                   (o .:? "kind") <*> (o .:? "items" .!= mempty))

instance ToJSON DatabasesListResponse where
        toJSON DatabasesListResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _dlrKind,
                  ("items" .=) <$> _dlrItems])

-- | Database instance export request.
--
-- /See:/ 'instancesExportRequest' smart constructor.
newtype InstancesExportRequest =
  InstancesExportRequest'
    { _ierExportContext :: Maybe ExportContext
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesExportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ierExportContext'
instancesExportRequest
    :: InstancesExportRequest
instancesExportRequest = InstancesExportRequest' {_ierExportContext = Nothing}


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

-- | Instance verify external sync settings response.
--
-- /See:/ 'sQLInstancesVerifyExternalSyncSettingsResponse' smart constructor.
data SQLInstancesVerifyExternalSyncSettingsResponse =
  SQLInstancesVerifyExternalSyncSettingsResponse'
    { _sqlivessrKind :: !(Maybe Text)
    , _sqlivessrWarnings :: !(Maybe [SQLExternalSyncSettingError])
    , _sqlivessrErrors :: !(Maybe [SQLExternalSyncSettingError])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SQLInstancesVerifyExternalSyncSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqlivessrKind'
--
-- * 'sqlivessrWarnings'
--
-- * 'sqlivessrErrors'
sQLInstancesVerifyExternalSyncSettingsResponse
    :: SQLInstancesVerifyExternalSyncSettingsResponse
sQLInstancesVerifyExternalSyncSettingsResponse =
  SQLInstancesVerifyExternalSyncSettingsResponse'
    { _sqlivessrKind = Nothing
    , _sqlivessrWarnings = Nothing
    , _sqlivessrErrors = Nothing
    }


-- | This is always *sql#migrationSettingErrorList*.
sqlivessrKind :: Lens' SQLInstancesVerifyExternalSyncSettingsResponse (Maybe Text)
sqlivessrKind
  = lens _sqlivessrKind
      (\ s a -> s{_sqlivessrKind = a})

-- | List of migration warnings.
sqlivessrWarnings :: Lens' SQLInstancesVerifyExternalSyncSettingsResponse [SQLExternalSyncSettingError]
sqlivessrWarnings
  = lens _sqlivessrWarnings
      (\ s a -> s{_sqlivessrWarnings = a})
      . _Default
      . _Coerce

-- | List of migration violations.
sqlivessrErrors :: Lens' SQLInstancesVerifyExternalSyncSettingsResponse [SQLExternalSyncSettingError]
sqlivessrErrors
  = lens _sqlivessrErrors
      (\ s a -> s{_sqlivessrErrors = a})
      . _Default
      . _Coerce

instance FromJSON
           SQLInstancesVerifyExternalSyncSettingsResponse
         where
        parseJSON
          = withObject
              "SQLInstancesVerifyExternalSyncSettingsResponse"
              (\ o ->
                 SQLInstancesVerifyExternalSyncSettingsResponse' <$>
                   (o .:? "kind") <*> (o .:? "warnings" .!= mempty) <*>
                     (o .:? "errors" .!= mempty))

instance ToJSON
           SQLInstancesVerifyExternalSyncSettingsResponse
         where
        toJSON
          SQLInstancesVerifyExternalSyncSettingsResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _sqlivessrKind,
                  ("warnings" .=) <$> _sqlivessrWarnings,
                  ("errors" .=) <$> _sqlivessrErrors])

-- | Instances ListServerCas response.
--
-- /See:/ 'instancesListServerCasResponse' smart constructor.
data InstancesListServerCasResponse =
  InstancesListServerCasResponse'
    { _ilscrKind :: !(Maybe Text)
    , _ilscrCerts :: !(Maybe [SSLCert])
    , _ilscrActiveVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesListServerCasResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilscrKind'
--
-- * 'ilscrCerts'
--
-- * 'ilscrActiveVersion'
instancesListServerCasResponse
    :: InstancesListServerCasResponse
instancesListServerCasResponse =
  InstancesListServerCasResponse'
    {_ilscrKind = Nothing, _ilscrCerts = Nothing, _ilscrActiveVersion = Nothing}


-- | This is always *sql#instancesListServerCas*.
ilscrKind :: Lens' InstancesListServerCasResponse (Maybe Text)
ilscrKind
  = lens _ilscrKind (\ s a -> s{_ilscrKind = a})

-- | List of server CA certificates for the instance.
ilscrCerts :: Lens' InstancesListServerCasResponse [SSLCert]
ilscrCerts
  = lens _ilscrCerts (\ s a -> s{_ilscrCerts = a}) .
      _Default
      . _Coerce

ilscrActiveVersion :: Lens' InstancesListServerCasResponse (Maybe Text)
ilscrActiveVersion
  = lens _ilscrActiveVersion
      (\ s a -> s{_ilscrActiveVersion = a})

instance FromJSON InstancesListServerCasResponse
         where
        parseJSON
          = withObject "InstancesListServerCasResponse"
              (\ o ->
                 InstancesListServerCasResponse' <$>
                   (o .:? "kind") <*> (o .:? "certs" .!= mempty) <*>
                     (o .:? "activeVersion"))

instance ToJSON InstancesListServerCasResponse where
        toJSON InstancesListServerCasResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ilscrKind,
                  ("certs" .=) <$> _ilscrCerts,
                  ("activeVersion" .=) <$> _ilscrActiveVersion])

-- | Options for exporting from MySQL.
--
-- /See:/ 'exportContextSQLExportOptionsMysqlExportOptions' smart constructor.
newtype ExportContextSQLExportOptionsMysqlExportOptions =
  ExportContextSQLExportOptionsMysqlExportOptions'
    { _ecsqleomeoMasterData :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportContextSQLExportOptionsMysqlExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecsqleomeoMasterData'
exportContextSQLExportOptionsMysqlExportOptions
    :: ExportContextSQLExportOptionsMysqlExportOptions
exportContextSQLExportOptionsMysqlExportOptions =
  ExportContextSQLExportOptionsMysqlExportOptions'
    {_ecsqleomeoMasterData = Nothing}


-- | Option to include SQL statement required to set up replication. If set
-- to **1**, the dump file includes a CHANGE MASTER TO statement with the
-- binary log coordinates, and --set-gtid-purged is set to ON. If set to
-- **2**, the CHANGE MASTER TO statement is written as a SQL comment and
-- has no effect. If set to any value other than **1**, --set-gtid-purged
-- is set to OFF.
ecsqleomeoMasterData :: Lens' ExportContextSQLExportOptionsMysqlExportOptions (Maybe Int32)
ecsqleomeoMasterData
  = lens _ecsqleomeoMasterData
      (\ s a -> s{_ecsqleomeoMasterData = a})
      . mapping _Coerce

instance FromJSON
           ExportContextSQLExportOptionsMysqlExportOptions
         where
        parseJSON
          = withObject
              "ExportContextSQLExportOptionsMysqlExportOptions"
              (\ o ->
                 ExportContextSQLExportOptionsMysqlExportOptions' <$>
                   (o .:? "masterData"))

instance ToJSON
           ExportContextSQLExportOptionsMysqlExportOptions
         where
        toJSON
          ExportContextSQLExportOptionsMysqlExportOptions'{..}
          = object
              (catMaybes
                 [("masterData" .=) <$> _ecsqleomeoMasterData])

-- | On-premises instance configuration.
--
-- /See:/ 'onPremisesConfiguration' smart constructor.
data OnPremisesConfiguration =
  OnPremisesConfiguration'
    { _opcKind :: !(Maybe Text)
    , _opcClientKey :: !(Maybe Text)
    , _opcUsername :: !(Maybe Text)
    , _opcHostPort :: !(Maybe Text)
    , _opcClientCertificate :: !(Maybe Text)
    , _opcCaCertificate :: !(Maybe Text)
    , _opcDumpFilePath :: !(Maybe Text)
    , _opcPassword :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OnPremisesConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opcKind'
--
-- * 'opcClientKey'
--
-- * 'opcUsername'
--
-- * 'opcHostPort'
--
-- * 'opcClientCertificate'
--
-- * 'opcCaCertificate'
--
-- * 'opcDumpFilePath'
--
-- * 'opcPassword'
onPremisesConfiguration
    :: OnPremisesConfiguration
onPremisesConfiguration =
  OnPremisesConfiguration'
    { _opcKind = Nothing
    , _opcClientKey = Nothing
    , _opcUsername = Nothing
    , _opcHostPort = Nothing
    , _opcClientCertificate = Nothing
    , _opcCaCertificate = Nothing
    , _opcDumpFilePath = Nothing
    , _opcPassword = Nothing
    }


-- | This is always *sql#onPremisesConfiguration*.
opcKind :: Lens' OnPremisesConfiguration (Maybe Text)
opcKind = lens _opcKind (\ s a -> s{_opcKind = a})

-- | PEM representation of the replica\'s private key. The corresponsing
-- public key is encoded in the client\'s certificate.
opcClientKey :: Lens' OnPremisesConfiguration (Maybe Text)
opcClientKey
  = lens _opcClientKey (\ s a -> s{_opcClientKey = a})

-- | The username for connecting to on-premises instance.
opcUsername :: Lens' OnPremisesConfiguration (Maybe Text)
opcUsername
  = lens _opcUsername (\ s a -> s{_opcUsername = a})

-- | The host and port of the on-premises instance in host:port format
opcHostPort :: Lens' OnPremisesConfiguration (Maybe Text)
opcHostPort
  = lens _opcHostPort (\ s a -> s{_opcHostPort = a})

-- | PEM representation of the replica\'s x509 certificate.
opcClientCertificate :: Lens' OnPremisesConfiguration (Maybe Text)
opcClientCertificate
  = lens _opcClientCertificate
      (\ s a -> s{_opcClientCertificate = a})

-- | PEM representation of the trusted CA\'s x509 certificate.
opcCaCertificate :: Lens' OnPremisesConfiguration (Maybe Text)
opcCaCertificate
  = lens _opcCaCertificate
      (\ s a -> s{_opcCaCertificate = a})

-- | The dump file to create the Cloud SQL replica.
opcDumpFilePath :: Lens' OnPremisesConfiguration (Maybe Text)
opcDumpFilePath
  = lens _opcDumpFilePath
      (\ s a -> s{_opcDumpFilePath = a})

-- | The password for connecting to on-premises instance.
opcPassword :: Lens' OnPremisesConfiguration (Maybe Text)
opcPassword
  = lens _opcPassword (\ s a -> s{_opcPassword = a})

instance FromJSON OnPremisesConfiguration where
        parseJSON
          = withObject "OnPremisesConfiguration"
              (\ o ->
                 OnPremisesConfiguration' <$>
                   (o .:? "kind") <*> (o .:? "clientKey") <*>
                     (o .:? "username")
                     <*> (o .:? "hostPort")
                     <*> (o .:? "clientCertificate")
                     <*> (o .:? "caCertificate")
                     <*> (o .:? "dumpFilePath")
                     <*> (o .:? "password"))

instance ToJSON OnPremisesConfiguration where
        toJSON OnPremisesConfiguration'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _opcKind,
                  ("clientKey" .=) <$> _opcClientKey,
                  ("username" .=) <$> _opcUsername,
                  ("hostPort" .=) <$> _opcHostPort,
                  ("clientCertificate" .=) <$> _opcClientCertificate,
                  ("caCertificate" .=) <$> _opcCaCertificate,
                  ("dumpFilePath" .=) <$> _opcDumpFilePath,
                  ("password" .=) <$> _opcPassword])

-- | Insights configuration. This specifies when Cloud SQL Insights feature
-- is enabled and optional configuration.
--
-- /See:/ 'insightsConfig' smart constructor.
data InsightsConfig =
  InsightsConfig'
    { _icQueryInsightsEnabled :: !(Maybe Bool)
    , _icQueryPlansPerMinute :: !(Maybe (Textual Int32))
    , _icRecordApplicationTags :: !(Maybe Bool)
    , _icRecordClientAddress :: !(Maybe Bool)
    , _icQueryStringLength :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsightsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icQueryInsightsEnabled'
--
-- * 'icQueryPlansPerMinute'
--
-- * 'icRecordApplicationTags'
--
-- * 'icRecordClientAddress'
--
-- * 'icQueryStringLength'
insightsConfig
    :: InsightsConfig
insightsConfig =
  InsightsConfig'
    { _icQueryInsightsEnabled = Nothing
    , _icQueryPlansPerMinute = Nothing
    , _icRecordApplicationTags = Nothing
    , _icRecordClientAddress = Nothing
    , _icQueryStringLength = Nothing
    }


-- | Whether Query Insights feature is enabled.
icQueryInsightsEnabled :: Lens' InsightsConfig (Maybe Bool)
icQueryInsightsEnabled
  = lens _icQueryInsightsEnabled
      (\ s a -> s{_icQueryInsightsEnabled = a})

-- | Number of query execution plans captured by Insights per minute for all
-- queries combined. Default is 5.
icQueryPlansPerMinute :: Lens' InsightsConfig (Maybe Int32)
icQueryPlansPerMinute
  = lens _icQueryPlansPerMinute
      (\ s a -> s{_icQueryPlansPerMinute = a})
      . mapping _Coerce

-- | Whether Query Insights will record application tags from query when
-- enabled.
icRecordApplicationTags :: Lens' InsightsConfig (Maybe Bool)
icRecordApplicationTags
  = lens _icRecordApplicationTags
      (\ s a -> s{_icRecordApplicationTags = a})

-- | Whether Query Insights will record client address when enabled.
icRecordClientAddress :: Lens' InsightsConfig (Maybe Bool)
icRecordClientAddress
  = lens _icRecordClientAddress
      (\ s a -> s{_icRecordClientAddress = a})

-- | Maximum query length stored in bytes. Default value: 1024 bytes. Range:
-- 256-4500 bytes. Query length more than this field value will be
-- truncated to this value. When unset, query length will be the default
-- value. Changing query length will restart the database.
icQueryStringLength :: Lens' InsightsConfig (Maybe Int32)
icQueryStringLength
  = lens _icQueryStringLength
      (\ s a -> s{_icQueryStringLength = a})
      . mapping _Coerce

instance FromJSON InsightsConfig where
        parseJSON
          = withObject "InsightsConfig"
              (\ o ->
                 InsightsConfig' <$>
                   (o .:? "queryInsightsEnabled") <*>
                     (o .:? "queryPlansPerMinute")
                     <*> (o .:? "recordApplicationTags")
                     <*> (o .:? "recordClientAddress")
                     <*> (o .:? "queryStringLength"))

instance ToJSON InsightsConfig where
        toJSON InsightsConfig'{..}
          = object
              (catMaybes
                 [("queryInsightsEnabled" .=) <$>
                    _icQueryInsightsEnabled,
                  ("queryPlansPerMinute" .=) <$>
                    _icQueryPlansPerMinute,
                  ("recordApplicationTags" .=) <$>
                    _icRecordApplicationTags,
                  ("recordClientAddress" .=) <$>
                    _icRecordClientAddress,
                  ("queryStringLength" .=) <$> _icQueryStringLength])

-- | Operations list response.
--
-- /See:/ 'operationsListResponse' smart constructor.
data OperationsListResponse =
  OperationsListResponse'
    { _olrNextPageToken :: !(Maybe Text)
    , _olrKind :: !(Maybe Text)
    , _olrItems :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_olrNextPageToken = Nothing, _olrKind = Nothing, _olrItems = Nothing}


-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
olrNextPageToken :: Lens' OperationsListResponse (Maybe Text)
olrNextPageToken
  = lens _olrNextPageToken
      (\ s a -> s{_olrNextPageToken = a})

-- | This is always *sql#operationsList*.
olrKind :: Lens' OperationsListResponse (Maybe Text)
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
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON OperationsListResponse where
        toJSON OperationsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olrNextPageToken,
                  ("kind" .=) <$> _olrKind,
                  ("items" .=) <$> _olrItems])

-- | An Admin API warning message.
--
-- /See:/ 'apiWarning' smart constructor.
data APIWarning =
  APIWarning'
    { _awCode :: !(Maybe APIWarningCode)
    , _awRegion :: !(Maybe Text)
    , _awMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APIWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awCode'
--
-- * 'awRegion'
--
-- * 'awMessage'
apiWarning
    :: APIWarning
apiWarning =
  APIWarning' {_awCode = Nothing, _awRegion = Nothing, _awMessage = Nothing}


-- | Code to uniquely identify the warning type.
awCode :: Lens' APIWarning (Maybe APIWarningCode)
awCode = lens _awCode (\ s a -> s{_awCode = a})

-- | The region name for REGION_UNREACHABLE warning.
awRegion :: Lens' APIWarning (Maybe Text)
awRegion = lens _awRegion (\ s a -> s{_awRegion = a})

-- | The warning message.
awMessage :: Lens' APIWarning (Maybe Text)
awMessage
  = lens _awMessage (\ s a -> s{_awMessage = a})

instance FromJSON APIWarning where
        parseJSON
          = withObject "APIWarning"
              (\ o ->
                 APIWarning' <$>
                   (o .:? "code") <*> (o .:? "region") <*>
                     (o .:? "message"))

instance ToJSON APIWarning where
        toJSON APIWarning'{..}
          = object
              (catMaybes
                 [("code" .=) <$> _awCode,
                  ("region" .=) <$> _awRegion,
                  ("message" .=) <$> _awMessage])

-- | Disk encryption configuration for an instance.
--
-- /See:/ 'diskEncryptionConfiguration' smart constructor.
data DiskEncryptionConfiguration =
  DiskEncryptionConfiguration'
    { _decKind :: !(Maybe Text)
    , _decKmsKeyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiskEncryptionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decKind'
--
-- * 'decKmsKeyName'
diskEncryptionConfiguration
    :: DiskEncryptionConfiguration
diskEncryptionConfiguration =
  DiskEncryptionConfiguration' {_decKind = Nothing, _decKmsKeyName = Nothing}


-- | This is always **sql#diskEncryptionConfiguration**.
decKind :: Lens' DiskEncryptionConfiguration (Maybe Text)
decKind = lens _decKind (\ s a -> s{_decKind = a})

-- | Resource name of KMS key for disk encryption
decKmsKeyName :: Lens' DiskEncryptionConfiguration (Maybe Text)
decKmsKeyName
  = lens _decKmsKeyName
      (\ s a -> s{_decKmsKeyName = a})

instance FromJSON DiskEncryptionConfiguration where
        parseJSON
          = withObject "DiskEncryptionConfiguration"
              (\ o ->
                 DiskEncryptionConfiguration' <$>
                   (o .:? "kind") <*> (o .:? "kmsKeyName"))

instance ToJSON DiskEncryptionConfiguration where
        toJSON DiskEncryptionConfiguration'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _decKind,
                  ("kmsKeyName" .=) <$> _decKmsKeyName])

-- | External primary instance migration setting error.
--
-- /See:/ 'sQLExternalSyncSettingError' smart constructor.
data SQLExternalSyncSettingError =
  SQLExternalSyncSettingError'
    { _sqlesseKind :: !(Maybe Text)
    , _sqlesseType :: !(Maybe SQLExternalSyncSettingErrorType)
    , _sqlesseDetail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SQLExternalSyncSettingError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqlesseKind'
--
-- * 'sqlesseType'
--
-- * 'sqlesseDetail'
sQLExternalSyncSettingError
    :: SQLExternalSyncSettingError
sQLExternalSyncSettingError =
  SQLExternalSyncSettingError'
    {_sqlesseKind = Nothing, _sqlesseType = Nothing, _sqlesseDetail = Nothing}


-- | Can be *sql#externalSyncSettingError* or
-- *sql#externalSyncSettingWarning*.
sqlesseKind :: Lens' SQLExternalSyncSettingError (Maybe Text)
sqlesseKind
  = lens _sqlesseKind (\ s a -> s{_sqlesseKind = a})

-- | Identifies the specific error that occurred.
sqlesseType :: Lens' SQLExternalSyncSettingError (Maybe SQLExternalSyncSettingErrorType)
sqlesseType
  = lens _sqlesseType (\ s a -> s{_sqlesseType = a})

-- | Additional information about the error encountered.
sqlesseDetail :: Lens' SQLExternalSyncSettingError (Maybe Text)
sqlesseDetail
  = lens _sqlesseDetail
      (\ s a -> s{_sqlesseDetail = a})

instance FromJSON SQLExternalSyncSettingError where
        parseJSON
          = withObject "SQLExternalSyncSettingError"
              (\ o ->
                 SQLExternalSyncSettingError' <$>
                   (o .:? "kind") <*> (o .:? "type") <*>
                     (o .:? "detail"))

instance ToJSON SQLExternalSyncSettingError where
        toJSON SQLExternalSyncSettingError'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _sqlesseKind,
                  ("type" .=) <$> _sqlesseType,
                  ("detail" .=) <$> _sqlesseDetail])

--
-- /See:/ 'reschedule' smart constructor.
data Reschedule =
  Reschedule'
    { _rScheduleTime :: !(Maybe DateTime')
    , _rRescheduleType :: !(Maybe RescheduleRescheduleType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Reschedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rScheduleTime'
--
-- * 'rRescheduleType'
reschedule
    :: Reschedule
reschedule = Reschedule' {_rScheduleTime = Nothing, _rRescheduleType = Nothing}


-- | Optional. Timestamp when the maintenance shall be rescheduled to if
-- reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for example
-- *2012-11-15T16:19:00.094Z*.
rScheduleTime :: Lens' Reschedule (Maybe UTCTime)
rScheduleTime
  = lens _rScheduleTime
      (\ s a -> s{_rScheduleTime = a})
      . mapping _DateTime

-- | Required. The type of the reschedule.
rRescheduleType :: Lens' Reschedule (Maybe RescheduleRescheduleType)
rRescheduleType
  = lens _rRescheduleType
      (\ s a -> s{_rRescheduleType = a})

instance FromJSON Reschedule where
        parseJSON
          = withObject "Reschedule"
              (\ o ->
                 Reschedule' <$>
                   (o .:? "scheduleTime") <*> (o .:? "rescheduleType"))

instance ToJSON Reschedule where
        toJSON Reschedule'{..}
          = object
              (catMaybes
                 [("scheduleTime" .=) <$> _rScheduleTime,
                  ("rescheduleType" .=) <$> _rRescheduleType])

-- | Database instance import context.
--
-- /See:/ 'importContext' smart constructor.
data ImportContext =
  ImportContext'
    { _icDatabase :: !(Maybe Text)
    , _icKind :: !(Maybe Text)
    , _icCSVImportOptions :: !(Maybe ImportContextCSVImportOptions)
    , _icURI :: !(Maybe Text)
    , _icFileType :: !(Maybe ImportContextFileType)
    , _icImportUser :: !(Maybe Text)
    , _icBakImportOptions :: !(Maybe ImportContextBakImportOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
--
-- * 'icImportUser'
--
-- * 'icBakImportOptions'
importContext
    :: ImportContext
importContext =
  ImportContext'
    { _icDatabase = Nothing
    , _icKind = Nothing
    , _icCSVImportOptions = Nothing
    , _icURI = Nothing
    , _icFileType = Nothing
    , _icImportUser = Nothing
    , _icBakImportOptions = Nothing
    }


-- | The target database for the import. If **fileType** is **SQL**, this
-- field is required only if the import file does not specify a database,
-- and is overridden by any database specification in the import file. If
-- **fileType** is **CSV**, one database must be specified.
icDatabase :: Lens' ImportContext (Maybe Text)
icDatabase
  = lens _icDatabase (\ s a -> s{_icDatabase = a})

-- | This is always **sql#importContext**.
icKind :: Lens' ImportContext (Maybe Text)
icKind = lens _icKind (\ s a -> s{_icKind = a})

-- | Options for importing data as CSV.
icCSVImportOptions :: Lens' ImportContext (Maybe ImportContextCSVImportOptions)
icCSVImportOptions
  = lens _icCSVImportOptions
      (\ s a -> s{_icCSVImportOptions = a})

-- | Path to the import file in Cloud Storage, in the form
-- **gs:\/\/bucketName\/fileName**. Compressed gzip files (.gz) are
-- supported when **fileType** is **SQL**. The instance must have write
-- permissions to the bucket and read access to the file.
icURI :: Lens' ImportContext (Maybe Text)
icURI = lens _icURI (\ s a -> s{_icURI = a})

-- | The file type for the specified uri. **SQL**: The file contains SQL
-- statements. **CSV**: The file contains CSV data.
icFileType :: Lens' ImportContext (Maybe ImportContextFileType)
icFileType
  = lens _icFileType (\ s a -> s{_icFileType = a})

-- | The PostgreSQL user for this import operation. PostgreSQL instances
-- only.
icImportUser :: Lens' ImportContext (Maybe Text)
icImportUser
  = lens _icImportUser (\ s a -> s{_icImportUser = a})

-- | Import parameters specific to SQL Server .BAK files
icBakImportOptions :: Lens' ImportContext (Maybe ImportContextBakImportOptions)
icBakImportOptions
  = lens _icBakImportOptions
      (\ s a -> s{_icBakImportOptions = a})

instance FromJSON ImportContext where
        parseJSON
          = withObject "ImportContext"
              (\ o ->
                 ImportContext' <$>
                   (o .:? "database") <*> (o .:? "kind") <*>
                     (o .:? "csvImportOptions")
                     <*> (o .:? "uri")
                     <*> (o .:? "fileType")
                     <*> (o .:? "importUser")
                     <*> (o .:? "bakImportOptions"))

instance ToJSON ImportContext where
        toJSON ImportContext'{..}
          = object
              (catMaybes
                 [("database" .=) <$> _icDatabase,
                  ("kind" .=) <$> _icKind,
                  ("csvImportOptions" .=) <$> _icCSVImportOptions,
                  ("uri" .=) <$> _icURI,
                  ("fileType" .=) <$> _icFileType,
                  ("importUser" .=) <$> _icImportUser,
                  ("bakImportOptions" .=) <$> _icBakImportOptions])

-- | Ephemeral certificate creation request.
--
-- /See:/ 'generateEphemeralCertRequest' smart constructor.
data GenerateEphemeralCertRequest =
  GenerateEphemeralCertRequest'
    { _gecrReadTime :: !(Maybe DateTime')
    , _gecrAccessToken :: !(Maybe Text)
    , _gecrPublicKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateEphemeralCertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gecrReadTime'
--
-- * 'gecrAccessToken'
--
-- * 'gecrPublicKey'
generateEphemeralCertRequest
    :: GenerateEphemeralCertRequest
generateEphemeralCertRequest =
  GenerateEphemeralCertRequest'
    { _gecrReadTime = Nothing
    , _gecrAccessToken = Nothing
    , _gecrPublicKey = Nothing
    }


-- | Optional. Optional snapshot read timestamp to trade freshness for
-- performance.
gecrReadTime :: Lens' GenerateEphemeralCertRequest (Maybe UTCTime)
gecrReadTime
  = lens _gecrReadTime (\ s a -> s{_gecrReadTime = a})
      . mapping _DateTime

-- | Optional. Access token to include in the signed certificate.
gecrAccessToken :: Lens' GenerateEphemeralCertRequest (Maybe Text)
gecrAccessToken
  = lens _gecrAccessToken
      (\ s a -> s{_gecrAccessToken = a})

-- | PEM encoded public key to include in the signed certificate.
gecrPublicKey :: Lens' GenerateEphemeralCertRequest (Maybe Text)
gecrPublicKey
  = lens _gecrPublicKey
      (\ s a -> s{_gecrPublicKey = a})

instance FromJSON GenerateEphemeralCertRequest where
        parseJSON
          = withObject "GenerateEphemeralCertRequest"
              (\ o ->
                 GenerateEphemeralCertRequest' <$>
                   (o .:? "readTime") <*> (o .:? "access_token") <*>
                     (o .:? "public_key"))

instance ToJSON GenerateEphemeralCertRequest where
        toJSON GenerateEphemeralCertRequest'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _gecrReadTime,
                  ("access_token" .=) <$> _gecrAccessToken,
                  ("public_key" .=) <$> _gecrPublicKey])

-- | An Operation resource. For successful operations that return an
-- Operation resource, only the fields relevant to the operation are
-- populated in the resource.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oTargetId :: !(Maybe Text)
    , _oTargetProject :: !(Maybe Text)
    , _oStatus :: !(Maybe OperationStatus)
    , _oInsertTime :: !(Maybe DateTime')
    , _oImportContext :: !(Maybe ImportContext)
    , _oStartTime :: !(Maybe DateTime')
    , _oKind :: !(Maybe Text)
    , _oError :: !(Maybe OperationErrors)
    , _oExportContext :: !(Maybe ExportContext)
    , _oUser :: !(Maybe Text)
    , _oSelfLink :: !(Maybe Text)
    , _oName :: !(Maybe Text)
    , _oEndTime :: !(Maybe DateTime')
    , _oOperationType :: !(Maybe OperationOperationType)
    , _oTargetLink :: !(Maybe Text)
    , _oBackupContext :: !(Maybe BackupContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
--
-- * 'oBackupContext'
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
    , _oKind = Nothing
    , _oError = Nothing
    , _oExportContext = Nothing
    , _oUser = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oEndTime = Nothing
    , _oOperationType = Nothing
    , _oTargetLink = Nothing
    , _oBackupContext = Nothing
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

-- | The status of an operation. Valid values are: **PENDING** **RUNNING**
-- **DONE** **SQL_OPERATION_STATUS_UNSPECIFIED**
oStatus :: Lens' Operation (Maybe OperationStatus)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | The time this operation was enqueued in UTC timezone in [RFC
-- 3339](https:\/\/tools.ietf.org\/html\/rfc3339) format, for example
-- **2012-11-15T16:19:00.094Z**.
oInsertTime :: Lens' Operation (Maybe UTCTime)
oInsertTime
  = lens _oInsertTime (\ s a -> s{_oInsertTime = a}) .
      mapping _DateTime

-- | The context for import operation, if applicable.
oImportContext :: Lens' Operation (Maybe ImportContext)
oImportContext
  = lens _oImportContext
      (\ s a -> s{_oImportContext = a})

-- | The time this operation actually started in UTC timezone in [RFC
-- 3339](https:\/\/tools.ietf.org\/html\/rfc3339) format, for example
-- **2012-11-15T16:19:00.094Z**.
oStartTime :: Lens' Operation (Maybe UTCTime)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a}) .
      mapping _DateTime

-- | This is always **sql#operation**.
oKind :: Lens' Operation (Maybe Text)
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

-- | The time this operation finished in UTC timezone in [RFC
-- 3339](https:\/\/tools.ietf.org\/html\/rfc3339) format, for example
-- **2012-11-15T16:19:00.094Z**.
oEndTime :: Lens' Operation (Maybe UTCTime)
oEndTime
  = lens _oEndTime (\ s a -> s{_oEndTime = a}) .
      mapping _DateTime

-- | The type of the operation. Valid values are: **CREATE** **DELETE**
-- **UPDATE** **RESTART** **IMPORT** **EXPORT** **BACKUP_VOLUME**
-- **RESTORE_VOLUME** **CREATE_USER** **DELETE_USER** **CREATE_DATABASE**
-- **DELETE_DATABASE**
oOperationType :: Lens' Operation (Maybe OperationOperationType)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

-- | The context for backup operation, if applicable.
oBackupContext :: Lens' Operation (Maybe BackupContext)
oBackupContext
  = lens _oBackupContext
      (\ s a -> s{_oBackupContext = a})

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
                     <*> (o .:? "kind")
                     <*> (o .:? "error")
                     <*> (o .:? "exportContext")
                     <*> (o .:? "user")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "endTime")
                     <*> (o .:? "operationType")
                     <*> (o .:? "targetLink")
                     <*> (o .:? "backupContext"))

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
                  ("kind" .=) <$> _oKind, ("error" .=) <$> _oError,
                  ("exportContext" .=) <$> _oExportContext,
                  ("user" .=) <$> _oUser,
                  ("selfLink" .=) <$> _oSelfLink,
                  ("name" .=) <$> _oName, ("endTime" .=) <$> _oEndTime,
                  ("operationType" .=) <$> _oOperationType,
                  ("targetLink" .=) <$> _oTargetLink,
                  ("backupContext" .=) <$> _oBackupContext])

-- | Database instance settings.
--
-- /See:/ 'settings' smart constructor.
data Settings =
  Settings'
    { _sStorageAutoResize :: !(Maybe Bool)
    , _sReplicationType :: !(Maybe SettingsReplicationType)
    , _sActivationPolicy :: !(Maybe SettingsActivationPolicy)
    , _sSettingsVersion :: !(Maybe (Textual Int64))
    , _sInsightsConfig :: !(Maybe InsightsConfig)
    , _sActiveDirectoryConfig :: !(Maybe SQLActiveDirectoryConfig)
    , _sDataDiskSizeGb :: !(Maybe (Textual Int64))
    , _sAuthorizedGaeApplications :: !(Maybe [Text])
    , _sKind :: !(Maybe Text)
    , _sPricingPlan :: !(Maybe SettingsPricingPlan)
    , _sIPConfiguration :: !(Maybe IPConfiguration)
    , _sCollation :: !(Maybe Text)
    , _sMaintenanceWindow :: !(Maybe MaintenanceWindow)
    , _sDatabaseReplicationEnabled :: !(Maybe Bool)
    , _sUserLabels :: !(Maybe SettingsUserLabels)
    , _sTier :: !(Maybe Text)
    , _sDatabaseFlags :: !(Maybe [DatabaseFlags])
    , _sDataDiskType :: !(Maybe SettingsDataDiskType)
    , _sDenyMaintenancePeriods :: !(Maybe [DenyMaintenancePeriod])
    , _sCrashSafeReplicationEnabled :: !(Maybe Bool)
    , _sLocationPreference :: !(Maybe LocationPreference)
    , _sBackupConfiguration :: !(Maybe BackupConfiguration)
    , _sAvailabilityType :: !(Maybe SettingsAvailabilityType)
    , _sStorageAutoResizeLimit :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'sInsightsConfig'
--
-- * 'sActiveDirectoryConfig'
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
-- * 'sCollation'
--
-- * 'sMaintenanceWindow'
--
-- * 'sDatabaseReplicationEnabled'
--
-- * 'sUserLabels'
--
-- * 'sTier'
--
-- * 'sDatabaseFlags'
--
-- * 'sDataDiskType'
--
-- * 'sDenyMaintenancePeriods'
--
-- * 'sCrashSafeReplicationEnabled'
--
-- * 'sLocationPreference'
--
-- * 'sBackupConfiguration'
--
-- * 'sAvailabilityType'
--
-- * 'sStorageAutoResizeLimit'
settings
    :: Settings
settings =
  Settings'
    { _sStorageAutoResize = Nothing
    , _sReplicationType = Nothing
    , _sActivationPolicy = Nothing
    , _sSettingsVersion = Nothing
    , _sInsightsConfig = Nothing
    , _sActiveDirectoryConfig = Nothing
    , _sDataDiskSizeGb = Nothing
    , _sAuthorizedGaeApplications = Nothing
    , _sKind = Nothing
    , _sPricingPlan = Nothing
    , _sIPConfiguration = Nothing
    , _sCollation = Nothing
    , _sMaintenanceWindow = Nothing
    , _sDatabaseReplicationEnabled = Nothing
    , _sUserLabels = Nothing
    , _sTier = Nothing
    , _sDatabaseFlags = Nothing
    , _sDataDiskType = Nothing
    , _sDenyMaintenancePeriods = Nothing
    , _sCrashSafeReplicationEnabled = Nothing
    , _sLocationPreference = Nothing
    , _sBackupConfiguration = Nothing
    , _sAvailabilityType = Nothing
    , _sStorageAutoResizeLimit = Nothing
    }


-- | Configuration to increase storage size automatically. The default value
-- is true.
sStorageAutoResize :: Lens' Settings (Maybe Bool)
sStorageAutoResize
  = lens _sStorageAutoResize
      (\ s a -> s{_sStorageAutoResize = a})

-- | The type of replication this instance uses. This can be either
-- **ASYNCHRONOUS** or **SYNCHRONOUS**. (Deprecated) This property was only
-- applicable to First Generation instances.
sReplicationType :: Lens' Settings (Maybe SettingsReplicationType)
sReplicationType
  = lens _sReplicationType
      (\ s a -> s{_sReplicationType = a})

-- | The activation policy specifies when the instance is activated; it is
-- applicable only when the instance state is RUNNABLE. Valid values:
-- **ALWAYS**: The instance is on, and remains so even in the absence of
-- connection requests. **NEVER**: The instance is off; it is not
-- activated, even if a connection request arrives.
sActivationPolicy :: Lens' Settings (Maybe SettingsActivationPolicy)
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

-- | Insights configuration, for now relevant only for Postgres.
sInsightsConfig :: Lens' Settings (Maybe InsightsConfig)
sInsightsConfig
  = lens _sInsightsConfig
      (\ s a -> s{_sInsightsConfig = a})

-- | Active Directory configuration, relevant only for Cloud SQL for SQL
-- Server.
sActiveDirectoryConfig :: Lens' Settings (Maybe SQLActiveDirectoryConfig)
sActiveDirectoryConfig
  = lens _sActiveDirectoryConfig
      (\ s a -> s{_sActiveDirectoryConfig = a})

-- | The size of data disk, in GB. The data disk size minimum is 10GB.
sDataDiskSizeGb :: Lens' Settings (Maybe Int64)
sDataDiskSizeGb
  = lens _sDataDiskSizeGb
      (\ s a -> s{_sDataDiskSizeGb = a})
      . mapping _Coerce

-- | The App Engine app IDs that can access this instance. (Deprecated)
-- Applied to First Generation instances only.
sAuthorizedGaeApplications :: Lens' Settings [Text]
sAuthorizedGaeApplications
  = lens _sAuthorizedGaeApplications
      (\ s a -> s{_sAuthorizedGaeApplications = a})
      . _Default
      . _Coerce

-- | This is always **sql#settings**.
sKind :: Lens' Settings (Maybe Text)
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The pricing plan for this instance. This can be either **PER_USE** or
-- **PACKAGE**. Only **PER_USE** is supported for Second Generation
-- instances.
sPricingPlan :: Lens' Settings (Maybe SettingsPricingPlan)
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

-- | The name of server Instance collation.
sCollation :: Lens' Settings (Maybe Text)
sCollation
  = lens _sCollation (\ s a -> s{_sCollation = a})

-- | The maintenance window for this instance. This specifies when the
-- instance can be restarted for maintenance purposes.
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

-- | User-provided labels, represented as a dictionary where each label is a
-- single key value pair.
sUserLabels :: Lens' Settings (Maybe SettingsUserLabels)
sUserLabels
  = lens _sUserLabels (\ s a -> s{_sUserLabels = a})

-- | The tier (or machine type) for this instance, for example
-- **db-custom-1-3840**.
sTier :: Lens' Settings (Maybe Text)
sTier = lens _sTier (\ s a -> s{_sTier = a})

-- | The database flags passed to the instance at startup.
sDatabaseFlags :: Lens' Settings [DatabaseFlags]
sDatabaseFlags
  = lens _sDatabaseFlags
      (\ s a -> s{_sDatabaseFlags = a})
      . _Default
      . _Coerce

-- | The type of data disk: **PD_SSD** (default) or **PD_HDD**.
sDataDiskType :: Lens' Settings (Maybe SettingsDataDiskType)
sDataDiskType
  = lens _sDataDiskType
      (\ s a -> s{_sDataDiskType = a})

-- | Deny maintenance periods
sDenyMaintenancePeriods :: Lens' Settings [DenyMaintenancePeriod]
sDenyMaintenancePeriods
  = lens _sDenyMaintenancePeriods
      (\ s a -> s{_sDenyMaintenancePeriods = a})
      . _Default
      . _Coerce

-- | Configuration specific to read replica instances. Indicates whether
-- database flags for crash-safe replication are enabled. This property was
-- only applicable to First Generation instances.
sCrashSafeReplicationEnabled :: Lens' Settings (Maybe Bool)
sCrashSafeReplicationEnabled
  = lens _sCrashSafeReplicationEnabled
      (\ s a -> s{_sCrashSafeReplicationEnabled = a})

-- | The location preference settings. This allows the instance to be located
-- as near as possible to Compute Engine zone for better performance.
sLocationPreference :: Lens' Settings (Maybe LocationPreference)
sLocationPreference
  = lens _sLocationPreference
      (\ s a -> s{_sLocationPreference = a})

-- | The daily backup configuration for the instance.
sBackupConfiguration :: Lens' Settings (Maybe BackupConfiguration)
sBackupConfiguration
  = lens _sBackupConfiguration
      (\ s a -> s{_sBackupConfiguration = a})

-- | Availability type. Potential values: **ZONAL**: The instance serves data
-- from only one zone. Outages in that zone affect data accessibility.
-- **REGIONAL**: The instance can serve data from more than one zone in a
-- region (it is highly available). For more information, see [Overview of
-- the High Availability
-- Configuration](https:\/\/cloud.google.com\/sql\/docs\/mysql\/high-availability).
sAvailabilityType :: Lens' Settings (Maybe SettingsAvailabilityType)
sAvailabilityType
  = lens _sAvailabilityType
      (\ s a -> s{_sAvailabilityType = a})

-- | The maximum size to which storage capacity can be automatically
-- increased. The default value is 0, which specifies that there is no
-- limit.
sStorageAutoResizeLimit :: Lens' Settings (Maybe Int64)
sStorageAutoResizeLimit
  = lens _sStorageAutoResizeLimit
      (\ s a -> s{_sStorageAutoResizeLimit = a})
      . mapping _Coerce

instance FromJSON Settings where
        parseJSON
          = withObject "Settings"
              (\ o ->
                 Settings' <$>
                   (o .:? "storageAutoResize") <*>
                     (o .:? "replicationType")
                     <*> (o .:? "activationPolicy")
                     <*> (o .:? "settingsVersion")
                     <*> (o .:? "insightsConfig")
                     <*> (o .:? "activeDirectoryConfig")
                     <*> (o .:? "dataDiskSizeGb")
                     <*> (o .:? "authorizedGaeApplications" .!= mempty)
                     <*> (o .:? "kind")
                     <*> (o .:? "pricingPlan")
                     <*> (o .:? "ipConfiguration")
                     <*> (o .:? "collation")
                     <*> (o .:? "maintenanceWindow")
                     <*> (o .:? "databaseReplicationEnabled")
                     <*> (o .:? "userLabels")
                     <*> (o .:? "tier")
                     <*> (o .:? "databaseFlags" .!= mempty)
                     <*> (o .:? "dataDiskType")
                     <*> (o .:? "denyMaintenancePeriods" .!= mempty)
                     <*> (o .:? "crashSafeReplicationEnabled")
                     <*> (o .:? "locationPreference")
                     <*> (o .:? "backupConfiguration")
                     <*> (o .:? "availabilityType")
                     <*> (o .:? "storageAutoResizeLimit"))

instance ToJSON Settings where
        toJSON Settings'{..}
          = object
              (catMaybes
                 [("storageAutoResize" .=) <$> _sStorageAutoResize,
                  ("replicationType" .=) <$> _sReplicationType,
                  ("activationPolicy" .=) <$> _sActivationPolicy,
                  ("settingsVersion" .=) <$> _sSettingsVersion,
                  ("insightsConfig" .=) <$> _sInsightsConfig,
                  ("activeDirectoryConfig" .=) <$>
                    _sActiveDirectoryConfig,
                  ("dataDiskSizeGb" .=) <$> _sDataDiskSizeGb,
                  ("authorizedGaeApplications" .=) <$>
                    _sAuthorizedGaeApplications,
                  ("kind" .=) <$> _sKind,
                  ("pricingPlan" .=) <$> _sPricingPlan,
                  ("ipConfiguration" .=) <$> _sIPConfiguration,
                  ("collation" .=) <$> _sCollation,
                  ("maintenanceWindow" .=) <$> _sMaintenanceWindow,
                  ("databaseReplicationEnabled" .=) <$>
                    _sDatabaseReplicationEnabled,
                  ("userLabels" .=) <$> _sUserLabels,
                  ("tier" .=) <$> _sTier,
                  ("databaseFlags" .=) <$> _sDatabaseFlags,
                  ("dataDiskType" .=) <$> _sDataDiskType,
                  ("denyMaintenancePeriods" .=) <$>
                    _sDenyMaintenancePeriods,
                  ("crashSafeReplicationEnabled" .=) <$>
                    _sCrashSafeReplicationEnabled,
                  ("locationPreference" .=) <$> _sLocationPreference,
                  ("backupConfiguration" .=) <$> _sBackupConfiguration,
                  ("availabilityType" .=) <$> _sAvailabilityType,
                  ("storageAutoResizeLimit" .=) <$>
                    _sStorageAutoResizeLimit])

-- | Rotate server CA request.
--
-- /See:/ 'instancesRotateServerCaRequest' smart constructor.
newtype InstancesRotateServerCaRequest =
  InstancesRotateServerCaRequest'
    { _irscrRotateServerCaContext :: Maybe RotateServerCaContext
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesRotateServerCaRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irscrRotateServerCaContext'
instancesRotateServerCaRequest
    :: InstancesRotateServerCaRequest
instancesRotateServerCaRequest =
  InstancesRotateServerCaRequest' {_irscrRotateServerCaContext = Nothing}


-- | Contains details about the rotate server CA operation.
irscrRotateServerCaContext :: Lens' InstancesRotateServerCaRequest (Maybe RotateServerCaContext)
irscrRotateServerCaContext
  = lens _irscrRotateServerCaContext
      (\ s a -> s{_irscrRotateServerCaContext = a})

instance FromJSON InstancesRotateServerCaRequest
         where
        parseJSON
          = withObject "InstancesRotateServerCaRequest"
              (\ o ->
                 InstancesRotateServerCaRequest' <$>
                   (o .:? "rotateServerCaContext"))

instance ToJSON InstancesRotateServerCaRequest where
        toJSON InstancesRotateServerCaRequest'{..}
          = object
              (catMaybes
                 [("rotateServerCaContext" .=) <$>
                    _irscrRotateServerCaContext])

-- | Database instance IP Mapping.
--
-- /See:/ 'ipMApping' smart constructor.
data IPMApping =
  IPMApping'
    { _imaIPAddress :: !(Maybe Text)
    , _imaTimeToRetire :: !(Maybe DateTime')
    , _imaType :: !(Maybe IPMAppingType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_imaIPAddress = Nothing, _imaTimeToRetire = Nothing, _imaType = Nothing}


-- | The IP address assigned.
imaIPAddress :: Lens' IPMApping (Maybe Text)
imaIPAddress
  = lens _imaIPAddress (\ s a -> s{_imaIPAddress = a})

-- | The due time for this IP to be retired in [RFC
-- 3339](https:\/\/tools.ietf.org\/html\/rfc3339) format, for example
-- **2012-11-15T16:19:00.094Z**. This field is only available when the IP
-- is scheduled to be retired.
imaTimeToRetire :: Lens' IPMApping (Maybe UTCTime)
imaTimeToRetire
  = lens _imaTimeToRetire
      (\ s a -> s{_imaTimeToRetire = a})
      . mapping _DateTime

-- | The type of this IP address. A **PRIMARY** address is a public address
-- that can accept incoming connections. A **PRIVATE** address is a private
-- address that can accept incoming connections. An **OUTGOING** address is
-- the source address of connections originating from the instance, if
-- supported.
imaType :: Lens' IPMApping (Maybe IPMAppingType)
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

-- | Represents a SQL database on the Cloud SQL instance.
--
-- /See:/ 'database' smart constructor.
data Database =
  Database'
    { _dSQLserverDatabaseDetails :: !(Maybe SQLServerDatabaseDetails)
    , _dEtag :: !(Maybe Text)
    , _dProject :: !(Maybe Text)
    , _dKind :: !(Maybe Text)
    , _dCollation :: !(Maybe Text)
    , _dSelfLink :: !(Maybe Text)
    , _dName :: !(Maybe Text)
    , _dCharSet :: !(Maybe Text)
    , _dInstance :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Database' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSQLserverDatabaseDetails'
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
    { _dSQLserverDatabaseDetails = Nothing
    , _dEtag = Nothing
    , _dProject = Nothing
    , _dKind = Nothing
    , _dCollation = Nothing
    , _dSelfLink = Nothing
    , _dName = Nothing
    , _dCharSet = Nothing
    , _dInstance = Nothing
    }


dSQLserverDatabaseDetails :: Lens' Database (Maybe SQLServerDatabaseDetails)
dSQLserverDatabaseDetails
  = lens _dSQLserverDatabaseDetails
      (\ s a -> s{_dSQLserverDatabaseDetails = a})

-- | This field is deprecated and will be removed from a future version of
-- the API.
dEtag :: Lens' Database (Maybe Text)
dEtag = lens _dEtag (\ s a -> s{_dEtag = a})

-- | The project ID of the project containing the Cloud SQL database. The
-- Google apps domain is prefixed if applicable.
dProject :: Lens' Database (Maybe Text)
dProject = lens _dProject (\ s a -> s{_dProject = a})

-- | This is always **sql#database**.
dKind :: Lens' Database (Maybe Text)
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | The Cloud SQL collation value.
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

-- | The Cloud SQL charset value.
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
                   (o .:? "sqlserverDatabaseDetails") <*> (o .:? "etag")
                     <*> (o .:? "project")
                     <*> (o .:? "kind")
                     <*> (o .:? "collation")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "charset")
                     <*> (o .:? "instance"))

instance ToJSON Database where
        toJSON Database'{..}
          = object
              (catMaybes
                 [("sqlserverDatabaseDetails" .=) <$>
                    _dSQLserverDatabaseDetails,
                  ("etag" .=) <$> _dEtag, ("project" .=) <$> _dProject,
                  ("kind" .=) <$> _dKind,
                  ("collation" .=) <$> _dCollation,
                  ("selfLink" .=) <$> _dSelfLink,
                  ("name" .=) <$> _dName, ("charset" .=) <$> _dCharSet,
                  ("instance" .=) <$> _dInstance])

-- | SslCerts create ephemeral certificate request.
--
-- /See:/ 'sslCertsCreateEphemeralRequest' smart constructor.
data SSLCertsCreateEphemeralRequest =
  SSLCertsCreateEphemeralRequest'
    { _sccerAccessToken :: !(Maybe Text)
    , _sccerPublicKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertsCreateEphemeralRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sccerAccessToken'
--
-- * 'sccerPublicKey'
sslCertsCreateEphemeralRequest
    :: SSLCertsCreateEphemeralRequest
sslCertsCreateEphemeralRequest =
  SSLCertsCreateEphemeralRequest'
    {_sccerAccessToken = Nothing, _sccerPublicKey = Nothing}


-- | Access token to include in the signed certificate.
sccerAccessToken :: Lens' SSLCertsCreateEphemeralRequest (Maybe Text)
sccerAccessToken
  = lens _sccerAccessToken
      (\ s a -> s{_sccerAccessToken = a})

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
                   (o .:? "access_token") <*> (o .:? "public_key"))

instance ToJSON SSLCertsCreateEphemeralRequest where
        toJSON SSLCertsCreateEphemeralRequest'{..}
          = object
              (catMaybes
                 [("access_token" .=) <$> _sccerAccessToken,
                  ("public_key" .=) <$> _sccerPublicKey])

-- | Binary log coordinates.
--
-- /See:/ 'binLogCoordinates' smart constructor.
data BinLogCoordinates =
  BinLogCoordinates'
    { _blcBinLogPosition :: !(Maybe (Textual Int64))
    , _blcKind :: !(Maybe Text)
    , _blcBinLogFileName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    , _blcKind = Nothing
    , _blcBinLogFileName = Nothing
    }


-- | Position (offset) within the binary log file.
blcBinLogPosition :: Lens' BinLogCoordinates (Maybe Int64)
blcBinLogPosition
  = lens _blcBinLogPosition
      (\ s a -> s{_blcBinLogPosition = a})
      . mapping _Coerce

-- | This is always *sql#binLogCoordinates*.
blcKind :: Lens' BinLogCoordinates (Maybe Text)
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
                   (o .:? "binLogPosition") <*> (o .:? "kind") <*>
                     (o .:? "binLogFileName"))

instance ToJSON BinLogCoordinates where
        toJSON BinLogCoordinates'{..}
          = object
              (catMaybes
                 [("binLogPosition" .=) <$> _blcBinLogPosition,
                  ("kind" .=) <$> _blcKind,
                  ("binLogFileName" .=) <$> _blcBinLogFileName])

-- | The name and status of the failover replica.
--
-- /See:/ 'databaseInstanceFailoverReplica' smart constructor.
data DatabaseInstanceFailoverReplica =
  DatabaseInstanceFailoverReplica'
    { _difrName :: !(Maybe Text)
    , _difrAvailable :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_difrName = Nothing, _difrAvailable = Nothing}


-- | The name of the failover replica. If specified at instance creation, a
-- failover replica is created for the instance. The name doesn\'t include
-- the project ID.
difrName :: Lens' DatabaseInstanceFailoverReplica (Maybe Text)
difrName = lens _difrName (\ s a -> s{_difrName = a})

-- | The availability status of the failover replica. A false status
-- indicates that the failover replica is out of sync. The primary instance
-- can only failover to the failover replica when the status is true.
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

-- | Represents a Sql Server user on the Cloud SQL instance.
--
-- /See:/ 'sQLServerUserDetails' smart constructor.
data SQLServerUserDetails =
  SQLServerUserDetails'
    { _sqlsudServerRoles :: !(Maybe [Text])
    , _sqlsudDisabled :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SQLServerUserDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqlsudServerRoles'
--
-- * 'sqlsudDisabled'
sQLServerUserDetails
    :: SQLServerUserDetails
sQLServerUserDetails =
  SQLServerUserDetails'
    {_sqlsudServerRoles = Nothing, _sqlsudDisabled = Nothing}


-- | The server roles for this user
sqlsudServerRoles :: Lens' SQLServerUserDetails [Text]
sqlsudServerRoles
  = lens _sqlsudServerRoles
      (\ s a -> s{_sqlsudServerRoles = a})
      . _Default
      . _Coerce

-- | If the user has been disabled
sqlsudDisabled :: Lens' SQLServerUserDetails (Maybe Bool)
sqlsudDisabled
  = lens _sqlsudDisabled
      (\ s a -> s{_sqlsudDisabled = a})

instance FromJSON SQLServerUserDetails where
        parseJSON
          = withObject "SQLServerUserDetails"
              (\ o ->
                 SQLServerUserDetails' <$>
                   (o .:? "serverRoles" .!= mempty) <*>
                     (o .:? "disabled"))

instance ToJSON SQLServerUserDetails where
        toJSON SQLServerUserDetails'{..}
          = object
              (catMaybes
                 [("serverRoles" .=) <$> _sqlsudServerRoles,
                  ("disabled" .=) <$> _sqlsudDisabled])

-- | Tiers list response.
--
-- /See:/ 'tiersListResponse' smart constructor.
data TiersListResponse =
  TiersListResponse'
    { _tlrKind :: !(Maybe Text)
    , _tlrItems :: !(Maybe [Tier])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TiersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlrKind'
--
-- * 'tlrItems'
tiersListResponse
    :: TiersListResponse
tiersListResponse = TiersListResponse' {_tlrKind = Nothing, _tlrItems = Nothing}


-- | This is always *sql#tiersList*.
tlrKind :: Lens' TiersListResponse (Maybe Text)
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
                   (o .:? "kind") <*> (o .:? "items" .!= mempty))

instance ToJSON TiersListResponse where
        toJSON TiersListResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _tlrKind,
                  ("items" .=) <$> _tlrItems])

-- | User list response.
--
-- /See:/ 'usersListResponse' smart constructor.
data UsersListResponse =
  UsersListResponse'
    { _ulrNextPageToken :: !(Maybe Text)
    , _ulrKind :: !(Maybe Text)
    , _ulrItems :: !(Maybe [User])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_ulrNextPageToken = Nothing, _ulrKind = Nothing, _ulrItems = Nothing}


-- | An identifier that uniquely identifies the operation. You can use this
-- identifier to retrieve the Operations resource that has information
-- about the operation.
ulrNextPageToken :: Lens' UsersListResponse (Maybe Text)
ulrNextPageToken
  = lens _ulrNextPageToken
      (\ s a -> s{_ulrNextPageToken = a})

-- | This is always *sql#usersList*.
ulrKind :: Lens' UsersListResponse (Maybe Text)
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
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON UsersListResponse where
        toJSON UsersListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ulrNextPageToken,
                  ("kind" .=) <$> _ulrKind,
                  ("items" .=) <$> _ulrItems])

-- | Database instance export context.
--
-- /See:/ 'exportContext' smart constructor.
data ExportContext =
  ExportContext'
    { _ecCSVExportOptions :: !(Maybe ExportContextCSVExportOptions)
    , _ecKind :: !(Maybe Text)
    , _ecURI :: !(Maybe Text)
    , _ecFileType :: !(Maybe ExportContextFileType)
    , _ecOffLoad :: !(Maybe Bool)
    , _ecSQLExportOptions :: !(Maybe ExportContextSQLExportOptions)
    , _ecDatabases :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'ecOffLoad'
--
-- * 'ecSQLExportOptions'
--
-- * 'ecDatabases'
exportContext
    :: ExportContext
exportContext =
  ExportContext'
    { _ecCSVExportOptions = Nothing
    , _ecKind = Nothing
    , _ecURI = Nothing
    , _ecFileType = Nothing
    , _ecOffLoad = Nothing
    , _ecSQLExportOptions = Nothing
    , _ecDatabases = Nothing
    }


-- | Options for exporting data as CSV. **MySQL** and **PostgreSQL**
-- instances only.
ecCSVExportOptions :: Lens' ExportContext (Maybe ExportContextCSVExportOptions)
ecCSVExportOptions
  = lens _ecCSVExportOptions
      (\ s a -> s{_ecCSVExportOptions = a})

-- | This is always **sql#exportContext**.
ecKind :: Lens' ExportContext (Maybe Text)
ecKind = lens _ecKind (\ s a -> s{_ecKind = a})

-- | The path to the file in Google Cloud Storage where the export will be
-- stored. The URI is in the form **gs:\/\/bucketName\/fileName**. If the
-- file already exists, the request succeeds, but the operation fails. If
-- **fileType** is **SQL** and the filename ends with .gz, the contents are
-- compressed.
ecURI :: Lens' ExportContext (Maybe Text)
ecURI = lens _ecURI (\ s a -> s{_ecURI = a})

-- | The file type for the specified uri. **SQL**: The file contains SQL
-- statements. **CSV**: The file contains CSV data. **BAK**: The file
-- contains backup data for a SQL Server instance.
ecFileType :: Lens' ExportContext (Maybe ExportContextFileType)
ecFileType
  = lens _ecFileType (\ s a -> s{_ecFileType = a})

-- | Option for export offload.
ecOffLoad :: Lens' ExportContext (Maybe Bool)
ecOffLoad
  = lens _ecOffLoad (\ s a -> s{_ecOffLoad = a})

-- | Options for exporting data as SQL statements.
ecSQLExportOptions :: Lens' ExportContext (Maybe ExportContextSQLExportOptions)
ecSQLExportOptions
  = lens _ecSQLExportOptions
      (\ s a -> s{_ecSQLExportOptions = a})

-- | Databases to be exported. **MySQL instances:** If **fileType** is
-- **SQL** and no database is specified, all databases are exported, except
-- for the **mysql** system database. If **fileType** is **CSV**, you can
-- specify one database, either by using this property or by using the
-- **csvExportOptions.selectQuery** property, which takes precedence over
-- this property. **PostgreSQL instances:** You must specify one database
-- to be exported. If **fileType** is **CSV**, this database must match the
-- one specified in the **csvExportOptions.selectQuery** property. **SQL
-- Server instances:** You must specify one database to be exported, and
-- the **fileType** must be **BAK**.
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
                   (o .:? "csvExportOptions") <*> (o .:? "kind") <*>
                     (o .:? "uri")
                     <*> (o .:? "fileType")
                     <*> (o .:? "offload")
                     <*> (o .:? "sqlExportOptions")
                     <*> (o .:? "databases" .!= mempty))

instance ToJSON ExportContext where
        toJSON ExportContext'{..}
          = object
              (catMaybes
                 [("csvExportOptions" .=) <$> _ecCSVExportOptions,
                  ("kind" .=) <$> _ecKind, ("uri" .=) <$> _ecURI,
                  ("fileType" .=) <$> _ecFileType,
                  ("offload" .=) <$> _ecOffLoad,
                  ("sqlExportOptions" .=) <$> _ecSQLExportOptions,
                  ("databases" .=) <$> _ecDatabases])

-- | Database instance operation errors list wrapper.
--
-- /See:/ 'operationErrors' smart constructor.
data OperationErrors =
  OperationErrors'
    { _oeKind :: !(Maybe Text)
    , _oeErrors :: !(Maybe [OperationError])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeKind'
--
-- * 'oeErrors'
operationErrors
    :: OperationErrors
operationErrors = OperationErrors' {_oeKind = Nothing, _oeErrors = Nothing}


-- | This is always **sql#operationErrors**.
oeKind :: Lens' OperationErrors (Maybe Text)
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
                   (o .:? "kind") <*> (o .:? "errors" .!= mempty))

instance ToJSON OperationErrors where
        toJSON OperationErrors'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oeKind,
                  ("errors" .=) <$> _oeErrors])

-- | SslCerts list response.
--
-- /See:/ 'sslCertsListResponse' smart constructor.
data SSLCertsListResponse =
  SSLCertsListResponse'
    { _sclrKind :: !(Maybe Text)
    , _sclrItems :: !(Maybe [SSLCert])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  SSLCertsListResponse' {_sclrKind = Nothing, _sclrItems = Nothing}


-- | This is always *sql#sslCertsList*.
sclrKind :: Lens' SSLCertsListResponse (Maybe Text)
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
                   (o .:? "kind") <*> (o .:? "items" .!= mempty))

instance ToJSON SSLCertsListResponse where
        toJSON SSLCertsListResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _sclrKind,
                  ("items" .=) <$> _sclrItems])

-- | Disk encryption status for an instance.
--
-- /See:/ 'diskEncryptionStatus' smart constructor.
data DiskEncryptionStatus =
  DiskEncryptionStatus'
    { _desKmsKeyVersionName :: !(Maybe Text)
    , _desKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiskEncryptionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desKmsKeyVersionName'
--
-- * 'desKind'
diskEncryptionStatus
    :: DiskEncryptionStatus
diskEncryptionStatus =
  DiskEncryptionStatus' {_desKmsKeyVersionName = Nothing, _desKind = Nothing}


-- | KMS key version used to encrypt the Cloud SQL instance resource
desKmsKeyVersionName :: Lens' DiskEncryptionStatus (Maybe Text)
desKmsKeyVersionName
  = lens _desKmsKeyVersionName
      (\ s a -> s{_desKmsKeyVersionName = a})

-- | This is always **sql#diskEncryptionStatus**.
desKind :: Lens' DiskEncryptionStatus (Maybe Text)
desKind = lens _desKind (\ s a -> s{_desKind = a})

instance FromJSON DiskEncryptionStatus where
        parseJSON
          = withObject "DiskEncryptionStatus"
              (\ o ->
                 DiskEncryptionStatus' <$>
                   (o .:? "kmsKeyVersionName") <*> (o .:? "kind"))

instance ToJSON DiskEncryptionStatus where
        toJSON DiskEncryptionStatus'{..}
          = object
              (catMaybes
                 [("kmsKeyVersionName" .=) <$> _desKmsKeyVersionName,
                  ("kind" .=) <$> _desKind])

-- | Active Directory configuration, relevant only for Cloud SQL for SQL
-- Server.
--
-- /See:/ 'sQLActiveDirectoryConfig' smart constructor.
data SQLActiveDirectoryConfig =
  SQLActiveDirectoryConfig'
    { _sqladcKind :: !(Maybe Text)
    , _sqladcDomain :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SQLActiveDirectoryConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqladcKind'
--
-- * 'sqladcDomain'
sQLActiveDirectoryConfig
    :: SQLActiveDirectoryConfig
sQLActiveDirectoryConfig =
  SQLActiveDirectoryConfig' {_sqladcKind = Nothing, _sqladcDomain = Nothing}


-- | This is always sql#activeDirectoryConfig.
sqladcKind :: Lens' SQLActiveDirectoryConfig (Maybe Text)
sqladcKind
  = lens _sqladcKind (\ s a -> s{_sqladcKind = a})

-- | The name of the domain (e.g., mydomain.com).
sqladcDomain :: Lens' SQLActiveDirectoryConfig (Maybe Text)
sqladcDomain
  = lens _sqladcDomain (\ s a -> s{_sqladcDomain = a})

instance FromJSON SQLActiveDirectoryConfig where
        parseJSON
          = withObject "SQLActiveDirectoryConfig"
              (\ o ->
                 SQLActiveDirectoryConfig' <$>
                   (o .:? "kind") <*> (o .:? "domain"))

instance ToJSON SQLActiveDirectoryConfig where
        toJSON SQLActiveDirectoryConfig'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _sqladcKind,
                  ("domain" .=) <$> _sqladcDomain])

-- | SslCerts insert request.
--
-- /See:/ 'sslCertsInsertRequest' smart constructor.
newtype SSLCertsInsertRequest =
  SSLCertsInsertRequest'
    { _scirCommonName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertsInsertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scirCommonName'
sslCertsInsertRequest
    :: SSLCertsInsertRequest
sslCertsInsertRequest = SSLCertsInsertRequest' {_scirCommonName = Nothing}


-- | User supplied name. Must be a distinct name from the other certificates
-- for this instance.
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
data IPConfiguration =
  IPConfiguration'
    { _icAuthorizedNetworks :: !(Maybe [ACLEntry])
    , _icPrivateNetwork :: !(Maybe Text)
    , _icRequireSSL :: !(Maybe Bool)
    , _icIPv4Enabled :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IPConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icAuthorizedNetworks'
--
-- * 'icPrivateNetwork'
--
-- * 'icRequireSSL'
--
-- * 'icIPv4Enabled'
ipConfiguration
    :: IPConfiguration
ipConfiguration =
  IPConfiguration'
    { _icAuthorizedNetworks = Nothing
    , _icPrivateNetwork = Nothing
    , _icRequireSSL = Nothing
    , _icIPv4Enabled = Nothing
    }


-- | The list of external networks that are allowed to connect to the
-- instance using the IP. In \'CIDR\' notation, also known as \'slash\'
-- notation (for example: **192.168.100.0\/24**).
icAuthorizedNetworks :: Lens' IPConfiguration [ACLEntry]
icAuthorizedNetworks
  = lens _icAuthorizedNetworks
      (\ s a -> s{_icAuthorizedNetworks = a})
      . _Default
      . _Coerce

-- | The resource link for the VPC network from which the Cloud SQL instance
-- is accessible for private IP. For example,
-- **\/projects\/myProject\/global\/networks\/default**. This setting can
-- be updated, but it cannot be removed after it is set.
icPrivateNetwork :: Lens' IPConfiguration (Maybe Text)
icPrivateNetwork
  = lens _icPrivateNetwork
      (\ s a -> s{_icPrivateNetwork = a})

-- | Whether SSL connections over IP are enforced or not.
icRequireSSL :: Lens' IPConfiguration (Maybe Bool)
icRequireSSL
  = lens _icRequireSSL (\ s a -> s{_icRequireSSL = a})

-- | Whether the instance is assigned a public IP address or not.
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
                     (o .:? "privateNetwork")
                     <*> (o .:? "requireSsl")
                     <*> (o .:? "ipv4Enabled"))

instance ToJSON IPConfiguration where
        toJSON IPConfiguration'{..}
          = object
              (catMaybes
                 [("authorizedNetworks" .=) <$> _icAuthorizedNetworks,
                  ("privateNetwork" .=) <$> _icPrivateNetwork,
                  ("requireSsl" .=) <$> _icRequireSSL,
                  ("ipv4Enabled" .=) <$> _icIPv4Enabled])

-- | Maintenance window. This specifies when a Cloud SQL instance is
-- restarted for system maintenance purposes.
--
-- /See:/ 'maintenanceWindow' smart constructor.
data MaintenanceWindow =
  MaintenanceWindow'
    { _mwKind :: !(Maybe Text)
    , _mwDay :: !(Maybe (Textual Int32))
    , _mwHour :: !(Maybe (Textual Int32))
    , _mwUpdateTrack :: !(Maybe MaintenanceWindowUpdateTrack)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    { _mwKind = Nothing
    , _mwDay = Nothing
    , _mwHour = Nothing
    , _mwUpdateTrack = Nothing
    }


-- | This is always **sql#maintenanceWindow**.
mwKind :: Lens' MaintenanceWindow (Maybe Text)
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

-- | Maintenance timing setting: **canary** (Earlier) or **stable** (Later).
-- [Learn more]
-- (https:\/\/cloud.google.com\/sql\/docs\/mysql\/instance-settings#maintenance-timing-2ndgen).
mwUpdateTrack :: Lens' MaintenanceWindow (Maybe MaintenanceWindowUpdateTrack)
mwUpdateTrack
  = lens _mwUpdateTrack
      (\ s a -> s{_mwUpdateTrack = a})

instance FromJSON MaintenanceWindow where
        parseJSON
          = withObject "MaintenanceWindow"
              (\ o ->
                 MaintenanceWindow' <$>
                   (o .:? "kind") <*> (o .:? "day") <*> (o .:? "hour")
                     <*> (o .:? "updateTrack"))

instance ToJSON MaintenanceWindow where
        toJSON MaintenanceWindow'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _mwKind, ("day" .=) <$> _mwDay,
                  ("hour" .=) <$> _mwHour,
                  ("updateTrack" .=) <$> _mwUpdateTrack])

-- | Options for importing data as CSV.
--
-- /See:/ 'importContextCSVImportOptions' smart constructor.
data ImportContextCSVImportOptions =
  ImportContextCSVImportOptions'
    { _iccioColumns :: !(Maybe [Text])
    , _iccioTable :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_iccioColumns = Nothing, _iccioTable = Nothing}


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

-- | Instance rotate server CA context.
--
-- /See:/ 'rotateServerCaContext' smart constructor.
data RotateServerCaContext =
  RotateServerCaContext'
    { _rsccNextVersion :: !(Maybe Text)
    , _rsccKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RotateServerCaContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsccNextVersion'
--
-- * 'rsccKind'
rotateServerCaContext
    :: RotateServerCaContext
rotateServerCaContext =
  RotateServerCaContext' {_rsccNextVersion = Nothing, _rsccKind = Nothing}


-- | The fingerprint of the next version to be rotated to. If left
-- unspecified, will be rotated to the most recently added server CA
-- version.
rsccNextVersion :: Lens' RotateServerCaContext (Maybe Text)
rsccNextVersion
  = lens _rsccNextVersion
      (\ s a -> s{_rsccNextVersion = a})

-- | This is always *sql#rotateServerCaContext*.
rsccKind :: Lens' RotateServerCaContext (Maybe Text)
rsccKind = lens _rsccKind (\ s a -> s{_rsccKind = a})

instance FromJSON RotateServerCaContext where
        parseJSON
          = withObject "RotateServerCaContext"
              (\ o ->
                 RotateServerCaContext' <$>
                   (o .:? "nextVersion") <*> (o .:? "kind"))

instance ToJSON RotateServerCaContext where
        toJSON RotateServerCaContext'{..}
          = object
              (catMaybes
                 [("nextVersion" .=) <$> _rsccNextVersion,
                  ("kind" .=) <$> _rsccKind])

-- | Options for exporting data as CSV. **MySQL** and **PostgreSQL**
-- instances only.
--
-- /See:/ 'exportContextCSVExportOptions' smart constructor.
newtype ExportContextCSVExportOptions =
  ExportContextCSVExportOptions'
    { _ecceoSelectQuery :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportContextCSVExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecceoSelectQuery'
exportContextCSVExportOptions
    :: ExportContextCSVExportOptions
exportContextCSVExportOptions =
  ExportContextCSVExportOptions' {_ecceoSelectQuery = Nothing}


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
data User =
  User'
    { _uEtag :: !(Maybe Text)
    , _uProject :: !(Maybe Text)
    , _uKind :: !(Maybe Text)
    , _uSQLserverUserDetails :: !(Maybe SQLServerUserDetails)
    , _uName :: !(Maybe Text)
    , _uPassword :: !(Maybe Text)
    , _uHost :: !(Maybe Text)
    , _uType :: !(Maybe UserType)
    , _uInstance :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'uSQLserverUserDetails'
--
-- * 'uName'
--
-- * 'uPassword'
--
-- * 'uHost'
--
-- * 'uType'
--
-- * 'uInstance'
user
    :: User
user =
  User'
    { _uEtag = Nothing
    , _uProject = Nothing
    , _uKind = Nothing
    , _uSQLserverUserDetails = Nothing
    , _uName = Nothing
    , _uPassword = Nothing
    , _uHost = Nothing
    , _uType = Nothing
    , _uInstance = Nothing
    }


-- | This field is deprecated and will be removed from a future version of
-- the API.
uEtag :: Lens' User (Maybe Text)
uEtag = lens _uEtag (\ s a -> s{_uEtag = a})

-- | The project ID of the project containing the Cloud SQL database. The
-- Google apps domain is prefixed if applicable. Can be omitted for
-- *update* since it is already specified on the URL.
uProject :: Lens' User (Maybe Text)
uProject = lens _uProject (\ s a -> s{_uProject = a})

-- | This is always *sql#user*.
uKind :: Lens' User (Maybe Text)
uKind = lens _uKind (\ s a -> s{_uKind = a})

uSQLserverUserDetails :: Lens' User (Maybe SQLServerUserDetails)
uSQLserverUserDetails
  = lens _uSQLserverUserDetails
      (\ s a -> s{_uSQLserverUserDetails = a})

-- | The name of the user in the Cloud SQL instance. Can be omitted for
-- *update* since it is already specified in the URL.
uName :: Lens' User (Maybe Text)
uName = lens _uName (\ s a -> s{_uName = a})

-- | The password for the user.
uPassword :: Lens' User (Maybe Text)
uPassword
  = lens _uPassword (\ s a -> s{_uPassword = a})

-- | The host name from which the user can connect. For *insert* operations,
-- host defaults to an empty string. For *update* operations, host is
-- specified as part of the request URL. The host name cannot be updated
-- after insertion.
uHost :: Lens' User (Maybe Text)
uHost = lens _uHost (\ s a -> s{_uHost = a})

-- | The user type. It determines the method to authenticate the user during
-- login. The default is the database\'s built-in user type.
uType :: Lens' User (Maybe UserType)
uType = lens _uType (\ s a -> s{_uType = a})

-- | The name of the Cloud SQL instance. This does not include the project
-- ID. Can be omitted for *update* since it is already specified on the
-- URL.
uInstance :: Lens' User (Maybe Text)
uInstance
  = lens _uInstance (\ s a -> s{_uInstance = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$>
                   (o .:? "etag") <*> (o .:? "project") <*>
                     (o .:? "kind")
                     <*> (o .:? "sqlserverUserDetails")
                     <*> (o .:? "name")
                     <*> (o .:? "password")
                     <*> (o .:? "host")
                     <*> (o .:? "type")
                     <*> (o .:? "instance"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _uEtag,
                  ("project" .=) <$> _uProject, ("kind" .=) <$> _uKind,
                  ("sqlserverUserDetails" .=) <$>
                    _uSQLserverUserDetails,
                  ("name" .=) <$> _uName,
                  ("password" .=) <$> _uPassword,
                  ("host" .=) <$> _uHost, ("type" .=) <$> _uType,
                  ("instance" .=) <$> _uInstance])

-- | A Cloud SQL instance resource.
--
-- /See:/ 'databaseInstance' smart constructor.
data DatabaseInstance =
  DatabaseInstance'
    { _datBackendType :: !(Maybe DatabaseInstanceBackendType)
    , _datSatisfiesPzs :: !(Maybe Bool)
    , _datMaxDiskSize :: !(Maybe (Textual Int64))
    , _datOnPremisesConfiguration :: !(Maybe OnPremisesConfiguration)
    , _datGceZone :: !(Maybe Text)
    , _datEtag :: !(Maybe Text)
    , _datState :: !(Maybe DatabaseInstanceState)
    , _datIPv6Address :: !(Maybe Text)
    , _datServerCaCert :: !(Maybe SSLCert)
    , _datDatabaseVersion :: !(Maybe DatabaseInstanceDatabaseVersion)
    , _datDiskEncryptionConfiguration :: !(Maybe DiskEncryptionConfiguration)
    , _datProject :: !(Maybe Text)
    , _datSettings :: !(Maybe Settings)
    , _datSecondaryGceZone :: !(Maybe Text)
    , _datKind :: !(Maybe Text)
    , _datDiskEncryptionStatus :: !(Maybe DiskEncryptionStatus)
    , _datConnectionName :: !(Maybe Text)
    , _datCurrentDiskSize :: !(Maybe (Textual Int64))
    , _datInstanceType :: !(Maybe DatabaseInstanceInstanceType)
    , _datRootPassword :: !(Maybe Text)
    , _datOutOfDiskReport :: !(Maybe SQLOutOfDiskReport)
    , _datReplicaNames :: !(Maybe [Text])
    , _datSelfLink :: !(Maybe Text)
    , _datFailoverReplica :: !(Maybe DatabaseInstanceFailoverReplica)
    , _datScheduledMaintenance :: !(Maybe SQLScheduledMaintenance)
    , _datName :: !(Maybe Text)
    , _datMasterInstanceName :: !(Maybe Text)
    , _datReplicaConfiguration :: !(Maybe ReplicaConfiguration)
    , _datRegion :: !(Maybe Text)
    , _datServiceAccountEmailAddress :: !(Maybe Text)
    , _datIPAddresses :: !(Maybe [IPMApping])
    , _datSuspensionReason :: !(Maybe [DatabaseInstanceSuspensionReasonItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabaseInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datBackendType'
--
-- * 'datSatisfiesPzs'
--
-- * 'datMaxDiskSize'
--
-- * 'datOnPremisesConfiguration'
--
-- * 'datGceZone'
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
-- * 'datDiskEncryptionConfiguration'
--
-- * 'datProject'
--
-- * 'datSettings'
--
-- * 'datSecondaryGceZone'
--
-- * 'datKind'
--
-- * 'datDiskEncryptionStatus'
--
-- * 'datConnectionName'
--
-- * 'datCurrentDiskSize'
--
-- * 'datInstanceType'
--
-- * 'datRootPassword'
--
-- * 'datOutOfDiskReport'
--
-- * 'datReplicaNames'
--
-- * 'datSelfLink'
--
-- * 'datFailoverReplica'
--
-- * 'datScheduledMaintenance'
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
    , _datSatisfiesPzs = Nothing
    , _datMaxDiskSize = Nothing
    , _datOnPremisesConfiguration = Nothing
    , _datGceZone = Nothing
    , _datEtag = Nothing
    , _datState = Nothing
    , _datIPv6Address = Nothing
    , _datServerCaCert = Nothing
    , _datDatabaseVersion = Nothing
    , _datDiskEncryptionConfiguration = Nothing
    , _datProject = Nothing
    , _datSettings = Nothing
    , _datSecondaryGceZone = Nothing
    , _datKind = Nothing
    , _datDiskEncryptionStatus = Nothing
    , _datConnectionName = Nothing
    , _datCurrentDiskSize = Nothing
    , _datInstanceType = Nothing
    , _datRootPassword = Nothing
    , _datOutOfDiskReport = Nothing
    , _datReplicaNames = Nothing
    , _datSelfLink = Nothing
    , _datFailoverReplica = Nothing
    , _datScheduledMaintenance = Nothing
    , _datName = Nothing
    , _datMasterInstanceName = Nothing
    , _datReplicaConfiguration = Nothing
    , _datRegion = Nothing
    , _datServiceAccountEmailAddress = Nothing
    , _datIPAddresses = Nothing
    , _datSuspensionReason = Nothing
    }


-- | *SECOND_GEN*: Cloud SQL database instance. *EXTERNAL*: A database server
-- that is not managed by Google. This property is read-only; use the
-- *tier* property in the *settings* object to determine the database type.
datBackendType :: Lens' DatabaseInstance (Maybe DatabaseInstanceBackendType)
datBackendType
  = lens _datBackendType
      (\ s a -> s{_datBackendType = a})

-- | The status indicating if instance satisfiesPzs. Reserved for future use.
datSatisfiesPzs :: Lens' DatabaseInstance (Maybe Bool)
datSatisfiesPzs
  = lens _datSatisfiesPzs
      (\ s a -> s{_datSatisfiesPzs = a})

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

-- | The Compute Engine zone that the instance is currently serving from.
-- This value could be different from the zone that was specified when the
-- instance was created if the instance has failed over to its secondary
-- zone.
datGceZone :: Lens' DatabaseInstance (Maybe Text)
datGceZone
  = lens _datGceZone (\ s a -> s{_datGceZone = a})

-- | This field is deprecated and will be removed from a future version of
-- the API. Use the *settings.settingsVersion* field instead.
datEtag :: Lens' DatabaseInstance (Maybe Text)
datEtag = lens _datEtag (\ s a -> s{_datEtag = a})

-- | The current serving state of the Cloud SQL instance. This can be one of
-- the following. *SQL_INSTANCE_STATE_UNSPECIFIED*: The state of the
-- instance is unknown. *RUNNABLE*: The instance is running, or has been
-- stopped by owner. *SUSPENDED*: The instance is not available, for
-- example due to problems with billing. *PENDING_DELETE*: The instance is
-- being deleted. *PENDING_CREATE*: The instance is being created.
-- *MAINTENANCE*: The instance is down for maintenance. *FAILED*: The
-- instance creation failed.
datState :: Lens' DatabaseInstance (Maybe DatabaseInstanceState)
datState = lens _datState (\ s a -> s{_datState = a})

-- | The IPv6 address assigned to the instance. (Deprecated) This property
-- was applicable only to First Generation instances.
datIPv6Address :: Lens' DatabaseInstance (Maybe Text)
datIPv6Address
  = lens _datIPv6Address
      (\ s a -> s{_datIPv6Address = a})

-- | SSL configuration.
datServerCaCert :: Lens' DatabaseInstance (Maybe SSLCert)
datServerCaCert
  = lens _datServerCaCert
      (\ s a -> s{_datServerCaCert = a})

-- | The database engine type and version. The *databaseVersion* field cannot
-- be changed after instance creation. MySQL instances: *MYSQL_8_0*,
-- *MYSQL_5_7* (default), or *MYSQL_5_6*. PostgreSQL instances:
-- *POSTGRES_9_6*, *POSTGRES_10*, *POSTGRES_11*, *POSTGRES_12*,
-- *POSTGRES_13* (default). SQL Server instances:
-- *SQLSERVER_2019_STANDARD*, *SQLSERVER_2019_ENTERPRISE*,
-- *SQLSERVER_2019_EXPRESS*, or *SQLSERVER_2019_WEB*,
-- *SQLSERVER_2017_STANDARD* (default), *SQLSERVER_2017_ENTERPRISE*,
-- *SQLSERVER_2017_EXPRESS*, or *SQLSERVER_2017_WEB*.
datDatabaseVersion :: Lens' DatabaseInstance (Maybe DatabaseInstanceDatabaseVersion)
datDatabaseVersion
  = lens _datDatabaseVersion
      (\ s a -> s{_datDatabaseVersion = a})

-- | Disk encryption configuration specific to an instance.
datDiskEncryptionConfiguration :: Lens' DatabaseInstance (Maybe DiskEncryptionConfiguration)
datDiskEncryptionConfiguration
  = lens _datDiskEncryptionConfiguration
      (\ s a -> s{_datDiskEncryptionConfiguration = a})

-- | The project ID of the project containing the Cloud SQL instance. The
-- Google apps domain is prefixed if applicable.
datProject :: Lens' DatabaseInstance (Maybe Text)
datProject
  = lens _datProject (\ s a -> s{_datProject = a})

-- | The user settings.
datSettings :: Lens' DatabaseInstance (Maybe Settings)
datSettings
  = lens _datSettings (\ s a -> s{_datSettings = a})

-- | The Compute Engine zone that the failover instance is currently serving
-- from for a regional instance. This value could be different from the
-- zone that was specified when the instance was created if the instance
-- has failed over to its secondary\/failover zone. Reserved for future
-- use.
datSecondaryGceZone :: Lens' DatabaseInstance (Maybe Text)
datSecondaryGceZone
  = lens _datSecondaryGceZone
      (\ s a -> s{_datSecondaryGceZone = a})

-- | This is always *sql#instance*.
datKind :: Lens' DatabaseInstance (Maybe Text)
datKind = lens _datKind (\ s a -> s{_datKind = a})

-- | Disk encryption status specific to an instance.
datDiskEncryptionStatus :: Lens' DatabaseInstance (Maybe DiskEncryptionStatus)
datDiskEncryptionStatus
  = lens _datDiskEncryptionStatus
      (\ s a -> s{_datDiskEncryptionStatus = a})

-- | Connection name of the Cloud SQL instance used in connection strings.
datConnectionName :: Lens' DatabaseInstance (Maybe Text)
datConnectionName
  = lens _datConnectionName
      (\ s a -> s{_datConnectionName = a})

-- | The current disk usage of the instance in bytes. This property has been
-- deprecated. Use the
-- \"cloudsql.googleapis.com\/database\/disk\/bytes_used\" metric in Cloud
-- Monitoring API instead. Please see this announcement for details.
datCurrentDiskSize :: Lens' DatabaseInstance (Maybe Int64)
datCurrentDiskSize
  = lens _datCurrentDiskSize
      (\ s a -> s{_datCurrentDiskSize = a})
      . mapping _Coerce

-- | The instance type. This can be one of the following.
-- *CLOUD_SQL_INSTANCE*: A Cloud SQL instance that is not replicating from
-- a primary instance. *ON_PREMISES_INSTANCE*: An instance running on the
-- customer\'s premises. *READ_REPLICA_INSTANCE*: A Cloud SQL instance
-- configured as a read-replica.
datInstanceType :: Lens' DatabaseInstance (Maybe DatabaseInstanceInstanceType)
datInstanceType
  = lens _datInstanceType
      (\ s a -> s{_datInstanceType = a})

-- | Initial root password. Use only on creation.
datRootPassword :: Lens' DatabaseInstance (Maybe Text)
datRootPassword
  = lens _datRootPassword
      (\ s a -> s{_datRootPassword = a})

-- | This field represents the report generated by the proactive database
-- wellness job for OutOfDisk issues. Writers: -- the proactive database
-- wellness job for OOD. Readers: -- the Pantheon frontend -- the proactive
-- database wellness job
datOutOfDiskReport :: Lens' DatabaseInstance (Maybe SQLOutOfDiskReport)
datOutOfDiskReport
  = lens _datOutOfDiskReport
      (\ s a -> s{_datOutOfDiskReport = a})

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

-- | The name and status of the failover replica.
datFailoverReplica :: Lens' DatabaseInstance (Maybe DatabaseInstanceFailoverReplica)
datFailoverReplica
  = lens _datFailoverReplica
      (\ s a -> s{_datFailoverReplica = a})

-- | The start time of any upcoming scheduled maintenance for this instance.
datScheduledMaintenance :: Lens' DatabaseInstance (Maybe SQLScheduledMaintenance)
datScheduledMaintenance
  = lens _datScheduledMaintenance
      (\ s a -> s{_datScheduledMaintenance = a})

-- | Name of the Cloud SQL instance. This does not include the project ID.
datName :: Lens' DatabaseInstance (Maybe Text)
datName = lens _datName (\ s a -> s{_datName = a})

-- | The name of the instance which will act as primary in the replication
-- setup.
datMasterInstanceName :: Lens' DatabaseInstance (Maybe Text)
datMasterInstanceName
  = lens _datMasterInstanceName
      (\ s a -> s{_datMasterInstanceName = a})

-- | Configuration specific to failover replicas and read replicas.
datReplicaConfiguration :: Lens' DatabaseInstance (Maybe ReplicaConfiguration)
datReplicaConfiguration
  = lens _datReplicaConfiguration
      (\ s a -> s{_datReplicaConfiguration = a})

-- | The geographical region. Can be *us-central* (*FIRST_GEN* instances
-- only) *us-central1* (*SECOND_GEN* instances only) *asia-east1* or
-- *europe-west1*. Defaults to *us-central* or *us-central1* depending on
-- the instance type. The region cannot be changed after instance creation.
datRegion :: Lens' DatabaseInstance (Maybe Text)
datRegion
  = lens _datRegion (\ s a -> s{_datRegion = a})

-- | The service account email address assigned to the instance. This
-- property is read-only.
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
datSuspensionReason :: Lens' DatabaseInstance [DatabaseInstanceSuspensionReasonItem]
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
                   (o .:? "backendType") <*> (o .:? "satisfiesPzs") <*>
                     (o .:? "maxDiskSize")
                     <*> (o .:? "onPremisesConfiguration")
                     <*> (o .:? "gceZone")
                     <*> (o .:? "etag")
                     <*> (o .:? "state")
                     <*> (o .:? "ipv6Address")
                     <*> (o .:? "serverCaCert")
                     <*> (o .:? "databaseVersion")
                     <*> (o .:? "diskEncryptionConfiguration")
                     <*> (o .:? "project")
                     <*> (o .:? "settings")
                     <*> (o .:? "secondaryGceZone")
                     <*> (o .:? "kind")
                     <*> (o .:? "diskEncryptionStatus")
                     <*> (o .:? "connectionName")
                     <*> (o .:? "currentDiskSize")
                     <*> (o .:? "instanceType")
                     <*> (o .:? "rootPassword")
                     <*> (o .:? "outOfDiskReport")
                     <*> (o .:? "replicaNames" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "failoverReplica")
                     <*> (o .:? "scheduledMaintenance")
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
                  ("satisfiesPzs" .=) <$> _datSatisfiesPzs,
                  ("maxDiskSize" .=) <$> _datMaxDiskSize,
                  ("onPremisesConfiguration" .=) <$>
                    _datOnPremisesConfiguration,
                  ("gceZone" .=) <$> _datGceZone,
                  ("etag" .=) <$> _datEtag, ("state" .=) <$> _datState,
                  ("ipv6Address" .=) <$> _datIPv6Address,
                  ("serverCaCert" .=) <$> _datServerCaCert,
                  ("databaseVersion" .=) <$> _datDatabaseVersion,
                  ("diskEncryptionConfiguration" .=) <$>
                    _datDiskEncryptionConfiguration,
                  ("project" .=) <$> _datProject,
                  ("settings" .=) <$> _datSettings,
                  ("secondaryGceZone" .=) <$> _datSecondaryGceZone,
                  ("kind" .=) <$> _datKind,
                  ("diskEncryptionStatus" .=) <$>
                    _datDiskEncryptionStatus,
                  ("connectionName" .=) <$> _datConnectionName,
                  ("currentDiskSize" .=) <$> _datCurrentDiskSize,
                  ("instanceType" .=) <$> _datInstanceType,
                  ("rootPassword" .=) <$> _datRootPassword,
                  ("outOfDiskReport" .=) <$> _datOutOfDiskReport,
                  ("replicaNames" .=) <$> _datReplicaNames,
                  ("selfLink" .=) <$> _datSelfLink,
                  ("failoverReplica" .=) <$> _datFailoverReplica,
                  ("scheduledMaintenance" .=) <$>
                    _datScheduledMaintenance,
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
data CloneContext =
  CloneContext'
    { _ccPitrTimestampMs :: !(Maybe (Textual Int64))
    , _ccDestinationInstanceName :: !(Maybe Text)
    , _ccBinLogCoordinates :: !(Maybe BinLogCoordinates)
    , _ccKind :: !(Maybe Text)
    , _ccPointInTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloneContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccPitrTimestampMs'
--
-- * 'ccDestinationInstanceName'
--
-- * 'ccBinLogCoordinates'
--
-- * 'ccKind'
--
-- * 'ccPointInTime'
cloneContext
    :: CloneContext
cloneContext =
  CloneContext'
    { _ccPitrTimestampMs = Nothing
    , _ccDestinationInstanceName = Nothing
    , _ccBinLogCoordinates = Nothing
    , _ccKind = Nothing
    , _ccPointInTime = Nothing
    }


-- | Reserved for future use.
ccPitrTimestampMs :: Lens' CloneContext (Maybe Int64)
ccPitrTimestampMs
  = lens _ccPitrTimestampMs
      (\ s a -> s{_ccPitrTimestampMs = a})
      . mapping _Coerce

-- | Name of the Cloud SQL instance to be created as a clone.
ccDestinationInstanceName :: Lens' CloneContext (Maybe Text)
ccDestinationInstanceName
  = lens _ccDestinationInstanceName
      (\ s a -> s{_ccDestinationInstanceName = a})

-- | Binary log coordinates, if specified, identify the position up to which
-- the source instance is cloned. If not specified, the source instance is
-- cloned up to the most recent binary log coordinates.
ccBinLogCoordinates :: Lens' CloneContext (Maybe BinLogCoordinates)
ccBinLogCoordinates
  = lens _ccBinLogCoordinates
      (\ s a -> s{_ccBinLogCoordinates = a})

-- | This is always *sql#cloneContext*.
ccKind :: Lens' CloneContext (Maybe Text)
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | Timestamp, if specified, identifies the time to which the source
-- instance is cloned.
ccPointInTime :: Lens' CloneContext (Maybe UTCTime)
ccPointInTime
  = lens _ccPointInTime
      (\ s a -> s{_ccPointInTime = a})
      . mapping _DateTime

instance FromJSON CloneContext where
        parseJSON
          = withObject "CloneContext"
              (\ o ->
                 CloneContext' <$>
                   (o .:? "pitrTimestampMs") <*>
                     (o .:? "destinationInstanceName")
                     <*> (o .:? "binLogCoordinates")
                     <*> (o .:? "kind")
                     <*> (o .:? "pointInTime"))

instance ToJSON CloneContext where
        toJSON CloneContext'{..}
          = object
              (catMaybes
                 [("pitrTimestampMs" .=) <$> _ccPitrTimestampMs,
                  ("destinationInstanceName" .=) <$>
                    _ccDestinationInstanceName,
                  ("binLogCoordinates" .=) <$> _ccBinLogCoordinates,
                  ("kind" .=) <$> _ccKind,
                  ("pointInTime" .=) <$> _ccPointInTime])

-- | A flag resource.
--
-- /See:/ 'flag' smart constructor.
data Flag =
  Flag'
    { _fMaxValue :: !(Maybe (Textual Int64))
    , _fInBeta :: !(Maybe Bool)
    , _fKind :: !(Maybe Text)
    , _fAllowedIntValues :: !(Maybe [Textual Int64])
    , _fAppliesTo :: !(Maybe [FlagAppliesToItem])
    , _fName :: !(Maybe Text)
    , _fAllowedStringValues :: !(Maybe [Text])
    , _fType :: !(Maybe FlagType)
    , _fMinValue :: !(Maybe (Textual Int64))
    , _fRequiresRestart :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Flag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fMaxValue'
--
-- * 'fInBeta'
--
-- * 'fKind'
--
-- * 'fAllowedIntValues'
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
    , _fInBeta = Nothing
    , _fKind = Nothing
    , _fAllowedIntValues = Nothing
    , _fAppliesTo = Nothing
    , _fName = Nothing
    , _fAllowedStringValues = Nothing
    , _fType = Nothing
    , _fMinValue = Nothing
    , _fRequiresRestart = Nothing
    }


-- | For **INTEGER** flags, the maximum allowed value.
fMaxValue :: Lens' Flag (Maybe Int64)
fMaxValue
  = lens _fMaxValue (\ s a -> s{_fMaxValue = a}) .
      mapping _Coerce

-- | Whether or not the flag is considered in beta.
fInBeta :: Lens' Flag (Maybe Bool)
fInBeta = lens _fInBeta (\ s a -> s{_fInBeta = a})

-- | This is always **sql#flag**.
fKind :: Lens' Flag (Maybe Text)
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | Use this field if only certain integers are accepted. Can be combined
-- with min_value and max_value to add additional values.
fAllowedIntValues :: Lens' Flag [Int64]
fAllowedIntValues
  = lens _fAllowedIntValues
      (\ s a -> s{_fAllowedIntValues = a})
      . _Default
      . _Coerce

-- | The database version this flag applies to. Can be **MYSQL_8_0**,
-- **MYSQL_5_6**, or **MYSQL_5_7**.
fAppliesTo :: Lens' Flag [FlagAppliesToItem]
fAppliesTo
  = lens _fAppliesTo (\ s a -> s{_fAppliesTo = a}) .
      _Default
      . _Coerce

-- | This is the name of the flag. Flag names always use underscores, not
-- hyphens, for example: **max_allowed_packet**
fName :: Lens' Flag (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | For **STRING** flags, a list of strings that the value can be set to.
fAllowedStringValues :: Lens' Flag [Text]
fAllowedStringValues
  = lens _fAllowedStringValues
      (\ s a -> s{_fAllowedStringValues = a})
      . _Default
      . _Coerce

-- | The type of the flag. Flags are typed to being **BOOLEAN**, **STRING**,
-- **INTEGER** or **NONE**. **NONE** is used for flags which do not take a
-- value, such as **skip_grant_tables**.
fType :: Lens' Flag (Maybe FlagType)
fType = lens _fType (\ s a -> s{_fType = a})

-- | For **INTEGER** flags, the minimum allowed value.
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
                   (o .:? "maxValue") <*> (o .:? "inBeta") <*>
                     (o .:? "kind")
                     <*> (o .:? "allowedIntValues" .!= mempty)
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
                  ("inBeta" .=) <$> _fInBeta, ("kind" .=) <$> _fKind,
                  ("allowedIntValues" .=) <$> _fAllowedIntValues,
                  ("appliesTo" .=) <$> _fAppliesTo,
                  ("name" .=) <$> _fName,
                  ("allowedStringValues" .=) <$> _fAllowedStringValues,
                  ("type" .=) <$> _fType,
                  ("minValue" .=) <$> _fMinValue,
                  ("requiresRestart" .=) <$> _fRequiresRestart])

-- | We currently only support backup retention by specifying the number of
-- backups we will retain.
--
-- /See:/ 'backupRetentionSettings' smart constructor.
data BackupRetentionSettings =
  BackupRetentionSettings'
    { _brsRetentionUnit :: !(Maybe BackupRetentionSettingsRetentionUnit)
    , _brsRetainedBackups :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupRetentionSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brsRetentionUnit'
--
-- * 'brsRetainedBackups'
backupRetentionSettings
    :: BackupRetentionSettings
backupRetentionSettings =
  BackupRetentionSettings'
    {_brsRetentionUnit = Nothing, _brsRetainedBackups = Nothing}


-- | The unit that \'retained_backups\' represents.
brsRetentionUnit :: Lens' BackupRetentionSettings (Maybe BackupRetentionSettingsRetentionUnit)
brsRetentionUnit
  = lens _brsRetentionUnit
      (\ s a -> s{_brsRetentionUnit = a})

-- | Depending on the value of retention_unit, this is used to determine if a
-- backup needs to be deleted. If retention_unit is \'COUNT\', we will
-- retain this many backups.
brsRetainedBackups :: Lens' BackupRetentionSettings (Maybe Int32)
brsRetainedBackups
  = lens _brsRetainedBackups
      (\ s a -> s{_brsRetainedBackups = a})
      . mapping _Coerce

instance FromJSON BackupRetentionSettings where
        parseJSON
          = withObject "BackupRetentionSettings"
              (\ o ->
                 BackupRetentionSettings' <$>
                   (o .:? "retentionUnit") <*>
                     (o .:? "retainedBackups"))

instance ToJSON BackupRetentionSettings where
        toJSON BackupRetentionSettings'{..}
          = object
              (catMaybes
                 [("retentionUnit" .=) <$> _brsRetentionUnit,
                  ("retainedBackups" .=) <$> _brsRetainedBackups])

-- | Instance failover request.
--
-- /See:/ 'instancesFailoverRequest' smart constructor.
newtype InstancesFailoverRequest =
  InstancesFailoverRequest'
    { _ifrFailoverContext :: Maybe FailoverContext
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesFailoverRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifrFailoverContext'
instancesFailoverRequest
    :: InstancesFailoverRequest
instancesFailoverRequest =
  InstancesFailoverRequest' {_ifrFailoverContext = Nothing}


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

-- | Ephemeral certificate creation request.
--
-- /See:/ 'generateEphemeralCertResponse' smart constructor.
newtype GenerateEphemeralCertResponse =
  GenerateEphemeralCertResponse'
    { _gecrEphemeralCert :: Maybe SSLCert
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateEphemeralCertResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gecrEphemeralCert'
generateEphemeralCertResponse
    :: GenerateEphemeralCertResponse
generateEphemeralCertResponse =
  GenerateEphemeralCertResponse' {_gecrEphemeralCert = Nothing}


-- | Generated cert
gecrEphemeralCert :: Lens' GenerateEphemeralCertResponse (Maybe SSLCert)
gecrEphemeralCert
  = lens _gecrEphemeralCert
      (\ s a -> s{_gecrEphemeralCert = a})

instance FromJSON GenerateEphemeralCertResponse where
        parseJSON
          = withObject "GenerateEphemeralCertResponse"
              (\ o ->
                 GenerateEphemeralCertResponse' <$>
                   (o .:? "ephemeralCert"))

instance ToJSON GenerateEphemeralCertResponse where
        toJSON GenerateEphemeralCertResponse'{..}
          = object
              (catMaybes
                 [("ephemeralCert" .=) <$> _gecrEphemeralCert])

-- | A BackupRun resource.
--
-- /See:/ 'backupRun' smart constructor.
data BackupRun =
  BackupRun'
    { _brStatus :: !(Maybe BackupRunStatus)
    , _brDiskEncryptionConfiguration :: !(Maybe DiskEncryptionConfiguration)
    , _brLocation :: !(Maybe Text)
    , _brStartTime :: !(Maybe DateTime')
    , _brKind :: !(Maybe Text)
    , _brError :: !(Maybe OperationError)
    , _brDiskEncryptionStatus :: !(Maybe DiskEncryptionStatus)
    , _brBackupKind :: !(Maybe BackupRunBackupKind)
    , _brWindowStartTime :: !(Maybe DateTime')
    , _brSelfLink :: !(Maybe Text)
    , _brEndTime :: !(Maybe DateTime')
    , _brId :: !(Maybe (Textual Int64))
    , _brType :: !(Maybe BackupRunType)
    , _brEnQueuedTime :: !(Maybe DateTime')
    , _brDescription :: !(Maybe Text)
    , _brInstance :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brStatus'
--
-- * 'brDiskEncryptionConfiguration'
--
-- * 'brLocation'
--
-- * 'brStartTime'
--
-- * 'brKind'
--
-- * 'brError'
--
-- * 'brDiskEncryptionStatus'
--
-- * 'brBackupKind'
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
    , _brDiskEncryptionConfiguration = Nothing
    , _brLocation = Nothing
    , _brStartTime = Nothing
    , _brKind = Nothing
    , _brError = Nothing
    , _brDiskEncryptionStatus = Nothing
    , _brBackupKind = Nothing
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
brStatus :: Lens' BackupRun (Maybe BackupRunStatus)
brStatus = lens _brStatus (\ s a -> s{_brStatus = a})

-- | Encryption configuration specific to a backup.
brDiskEncryptionConfiguration :: Lens' BackupRun (Maybe DiskEncryptionConfiguration)
brDiskEncryptionConfiguration
  = lens _brDiskEncryptionConfiguration
      (\ s a -> s{_brDiskEncryptionConfiguration = a})

-- | Location of the backups.
brLocation :: Lens' BackupRun (Maybe Text)
brLocation
  = lens _brLocation (\ s a -> s{_brLocation = a})

-- | The time the backup operation actually started in UTC timezone in RFC
-- 3339 format, for example *2012-11-15T16:19:00.094Z*.
brStartTime :: Lens' BackupRun (Maybe UTCTime)
brStartTime
  = lens _brStartTime (\ s a -> s{_brStartTime = a}) .
      mapping _DateTime

-- | This is always *sql#backupRun*.
brKind :: Lens' BackupRun (Maybe Text)
brKind = lens _brKind (\ s a -> s{_brKind = a})

-- | Information about why the backup operation failed. This is only present
-- if the run has the FAILED status.
brError :: Lens' BackupRun (Maybe OperationError)
brError = lens _brError (\ s a -> s{_brError = a})

-- | Encryption status specific to a backup.
brDiskEncryptionStatus :: Lens' BackupRun (Maybe DiskEncryptionStatus)
brDiskEncryptionStatus
  = lens _brDiskEncryptionStatus
      (\ s a -> s{_brDiskEncryptionStatus = a})

-- | Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
brBackupKind :: Lens' BackupRun (Maybe BackupRunBackupKind)
brBackupKind
  = lens _brBackupKind (\ s a -> s{_brBackupKind = a})

-- | The start time of the backup window during which this the backup was
-- attempted in RFC 3339 format, for example *2012-11-15T16:19:00.094Z*.
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
-- format, for example *2012-11-15T16:19:00.094Z*.
brEndTime :: Lens' BackupRun (Maybe UTCTime)
brEndTime
  = lens _brEndTime (\ s a -> s{_brEndTime = a}) .
      mapping _DateTime

-- | The identifier for this backup run. Unique only for a specific Cloud SQL
-- instance.
brId :: Lens' BackupRun (Maybe Int64)
brId
  = lens _brId (\ s a -> s{_brId = a}) .
      mapping _Coerce

-- | The type of this run; can be either \"AUTOMATED\" or \"ON_DEMAND\". This
-- field defaults to \"ON_DEMAND\" and is ignored, when specified for
-- insert requests.
brType :: Lens' BackupRun (Maybe BackupRunType)
brType = lens _brType (\ s a -> s{_brType = a})

-- | The time the run was enqueued in UTC timezone in RFC 3339 format, for
-- example *2012-11-15T16:19:00.094Z*.
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
                   (o .:? "status") <*>
                     (o .:? "diskEncryptionConfiguration")
                     <*> (o .:? "location")
                     <*> (o .:? "startTime")
                     <*> (o .:? "kind")
                     <*> (o .:? "error")
                     <*> (o .:? "diskEncryptionStatus")
                     <*> (o .:? "backupKind")
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
                  ("diskEncryptionConfiguration" .=) <$>
                    _brDiskEncryptionConfiguration,
                  ("location" .=) <$> _brLocation,
                  ("startTime" .=) <$> _brStartTime,
                  ("kind" .=) <$> _brKind, ("error" .=) <$> _brError,
                  ("diskEncryptionStatus" .=) <$>
                    _brDiskEncryptionStatus,
                  ("backupKind" .=) <$> _brBackupKind,
                  ("windowStartTime" .=) <$> _brWindowStartTime,
                  ("selfLink" .=) <$> _brSelfLink,
                  ("endTime" .=) <$> _brEndTime, ("id" .=) <$> _brId,
                  ("type" .=) <$> _brType,
                  ("enqueuedTime" .=) <$> _brEnQueuedTime,
                  ("description" .=) <$> _brDescription,
                  ("instance" .=) <$> _brInstance])

-- | Import parameters specific to SQL Server .BAK files
--
-- /See:/ 'importContextBakImportOptions' smart constructor.
newtype ImportContextBakImportOptions =
  ImportContextBakImportOptions'
    { _icbioEncryptionOptions :: Maybe ImportContextBakImportOptionsEncryptionOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportContextBakImportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icbioEncryptionOptions'
importContextBakImportOptions
    :: ImportContextBakImportOptions
importContextBakImportOptions =
  ImportContextBakImportOptions' {_icbioEncryptionOptions = Nothing}


icbioEncryptionOptions :: Lens' ImportContextBakImportOptions (Maybe ImportContextBakImportOptionsEncryptionOptions)
icbioEncryptionOptions
  = lens _icbioEncryptionOptions
      (\ s a -> s{_icbioEncryptionOptions = a})

instance FromJSON ImportContextBakImportOptions where
        parseJSON
          = withObject "ImportContextBakImportOptions"
              (\ o ->
                 ImportContextBakImportOptions' <$>
                   (o .:? "encryptionOptions"))

instance ToJSON ImportContextBakImportOptions where
        toJSON ImportContextBakImportOptions'{..}
          = object
              (catMaybes
                 [("encryptionOptions" .=) <$>
                    _icbioEncryptionOptions])

-- | An entry for an Access Control list.
--
-- /See:/ 'aclEntry' smart constructor.
data ACLEntry =
  ACLEntry'
    { _aeKind :: !(Maybe Text)
    , _aeValue :: !(Maybe Text)
    , _aeName :: !(Maybe Text)
    , _aeExpirationTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    { _aeKind = Nothing
    , _aeValue = Nothing
    , _aeName = Nothing
    , _aeExpirationTime = Nothing
    }


-- | This is always **sql#aclEntry**.
aeKind :: Lens' ACLEntry (Maybe Text)
aeKind = lens _aeKind (\ s a -> s{_aeKind = a})

-- | The allowlisted value for the access control list.
aeValue :: Lens' ACLEntry (Maybe Text)
aeValue = lens _aeValue (\ s a -> s{_aeValue = a})

-- | Optional. A label to identify this entry.
aeName :: Lens' ACLEntry (Maybe Text)
aeName = lens _aeName (\ s a -> s{_aeName = a})

-- | The time when this access control entry expires in [RFC
-- 3339](https:\/\/tools.ietf.org\/html\/rfc3339) format, for example
-- **2012-11-15T16:19:00.094Z**.
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
                   (o .:? "kind") <*> (o .:? "value") <*> (o .:? "name")
                     <*> (o .:? "expirationTime"))

instance ToJSON ACLEntry where
        toJSON ACLEntry'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _aeKind, ("value" .=) <$> _aeValue,
                  ("name" .=) <$> _aeName,
                  ("expirationTime" .=) <$> _aeExpirationTime])

-- | Reschedule options for maintenance windows.
--
-- /See:/ 'sQLInstancesRescheduleMaintenanceRequestBody' smart constructor.
newtype SQLInstancesRescheduleMaintenanceRequestBody =
  SQLInstancesRescheduleMaintenanceRequestBody'
    { _sqlirmrbReschedule :: Maybe Reschedule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SQLInstancesRescheduleMaintenanceRequestBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqlirmrbReschedule'
sQLInstancesRescheduleMaintenanceRequestBody
    :: SQLInstancesRescheduleMaintenanceRequestBody
sQLInstancesRescheduleMaintenanceRequestBody =
  SQLInstancesRescheduleMaintenanceRequestBody' {_sqlirmrbReschedule = Nothing}


-- | Required. The type of the reschedule the user wants.
sqlirmrbReschedule :: Lens' SQLInstancesRescheduleMaintenanceRequestBody (Maybe Reschedule)
sqlirmrbReschedule
  = lens _sqlirmrbReschedule
      (\ s a -> s{_sqlirmrbReschedule = a})

instance FromJSON
           SQLInstancesRescheduleMaintenanceRequestBody
         where
        parseJSON
          = withObject
              "SQLInstancesRescheduleMaintenanceRequestBody"
              (\ o ->
                 SQLInstancesRescheduleMaintenanceRequestBody' <$>
                   (o .:? "reschedule"))

instance ToJSON
           SQLInstancesRescheduleMaintenanceRequestBody
         where
        toJSON
          SQLInstancesRescheduleMaintenanceRequestBody'{..}
          = object
              (catMaybes
                 [("reschedule" .=) <$> _sqlirmrbReschedule])

-- | Database flags for Cloud SQL instances.
--
-- /See:/ 'databaseFlags' smart constructor.
data DatabaseFlags =
  DatabaseFlags'
    { _dfValue :: !(Maybe Text)
    , _dfName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabaseFlags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfValue'
--
-- * 'dfName'
databaseFlags
    :: DatabaseFlags
databaseFlags = DatabaseFlags' {_dfValue = Nothing, _dfName = Nothing}


-- | The value of the flag. Booleans are set to **on** for true and **off**
-- for false. This field must be omitted if the flag doesn\'t take a value.
dfValue :: Lens' DatabaseFlags (Maybe Text)
dfValue = lens _dfValue (\ s a -> s{_dfValue = a})

-- | The name of the flag. These flags are passed at instance startup, so
-- include both server options and system variables. Flags are specified
-- with underscores, not hyphens. For more information, see [Configuring
-- Database Flags](https:\/\/cloud.google.com\/sql\/docs\/mysql\/flags) in
-- the Cloud SQL documentation.
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
data Tier =
  Tier'
    { _tKind :: !(Maybe Text)
    , _tTier :: !(Maybe Text)
    , _tRegion :: !(Maybe [Text])
    , _tDiskQuota :: !(Maybe (Textual Int64))
    , _tRAM :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    { _tKind = Nothing
    , _tTier = Nothing
    , _tRegion = Nothing
    , _tDiskQuota = Nothing
    , _tRAM = Nothing
    }


-- | This is always *sql#tier*.
tKind :: Lens' Tier (Maybe Text)
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | An identifier for the machine type, for example, db-custom-1-3840. For
-- related information, see Pricing.
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
                   (o .:? "kind") <*> (o .:? "tier") <*>
                     (o .:? "region" .!= mempty)
                     <*> (o .:? "DiskQuota")
                     <*> (o .:? "RAM"))

instance ToJSON Tier where
        toJSON Tier'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _tKind, ("tier" .=) <$> _tTier,
                  ("region" .=) <$> _tRegion,
                  ("DiskQuota" .=) <$> _tDiskQuota,
                  ("RAM" .=) <$> _tRAM])

-- | Read-replica configuration specific to MySQL databases.
--
-- /See:/ 'mySQLReplicaConfiguration' smart constructor.
data MySQLReplicaConfiguration =
  MySQLReplicaConfiguration'
    { _msqlrcVerifyServerCertificate :: !(Maybe Bool)
    , _msqlrcKind :: !(Maybe Text)
    , _msqlrcClientKey :: !(Maybe Text)
    , _msqlrcUsername :: !(Maybe Text)
    , _msqlrcSSLCipher :: !(Maybe Text)
    , _msqlrcMasterHeartbeatPeriod :: !(Maybe (Textual Int64))
    , _msqlrcConnectRetryInterval :: !(Maybe (Textual Int32))
    , _msqlrcClientCertificate :: !(Maybe Text)
    , _msqlrcCaCertificate :: !(Maybe Text)
    , _msqlrcDumpFilePath :: !(Maybe Text)
    , _msqlrcPassword :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    , _msqlrcKind = Nothing
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


-- | Whether or not to check the primary instance\'s Common Name value in the
-- certificate that it sends during the SSL handshake.
msqlrcVerifyServerCertificate :: Lens' MySQLReplicaConfiguration (Maybe Bool)
msqlrcVerifyServerCertificate
  = lens _msqlrcVerifyServerCertificate
      (\ s a -> s{_msqlrcVerifyServerCertificate = a})

-- | This is always **sql#mysqlReplicaConfiguration**.
msqlrcKind :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcKind
  = lens _msqlrcKind (\ s a -> s{_msqlrcKind = a})

-- | PEM representation of the replica\'s private key. The corresponsing
-- public key is encoded in the client\'s certificate.
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

-- | PEM representation of the replica\'s x509 certificate.
msqlrcClientCertificate :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcClientCertificate
  = lens _msqlrcClientCertificate
      (\ s a -> s{_msqlrcClientCertificate = a})

-- | PEM representation of the trusted CA\'s x509 certificate.
msqlrcCaCertificate :: Lens' MySQLReplicaConfiguration (Maybe Text)
msqlrcCaCertificate
  = lens _msqlrcCaCertificate
      (\ s a -> s{_msqlrcCaCertificate = a})

-- | Path to a SQL dump file in Google Cloud Storage from which the replica
-- instance is to be created. The URI is in the form
-- gs:\/\/bucketName\/fileName. Compressed gzip files (.gz) are also
-- supported. Dumps have the binlog co-ordinates from which replication
-- begins. This can be accomplished by setting --master-data to 1 when
-- using mysqldump.
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
                   (o .:? "verifyServerCertificate") <*> (o .:? "kind")
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
                  ("kind" .=) <$> _msqlrcKind,
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

-- | This message wraps up the information written by out-of-disk detection
-- job.
--
-- /See:/ 'sQLOutOfDiskReport' smart constructor.
data SQLOutOfDiskReport =
  SQLOutOfDiskReport'
    { _sqloodrSQLOutOfDiskState :: !(Maybe SQLOutOfDiskReportSQLOutOfDiskState)
    , _sqloodrSQLMinRecommendedIncreaseSizeGb :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SQLOutOfDiskReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqloodrSQLOutOfDiskState'
--
-- * 'sqloodrSQLMinRecommendedIncreaseSizeGb'
sQLOutOfDiskReport
    :: SQLOutOfDiskReport
sQLOutOfDiskReport =
  SQLOutOfDiskReport'
    { _sqloodrSQLOutOfDiskState = Nothing
    , _sqloodrSQLMinRecommendedIncreaseSizeGb = Nothing
    }


-- | This field represents the state generated by the proactive database
-- wellness job for OutOfDisk issues. Writers: -- the proactive database
-- wellness job for OOD. Readers: -- the Pantheon frontend -- the proactive
-- database wellness job
sqloodrSQLOutOfDiskState :: Lens' SQLOutOfDiskReport (Maybe SQLOutOfDiskReportSQLOutOfDiskState)
sqloodrSQLOutOfDiskState
  = lens _sqloodrSQLOutOfDiskState
      (\ s a -> s{_sqloodrSQLOutOfDiskState = a})

-- | The minimum recommended increase size in GigaBytes This field is
-- consumed by the frontend Writers: -- the proactive database wellness job
-- for OOD. Readers: -- the Pantheon frontend
sqloodrSQLMinRecommendedIncreaseSizeGb :: Lens' SQLOutOfDiskReport (Maybe Int32)
sqloodrSQLMinRecommendedIncreaseSizeGb
  = lens _sqloodrSQLMinRecommendedIncreaseSizeGb
      (\ s a ->
         s{_sqloodrSQLMinRecommendedIncreaseSizeGb = a})
      . mapping _Coerce

instance FromJSON SQLOutOfDiskReport where
        parseJSON
          = withObject "SQLOutOfDiskReport"
              (\ o ->
                 SQLOutOfDiskReport' <$>
                   (o .:? "sqlOutOfDiskState") <*>
                     (o .:? "sqlMinRecommendedIncreaseSizeGb"))

instance ToJSON SQLOutOfDiskReport where
        toJSON SQLOutOfDiskReport'{..}
          = object
              (catMaybes
                 [("sqlOutOfDiskState" .=) <$>
                    _sqloodrSQLOutOfDiskState,
                  ("sqlMinRecommendedIncreaseSizeGb" .=) <$>
                    _sqloodrSQLMinRecommendedIncreaseSizeGb])

-- | Any scheduled maintenancce for this instance.
--
-- /See:/ 'sQLScheduledMaintenance' smart constructor.
data SQLScheduledMaintenance =
  SQLScheduledMaintenance'
    { _sqlsmStartTime :: !(Maybe DateTime')
    , _sqlsmCanReschedule :: !(Maybe Bool)
    , _sqlsmCanDefer :: !(Maybe Bool)
    , _sqlsmScheduleDeadlineTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SQLScheduledMaintenance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqlsmStartTime'
--
-- * 'sqlsmCanReschedule'
--
-- * 'sqlsmCanDefer'
--
-- * 'sqlsmScheduleDeadlineTime'
sQLScheduledMaintenance
    :: SQLScheduledMaintenance
sQLScheduledMaintenance =
  SQLScheduledMaintenance'
    { _sqlsmStartTime = Nothing
    , _sqlsmCanReschedule = Nothing
    , _sqlsmCanDefer = Nothing
    , _sqlsmScheduleDeadlineTime = Nothing
    }


-- | The start time of any upcoming scheduled maintenance for this instance.
sqlsmStartTime :: Lens' SQLScheduledMaintenance (Maybe UTCTime)
sqlsmStartTime
  = lens _sqlsmStartTime
      (\ s a -> s{_sqlsmStartTime = a})
      . mapping _DateTime

-- | If the scheduled maintenance can be rescheduled.
sqlsmCanReschedule :: Lens' SQLScheduledMaintenance (Maybe Bool)
sqlsmCanReschedule
  = lens _sqlsmCanReschedule
      (\ s a -> s{_sqlsmCanReschedule = a})

sqlsmCanDefer :: Lens' SQLScheduledMaintenance (Maybe Bool)
sqlsmCanDefer
  = lens _sqlsmCanDefer
      (\ s a -> s{_sqlsmCanDefer = a})

-- | Maintenance cannot be rescheduled to start beyond this deadline.
sqlsmScheduleDeadlineTime :: Lens' SQLScheduledMaintenance (Maybe UTCTime)
sqlsmScheduleDeadlineTime
  = lens _sqlsmScheduleDeadlineTime
      (\ s a -> s{_sqlsmScheduleDeadlineTime = a})
      . mapping _DateTime

instance FromJSON SQLScheduledMaintenance where
        parseJSON
          = withObject "SQLScheduledMaintenance"
              (\ o ->
                 SQLScheduledMaintenance' <$>
                   (o .:? "startTime") <*> (o .:? "canReschedule") <*>
                     (o .:? "canDefer")
                     <*> (o .:? "scheduleDeadlineTime"))

instance ToJSON SQLScheduledMaintenance where
        toJSON SQLScheduledMaintenance'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _sqlsmStartTime,
                  ("canReschedule" .=) <$> _sqlsmCanReschedule,
                  ("canDefer" .=) <$> _sqlsmCanDefer,
                  ("scheduleDeadlineTime" .=) <$>
                    _sqlsmScheduleDeadlineTime])

-- | SslCertDetail.
--
-- /See:/ 'sslCertDetail' smart constructor.
data SSLCertDetail =
  SSLCertDetail'
    { _scdCertInfo :: !(Maybe SSLCert)
    , _scdCertPrivateKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  SSLCertDetail' {_scdCertInfo = Nothing, _scdCertPrivateKey = Nothing}


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
newtype InstancesRestoreBackupRequest =
  InstancesRestoreBackupRequest'
    { _irbrRestoreBackupContext :: Maybe RestoreBackupContext
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesRestoreBackupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irbrRestoreBackupContext'
instancesRestoreBackupRequest
    :: InstancesRestoreBackupRequest
instancesRestoreBackupRequest =
  InstancesRestoreBackupRequest' {_irbrRestoreBackupContext = Nothing}


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

-- | Database demote primary instance request.
--
-- /See:/ 'instancesDemoteMasterRequest' smart constructor.
newtype InstancesDemoteMasterRequest =
  InstancesDemoteMasterRequest'
    { _idmrDemoteMasterContext :: Maybe DemoteMasterContext
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesDemoteMasterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idmrDemoteMasterContext'
instancesDemoteMasterRequest
    :: InstancesDemoteMasterRequest
instancesDemoteMasterRequest =
  InstancesDemoteMasterRequest' {_idmrDemoteMasterContext = Nothing}


-- | Contains details about the demoteMaster operation.
idmrDemoteMasterContext :: Lens' InstancesDemoteMasterRequest (Maybe DemoteMasterContext)
idmrDemoteMasterContext
  = lens _idmrDemoteMasterContext
      (\ s a -> s{_idmrDemoteMasterContext = a})

instance FromJSON InstancesDemoteMasterRequest where
        parseJSON
          = withObject "InstancesDemoteMasterRequest"
              (\ o ->
                 InstancesDemoteMasterRequest' <$>
                   (o .:? "demoteMasterContext"))

instance ToJSON InstancesDemoteMasterRequest where
        toJSON InstancesDemoteMasterRequest'{..}
          = object
              (catMaybes
                 [("demoteMasterContext" .=) <$>
                    _idmrDemoteMasterContext])

-- | Backup run list results.
--
-- /See:/ 'backupRunsListResponse' smart constructor.
data BackupRunsListResponse =
  BackupRunsListResponse'
    { _brlrNextPageToken :: !(Maybe Text)
    , _brlrKind :: !(Maybe Text)
    , _brlrItems :: !(Maybe [BackupRun])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_brlrNextPageToken = Nothing, _brlrKind = Nothing, _brlrItems = Nothing}


-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
brlrNextPageToken :: Lens' BackupRunsListResponse (Maybe Text)
brlrNextPageToken
  = lens _brlrNextPageToken
      (\ s a -> s{_brlrNextPageToken = a})

-- | This is always *sql#backupRunsList*.
brlrKind :: Lens' BackupRunsListResponse (Maybe Text)
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
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON BackupRunsListResponse where
        toJSON BackupRunsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _brlrNextPageToken,
                  ("kind" .=) <$> _brlrKind,
                  ("items" .=) <$> _brlrItems])

-- | Database instance operation error.
--
-- /See:/ 'operationError' smart constructor.
data OperationError =
  OperationError'
    { _opeKind :: !(Maybe Text)
    , _opeCode :: !(Maybe Text)
    , _opeMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_opeKind = Nothing, _opeCode = Nothing, _opeMessage = Nothing}


-- | This is always **sql#operationError**.
opeKind :: Lens' OperationError (Maybe Text)
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
                   (o .:? "kind") <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON OperationError where
        toJSON OperationError'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _opeKind, ("code" .=) <$> _opeCode,
                  ("message" .=) <$> _opeMessage])

-- | Database Instance truncate log context.
--
-- /See:/ 'truncateLogContext' smart constructor.
data TruncateLogContext =
  TruncateLogContext'
    { _tlcKind :: !(Maybe Text)
    , _tlcLogType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  TruncateLogContext' {_tlcKind = Nothing, _tlcLogType = Nothing}


-- | This is always *sql#truncateLogContext*.
tlcKind :: Lens' TruncateLogContext (Maybe Text)
tlcKind = lens _tlcKind (\ s a -> s{_tlcKind = a})

-- | The type of log to truncate. Valid values are *MYSQL_GENERAL_TABLE* and
-- *MYSQL_SLOW_TABLE*.
tlcLogType :: Lens' TruncateLogContext (Maybe Text)
tlcLogType
  = lens _tlcLogType (\ s a -> s{_tlcLogType = a})

instance FromJSON TruncateLogContext where
        parseJSON
          = withObject "TruncateLogContext"
              (\ o ->
                 TruncateLogContext' <$>
                   (o .:? "kind") <*> (o .:? "logType"))

instance ToJSON TruncateLogContext where
        toJSON TruncateLogContext'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _tlcKind,
                  ("logType" .=) <$> _tlcLogType])

-- | Database instance clone request.
--
-- /See:/ 'instancesCloneRequest' smart constructor.
newtype InstancesCloneRequest =
  InstancesCloneRequest'
    { _icrCloneContext :: Maybe CloneContext
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesCloneRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icrCloneContext'
instancesCloneRequest
    :: InstancesCloneRequest
instancesCloneRequest = InstancesCloneRequest' {_icrCloneContext = Nothing}


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

--
-- /See:/ 'importContextBakImportOptionsEncryptionOptions' smart constructor.
data ImportContextBakImportOptionsEncryptionOptions =
  ImportContextBakImportOptionsEncryptionOptions'
    { _icbioeoPvkPath :: !(Maybe Text)
    , _icbioeoPvkPassword :: !(Maybe Text)
    , _icbioeoCertPath :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportContextBakImportOptionsEncryptionOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icbioeoPvkPath'
--
-- * 'icbioeoPvkPassword'
--
-- * 'icbioeoCertPath'
importContextBakImportOptionsEncryptionOptions
    :: ImportContextBakImportOptionsEncryptionOptions
importContextBakImportOptionsEncryptionOptions =
  ImportContextBakImportOptionsEncryptionOptions'
    { _icbioeoPvkPath = Nothing
    , _icbioeoPvkPassword = Nothing
    , _icbioeoCertPath = Nothing
    }


-- | Path to the Certificate Private Key (.pvk) in Cloud Storage, in the form
-- **gs:\/\/bucketName\/fileName**. The instance must have write
-- permissions to the bucket and read access to the file.
icbioeoPvkPath :: Lens' ImportContextBakImportOptionsEncryptionOptions (Maybe Text)
icbioeoPvkPath
  = lens _icbioeoPvkPath
      (\ s a -> s{_icbioeoPvkPath = a})

-- | Password that encrypts the private key
icbioeoPvkPassword :: Lens' ImportContextBakImportOptionsEncryptionOptions (Maybe Text)
icbioeoPvkPassword
  = lens _icbioeoPvkPassword
      (\ s a -> s{_icbioeoPvkPassword = a})

-- | Path to the Certificate (.cer) in Cloud Storage, in the form
-- **gs:\/\/bucketName\/fileName**. The instance must have write
-- permissions to the bucket and read access to the file.
icbioeoCertPath :: Lens' ImportContextBakImportOptionsEncryptionOptions (Maybe Text)
icbioeoCertPath
  = lens _icbioeoCertPath
      (\ s a -> s{_icbioeoCertPath = a})

instance FromJSON
           ImportContextBakImportOptionsEncryptionOptions
         where
        parseJSON
          = withObject
              "ImportContextBakImportOptionsEncryptionOptions"
              (\ o ->
                 ImportContextBakImportOptionsEncryptionOptions' <$>
                   (o .:? "pvkPath") <*> (o .:? "pvkPassword") <*>
                     (o .:? "certPath"))

instance ToJSON
           ImportContextBakImportOptionsEncryptionOptions
         where
        toJSON
          ImportContextBakImportOptionsEncryptionOptions'{..}
          = object
              (catMaybes
                 [("pvkPath" .=) <$> _icbioeoPvkPath,
                  ("pvkPassword" .=) <$> _icbioeoPvkPassword,
                  ("certPath" .=) <$> _icbioeoCertPath])

-- | Read-replica configuration for connecting to the primary instance.
--
-- /See:/ 'replicaConfiguration' smart constructor.
data ReplicaConfiguration =
  ReplicaConfiguration'
    { _rcFailoverTarget :: !(Maybe Bool)
    , _rcKind :: !(Maybe Text)
    , _rcMysqlReplicaConfiguration :: !(Maybe MySQLReplicaConfiguration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    , _rcKind = Nothing
    , _rcMysqlReplicaConfiguration = Nothing
    }


-- | Specifies if the replica is the failover target. If the field is set to
-- *true* the replica will be designated as a failover replica. In case the
-- primary instance fails, the replica instance will be promoted as the new
-- primary instance. Only one replica can be specified as failover target,
-- and the replica has to be in different zone with the primary instance.
rcFailoverTarget :: Lens' ReplicaConfiguration (Maybe Bool)
rcFailoverTarget
  = lens _rcFailoverTarget
      (\ s a -> s{_rcFailoverTarget = a})

-- | This is always *sql#replicaConfiguration*.
rcKind :: Lens' ReplicaConfiguration (Maybe Text)
rcKind = lens _rcKind (\ s a -> s{_rcKind = a})

-- | MySQL specific configuration when replicating from a MySQL on-premises
-- primary instance. Replication configuration information such as the
-- username, password, certificates, and keys are not stored in the
-- instance metadata.The configuration information is used only to set up
-- the replication connection and is stored by MySQL in a file named
-- *master.info* in the data directory.
rcMysqlReplicaConfiguration :: Lens' ReplicaConfiguration (Maybe MySQLReplicaConfiguration)
rcMysqlReplicaConfiguration
  = lens _rcMysqlReplicaConfiguration
      (\ s a -> s{_rcMysqlReplicaConfiguration = a})

instance FromJSON ReplicaConfiguration where
        parseJSON
          = withObject "ReplicaConfiguration"
              (\ o ->
                 ReplicaConfiguration' <$>
                   (o .:? "failoverTarget") <*> (o .:? "kind") <*>
                     (o .:? "mysqlReplicaConfiguration"))

instance ToJSON ReplicaConfiguration where
        toJSON ReplicaConfiguration'{..}
          = object
              (catMaybes
                 [("failoverTarget" .=) <$> _rcFailoverTarget,
                  ("kind" .=) <$> _rcKind,
                  ("mysqlReplicaConfiguration" .=) <$>
                    _rcMysqlReplicaConfiguration])

-- | Database instance failover context.
--
-- /See:/ 'failoverContext' smart constructor.
data FailoverContext =
  FailoverContext'
    { _fcSettingsVersion :: !(Maybe (Textual Int64))
    , _fcKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  FailoverContext' {_fcSettingsVersion = Nothing, _fcKind = Nothing}


-- | The current settings version of this instance. Request will be rejected
-- if this version doesn\'t match the current settings version.
fcSettingsVersion :: Lens' FailoverContext (Maybe Int64)
fcSettingsVersion
  = lens _fcSettingsVersion
      (\ s a -> s{_fcSettingsVersion = a})
      . mapping _Coerce

-- | This is always *sql#failoverContext*.
fcKind :: Lens' FailoverContext (Maybe Text)
fcKind = lens _fcKind (\ s a -> s{_fcKind = a})

instance FromJSON FailoverContext where
        parseJSON
          = withObject "FailoverContext"
              (\ o ->
                 FailoverContext' <$>
                   (o .:? "settingsVersion") <*> (o .:? "kind"))

instance ToJSON FailoverContext where
        toJSON FailoverContext'{..}
          = object
              (catMaybes
                 [("settingsVersion" .=) <$> _fcSettingsVersion,
                  ("kind" .=) <$> _fcKind])

-- | SslCert insert response.
--
-- /See:/ 'sslCertsInsertResponse' smart constructor.
data SSLCertsInsertResponse =
  SSLCertsInsertResponse'
    { _scirServerCaCert :: !(Maybe SSLCert)
    , _scirOperation :: !(Maybe Operation)
    , _scirKind :: !(Maybe Text)
    , _scirClientCert :: !(Maybe SSLCertDetail)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    , _scirKind = Nothing
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

-- | This is always *sql#sslCertsInsert*.
scirKind :: Lens' SSLCertsInsertResponse (Maybe Text)
scirKind = lens _scirKind (\ s a -> s{_scirKind = a})

-- | The new client certificate and private key.
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
                     (o .:? "kind")
                     <*> (o .:? "clientCert"))

instance ToJSON SSLCertsInsertResponse where
        toJSON SSLCertsInsertResponse'{..}
          = object
              (catMaybes
                 [("serverCaCert" .=) <$> _scirServerCaCert,
                  ("operation" .=) <$> _scirOperation,
                  ("kind" .=) <$> _scirKind,
                  ("clientCert" .=) <$> _scirClientCert])

-- | Connect settings retrieval response.
--
-- /See:/ 'connectSettings' smart constructor.
data ConnectSettings =
  ConnectSettings'
    { _csBackendType :: !(Maybe ConnectSettingsBackendType)
    , _csServerCaCert :: !(Maybe SSLCert)
    , _csDatabaseVersion :: !(Maybe ConnectSettingsDatabaseVersion)
    , _csKind :: !(Maybe Text)
    , _csIPAddresses :: !(Maybe [IPMApping])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConnectSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csBackendType'
--
-- * 'csServerCaCert'
--
-- * 'csDatabaseVersion'
--
-- * 'csKind'
--
-- * 'csIPAddresses'
connectSettings
    :: ConnectSettings
connectSettings =
  ConnectSettings'
    { _csBackendType = Nothing
    , _csServerCaCert = Nothing
    , _csDatabaseVersion = Nothing
    , _csKind = Nothing
    , _csIPAddresses = Nothing
    }


-- | **SECOND_GEN**: Cloud SQL database instance. **EXTERNAL**: A database
-- server that is not managed by Google. This property is read-only; use
-- the **tier** property in the **settings** object to determine the
-- database type.
csBackendType :: Lens' ConnectSettings (Maybe ConnectSettingsBackendType)
csBackendType
  = lens _csBackendType
      (\ s a -> s{_csBackendType = a})

-- | SSL configuration.
csServerCaCert :: Lens' ConnectSettings (Maybe SSLCert)
csServerCaCert
  = lens _csServerCaCert
      (\ s a -> s{_csServerCaCert = a})

-- | The database engine type and version. The **databaseVersion** field
-- cannot be changed after instance creation. MySQL instances:
-- **MYSQL_8_0**, **MYSQL_5_7** (default), or **MYSQL_5_6**. PostgreSQL
-- instances: **POSTGRES_9_6**, **POSTGRES_10**, **POSTGRES_11** or
-- **POSTGRES_12** (default). SQL Server instances:
-- **SQLSERVER_2017_STANDARD** (default), **SQLSERVER_2017_ENTERPRISE**,
-- **SQLSERVER_2017_EXPRESS**, or **SQLSERVER_2017_WEB**.
csDatabaseVersion :: Lens' ConnectSettings (Maybe ConnectSettingsDatabaseVersion)
csDatabaseVersion
  = lens _csDatabaseVersion
      (\ s a -> s{_csDatabaseVersion = a})

-- | This is always \`sql#connectSettings\`.
csKind :: Lens' ConnectSettings (Maybe Text)
csKind = lens _csKind (\ s a -> s{_csKind = a})

-- | The assigned IP addresses for the instance.
csIPAddresses :: Lens' ConnectSettings [IPMApping]
csIPAddresses
  = lens _csIPAddresses
      (\ s a -> s{_csIPAddresses = a})
      . _Default
      . _Coerce

instance FromJSON ConnectSettings where
        parseJSON
          = withObject "ConnectSettings"
              (\ o ->
                 ConnectSettings' <$>
                   (o .:? "backendType") <*> (o .:? "serverCaCert") <*>
                     (o .:? "databaseVersion")
                     <*> (o .:? "kind")
                     <*> (o .:? "ipAddresses" .!= mempty))

instance ToJSON ConnectSettings where
        toJSON ConnectSettings'{..}
          = object
              (catMaybes
                 [("backendType" .=) <$> _csBackendType,
                  ("serverCaCert" .=) <$> _csServerCaCert,
                  ("databaseVersion" .=) <$> _csDatabaseVersion,
                  ("kind" .=) <$> _csKind,
                  ("ipAddresses" .=) <$> _csIPAddresses])

-- | Database instances list response.
--
-- /See:/ 'instancesListResponse' smart constructor.
data InstancesListResponse =
  InstancesListResponse'
    { _ilrNextPageToken :: !(Maybe Text)
    , _ilrKind :: !(Maybe Text)
    , _ilrItems :: !(Maybe [DatabaseInstance])
    , _ilrWarnings :: !(Maybe [APIWarning])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilrNextPageToken'
--
-- * 'ilrKind'
--
-- * 'ilrItems'
--
-- * 'ilrWarnings'
instancesListResponse
    :: InstancesListResponse
instancesListResponse =
  InstancesListResponse'
    { _ilrNextPageToken = Nothing
    , _ilrKind = Nothing
    , _ilrItems = Nothing
    , _ilrWarnings = Nothing
    }


-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
ilrNextPageToken :: Lens' InstancesListResponse (Maybe Text)
ilrNextPageToken
  = lens _ilrNextPageToken
      (\ s a -> s{_ilrNextPageToken = a})

-- | This is always *sql#instancesList*.
ilrKind :: Lens' InstancesListResponse (Maybe Text)
ilrKind = lens _ilrKind (\ s a -> s{_ilrKind = a})

-- | List of database instance resources.
ilrItems :: Lens' InstancesListResponse [DatabaseInstance]
ilrItems
  = lens _ilrItems (\ s a -> s{_ilrItems = a}) .
      _Default
      . _Coerce

-- | List of warnings that occurred while handling the request.
ilrWarnings :: Lens' InstancesListResponse [APIWarning]
ilrWarnings
  = lens _ilrWarnings (\ s a -> s{_ilrWarnings = a}) .
      _Default
      . _Coerce

instance FromJSON InstancesListResponse where
        parseJSON
          = withObject "InstancesListResponse"
              (\ o ->
                 InstancesListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "warnings" .!= mempty))

instance ToJSON InstancesListResponse where
        toJSON InstancesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ilrNextPageToken,
                  ("kind" .=) <$> _ilrKind, ("items" .=) <$> _ilrItems,
                  ("warnings" .=) <$> _ilrWarnings])

-- | Read-replica configuration for connecting to the on-premises primary
-- instance.
--
-- /See:/ 'demoteMasterConfiguration' smart constructor.
data DemoteMasterConfiguration =
  DemoteMasterConfiguration'
    { _dmcKind :: !(Maybe Text)
    , _dmcMysqlReplicaConfiguration :: !(Maybe DemoteMasterMySQLReplicaConfiguration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DemoteMasterConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmcKind'
--
-- * 'dmcMysqlReplicaConfiguration'
demoteMasterConfiguration
    :: DemoteMasterConfiguration
demoteMasterConfiguration =
  DemoteMasterConfiguration'
    {_dmcKind = Nothing, _dmcMysqlReplicaConfiguration = Nothing}


-- | This is always **sql#demoteMasterConfiguration**.
dmcKind :: Lens' DemoteMasterConfiguration (Maybe Text)
dmcKind = lens _dmcKind (\ s a -> s{_dmcKind = a})

-- | MySQL specific configuration when replicating from a MySQL on-premises
-- primary instance. Replication configuration information such as the
-- username, password, certificates, and keys are not stored in the
-- instance metadata. The configuration information is used only to set up
-- the replication connection and is stored by MySQL in a file named
-- **master.info** in the data directory.
dmcMysqlReplicaConfiguration :: Lens' DemoteMasterConfiguration (Maybe DemoteMasterMySQLReplicaConfiguration)
dmcMysqlReplicaConfiguration
  = lens _dmcMysqlReplicaConfiguration
      (\ s a -> s{_dmcMysqlReplicaConfiguration = a})

instance FromJSON DemoteMasterConfiguration where
        parseJSON
          = withObject "DemoteMasterConfiguration"
              (\ o ->
                 DemoteMasterConfiguration' <$>
                   (o .:? "kind") <*>
                     (o .:? "mysqlReplicaConfiguration"))

instance ToJSON DemoteMasterConfiguration where
        toJSON DemoteMasterConfiguration'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _dmcKind,
                  ("mysqlReplicaConfiguration" .=) <$>
                    _dmcMysqlReplicaConfiguration])

-- | Database instance backup configuration.
--
-- /See:/ 'backupConfiguration' smart constructor.
data BackupConfiguration =
  BackupConfiguration'
    { _bcReplicationLogArchivingEnabled :: !(Maybe Bool)
    , _bcLocation :: !(Maybe Text)
    , _bcEnabled :: !(Maybe Bool)
    , _bcStartTime :: !(Maybe Text)
    , _bcKind :: !(Maybe Text)
    , _bcBinaryLogEnabled :: !(Maybe Bool)
    , _bcBackupRetentionSettings :: !(Maybe BackupRetentionSettings)
    , _bcPointInTimeRecoveryEnabled :: !(Maybe Bool)
    , _bcTransactionLogRetentionDays :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcReplicationLogArchivingEnabled'
--
-- * 'bcLocation'
--
-- * 'bcEnabled'
--
-- * 'bcStartTime'
--
-- * 'bcKind'
--
-- * 'bcBinaryLogEnabled'
--
-- * 'bcBackupRetentionSettings'
--
-- * 'bcPointInTimeRecoveryEnabled'
--
-- * 'bcTransactionLogRetentionDays'
backupConfiguration
    :: BackupConfiguration
backupConfiguration =
  BackupConfiguration'
    { _bcReplicationLogArchivingEnabled = Nothing
    , _bcLocation = Nothing
    , _bcEnabled = Nothing
    , _bcStartTime = Nothing
    , _bcKind = Nothing
    , _bcBinaryLogEnabled = Nothing
    , _bcBackupRetentionSettings = Nothing
    , _bcPointInTimeRecoveryEnabled = Nothing
    , _bcTransactionLogRetentionDays = Nothing
    }


-- | Reserved for future use.
bcReplicationLogArchivingEnabled :: Lens' BackupConfiguration (Maybe Bool)
bcReplicationLogArchivingEnabled
  = lens _bcReplicationLogArchivingEnabled
      (\ s a -> s{_bcReplicationLogArchivingEnabled = a})

-- | Location of the backup
bcLocation :: Lens' BackupConfiguration (Maybe Text)
bcLocation
  = lens _bcLocation (\ s a -> s{_bcLocation = a})

-- | Whether this configuration is enabled.
bcEnabled :: Lens' BackupConfiguration (Maybe Bool)
bcEnabled
  = lens _bcEnabled (\ s a -> s{_bcEnabled = a})

-- | Start time for the daily backup configuration in UTC timezone in the 24
-- hour format - **HH:MM**.
bcStartTime :: Lens' BackupConfiguration (Maybe Text)
bcStartTime
  = lens _bcStartTime (\ s a -> s{_bcStartTime = a})

-- | This is always **sql#backupConfiguration**.
bcKind :: Lens' BackupConfiguration (Maybe Text)
bcKind = lens _bcKind (\ s a -> s{_bcKind = a})

-- | (MySQL only) Whether binary log is enabled. If backup configuration is
-- disabled, binarylog must be disabled as well.
bcBinaryLogEnabled :: Lens' BackupConfiguration (Maybe Bool)
bcBinaryLogEnabled
  = lens _bcBinaryLogEnabled
      (\ s a -> s{_bcBinaryLogEnabled = a})

-- | Backup retention settings.
bcBackupRetentionSettings :: Lens' BackupConfiguration (Maybe BackupRetentionSettings)
bcBackupRetentionSettings
  = lens _bcBackupRetentionSettings
      (\ s a -> s{_bcBackupRetentionSettings = a})

-- | (Postgres only) Whether point in time recovery is enabled.
bcPointInTimeRecoveryEnabled :: Lens' BackupConfiguration (Maybe Bool)
bcPointInTimeRecoveryEnabled
  = lens _bcPointInTimeRecoveryEnabled
      (\ s a -> s{_bcPointInTimeRecoveryEnabled = a})

-- | The number of days of transaction logs we retain for point in time
-- restore, from 1-7.
bcTransactionLogRetentionDays :: Lens' BackupConfiguration (Maybe Int32)
bcTransactionLogRetentionDays
  = lens _bcTransactionLogRetentionDays
      (\ s a -> s{_bcTransactionLogRetentionDays = a})
      . mapping _Coerce

instance FromJSON BackupConfiguration where
        parseJSON
          = withObject "BackupConfiguration"
              (\ o ->
                 BackupConfiguration' <$>
                   (o .:? "replicationLogArchivingEnabled") <*>
                     (o .:? "location")
                     <*> (o .:? "enabled")
                     <*> (o .:? "startTime")
                     <*> (o .:? "kind")
                     <*> (o .:? "binaryLogEnabled")
                     <*> (o .:? "backupRetentionSettings")
                     <*> (o .:? "pointInTimeRecoveryEnabled")
                     <*> (o .:? "transactionLogRetentionDays"))

instance ToJSON BackupConfiguration where
        toJSON BackupConfiguration'{..}
          = object
              (catMaybes
                 [("replicationLogArchivingEnabled" .=) <$>
                    _bcReplicationLogArchivingEnabled,
                  ("location" .=) <$> _bcLocation,
                  ("enabled" .=) <$> _bcEnabled,
                  ("startTime" .=) <$> _bcStartTime,
                  ("kind" .=) <$> _bcKind,
                  ("binaryLogEnabled" .=) <$> _bcBinaryLogEnabled,
                  ("backupRetentionSettings" .=) <$>
                    _bcBackupRetentionSettings,
                  ("pointInTimeRecoveryEnabled" .=) <$>
                    _bcPointInTimeRecoveryEnabled,
                  ("transactionLogRetentionDays" .=) <$>
                    _bcTransactionLogRetentionDays])

-- | Deny maintenance Periods. This specifies a date range during when all
-- CSA rollout will be denied.
--
-- /See:/ 'denyMaintenancePeriod' smart constructor.
data DenyMaintenancePeriod =
  DenyMaintenancePeriod'
    { _dmpTime :: !(Maybe Text)
    , _dmpEndDate :: !(Maybe Text)
    , _dmpStartDate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DenyMaintenancePeriod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmpTime'
--
-- * 'dmpEndDate'
--
-- * 'dmpStartDate'
denyMaintenancePeriod
    :: DenyMaintenancePeriod
denyMaintenancePeriod =
  DenyMaintenancePeriod'
    {_dmpTime = Nothing, _dmpEndDate = Nothing, _dmpStartDate = Nothing}


-- | Time in UTC when the \"deny maintenance period\" starts on start_date
-- and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
dmpTime :: Lens' DenyMaintenancePeriod (Maybe Text)
dmpTime = lens _dmpTime (\ s a -> s{_dmpTime = a})

-- | \"deny maintenance period\" end date. If the year of the end date is
-- empty, the year of the start date also must be empty. In this case, it
-- means the no maintenance interval recurs every year. The date is in
-- format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
dmpEndDate :: Lens' DenyMaintenancePeriod (Maybe Text)
dmpEndDate
  = lens _dmpEndDate (\ s a -> s{_dmpEndDate = a})

-- | \"deny maintenance period\" start date. If the year of the start date is
-- empty, the year of the end date also must be empty. In this case, it
-- means the no maintenance interval recurs every year. The date is in
-- format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
dmpStartDate :: Lens' DenyMaintenancePeriod (Maybe Text)
dmpStartDate
  = lens _dmpStartDate (\ s a -> s{_dmpStartDate = a})

instance FromJSON DenyMaintenancePeriod where
        parseJSON
          = withObject "DenyMaintenancePeriod"
              (\ o ->
                 DenyMaintenancePeriod' <$>
                   (o .:? "time") <*> (o .:? "endDate") <*>
                     (o .:? "startDate"))

instance ToJSON DenyMaintenancePeriod where
        toJSON DenyMaintenancePeriod'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _dmpTime,
                  ("endDate" .=) <$> _dmpEndDate,
                  ("startDate" .=) <$> _dmpStartDate])

-- | Database instance import request.
--
-- /See:/ 'instancesImportRequest' smart constructor.
newtype InstancesImportRequest =
  InstancesImportRequest'
    { _iirImportContext :: Maybe ImportContext
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesImportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iirImportContext'
instancesImportRequest
    :: InstancesImportRequest
instancesImportRequest = InstancesImportRequest' {_iirImportContext = Nothing}


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

-- | Preferred location. This specifies where a Cloud SQL instance is
-- located. Note that if the preferred location is not available, the
-- instance will be located as close as possible within the region. Only
-- one location may be specified.
--
-- /See:/ 'locationPreference' smart constructor.
data LocationPreference =
  LocationPreference'
    { _lpKind :: !(Maybe Text)
    , _lpFollowGaeApplication :: !(Maybe Text)
    , _lpZone :: !(Maybe Text)
    , _lpSecondaryZone :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationPreference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpKind'
--
-- * 'lpFollowGaeApplication'
--
-- * 'lpZone'
--
-- * 'lpSecondaryZone'
locationPreference
    :: LocationPreference
locationPreference =
  LocationPreference'
    { _lpKind = Nothing
    , _lpFollowGaeApplication = Nothing
    , _lpZone = Nothing
    , _lpSecondaryZone = Nothing
    }


-- | This is always **sql#locationPreference**.
lpKind :: Lens' LocationPreference (Maybe Text)
lpKind = lens _lpKind (\ s a -> s{_lpKind = a})

-- | The App Engine application to follow, it must be in the same region as
-- the Cloud SQL instance.
lpFollowGaeApplication :: Lens' LocationPreference (Maybe Text)
lpFollowGaeApplication
  = lens _lpFollowGaeApplication
      (\ s a -> s{_lpFollowGaeApplication = a})

-- | The preferred Compute Engine zone (for example: us-central1-a,
-- us-central1-b, etc.).
lpZone :: Lens' LocationPreference (Maybe Text)
lpZone = lens _lpZone (\ s a -> s{_lpZone = a})

-- | The preferred Compute Engine zone for the secondary\/failover (for
-- example: us-central1-a, us-central1-b, etc.). Reserved for future use.
lpSecondaryZone :: Lens' LocationPreference (Maybe Text)
lpSecondaryZone
  = lens _lpSecondaryZone
      (\ s a -> s{_lpSecondaryZone = a})

instance FromJSON LocationPreference where
        parseJSON
          = withObject "LocationPreference"
              (\ o ->
                 LocationPreference' <$>
                   (o .:? "kind") <*> (o .:? "followGaeApplication") <*>
                     (o .:? "zone")
                     <*> (o .:? "secondaryZone"))

instance ToJSON LocationPreference where
        toJSON LocationPreference'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _lpKind,
                  ("followGaeApplication" .=) <$>
                    _lpFollowGaeApplication,
                  ("zone" .=) <$> _lpZone,
                  ("secondaryZone" .=) <$> _lpSecondaryZone])

-- | Flags list response.
--
-- /See:/ 'flagsListResponse' smart constructor.
data FlagsListResponse =
  FlagsListResponse'
    { _flrKind :: !(Maybe Text)
    , _flrItems :: !(Maybe [Flag])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FlagsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flrKind'
--
-- * 'flrItems'
flagsListResponse
    :: FlagsListResponse
flagsListResponse = FlagsListResponse' {_flrKind = Nothing, _flrItems = Nothing}


-- | This is always **sql#flagsList**.
flrKind :: Lens' FlagsListResponse (Maybe Text)
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
                   (o .:? "kind") <*> (o .:? "items" .!= mempty))

instance ToJSON FlagsListResponse where
        toJSON FlagsListResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _flrKind,
                  ("items" .=) <$> _flrItems])

-- | Instance truncate log request.
--
-- /See:/ 'instancesTruncateLogRequest' smart constructor.
newtype InstancesTruncateLogRequest =
  InstancesTruncateLogRequest'
    { _itlrTruncateLogContext :: Maybe TruncateLogContext
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesTruncateLogRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlrTruncateLogContext'
instancesTruncateLogRequest
    :: InstancesTruncateLogRequest
instancesTruncateLogRequest =
  InstancesTruncateLogRequest' {_itlrTruncateLogContext = Nothing}


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
data ExportContextSQLExportOptions =
  ExportContextSQLExportOptions'
    { _ecsqleoSchemaOnly :: !(Maybe Bool)
    , _ecsqleoMysqlExportOptions :: !(Maybe ExportContextSQLExportOptionsMysqlExportOptions)
    , _ecsqleoTables :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportContextSQLExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecsqleoSchemaOnly'
--
-- * 'ecsqleoMysqlExportOptions'
--
-- * 'ecsqleoTables'
exportContextSQLExportOptions
    :: ExportContextSQLExportOptions
exportContextSQLExportOptions =
  ExportContextSQLExportOptions'
    { _ecsqleoSchemaOnly = Nothing
    , _ecsqleoMysqlExportOptions = Nothing
    , _ecsqleoTables = Nothing
    }


-- | Export only schemas.
ecsqleoSchemaOnly :: Lens' ExportContextSQLExportOptions (Maybe Bool)
ecsqleoSchemaOnly
  = lens _ecsqleoSchemaOnly
      (\ s a -> s{_ecsqleoSchemaOnly = a})

-- | Options for exporting from MySQL.
ecsqleoMysqlExportOptions :: Lens' ExportContextSQLExportOptions (Maybe ExportContextSQLExportOptionsMysqlExportOptions)
ecsqleoMysqlExportOptions
  = lens _ecsqleoMysqlExportOptions
      (\ s a -> s{_ecsqleoMysqlExportOptions = a})

-- | Tables to export, or that were exported, from the specified database. If
-- you specify tables, specify one and only one database. For PostgreSQL
-- instances, you can specify only one table.
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
                   (o .:? "schemaOnly") <*> (o .:? "mysqlExportOptions")
                     <*> (o .:? "tables" .!= mempty))

instance ToJSON ExportContextSQLExportOptions where
        toJSON ExportContextSQLExportOptions'{..}
          = object
              (catMaybes
                 [("schemaOnly" .=) <$> _ecsqleoSchemaOnly,
                  ("mysqlExportOptions" .=) <$>
                    _ecsqleoMysqlExportOptions,
                  ("tables" .=) <$> _ecsqleoTables])

-- | Backup context.
--
-- /See:/ 'backupContext' smart constructor.
data BackupContext =
  BackupContext'
    { _bKind :: !(Maybe Text)
    , _bBackupId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bKind'
--
-- * 'bBackupId'
backupContext
    :: BackupContext
backupContext = BackupContext' {_bKind = Nothing, _bBackupId = Nothing}


-- | This is always **sql#backupContext**.
bKind :: Lens' BackupContext (Maybe Text)
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | The identifier of the backup.
bBackupId :: Lens' BackupContext (Maybe Int64)
bBackupId
  = lens _bBackupId (\ s a -> s{_bBackupId = a}) .
      mapping _Coerce

instance FromJSON BackupContext where
        parseJSON
          = withObject "BackupContext"
              (\ o ->
                 BackupContext' <$>
                   (o .:? "kind") <*> (o .:? "backupId"))

instance ToJSON BackupContext where
        toJSON BackupContext'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _bKind,
                  ("backupId" .=) <$> _bBackupId])

-- | Database instance restore from backup context. Backup context contains
-- source instance id and project id.
--
-- /See:/ 'restoreBackupContext' smart constructor.
data RestoreBackupContext =
  RestoreBackupContext'
    { _rbcInstanceId :: !(Maybe Text)
    , _rbcBackupRunId :: !(Maybe (Textual Int64))
    , _rbcProject :: !(Maybe Text)
    , _rbcKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreBackupContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbcInstanceId'
--
-- * 'rbcBackupRunId'
--
-- * 'rbcProject'
--
-- * 'rbcKind'
restoreBackupContext
    :: RestoreBackupContext
restoreBackupContext =
  RestoreBackupContext'
    { _rbcInstanceId = Nothing
    , _rbcBackupRunId = Nothing
    , _rbcProject = Nothing
    , _rbcKind = Nothing
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

-- | The full project ID of the source instance.
rbcProject :: Lens' RestoreBackupContext (Maybe Text)
rbcProject
  = lens _rbcProject (\ s a -> s{_rbcProject = a})

-- | This is always *sql#restoreBackupContext*.
rbcKind :: Lens' RestoreBackupContext (Maybe Text)
rbcKind = lens _rbcKind (\ s a -> s{_rbcKind = a})

instance FromJSON RestoreBackupContext where
        parseJSON
          = withObject "RestoreBackupContext"
              (\ o ->
                 RestoreBackupContext' <$>
                   (o .:? "instanceId") <*> (o .:? "backupRunId") <*>
                     (o .:? "project")
                     <*> (o .:? "kind"))

instance ToJSON RestoreBackupContext where
        toJSON RestoreBackupContext'{..}
          = object
              (catMaybes
                 [("instanceId" .=) <$> _rbcInstanceId,
                  ("backupRunId" .=) <$> _rbcBackupRunId,
                  ("project" .=) <$> _rbcProject,
                  ("kind" .=) <$> _rbcKind])

-- | Database instance demote primary instance context.
--
-- /See:/ 'demoteMasterContext' smart constructor.
data DemoteMasterContext =
  DemoteMasterContext'
    { _demVerifyGtidConsistency :: !(Maybe Bool)
    , _demKind :: !(Maybe Text)
    , _demMasterInstanceName :: !(Maybe Text)
    , _demReplicaConfiguration :: !(Maybe DemoteMasterConfiguration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DemoteMasterContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'demVerifyGtidConsistency'
--
-- * 'demKind'
--
-- * 'demMasterInstanceName'
--
-- * 'demReplicaConfiguration'
demoteMasterContext
    :: DemoteMasterContext
demoteMasterContext =
  DemoteMasterContext'
    { _demVerifyGtidConsistency = Nothing
    , _demKind = Nothing
    , _demMasterInstanceName = Nothing
    , _demReplicaConfiguration = Nothing
    }


-- | Verify GTID consistency for demote operation. Default value: *True*.
-- Setting this flag to false enables you to bypass GTID consistency check
-- between on-premises primary instance and Cloud SQL instance during the
-- demotion operation but also exposes you to the risk of future
-- replication failures. Change the value value only if you know the reason
-- for the GTID divergence and are confident that doing so will not cause
-- any replication issues.
demVerifyGtidConsistency :: Lens' DemoteMasterContext (Maybe Bool)
demVerifyGtidConsistency
  = lens _demVerifyGtidConsistency
      (\ s a -> s{_demVerifyGtidConsistency = a})

-- | This is always *sql#demoteMasterContext*.
demKind :: Lens' DemoteMasterContext (Maybe Text)
demKind = lens _demKind (\ s a -> s{_demKind = a})

-- | The name of the instance which will act as on-premises primary instance
-- in the replication setup.
demMasterInstanceName :: Lens' DemoteMasterContext (Maybe Text)
demMasterInstanceName
  = lens _demMasterInstanceName
      (\ s a -> s{_demMasterInstanceName = a})

-- | Configuration specific to read-replicas replicating from the on-premises
-- primary instance.
demReplicaConfiguration :: Lens' DemoteMasterContext (Maybe DemoteMasterConfiguration)
demReplicaConfiguration
  = lens _demReplicaConfiguration
      (\ s a -> s{_demReplicaConfiguration = a})

instance FromJSON DemoteMasterContext where
        parseJSON
          = withObject "DemoteMasterContext"
              (\ o ->
                 DemoteMasterContext' <$>
                   (o .:? "verifyGtidConsistency") <*> (o .:? "kind")
                     <*> (o .:? "masterInstanceName")
                     <*> (o .:? "replicaConfiguration"))

instance ToJSON DemoteMasterContext where
        toJSON DemoteMasterContext'{..}
          = object
              (catMaybes
                 [("verifyGtidConsistency" .=) <$>
                    _demVerifyGtidConsistency,
                  ("kind" .=) <$> _demKind,
                  ("masterInstanceName" .=) <$> _demMasterInstanceName,
                  ("replicaConfiguration" .=) <$>
                    _demReplicaConfiguration])

-- | User-provided labels, represented as a dictionary where each label is a
-- single key value pair.
--
-- /See:/ 'settingsUserLabels' smart constructor.
newtype SettingsUserLabels =
  SettingsUserLabels'
    { _sulAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsUserLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sulAddtional'
settingsUserLabels
    :: HashMap Text Text -- ^ 'sulAddtional'
    -> SettingsUserLabels
settingsUserLabels pSulAddtional_ =
  SettingsUserLabels' {_sulAddtional = _Coerce # pSulAddtional_}


sulAddtional :: Lens' SettingsUserLabels (HashMap Text Text)
sulAddtional
  = lens _sulAddtional (\ s a -> s{_sulAddtional = a})
      . _Coerce

instance FromJSON SettingsUserLabels where
        parseJSON
          = withObject "SettingsUserLabels"
              (\ o -> SettingsUserLabels' <$> (parseJSONObject o))

instance ToJSON SettingsUserLabels where
        toJSON = toJSON . _sulAddtional
