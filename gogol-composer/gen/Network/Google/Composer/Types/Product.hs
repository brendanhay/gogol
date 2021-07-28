{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Composer.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Composer.Types.Product where

import Network.Google.Composer.Types.Sum
import Network.Google.Prelude

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationSchema' smart constructor.
newtype OperationSchema =
  OperationSchema'
    { _osAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAddtional'
operationSchema
    :: HashMap Text JSONValue -- ^ 'osAddtional'
    -> OperationSchema
operationSchema pOsAddtional_ =
  OperationSchema' {_osAddtional = _Coerce # pOsAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
osAddtional :: Lens' OperationSchema (HashMap Text JSONValue)
osAddtional
  = lens _osAddtional (\ s a -> s{_osAddtional = a}) .
      _Coerce

instance FromJSON OperationSchema where
        parseJSON
          = withObject "OperationSchema"
              (\ o -> OperationSchema' <$> (parseJSONObject o))

instance ToJSON OperationSchema where
        toJSON = toJSON . _osAddtional

-- | The ImageVersions in a project and location.
--
-- /See:/ 'listImageVersionsResponse' smart constructor.
data ListImageVersionsResponse =
  ListImageVersionsResponse'
    { _livrNextPageToken :: !(Maybe Text)
    , _livrImageVersions :: !(Maybe [ImageVersion])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListImageVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'livrNextPageToken'
--
-- * 'livrImageVersions'
listImageVersionsResponse
    :: ListImageVersionsResponse
listImageVersionsResponse =
  ListImageVersionsResponse'
    {_livrNextPageToken = Nothing, _livrImageVersions = Nothing}


-- | The page token used to query for the next page if one exists.
livrNextPageToken :: Lens' ListImageVersionsResponse (Maybe Text)
livrNextPageToken
  = lens _livrNextPageToken
      (\ s a -> s{_livrNextPageToken = a})

-- | The list of supported ImageVersions in a location.
livrImageVersions :: Lens' ListImageVersionsResponse [ImageVersion]
livrImageVersions
  = lens _livrImageVersions
      (\ s a -> s{_livrImageVersions = a})
      . _Default
      . _Coerce

instance FromJSON ListImageVersionsResponse where
        parseJSON
          = withObject "ListImageVersionsResponse"
              (\ o ->
                 ListImageVersionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "imageVersions" .!= mempty))

instance ToJSON ListImageVersionsResponse where
        toJSON ListImageVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _livrNextPageToken,
                  ("imageVersions" .=) <$> _livrImageVersions])

-- | The environments in a project and location.
--
-- /See:/ 'listEnvironmentsResponse' smart constructor.
data ListEnvironmentsResponse =
  ListEnvironmentsResponse'
    { _lerNextPageToken :: !(Maybe Text)
    , _lerEnvironments :: !(Maybe [Environment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListEnvironmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerNextPageToken'
--
-- * 'lerEnvironments'
listEnvironmentsResponse
    :: ListEnvironmentsResponse
listEnvironmentsResponse =
  ListEnvironmentsResponse'
    {_lerNextPageToken = Nothing, _lerEnvironments = Nothing}


-- | The page token used to query for the next page if one exists.
lerNextPageToken :: Lens' ListEnvironmentsResponse (Maybe Text)
lerNextPageToken
  = lens _lerNextPageToken
      (\ s a -> s{_lerNextPageToken = a})

-- | The list of environments returned by a ListEnvironmentsRequest.
lerEnvironments :: Lens' ListEnvironmentsResponse [Environment]
lerEnvironments
  = lens _lerEnvironments
      (\ s a -> s{_lerEnvironments = a})
      . _Default
      . _Coerce

instance FromJSON ListEnvironmentsResponse where
        parseJSON
          = withObject "ListEnvironmentsResponse"
              (\ o ->
                 ListEnvironmentsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "environments" .!= mempty))

instance ToJSON ListEnvironmentsResponse where
        toJSON ListEnvironmentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lerNextPageToken,
                  ("environments" .=) <$> _lerEnvironments])

-- | The configuration settings for the Airflow web server App Engine
-- instance.
--
-- /See:/ 'webServerConfig' smart constructor.
newtype WebServerConfig =
  WebServerConfig'
    { _wscMachineType :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebServerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wscMachineType'
webServerConfig
    :: WebServerConfig
webServerConfig = WebServerConfig' {_wscMachineType = Nothing}


-- | Optional. Machine type on which Airflow web server is running. It has to
-- be one of: composer-n1-webserver-2, composer-n1-webserver-4 or
-- composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will
-- be used. Value custom is returned only in response, if Airflow web
-- server parameters were manually changed to a non-standard values.
wscMachineType :: Lens' WebServerConfig (Maybe Text)
wscMachineType
  = lens _wscMachineType
      (\ s a -> s{_wscMachineType = a})

instance FromJSON WebServerConfig where
        parseJSON
          = withObject "WebServerConfig"
              (\ o -> WebServerConfig' <$> (o .:? "machineType"))

instance ToJSON WebServerConfig where
        toJSON WebServerConfig'{..}
          = object
              (catMaybes [("machineType" .=) <$> _wscMachineType])

-- | The configuration of Cloud SQL instance that is used by the Apache
-- Airflow software.
--
-- /See:/ 'databaseConfig' smart constructor.
newtype DatabaseConfig =
  DatabaseConfig'
    { _dcMachineType :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabaseConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcMachineType'
databaseConfig
    :: DatabaseConfig
databaseConfig = DatabaseConfig' {_dcMachineType = Nothing}


-- | Optional. Cloud SQL machine type used by Airflow database. It has to be
-- one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or
-- db-n1-standard-16. If not specified, db-n1-standard-2 will be used.
dcMachineType :: Lens' DatabaseConfig (Maybe Text)
dcMachineType
  = lens _dcMachineType
      (\ s a -> s{_dcMachineType = a})

instance FromJSON DatabaseConfig where
        parseJSON
          = withObject "DatabaseConfig"
              (\ o -> DatabaseConfig' <$> (o .:? "machineType"))

instance ToJSON DatabaseConfig where
        toJSON DatabaseConfig'{..}
          = object
              (catMaybes [("machineType" .=) <$> _dcMachineType])

-- | Configuration information for an environment.
--
-- /See:/ 'environmentConfig' smart constructor.
data EnvironmentConfig =
  EnvironmentConfig'
    { _ecDatabaseConfig :: !(Maybe DatabaseConfig)
    , _ecWebServerConfig :: !(Maybe WebServerConfig)
    , _ecNodeConfig :: !(Maybe NodeConfig)
    , _ecNodeCount :: !(Maybe (Textual Int32))
    , _ecPrivateEnvironmentConfig :: !(Maybe PrivateEnvironmentConfig)
    , _ecEncryptionConfig :: !(Maybe EncryptionConfig)
    , _ecSoftwareConfig :: !(Maybe SoftwareConfig)
    , _ecDagGcsPrefix :: !(Maybe Text)
    , _ecWebServerNetworkAccessControl :: !(Maybe WebServerNetworkAccessControl)
    , _ecGkeCluster :: !(Maybe Text)
    , _ecAirflowURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecDatabaseConfig'
--
-- * 'ecWebServerConfig'
--
-- * 'ecNodeConfig'
--
-- * 'ecNodeCount'
--
-- * 'ecPrivateEnvironmentConfig'
--
-- * 'ecEncryptionConfig'
--
-- * 'ecSoftwareConfig'
--
-- * 'ecDagGcsPrefix'
--
-- * 'ecWebServerNetworkAccessControl'
--
-- * 'ecGkeCluster'
--
-- * 'ecAirflowURI'
environmentConfig
    :: EnvironmentConfig
environmentConfig =
  EnvironmentConfig'
    { _ecDatabaseConfig = Nothing
    , _ecWebServerConfig = Nothing
    , _ecNodeConfig = Nothing
    , _ecNodeCount = Nothing
    , _ecPrivateEnvironmentConfig = Nothing
    , _ecEncryptionConfig = Nothing
    , _ecSoftwareConfig = Nothing
    , _ecDagGcsPrefix = Nothing
    , _ecWebServerNetworkAccessControl = Nothing
    , _ecGkeCluster = Nothing
    , _ecAirflowURI = Nothing
    }


-- | Optional. The configuration settings for Cloud SQL instance used
-- internally by Apache Airflow software.
ecDatabaseConfig :: Lens' EnvironmentConfig (Maybe DatabaseConfig)
ecDatabaseConfig
  = lens _ecDatabaseConfig
      (\ s a -> s{_ecDatabaseConfig = a})

-- | Optional. The configuration settings for the Airflow web server App
-- Engine instance.
ecWebServerConfig :: Lens' EnvironmentConfig (Maybe WebServerConfig)
ecWebServerConfig
  = lens _ecWebServerConfig
      (\ s a -> s{_ecWebServerConfig = a})

-- | The configuration used for the Kubernetes Engine cluster.
ecNodeConfig :: Lens' EnvironmentConfig (Maybe NodeConfig)
ecNodeConfig
  = lens _ecNodeConfig (\ s a -> s{_ecNodeConfig = a})

-- | The number of nodes in the Kubernetes Engine cluster that will be used
-- to run this environment.
ecNodeCount :: Lens' EnvironmentConfig (Maybe Int32)
ecNodeCount
  = lens _ecNodeCount (\ s a -> s{_ecNodeCount = a}) .
      mapping _Coerce

-- | The configuration used for the Private IP Cloud Composer environment.
ecPrivateEnvironmentConfig :: Lens' EnvironmentConfig (Maybe PrivateEnvironmentConfig)
ecPrivateEnvironmentConfig
  = lens _ecPrivateEnvironmentConfig
      (\ s a -> s{_ecPrivateEnvironmentConfig = a})

-- | Optional. The encryption options for the Cloud Composer environment and
-- its dependencies. Cannot be updated.
ecEncryptionConfig :: Lens' EnvironmentConfig (Maybe EncryptionConfig)
ecEncryptionConfig
  = lens _ecEncryptionConfig
      (\ s a -> s{_ecEncryptionConfig = a})

-- | The configuration settings for software inside the environment.
ecSoftwareConfig :: Lens' EnvironmentConfig (Maybe SoftwareConfig)
ecSoftwareConfig
  = lens _ecSoftwareConfig
      (\ s a -> s{_ecSoftwareConfig = a})

-- | Output only. The Cloud Storage prefix of the DAGs for this environment.
-- Although Cloud Storage objects reside in a flat namespace, a
-- hierarchical file tree can be simulated using \"\/\"-delimited object
-- name prefixes. DAG objects for this environment reside in a simulated
-- directory with the given prefix.
ecDagGcsPrefix :: Lens' EnvironmentConfig (Maybe Text)
ecDagGcsPrefix
  = lens _ecDagGcsPrefix
      (\ s a -> s{_ecDagGcsPrefix = a})

-- | Optional. The network-level access control policy for the Airflow web
-- server. If unspecified, no network-level access restrictions will be
-- applied.
ecWebServerNetworkAccessControl :: Lens' EnvironmentConfig (Maybe WebServerNetworkAccessControl)
ecWebServerNetworkAccessControl
  = lens _ecWebServerNetworkAccessControl
      (\ s a -> s{_ecWebServerNetworkAccessControl = a})

-- | Output only. The Kubernetes Engine cluster used to run this environment.
ecGkeCluster :: Lens' EnvironmentConfig (Maybe Text)
ecGkeCluster
  = lens _ecGkeCluster (\ s a -> s{_ecGkeCluster = a})

-- | Output only. The URI of the Apache Airflow Web UI hosted within this
-- environment (see [Airflow web
-- interface](\/composer\/docs\/how-to\/accessing\/airflow-web-interface)).
ecAirflowURI :: Lens' EnvironmentConfig (Maybe Text)
ecAirflowURI
  = lens _ecAirflowURI (\ s a -> s{_ecAirflowURI = a})

instance FromJSON EnvironmentConfig where
        parseJSON
          = withObject "EnvironmentConfig"
              (\ o ->
                 EnvironmentConfig' <$>
                   (o .:? "databaseConfig") <*>
                     (o .:? "webServerConfig")
                     <*> (o .:? "nodeConfig")
                     <*> (o .:? "nodeCount")
                     <*> (o .:? "privateEnvironmentConfig")
                     <*> (o .:? "encryptionConfig")
                     <*> (o .:? "softwareConfig")
                     <*> (o .:? "dagGcsPrefix")
                     <*> (o .:? "webServerNetworkAccessControl")
                     <*> (o .:? "gkeCluster")
                     <*> (o .:? "airflowUri"))

instance ToJSON EnvironmentConfig where
        toJSON EnvironmentConfig'{..}
          = object
              (catMaybes
                 [("databaseConfig" .=) <$> _ecDatabaseConfig,
                  ("webServerConfig" .=) <$> _ecWebServerConfig,
                  ("nodeConfig" .=) <$> _ecNodeConfig,
                  ("nodeCount" .=) <$> _ecNodeCount,
                  ("privateEnvironmentConfig" .=) <$>
                    _ecPrivateEnvironmentConfig,
                  ("encryptionConfig" .=) <$> _ecEncryptionConfig,
                  ("softwareConfig" .=) <$> _ecSoftwareConfig,
                  ("dagGcsPrefix" .=) <$> _ecDagGcsPrefix,
                  ("webServerNetworkAccessControl" .=) <$>
                    _ecWebServerNetworkAccessControl,
                  ("gkeCluster" .=) <$> _ecGkeCluster,
                  ("airflowUri" .=) <$> _ecAirflowURI])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | The configuration information for the Kubernetes Engine nodes running
-- the Apache Airflow software.
--
-- /See:/ 'nodeConfig' smart constructor.
data NodeConfig =
  NodeConfig'
    { _ncDiskSizeGb :: !(Maybe (Textual Int32))
    , _ncLocation :: !(Maybe Text)
    , _ncNetwork :: !(Maybe Text)
    , _ncOAuthScopes :: !(Maybe [Text])
    , _ncIPAllocationPolicy :: !(Maybe IPAllocationPolicy)
    , _ncServiceAccount :: !(Maybe Text)
    , _ncSubnetwork :: !(Maybe Text)
    , _ncMachineType :: !(Maybe Text)
    , _ncTags :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncDiskSizeGb'
--
-- * 'ncLocation'
--
-- * 'ncNetwork'
--
-- * 'ncOAuthScopes'
--
-- * 'ncIPAllocationPolicy'
--
-- * 'ncServiceAccount'
--
-- * 'ncSubnetwork'
--
-- * 'ncMachineType'
--
-- * 'ncTags'
nodeConfig
    :: NodeConfig
nodeConfig =
  NodeConfig'
    { _ncDiskSizeGb = Nothing
    , _ncLocation = Nothing
    , _ncNetwork = Nothing
    , _ncOAuthScopes = Nothing
    , _ncIPAllocationPolicy = Nothing
    , _ncServiceAccount = Nothing
    , _ncSubnetwork = Nothing
    , _ncMachineType = Nothing
    , _ncTags = Nothing
    }


-- | Optional. The disk size in GB used for node VMs. Minimum size is 20GB.
-- If unspecified, defaults to 100GB. Cannot be updated.
ncDiskSizeGb :: Lens' NodeConfig (Maybe Int32)
ncDiskSizeGb
  = lens _ncDiskSizeGb (\ s a -> s{_ncDiskSizeGb = a})
      . mapping _Coerce

-- | Optional. The Compute Engine [zone](\/compute\/docs\/regions-zones) in
-- which to deploy the VMs used to run the Apache Airflow software,
-- specified as a [relative resource
-- name](\/apis\/design\/resource_names#relative_resource_name). For
-- example: \"projects\/{projectId}\/zones\/{zoneId}\". This \`location\`
-- must belong to the enclosing environment\'s project and location. If
-- both this field and \`nodeConfig.machineType\` are specified,
-- \`nodeConfig.machineType\` must belong to this \`location\`; if both are
-- unspecified, the service will pick a zone in the Compute Engine region
-- corresponding to the Cloud Composer location, and propagate that choice
-- to both fields. If only one field (\`location\` or
-- \`nodeConfig.machineType\`) is specified, the location information from
-- the specified field will be propagated to the unspecified field.
ncLocation :: Lens' NodeConfig (Maybe Text)
ncLocation
  = lens _ncLocation (\ s a -> s{_ncLocation = a})

-- | Optional. The Compute Engine network to be used for machine
-- communications, specified as a [relative resource
-- name](\/apis\/design\/resource_names#relative_resource_name). For
-- example: \"projects\/{projectId}\/global\/networks\/{networkId}\". If
-- unspecified, the \"default\" network ID in the environment\'s project is
-- used. If a [Custom Subnet
-- Network](\/vpc\/docs\/vpc#vpc_networks_and_subnets) is provided,
-- \`nodeConfig.subnetwork\` must also be provided. For [Shared
-- VPC](\/vpc\/docs\/shared-vpc) subnetwork requirements, see
-- \`nodeConfig.subnetwork\`.
ncNetwork :: Lens' NodeConfig (Maybe Text)
ncNetwork
  = lens _ncNetwork (\ s a -> s{_ncNetwork = a})

-- | Optional. The set of Google API scopes to be made available on all node
-- VMs. If \`oauth_scopes\` is empty, defaults to
-- [\"https:\/\/www.googleapis.com\/auth\/cloud-platform\"]. Cannot be
-- updated.
ncOAuthScopes :: Lens' NodeConfig [Text]
ncOAuthScopes
  = lens _ncOAuthScopes
      (\ s a -> s{_ncOAuthScopes = a})
      . _Default
      . _Coerce

-- | Optional. The configuration for controlling how IPs are allocated in the
-- GKE cluster.
ncIPAllocationPolicy :: Lens' NodeConfig (Maybe IPAllocationPolicy)
ncIPAllocationPolicy
  = lens _ncIPAllocationPolicy
      (\ s a -> s{_ncIPAllocationPolicy = a})

-- | Optional. The Google Cloud Platform Service Account to be used by the
-- node VMs. If a service account is not specified, the \"default\" Compute
-- Engine service account is used. Cannot be updated.
ncServiceAccount :: Lens' NodeConfig (Maybe Text)
ncServiceAccount
  = lens _ncServiceAccount
      (\ s a -> s{_ncServiceAccount = a})

-- | Optional. The Compute Engine subnetwork to be used for machine
-- communications, specified as a [relative resource
-- name](\/apis\/design\/resource_names#relative_resource_name). For
-- example:
-- \"projects\/{projectId}\/regions\/{regionId}\/subnetworks\/{subnetworkId}\"
-- If a subnetwork is provided, \`nodeConfig.network\` must also be
-- provided, and the subnetwork must belong to the enclosing environment\'s
-- project and location.
ncSubnetwork :: Lens' NodeConfig (Maybe Text)
ncSubnetwork
  = lens _ncSubnetwork (\ s a -> s{_ncSubnetwork = a})

-- | Optional. The Compute Engine [machine
-- type](\/compute\/docs\/machine-types) used for cluster instances,
-- specified as a [relative resource
-- name](\/apis\/design\/resource_names#relative_resource_name). For
-- example:
-- \"projects\/{projectId}\/zones\/{zoneId}\/machineTypes\/{machineTypeId}\".
-- The \`machineType\` must belong to the enclosing environment\'s project
-- and location. If both this field and \`nodeConfig.location\` are
-- specified, this \`machineType\` must belong to the
-- \`nodeConfig.location\`; if both are unspecified, the service will pick
-- a zone in the Compute Engine region corresponding to the Cloud Composer
-- location, and propagate that choice to both fields. If exactly one of
-- this field and \`nodeConfig.location\` is specified, the location
-- information from the specified field will be propagated to the
-- unspecified field. The \`machineTypeId\` must not be a [shared-core
-- machine type](\/compute\/docs\/machine-types#sharedcore). If this field
-- is unspecified, the \`machineTypeId\` defaults to \"n1-standard-1\".
ncMachineType :: Lens' NodeConfig (Maybe Text)
ncMachineType
  = lens _ncMachineType
      (\ s a -> s{_ncMachineType = a})

-- | Optional. The list of instance tags applied to all node VMs. Tags are
-- used to identify valid sources or targets for network firewalls. Each
-- tag within the list must comply with
-- [RFC1035](https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Cannot be updated.
ncTags :: Lens' NodeConfig [Text]
ncTags
  = lens _ncTags (\ s a -> s{_ncTags = a}) . _Default .
      _Coerce

instance FromJSON NodeConfig where
        parseJSON
          = withObject "NodeConfig"
              (\ o ->
                 NodeConfig' <$>
                   (o .:? "diskSizeGb") <*> (o .:? "location") <*>
                     (o .:? "network")
                     <*> (o .:? "oauthScopes" .!= mempty)
                     <*> (o .:? "ipAllocationPolicy")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "machineType")
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON NodeConfig where
        toJSON NodeConfig'{..}
          = object
              (catMaybes
                 [("diskSizeGb" .=) <$> _ncDiskSizeGb,
                  ("location" .=) <$> _ncLocation,
                  ("network" .=) <$> _ncNetwork,
                  ("oauthScopes" .=) <$> _ncOAuthScopes,
                  ("ipAllocationPolicy" .=) <$> _ncIPAllocationPolicy,
                  ("serviceAccount" .=) <$> _ncServiceAccount,
                  ("subnetwork" .=) <$> _ncSubnetwork,
                  ("machineType" .=) <$> _ncMachineType,
                  ("tags" .=) <$> _ncTags])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationSchema)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationSchema)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Optional. Additional environment variables to provide to the Apache
-- Airflow scheduler, worker, and webserver processes. Environment variable
-- names must match the regular expression \`a-zA-Z_*\`. They cannot
-- specify Apache Airflow software configuration overrides (they cannot
-- match the regular expression \`AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+\`), and
-- they cannot match any of the following reserved names: *
-- \`AIRFLOW_HOME\` * \`C_FORCE_ROOT\` * \`CONTAINER_NAME\` *
-- \`DAGS_FOLDER\` * \`GCP_PROJECT\` * \`GCS_BUCKET\` *
-- \`GKE_CLUSTER_NAME\` * \`SQL_DATABASE\` * \`SQL_INSTANCE\` *
-- \`SQL_PASSWORD\` * \`SQL_PROJECT\` * \`SQL_REGION\` * \`SQL_USER\`
--
-- /See:/ 'softwareConfigEnvVariables' smart constructor.
newtype SoftwareConfigEnvVariables =
  SoftwareConfigEnvVariables'
    { _scevAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SoftwareConfigEnvVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scevAddtional'
softwareConfigEnvVariables
    :: HashMap Text Text -- ^ 'scevAddtional'
    -> SoftwareConfigEnvVariables
softwareConfigEnvVariables pScevAddtional_ =
  SoftwareConfigEnvVariables' {_scevAddtional = _Coerce # pScevAddtional_}


scevAddtional :: Lens' SoftwareConfigEnvVariables (HashMap Text Text)
scevAddtional
  = lens _scevAddtional
      (\ s a -> s{_scevAddtional = a})
      . _Coerce

instance FromJSON SoftwareConfigEnvVariables where
        parseJSON
          = withObject "SoftwareConfigEnvVariables"
              (\ o ->
                 SoftwareConfigEnvVariables' <$> (parseJSONObject o))

instance ToJSON SoftwareConfigEnvVariables where
        toJSON = toJSON . _scevAddtional

-- | ImageVersion information
--
-- /See:/ 'imageVersion' smart constructor.
data ImageVersion =
  ImageVersion'
    { _ivUpgradeDisabled :: !(Maybe Bool)
    , _ivCreationDisabled :: !(Maybe Bool)
    , _ivReleaseDate :: !(Maybe Date)
    , _ivImageVersionId :: !(Maybe Text)
    , _ivSupportedPythonVersions :: !(Maybe [Text])
    , _ivIsDefault :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImageVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivUpgradeDisabled'
--
-- * 'ivCreationDisabled'
--
-- * 'ivReleaseDate'
--
-- * 'ivImageVersionId'
--
-- * 'ivSupportedPythonVersions'
--
-- * 'ivIsDefault'
imageVersion
    :: ImageVersion
imageVersion =
  ImageVersion'
    { _ivUpgradeDisabled = Nothing
    , _ivCreationDisabled = Nothing
    , _ivReleaseDate = Nothing
    , _ivImageVersionId = Nothing
    , _ivSupportedPythonVersions = Nothing
    , _ivIsDefault = Nothing
    }


-- | Whether it is impossible to upgrade an environment running with the
-- image version.
ivUpgradeDisabled :: Lens' ImageVersion (Maybe Bool)
ivUpgradeDisabled
  = lens _ivUpgradeDisabled
      (\ s a -> s{_ivUpgradeDisabled = a})

-- | Whether it is impossible to create an environment with the image
-- version.
ivCreationDisabled :: Lens' ImageVersion (Maybe Bool)
ivCreationDisabled
  = lens _ivCreationDisabled
      (\ s a -> s{_ivCreationDisabled = a})

-- | The date of the version release.
ivReleaseDate :: Lens' ImageVersion (Maybe Date)
ivReleaseDate
  = lens _ivReleaseDate
      (\ s a -> s{_ivReleaseDate = a})

-- | The string identifier of the ImageVersion, in the form:
-- \"composer-x.y.z-airflow-a.b(.c)\"
ivImageVersionId :: Lens' ImageVersion (Maybe Text)
ivImageVersionId
  = lens _ivImageVersionId
      (\ s a -> s{_ivImageVersionId = a})

-- | supported python versions
ivSupportedPythonVersions :: Lens' ImageVersion [Text]
ivSupportedPythonVersions
  = lens _ivSupportedPythonVersions
      (\ s a -> s{_ivSupportedPythonVersions = a})
      . _Default
      . _Coerce

-- | Whether this is the default ImageVersion used by Composer during
-- environment creation if no input ImageVersion is specified.
ivIsDefault :: Lens' ImageVersion (Maybe Bool)
ivIsDefault
  = lens _ivIsDefault (\ s a -> s{_ivIsDefault = a})

instance FromJSON ImageVersion where
        parseJSON
          = withObject "ImageVersion"
              (\ o ->
                 ImageVersion' <$>
                   (o .:? "upgradeDisabled") <*>
                     (o .:? "creationDisabled")
                     <*> (o .:? "releaseDate")
                     <*> (o .:? "imageVersionId")
                     <*> (o .:? "supportedPythonVersions" .!= mempty)
                     <*> (o .:? "isDefault"))

instance ToJSON ImageVersion where
        toJSON ImageVersion'{..}
          = object
              (catMaybes
                 [("upgradeDisabled" .=) <$> _ivUpgradeDisabled,
                  ("creationDisabled" .=) <$> _ivCreationDisabled,
                  ("releaseDate" .=) <$> _ivReleaseDate,
                  ("imageVersionId" .=) <$> _ivImageVersionId,
                  ("supportedPythonVersions" .=) <$>
                    _ivSupportedPythonVersions,
                  ("isDefault" .=) <$> _ivIsDefault])

-- | An environment for running orchestration tasks.
--
-- /See:/ 'environment' smart constructor.
data Environment =
  Environment'
    { _eState :: !(Maybe EnvironmentState)
    , _eConfig :: !(Maybe EnvironmentConfig)
    , _eUuid :: !(Maybe Text)
    , _eUpdateTime :: !(Maybe DateTime')
    , _eName :: !(Maybe Text)
    , _eLabels :: !(Maybe EnvironmentLabels)
    , _eCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eState'
--
-- * 'eConfig'
--
-- * 'eUuid'
--
-- * 'eUpdateTime'
--
-- * 'eName'
--
-- * 'eLabels'
--
-- * 'eCreateTime'
environment
    :: Environment
environment =
  Environment'
    { _eState = Nothing
    , _eConfig = Nothing
    , _eUuid = Nothing
    , _eUpdateTime = Nothing
    , _eName = Nothing
    , _eLabels = Nothing
    , _eCreateTime = Nothing
    }


-- | The current state of the environment.
eState :: Lens' Environment (Maybe EnvironmentState)
eState = lens _eState (\ s a -> s{_eState = a})

-- | Configuration parameters for this environment.
eConfig :: Lens' Environment (Maybe EnvironmentConfig)
eConfig = lens _eConfig (\ s a -> s{_eConfig = a})

-- | Output only. The UUID (Universally Unique IDentifier) associated with
-- this environment. This value is generated when the environment is
-- created.
eUuid :: Lens' Environment (Maybe Text)
eUuid = lens _eUuid (\ s a -> s{_eUuid = a})

-- | Output only. The time at which this environment was last modified.
eUpdateTime :: Lens' Environment (Maybe UTCTime)
eUpdateTime
  = lens _eUpdateTime (\ s a -> s{_eUpdateTime = a}) .
      mapping _DateTime

-- | The resource name of the environment, in the form:
-- \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
-- EnvironmentId must start with a lowercase letter followed by up to 63
-- lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
eName :: Lens' Environment (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | Optional. User-defined labels for this environment. The labels map can
-- contain no more than 64 entries. Entries of the labels map are UTF8
-- strings that comply with the following restrictions: * Keys must conform
-- to regexp: \\p{Ll}\\p{Lo}{0,62} * Values must conform to regexp:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} * Both keys and values are additionally
-- constrained to be \<= 128 bytes in size.
eLabels :: Lens' Environment (Maybe EnvironmentLabels)
eLabels = lens _eLabels (\ s a -> s{_eLabels = a})

-- | Output only. The time at which this environment was created.
eCreateTime :: Lens' Environment (Maybe UTCTime)
eCreateTime
  = lens _eCreateTime (\ s a -> s{_eCreateTime = a}) .
      mapping _DateTime

instance FromJSON Environment where
        parseJSON
          = withObject "Environment"
              (\ o ->
                 Environment' <$>
                   (o .:? "state") <*> (o .:? "config") <*>
                     (o .:? "uuid")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "createTime"))

instance ToJSON Environment where
        toJSON Environment'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _eState,
                  ("config" .=) <$> _eConfig, ("uuid" .=) <$> _eUuid,
                  ("updateTime" .=) <$> _eUpdateTime,
                  ("name" .=) <$> _eName, ("labels" .=) <$> _eLabels,
                  ("createTime" .=) <$> _eCreateTime])

-- | Optional. Apache Airflow configuration properties to override. Property
-- keys contain the section and property names, separated by a hyphen, for
-- example \"core-dags_are_paused_at_creation\". Section names must not
-- contain hyphens (\"-\"), opening square brackets (\"[\"), or closing
-- square brackets (\"]\"). The property name must not be empty and must
-- not contain an equals sign (\"=\") or semicolon (\";\"). Section and
-- property names must not contain a period (\".\"). Apache Airflow
-- configuration property names must be written in
-- [snake_case](https:\/\/en.wikipedia.org\/wiki\/Snake_case). Property
-- values can contain any character, and can be written in any lower\/upper
-- case format. Certain Apache Airflow configuration property values are
-- [blocked](\/composer\/docs\/concepts\/airflow-configurations), and
-- cannot be overridden.
--
-- /See:/ 'softwareConfigAirflowConfigOverrides' smart constructor.
newtype SoftwareConfigAirflowConfigOverrides =
  SoftwareConfigAirflowConfigOverrides'
    { _scacoAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SoftwareConfigAirflowConfigOverrides' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scacoAddtional'
softwareConfigAirflowConfigOverrides
    :: HashMap Text Text -- ^ 'scacoAddtional'
    -> SoftwareConfigAirflowConfigOverrides
softwareConfigAirflowConfigOverrides pScacoAddtional_ =
  SoftwareConfigAirflowConfigOverrides'
    {_scacoAddtional = _Coerce # pScacoAddtional_}


scacoAddtional :: Lens' SoftwareConfigAirflowConfigOverrides (HashMap Text Text)
scacoAddtional
  = lens _scacoAddtional
      (\ s a -> s{_scacoAddtional = a})
      . _Coerce

instance FromJSON
           SoftwareConfigAirflowConfigOverrides
         where
        parseJSON
          = withObject "SoftwareConfigAirflowConfigOverrides"
              (\ o ->
                 SoftwareConfigAirflowConfigOverrides' <$>
                   (parseJSONObject o))

instance ToJSON SoftwareConfigAirflowConfigOverrides
         where
        toJSON = toJSON . _scacoAddtional

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Allowed IP range with user-provided description.
--
-- /See:/ 'allowedIPRange' smart constructor.
data AllowedIPRange =
  AllowedIPRange'
    { _airValue :: !(Maybe Text)
    , _airDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AllowedIPRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'airValue'
--
-- * 'airDescription'
allowedIPRange
    :: AllowedIPRange
allowedIPRange =
  AllowedIPRange' {_airValue = Nothing, _airDescription = Nothing}


-- | IP address or range, defined using CIDR notation, of requests that this
-- rule applies to. Examples: \`192.168.1.1\` or \`192.168.0.0\/16\` or
-- \`2001:db8::\/32\` or \`2001:0db8:0000:0042:0000:8a2e:0370:7334\`. IP
-- range prefixes should be properly truncated. For example,
-- \`1.2.3.4\/24\` should be truncated to \`1.2.3.0\/24\`. Similarly, for
-- IPv6, \`2001:db8::1\/32\` should be truncated to \`2001:db8::\/32\`.
airValue :: Lens' AllowedIPRange (Maybe Text)
airValue = lens _airValue (\ s a -> s{_airValue = a})

-- | Optional. User-provided description. It must contain at most 300
-- characters.
airDescription :: Lens' AllowedIPRange (Maybe Text)
airDescription
  = lens _airDescription
      (\ s a -> s{_airDescription = a})

instance FromJSON AllowedIPRange where
        parseJSON
          = withObject "AllowedIPRange"
              (\ o ->
                 AllowedIPRange' <$>
                   (o .:? "value") <*> (o .:? "description"))

instance ToJSON AllowedIPRange where
        toJSON AllowedIPRange'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _airValue,
                  ("description" .=) <$> _airDescription])

-- | Configuration for controlling how IPs are allocated in the GKE cluster
-- running the Apache Airflow software.
--
-- /See:/ 'ipAllocationPolicy' smart constructor.
data IPAllocationPolicy =
  IPAllocationPolicy'
    { _iapServicesSecondaryRangeName :: !(Maybe Text)
    , _iapUseIPAliases :: !(Maybe Bool)
    , _iapClusterSecondaryRangeName :: !(Maybe Text)
    , _iapClusterIPv4CIdRBlock :: !(Maybe Text)
    , _iapServicesIPv4CIdRBlock :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IPAllocationPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapServicesSecondaryRangeName'
--
-- * 'iapUseIPAliases'
--
-- * 'iapClusterSecondaryRangeName'
--
-- * 'iapClusterIPv4CIdRBlock'
--
-- * 'iapServicesIPv4CIdRBlock'
ipAllocationPolicy
    :: IPAllocationPolicy
ipAllocationPolicy =
  IPAllocationPolicy'
    { _iapServicesSecondaryRangeName = Nothing
    , _iapUseIPAliases = Nothing
    , _iapClusterSecondaryRangeName = Nothing
    , _iapClusterIPv4CIdRBlock = Nothing
    , _iapServicesIPv4CIdRBlock = Nothing
    }


-- | Optional. The name of the services\' secondary range used to allocate IP
-- addresses to the GKE cluster. This field is applicable only when
-- \`use_ip_aliases\` is true.
iapServicesSecondaryRangeName :: Lens' IPAllocationPolicy (Maybe Text)
iapServicesSecondaryRangeName
  = lens _iapServicesSecondaryRangeName
      (\ s a -> s{_iapServicesSecondaryRangeName = a})

-- | Optional. Whether or not to enable Alias IPs in the GKE cluster. If
-- \`true\`, a VPC-native cluster is created.
iapUseIPAliases :: Lens' IPAllocationPolicy (Maybe Bool)
iapUseIPAliases
  = lens _iapUseIPAliases
      (\ s a -> s{_iapUseIPAliases = a})

-- | Optional. The name of the GKE cluster\'s secondary range used to
-- allocate IP addresses to pods. This field is applicable only when
-- \`use_ip_aliases\` is true.
iapClusterSecondaryRangeName :: Lens' IPAllocationPolicy (Maybe Text)
iapClusterSecondaryRangeName
  = lens _iapClusterSecondaryRangeName
      (\ s a -> s{_iapClusterSecondaryRangeName = a})

-- | Optional. The IP address range used to allocate IP addresses to pods in
-- the GKE cluster. This field is applicable only when \`use_ip_aliases\`
-- is true. Set to blank to have GKE choose a range with the default size.
-- Set to \/netmask (e.g. \`\/14\`) to have GKE choose a range with a
-- specific netmask. Set to a
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`10.96.0.0\/14\`) from the RFC-1918 private networks
-- (e.g. \`10.0.0.0\/8\`, \`172.16.0.0\/12\`, \`192.168.0.0\/16\`) to pick
-- a specific range to use.
iapClusterIPv4CIdRBlock :: Lens' IPAllocationPolicy (Maybe Text)
iapClusterIPv4CIdRBlock
  = lens _iapClusterIPv4CIdRBlock
      (\ s a -> s{_iapClusterIPv4CIdRBlock = a})

-- | Optional. The IP address range of the services IP addresses in this GKE
-- cluster. This field is applicable only when \`use_ip_aliases\` is true.
-- Set to blank to have GKE choose a range with the default size. Set to
-- \/netmask (e.g. \`\/14\`) to have GKE choose a range with a specific
-- netmask. Set to a
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`10.96.0.0\/14\`) from the RFC-1918 private networks
-- (e.g. \`10.0.0.0\/8\`, \`172.16.0.0\/12\`, \`192.168.0.0\/16\`) to pick
-- a specific range to use.
iapServicesIPv4CIdRBlock :: Lens' IPAllocationPolicy (Maybe Text)
iapServicesIPv4CIdRBlock
  = lens _iapServicesIPv4CIdRBlock
      (\ s a -> s{_iapServicesIPv4CIdRBlock = a})

instance FromJSON IPAllocationPolicy where
        parseJSON
          = withObject "IPAllocationPolicy"
              (\ o ->
                 IPAllocationPolicy' <$>
                   (o .:? "servicesSecondaryRangeName") <*>
                     (o .:? "useIpAliases")
                     <*> (o .:? "clusterSecondaryRangeName")
                     <*> (o .:? "clusterIpv4CidrBlock")
                     <*> (o .:? "servicesIpv4CidrBlock"))

instance ToJSON IPAllocationPolicy where
        toJSON IPAllocationPolicy'{..}
          = object
              (catMaybes
                 [("servicesSecondaryRangeName" .=) <$>
                    _iapServicesSecondaryRangeName,
                  ("useIpAliases" .=) <$> _iapUseIPAliases,
                  ("clusterSecondaryRangeName" .=) <$>
                    _iapClusterSecondaryRangeName,
                  ("clusterIpv4CidrBlock" .=) <$>
                    _iapClusterIPv4CIdRBlock,
                  ("servicesIpv4CidrBlock" .=) <$>
                    _iapServicesIPv4CIdRBlock])

-- | Represents a whole or partial calendar date, such as a birthday. The
-- time of day and time zone are either specified elsewhere or are
-- insignificant. The date is relative to the Gregorian Calendar. This can
-- represent one of the following: * A full date, with non-zero year,
-- month, and day values * A month and day value, with a zero year, such as
-- an anniversary * A year on its own, with zero month and day values * A
-- year and month value, with a zero day, such as a credit card expiration
-- date Related types are google.type.TimeOfDay and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay :: !(Maybe (Textual Int32))
    , _dYear :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | Pypi dependencies specified in the environment configuration, at the
-- time when the build was triggered.
--
-- /See:/ 'checkUpgradeResponsePypiDependencies' smart constructor.
newtype CheckUpgradeResponsePypiDependencies =
  CheckUpgradeResponsePypiDependencies'
    { _curpdAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckUpgradeResponsePypiDependencies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'curpdAddtional'
checkUpgradeResponsePypiDependencies
    :: HashMap Text Text -- ^ 'curpdAddtional'
    -> CheckUpgradeResponsePypiDependencies
checkUpgradeResponsePypiDependencies pCurpdAddtional_ =
  CheckUpgradeResponsePypiDependencies'
    {_curpdAddtional = _Coerce # pCurpdAddtional_}


curpdAddtional :: Lens' CheckUpgradeResponsePypiDependencies (HashMap Text Text)
curpdAddtional
  = lens _curpdAddtional
      (\ s a -> s{_curpdAddtional = a})
      . _Coerce

instance FromJSON
           CheckUpgradeResponsePypiDependencies
         where
        parseJSON
          = withObject "CheckUpgradeResponsePypiDependencies"
              (\ o ->
                 CheckUpgradeResponsePypiDependencies' <$>
                   (parseJSONObject o))

instance ToJSON CheckUpgradeResponsePypiDependencies
         where
        toJSON = toJSON . _curpdAddtional

-- | Optional. Custom Python Package Index (PyPI) packages to be installed in
-- the environment. Keys refer to the lowercase package name such as
-- \"numpy\" and values are the lowercase extras and version specifier such
-- as \"==1.12.0\", \"[devel,gcp_api]\", or \"[devel]>=1.8.2, \<1.9.2\". To
-- specify a package without pinning it to a version specifier, use the
-- empty string as the value.
--
-- /See:/ 'softwareConfigPypiPackages' smart constructor.
newtype SoftwareConfigPypiPackages =
  SoftwareConfigPypiPackages'
    { _scppAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SoftwareConfigPypiPackages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scppAddtional'
softwareConfigPypiPackages
    :: HashMap Text Text -- ^ 'scppAddtional'
    -> SoftwareConfigPypiPackages
softwareConfigPypiPackages pScppAddtional_ =
  SoftwareConfigPypiPackages' {_scppAddtional = _Coerce # pScppAddtional_}


scppAddtional :: Lens' SoftwareConfigPypiPackages (HashMap Text Text)
scppAddtional
  = lens _scppAddtional
      (\ s a -> s{_scppAddtional = a})
      . _Coerce

instance FromJSON SoftwareConfigPypiPackages where
        parseJSON
          = withObject "SoftwareConfigPypiPackages"
              (\ o ->
                 SoftwareConfigPypiPackages' <$> (parseJSONObject o))

instance ToJSON SoftwareConfigPypiPackages where
        toJSON = toJSON . _scppAddtional

-- | The configuration information for configuring a Private IP Cloud
-- Composer environment.
--
-- /See:/ 'privateEnvironmentConfig' smart constructor.
data PrivateEnvironmentConfig =
  PrivateEnvironmentConfig'
    { _pecWebServerIPv4CIdRBlock :: !(Maybe Text)
    , _pecCloudSQLIPv4CIdRBlock :: !(Maybe Text)
    , _pecWebServerIPv4ReservedRange :: !(Maybe Text)
    , _pecPrivateClusterConfig :: !(Maybe PrivateClusterConfig)
    , _pecEnablePrivateEnvironment :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrivateEnvironmentConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pecWebServerIPv4CIdRBlock'
--
-- * 'pecCloudSQLIPv4CIdRBlock'
--
-- * 'pecWebServerIPv4ReservedRange'
--
-- * 'pecPrivateClusterConfig'
--
-- * 'pecEnablePrivateEnvironment'
privateEnvironmentConfig
    :: PrivateEnvironmentConfig
privateEnvironmentConfig =
  PrivateEnvironmentConfig'
    { _pecWebServerIPv4CIdRBlock = Nothing
    , _pecCloudSQLIPv4CIdRBlock = Nothing
    , _pecWebServerIPv4ReservedRange = Nothing
    , _pecPrivateClusterConfig = Nothing
    , _pecEnablePrivateEnvironment = Nothing
    }


-- | Optional. The CIDR block from which IP range for web server will be
-- reserved. Needs to be disjoint from
-- \`private_cluster_config.master_ipv4_cidr_block\` and
-- \`cloud_sql_ipv4_cidr_block\`.
pecWebServerIPv4CIdRBlock :: Lens' PrivateEnvironmentConfig (Maybe Text)
pecWebServerIPv4CIdRBlock
  = lens _pecWebServerIPv4CIdRBlock
      (\ s a -> s{_pecWebServerIPv4CIdRBlock = a})

-- | Optional. The CIDR block from which IP range in tenant project will be
-- reserved for Cloud SQL. Needs to be disjoint from
-- \`web_server_ipv4_cidr_block\`.
pecCloudSQLIPv4CIdRBlock :: Lens' PrivateEnvironmentConfig (Maybe Text)
pecCloudSQLIPv4CIdRBlock
  = lens _pecCloudSQLIPv4CIdRBlock
      (\ s a -> s{_pecCloudSQLIPv4CIdRBlock = a})

-- | Output only. The IP range reserved for the tenant project\'s App Engine
-- VMs.
pecWebServerIPv4ReservedRange :: Lens' PrivateEnvironmentConfig (Maybe Text)
pecWebServerIPv4ReservedRange
  = lens _pecWebServerIPv4ReservedRange
      (\ s a -> s{_pecWebServerIPv4ReservedRange = a})

-- | Optional. Configuration for the private GKE cluster for a Private IP
-- Cloud Composer environment.
pecPrivateClusterConfig :: Lens' PrivateEnvironmentConfig (Maybe PrivateClusterConfig)
pecPrivateClusterConfig
  = lens _pecPrivateClusterConfig
      (\ s a -> s{_pecPrivateClusterConfig = a})

-- | Optional. If \`true\`, a Private IP Cloud Composer environment is
-- created. If this field is set to true,
-- \`IPAllocationPolicy.use_ip_aliases\` must be set to true.
pecEnablePrivateEnvironment :: Lens' PrivateEnvironmentConfig (Maybe Bool)
pecEnablePrivateEnvironment
  = lens _pecEnablePrivateEnvironment
      (\ s a -> s{_pecEnablePrivateEnvironment = a})

instance FromJSON PrivateEnvironmentConfig where
        parseJSON
          = withObject "PrivateEnvironmentConfig"
              (\ o ->
                 PrivateEnvironmentConfig' <$>
                   (o .:? "webServerIpv4CidrBlock") <*>
                     (o .:? "cloudSqlIpv4CidrBlock")
                     <*> (o .:? "webServerIpv4ReservedRange")
                     <*> (o .:? "privateClusterConfig")
                     <*> (o .:? "enablePrivateEnvironment"))

instance ToJSON PrivateEnvironmentConfig where
        toJSON PrivateEnvironmentConfig'{..}
          = object
              (catMaybes
                 [("webServerIpv4CidrBlock" .=) <$>
                    _pecWebServerIPv4CIdRBlock,
                  ("cloudSqlIpv4CidrBlock" .=) <$>
                    _pecCloudSQLIPv4CIdRBlock,
                  ("webServerIpv4ReservedRange" .=) <$>
                    _pecWebServerIPv4ReservedRange,
                  ("privateClusterConfig" .=) <$>
                    _pecPrivateClusterConfig,
                  ("enablePrivateEnvironment" .=) <$>
                    _pecEnablePrivateEnvironment])

-- | Specifies the selection and configuration of software inside the
-- environment.
--
-- /See:/ 'softwareConfig' smart constructor.
data SoftwareConfig =
  SoftwareConfig'
    { _scImageVersion :: !(Maybe Text)
    , _scPythonVersion :: !(Maybe Text)
    , _scPypiPackages :: !(Maybe SoftwareConfigPypiPackages)
    , _scAirflowConfigOverrides :: !(Maybe SoftwareConfigAirflowConfigOverrides)
    , _scEnvVariables :: !(Maybe SoftwareConfigEnvVariables)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SoftwareConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scImageVersion'
--
-- * 'scPythonVersion'
--
-- * 'scPypiPackages'
--
-- * 'scAirflowConfigOverrides'
--
-- * 'scEnvVariables'
softwareConfig
    :: SoftwareConfig
softwareConfig =
  SoftwareConfig'
    { _scImageVersion = Nothing
    , _scPythonVersion = Nothing
    , _scPypiPackages = Nothing
    , _scAirflowConfigOverrides = Nothing
    , _scEnvVariables = Nothing
    }


-- | The version of the software running in the environment. This
-- encapsulates both the version of Cloud Composer functionality and the
-- version of Apache Airflow. It must match the regular expression
-- \`composer-([0-9]+\\.[0-9]+\\.[0-9]+|latest)-airflow-[0-9]+\\.[0-9]+(\\.[0-9]+.*)?\`.
-- When used as input, the server also checks if the provided version is
-- supported and denies the request for an unsupported version. The Cloud
-- Composer portion of the version is a [semantic
-- version](https:\/\/semver.org) or \`latest\`. When the patch version is
-- omitted, the current Cloud Composer patch version is selected. When
-- \`latest\` is provided instead of an explicit version number, the server
-- replaces \`latest\` with the current Cloud Composer version and stores
-- that version number in the same field. The portion of the image version
-- that follows *airflow-* is an official Apache Airflow repository
-- [release
-- name](https:\/\/github.com\/apache\/incubator-airflow\/releases). See
-- also [Version
-- List](\/composer\/docs\/concepts\/versioning\/composer-versions).
scImageVersion :: Lens' SoftwareConfig (Maybe Text)
scImageVersion
  = lens _scImageVersion
      (\ s a -> s{_scImageVersion = a})

-- | Optional. The major version of Python used to run the Apache Airflow
-- scheduler, worker, and webserver processes. Can be set to \'2\' or
-- \'3\'. If not specified, the default is \'3\'. Cannot be updated.
scPythonVersion :: Lens' SoftwareConfig (Maybe Text)
scPythonVersion
  = lens _scPythonVersion
      (\ s a -> s{_scPythonVersion = a})

-- | Optional. Custom Python Package Index (PyPI) packages to be installed in
-- the environment. Keys refer to the lowercase package name such as
-- \"numpy\" and values are the lowercase extras and version specifier such
-- as \"==1.12.0\", \"[devel,gcp_api]\", or \"[devel]>=1.8.2, \<1.9.2\". To
-- specify a package without pinning it to a version specifier, use the
-- empty string as the value.
scPypiPackages :: Lens' SoftwareConfig (Maybe SoftwareConfigPypiPackages)
scPypiPackages
  = lens _scPypiPackages
      (\ s a -> s{_scPypiPackages = a})

-- | Optional. Apache Airflow configuration properties to override. Property
-- keys contain the section and property names, separated by a hyphen, for
-- example \"core-dags_are_paused_at_creation\". Section names must not
-- contain hyphens (\"-\"), opening square brackets (\"[\"), or closing
-- square brackets (\"]\"). The property name must not be empty and must
-- not contain an equals sign (\"=\") or semicolon (\";\"). Section and
-- property names must not contain a period (\".\"). Apache Airflow
-- configuration property names must be written in
-- [snake_case](https:\/\/en.wikipedia.org\/wiki\/Snake_case). Property
-- values can contain any character, and can be written in any lower\/upper
-- case format. Certain Apache Airflow configuration property values are
-- [blocked](\/composer\/docs\/concepts\/airflow-configurations), and
-- cannot be overridden.
scAirflowConfigOverrides :: Lens' SoftwareConfig (Maybe SoftwareConfigAirflowConfigOverrides)
scAirflowConfigOverrides
  = lens _scAirflowConfigOverrides
      (\ s a -> s{_scAirflowConfigOverrides = a})

-- | Optional. Additional environment variables to provide to the Apache
-- Airflow scheduler, worker, and webserver processes. Environment variable
-- names must match the regular expression \`a-zA-Z_*\`. They cannot
-- specify Apache Airflow software configuration overrides (they cannot
-- match the regular expression \`AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+\`), and
-- they cannot match any of the following reserved names: *
-- \`AIRFLOW_HOME\` * \`C_FORCE_ROOT\` * \`CONTAINER_NAME\` *
-- \`DAGS_FOLDER\` * \`GCP_PROJECT\` * \`GCS_BUCKET\` *
-- \`GKE_CLUSTER_NAME\` * \`SQL_DATABASE\` * \`SQL_INSTANCE\` *
-- \`SQL_PASSWORD\` * \`SQL_PROJECT\` * \`SQL_REGION\` * \`SQL_USER\`
scEnvVariables :: Lens' SoftwareConfig (Maybe SoftwareConfigEnvVariables)
scEnvVariables
  = lens _scEnvVariables
      (\ s a -> s{_scEnvVariables = a})

instance FromJSON SoftwareConfig where
        parseJSON
          = withObject "SoftwareConfig"
              (\ o ->
                 SoftwareConfig' <$>
                   (o .:? "imageVersion") <*> (o .:? "pythonVersion")
                     <*> (o .:? "pypiPackages")
                     <*> (o .:? "airflowConfigOverrides")
                     <*> (o .:? "envVariables"))

instance ToJSON SoftwareConfig where
        toJSON SoftwareConfig'{..}
          = object
              (catMaybes
                 [("imageVersion" .=) <$> _scImageVersion,
                  ("pythonVersion" .=) <$> _scPythonVersion,
                  ("pypiPackages" .=) <$> _scPypiPackages,
                  ("airflowConfigOverrides" .=) <$>
                    _scAirflowConfigOverrides,
                  ("envVariables" .=) <$> _scEnvVariables])

-- | Configuration options for the private GKE cluster in a Cloud Composer
-- environment.
--
-- /See:/ 'privateClusterConfig' smart constructor.
data PrivateClusterConfig =
  PrivateClusterConfig'
    { _pccEnablePrivateEndpoint :: !(Maybe Bool)
    , _pccMasterIPv4CIdRBlock :: !(Maybe Text)
    , _pccMasterIPv4ReservedRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrivateClusterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccEnablePrivateEndpoint'
--
-- * 'pccMasterIPv4CIdRBlock'
--
-- * 'pccMasterIPv4ReservedRange'
privateClusterConfig
    :: PrivateClusterConfig
privateClusterConfig =
  PrivateClusterConfig'
    { _pccEnablePrivateEndpoint = Nothing
    , _pccMasterIPv4CIdRBlock = Nothing
    , _pccMasterIPv4ReservedRange = Nothing
    }


-- | Optional. If \`true\`, access to the public endpoint of the GKE cluster
-- is denied.
pccEnablePrivateEndpoint :: Lens' PrivateClusterConfig (Maybe Bool)
pccEnablePrivateEndpoint
  = lens _pccEnablePrivateEndpoint
      (\ s a -> s{_pccEnablePrivateEndpoint = a})

-- | Optional. The CIDR block from which IPv4 range for GKE master will be
-- reserved. If left blank, the default value of \'172.16.0.0\/23\' is
-- used.
pccMasterIPv4CIdRBlock :: Lens' PrivateClusterConfig (Maybe Text)
pccMasterIPv4CIdRBlock
  = lens _pccMasterIPv4CIdRBlock
      (\ s a -> s{_pccMasterIPv4CIdRBlock = a})

-- | Output only. The IP range in CIDR notation to use for the hosted master
-- network. This range is used for assigning internal IP addresses to the
-- GKE cluster master or set of masters and to the internal load balancer
-- virtual IP. This range must not overlap with any other ranges in use
-- within the cluster\'s network.
pccMasterIPv4ReservedRange :: Lens' PrivateClusterConfig (Maybe Text)
pccMasterIPv4ReservedRange
  = lens _pccMasterIPv4ReservedRange
      (\ s a -> s{_pccMasterIPv4ReservedRange = a})

instance FromJSON PrivateClusterConfig where
        parseJSON
          = withObject "PrivateClusterConfig"
              (\ o ->
                 PrivateClusterConfig' <$>
                   (o .:? "enablePrivateEndpoint") <*>
                     (o .:? "masterIpv4CidrBlock")
                     <*> (o .:? "masterIpv4ReservedRange"))

instance ToJSON PrivateClusterConfig where
        toJSON PrivateClusterConfig'{..}
          = object
              (catMaybes
                 [("enablePrivateEndpoint" .=) <$>
                    _pccEnablePrivateEndpoint,
                  ("masterIpv4CidrBlock" .=) <$>
                    _pccMasterIPv4CIdRBlock,
                  ("masterIpv4ReservedRange" .=) <$>
                    _pccMasterIPv4ReservedRange])

-- | The encryption options for the Cloud Composer environment and its
-- dependencies.
--
-- /See:/ 'encryptionConfig' smart constructor.
newtype EncryptionConfig =
  EncryptionConfig'
    { _ecKmsKeyName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecKmsKeyName'
encryptionConfig
    :: EncryptionConfig
encryptionConfig = EncryptionConfig' {_ecKmsKeyName = Nothing}


-- | Optional. Customer-managed Encryption Key available through Google\'s
-- Key Management Service. Cannot be updated. If not specified,
-- Google-managed key will be used.
ecKmsKeyName :: Lens' EncryptionConfig (Maybe Text)
ecKmsKeyName
  = lens _ecKmsKeyName (\ s a -> s{_ecKmsKeyName = a})

instance FromJSON EncryptionConfig where
        parseJSON
          = withObject "EncryptionConfig"
              (\ o -> EncryptionConfig' <$> (o .:? "kmsKeyName"))

instance ToJSON EncryptionConfig where
        toJSON EncryptionConfig'{..}
          = object
              (catMaybes [("kmsKeyName" .=) <$> _ecKmsKeyName])

-- | Message containing information about the result of an upgrade check
-- operation.
--
-- /See:/ 'checkUpgradeResponse' smart constructor.
data CheckUpgradeResponse =
  CheckUpgradeResponse'
    { _curContainsPypiModulesConflict :: !(Maybe CheckUpgradeResponseContainsPypiModulesConflict)
    , _curBuildLogURI :: !(Maybe Text)
    , _curImageVersion :: !(Maybe Text)
    , _curPypiDependencies :: !(Maybe CheckUpgradeResponsePypiDependencies)
    , _curPypiConflictBuildLogExtract :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckUpgradeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'curContainsPypiModulesConflict'
--
-- * 'curBuildLogURI'
--
-- * 'curImageVersion'
--
-- * 'curPypiDependencies'
--
-- * 'curPypiConflictBuildLogExtract'
checkUpgradeResponse
    :: CheckUpgradeResponse
checkUpgradeResponse =
  CheckUpgradeResponse'
    { _curContainsPypiModulesConflict = Nothing
    , _curBuildLogURI = Nothing
    , _curImageVersion = Nothing
    , _curPypiDependencies = Nothing
    , _curPypiConflictBuildLogExtract = Nothing
    }


-- | Output only. Whether build has succeeded or failed on modules conflicts.
curContainsPypiModulesConflict :: Lens' CheckUpgradeResponse (Maybe CheckUpgradeResponseContainsPypiModulesConflict)
curContainsPypiModulesConflict
  = lens _curContainsPypiModulesConflict
      (\ s a -> s{_curContainsPypiModulesConflict = a})

-- | Output only. Url for a docker build log of an upgraded image.
curBuildLogURI :: Lens' CheckUpgradeResponse (Maybe Text)
curBuildLogURI
  = lens _curBuildLogURI
      (\ s a -> s{_curBuildLogURI = a})

-- | Composer image for which the build was happening.
curImageVersion :: Lens' CheckUpgradeResponse (Maybe Text)
curImageVersion
  = lens _curImageVersion
      (\ s a -> s{_curImageVersion = a})

-- | Pypi dependencies specified in the environment configuration, at the
-- time when the build was triggered.
curPypiDependencies :: Lens' CheckUpgradeResponse (Maybe CheckUpgradeResponsePypiDependencies)
curPypiDependencies
  = lens _curPypiDependencies
      (\ s a -> s{_curPypiDependencies = a})

-- | Output only. Extract from a docker image build log containing
-- information about pypi modules conflicts.
curPypiConflictBuildLogExtract :: Lens' CheckUpgradeResponse (Maybe Text)
curPypiConflictBuildLogExtract
  = lens _curPypiConflictBuildLogExtract
      (\ s a -> s{_curPypiConflictBuildLogExtract = a})

instance FromJSON CheckUpgradeResponse where
        parseJSON
          = withObject "CheckUpgradeResponse"
              (\ o ->
                 CheckUpgradeResponse' <$>
                   (o .:? "containsPypiModulesConflict") <*>
                     (o .:? "buildLogUri")
                     <*> (o .:? "imageVersion")
                     <*> (o .:? "pypiDependencies")
                     <*> (o .:? "pypiConflictBuildLogExtract"))

instance ToJSON CheckUpgradeResponse where
        toJSON CheckUpgradeResponse'{..}
          = object
              (catMaybes
                 [("containsPypiModulesConflict" .=) <$>
                    _curContainsPypiModulesConflict,
                  ("buildLogUri" .=) <$> _curBuildLogURI,
                  ("imageVersion" .=) <$> _curImageVersion,
                  ("pypiDependencies" .=) <$> _curPypiDependencies,
                  ("pypiConflictBuildLogExtract" .=) <$>
                    _curPypiConflictBuildLogExtract])

-- | Network-level access control policy for the Airflow web server.
--
-- /See:/ 'webServerNetworkAccessControl' smart constructor.
newtype WebServerNetworkAccessControl =
  WebServerNetworkAccessControl'
    { _wsnacAllowedIPRanges :: Maybe [AllowedIPRange]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebServerNetworkAccessControl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsnacAllowedIPRanges'
webServerNetworkAccessControl
    :: WebServerNetworkAccessControl
webServerNetworkAccessControl =
  WebServerNetworkAccessControl' {_wsnacAllowedIPRanges = Nothing}


-- | A collection of allowed IP ranges with descriptions.
wsnacAllowedIPRanges :: Lens' WebServerNetworkAccessControl [AllowedIPRange]
wsnacAllowedIPRanges
  = lens _wsnacAllowedIPRanges
      (\ s a -> s{_wsnacAllowedIPRanges = a})
      . _Default
      . _Coerce

instance FromJSON WebServerNetworkAccessControl where
        parseJSON
          = withObject "WebServerNetworkAccessControl"
              (\ o ->
                 WebServerNetworkAccessControl' <$>
                   (o .:? "allowedIpRanges" .!= mempty))

instance ToJSON WebServerNetworkAccessControl where
        toJSON WebServerNetworkAccessControl'{..}
          = object
              (catMaybes
                 [("allowedIpRanges" .=) <$> _wsnacAllowedIPRanges])

-- | Optional. User-defined labels for this environment. The labels map can
-- contain no more than 64 entries. Entries of the labels map are UTF8
-- strings that comply with the following restrictions: * Keys must conform
-- to regexp: \\p{Ll}\\p{Lo}{0,62} * Values must conform to regexp:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} * Both keys and values are additionally
-- constrained to be \<= 128 bytes in size.
--
-- /See:/ 'environmentLabels' smart constructor.
newtype EnvironmentLabels =
  EnvironmentLabels'
    { _elAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elAddtional'
environmentLabels
    :: HashMap Text Text -- ^ 'elAddtional'
    -> EnvironmentLabels
environmentLabels pElAddtional_ =
  EnvironmentLabels' {_elAddtional = _Coerce # pElAddtional_}


elAddtional :: Lens' EnvironmentLabels (HashMap Text Text)
elAddtional
  = lens _elAddtional (\ s a -> s{_elAddtional = a}) .
      _Coerce

instance FromJSON EnvironmentLabels where
        parseJSON
          = withObject "EnvironmentLabels"
              (\ o -> EnvironmentLabels' <$> (parseJSONObject o))

instance ToJSON EnvironmentLabels where
        toJSON = toJSON . _elAddtional

-- | Metadata describing an operation.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata =
  OperationMetadata'
    { _omState :: !(Maybe OperationMetadataState)
    , _omResourceUuid :: !(Maybe Text)
    , _omResource :: !(Maybe Text)
    , _omEndTime :: !(Maybe DateTime')
    , _omOperationType :: !(Maybe OperationMetadataOperationType)
    , _omCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omState'
--
-- * 'omResourceUuid'
--
-- * 'omResource'
--
-- * 'omEndTime'
--
-- * 'omOperationType'
--
-- * 'omCreateTime'
operationMetadata
    :: OperationMetadata
operationMetadata =
  OperationMetadata'
    { _omState = Nothing
    , _omResourceUuid = Nothing
    , _omResource = Nothing
    , _omEndTime = Nothing
    , _omOperationType = Nothing
    , _omCreateTime = Nothing
    }


-- | Output only. The current operation state.
omState :: Lens' OperationMetadata (Maybe OperationMetadataState)
omState = lens _omState (\ s a -> s{_omState = a})

-- | Output only. The UUID of the resource being operated on.
omResourceUuid :: Lens' OperationMetadata (Maybe Text)
omResourceUuid
  = lens _omResourceUuid
      (\ s a -> s{_omResourceUuid = a})

-- | Output only. The resource being operated on, as a [relative resource
-- name]( \/apis\/design\/resource_names#relative_resource_name).
omResource :: Lens' OperationMetadata (Maybe Text)
omResource
  = lens _omResource (\ s a -> s{_omResource = a})

-- | Output only. The time when the operation terminated, regardless of its
-- success. This field is unset if the operation is still ongoing.
omEndTime :: Lens' OperationMetadata (Maybe UTCTime)
omEndTime
  = lens _omEndTime (\ s a -> s{_omEndTime = a}) .
      mapping _DateTime

-- | Output only. The type of operation being performed.
omOperationType :: Lens' OperationMetadata (Maybe OperationMetadataOperationType)
omOperationType
  = lens _omOperationType
      (\ s a -> s{_omOperationType = a})

-- | Output only. The time the operation was submitted to the server.
omCreateTime :: Lens' OperationMetadata (Maybe UTCTime)
omCreateTime
  = lens _omCreateTime (\ s a -> s{_omCreateTime = a})
      . mapping _DateTime

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "resourceUuid") <*>
                     (o .:? "resource")
                     <*> (o .:? "endTime")
                     <*> (o .:? "operationType")
                     <*> (o .:? "createTime"))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _omState,
                  ("resourceUuid" .=) <$> _omResourceUuid,
                  ("resource" .=) <$> _omResource,
                  ("endTime" .=) <$> _omEndTime,
                  ("operationType" .=) <$> _omOperationType,
                  ("createTime" .=) <$> _omCreateTime])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional
