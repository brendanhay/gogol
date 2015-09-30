{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Container.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Container.Types.Product where

import           Network.Google.Container.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'listOperationsResponse' smart constructor.
newtype ListOperationsResponse = ListOperationsResponse
    { _lorOperations :: Maybe [Maybe Operation]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
    ListOperationsResponse
    { _lorOperations = Nothing
    }

-- | A list of operations in the project in the specified zone.
lorOperations :: Lens' ListOperationsResponse [Maybe Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse <$>
                   (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse{..}
          = object
              (catMaybes [("operations" .=) <$> _lorOperations])

--
-- /See:/ 'createClusterRequest' smart constructor.
newtype CreateClusterRequest = CreateClusterRequest
    { _ccrCluster :: Maybe (Maybe Cluster)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrCluster'
createClusterRequest
    :: CreateClusterRequest
createClusterRequest =
    CreateClusterRequest
    { _ccrCluster = Nothing
    }

-- | A cluster resource.
ccrCluster :: Lens' CreateClusterRequest (Maybe (Maybe Cluster))
ccrCluster
  = lens _ccrCluster (\ s a -> s{_ccrCluster = a})

instance FromJSON CreateClusterRequest where
        parseJSON
          = withObject "CreateClusterRequest"
              (\ o -> CreateClusterRequest <$> (o .:? "cluster"))

instance ToJSON CreateClusterRequest where
        toJSON CreateClusterRequest{..}
          = object (catMaybes [("cluster" .=) <$> _ccrCluster])

--
-- /See:/ 'cluster' smart constructor.
data Cluster = Cluster
    { _cStatus                :: !(Maybe Text)
    , _cNodeConfig            :: !(Maybe (Maybe NodeConfig))
    , _cNumNodes              :: !(Maybe Int32)
    , _cClusterApiVersion     :: !(Maybe Text)
    , _cNetwork               :: !(Maybe Text)
    , _cZone                  :: !(Maybe Text)
    , _cServicesIpv4Cidr      :: !(Maybe Text)
    , _cMasterAuth            :: !(Maybe (Maybe MasterAuth))
    , _cSelfLink              :: !(Maybe Text)
    , _cEnableCloudMonitoring :: !(Maybe Bool)
    , _cName                  :: !(Maybe Text)
    , _cStatusMessage         :: !(Maybe Text)
    , _cCreationTimestamp     :: !(Maybe Text)
    , _cContainerIpv4Cidr     :: !(Maybe Text)
    , _cEndpoint              :: !(Maybe Text)
    , _cEnableCloudLogging    :: !(Maybe Bool)
    , _cDescription           :: !(Maybe Text)
    , _cInstanceGroupUrls     :: !(Maybe [Text])
    , _cNodeRoutingPrefixSize :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cNodeConfig'
--
-- * 'cNumNodes'
--
-- * 'cClusterApiVersion'
--
-- * 'cNetwork'
--
-- * 'cZone'
--
-- * 'cServicesIpv4Cidr'
--
-- * 'cMasterAuth'
--
-- * 'cSelfLink'
--
-- * 'cEnableCloudMonitoring'
--
-- * 'cName'
--
-- * 'cStatusMessage'
--
-- * 'cCreationTimestamp'
--
-- * 'cContainerIpv4Cidr'
--
-- * 'cEndpoint'
--
-- * 'cEnableCloudLogging'
--
-- * 'cDescription'
--
-- * 'cInstanceGroupUrls'
--
-- * 'cNodeRoutingPrefixSize'
cluster
    :: Cluster
cluster =
    Cluster
    { _cStatus = Nothing
    , _cNodeConfig = Nothing
    , _cNumNodes = Nothing
    , _cClusterApiVersion = Nothing
    , _cNetwork = Nothing
    , _cZone = Nothing
    , _cServicesIpv4Cidr = Nothing
    , _cMasterAuth = Nothing
    , _cSelfLink = Nothing
    , _cEnableCloudMonitoring = Nothing
    , _cName = Nothing
    , _cStatusMessage = Nothing
    , _cCreationTimestamp = Nothing
    , _cContainerIpv4Cidr = Nothing
    , _cEndpoint = Nothing
    , _cEnableCloudLogging = Nothing
    , _cDescription = Nothing
    , _cInstanceGroupUrls = Nothing
    , _cNodeRoutingPrefixSize = Nothing
    }

-- | [Output only] The current status of this cluster.
cStatus :: Lens' Cluster (Maybe Text)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | The machine type and image to use for all nodes in this cluster. See the
-- descriptions of the child properties of nodeConfig.
cNodeConfig :: Lens' Cluster (Maybe (Maybe NodeConfig))
cNodeConfig
  = lens _cNodeConfig (\ s a -> s{_cNodeConfig = a})

-- | The number of nodes to create in this cluster. You must ensure that your
-- Compute Engine resource quota is sufficient for this number of instances
-- plus one (to include the master). You must also have available firewall
-- and routes quota.
cNumNodes :: Lens' Cluster (Maybe Int32)
cNumNodes
  = lens _cNumNodes (\ s a -> s{_cNumNodes = a})

-- | The API version of the Kubernetes master and kubelets running in this
-- cluster. Leave blank to pick up the latest stable release, or specify a
-- version of the form \"x.y.z\". The Google Container Engine release notes
-- lists the currently supported versions. If an incorrect version is
-- specified, the server returns an error listing the currently supported
-- versions.
cClusterApiVersion :: Lens' Cluster (Maybe Text)
cClusterApiVersion
  = lens _cClusterApiVersion
      (\ s a -> s{_cClusterApiVersion = a})

-- | The name of the Google Compute Engine network to which the cluster is
-- connected.
cNetwork :: Lens' Cluster (Maybe Text)
cNetwork = lens _cNetwork (\ s a -> s{_cNetwork = a})

-- | [Output only] The name of the Google Compute Engine zone in which the
-- cluster resides.
cZone :: Lens' Cluster (Maybe Text)
cZone = lens _cZone (\ s a -> s{_cZone = a})

-- | [Output only] The IP address range of the Kubernetes services in this
-- cluster, in CIDR notation (e.g. 1.2.3.4\/29). Service addresses are
-- typically put in the last \/16 from the container CIDR.
cServicesIpv4Cidr :: Lens' Cluster (Maybe Text)
cServicesIpv4Cidr
  = lens _cServicesIpv4Cidr
      (\ s a -> s{_cServicesIpv4Cidr = a})

-- | The authentication information for accessing the master.
cMasterAuth :: Lens' Cluster (Maybe (Maybe MasterAuth))
cMasterAuth
  = lens _cMasterAuth (\ s a -> s{_cMasterAuth = a})

-- | [Output only] Server-defined URL for the resource.
cSelfLink :: Lens' Cluster (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | Whether metrics from the cluster should be made available via the Google
-- Cloud Monitoring service.
cEnableCloudMonitoring :: Lens' Cluster (Maybe Bool)
cEnableCloudMonitoring
  = lens _cEnableCloudMonitoring
      (\ s a -> s{_cEnableCloudMonitoring = a})

-- | The name of this cluster. The name must be unique within this project
-- and zone, and can be up to 40 characters with the following
-- restrictions: - Lowercase letters, numbers, and hyphens only. - Must
-- start with a letter. - Must end with a number or a letter.
cName :: Lens' Cluster (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | [Output only] Additional information about the current status of this
-- cluster, if available.
cStatusMessage :: Lens' Cluster (Maybe Text)
cStatusMessage
  = lens _cStatusMessage
      (\ s a -> s{_cStatusMessage = a})

-- | [Output only] The time the cluster was created, in RFC3339 text format.
cCreationTimestamp :: Lens' Cluster (Maybe Text)
cCreationTimestamp
  = lens _cCreationTimestamp
      (\ s a -> s{_cCreationTimestamp = a})

-- | The IP address range of the container pods in this cluster, in CIDR
-- notation (e.g. 10.96.0.0\/14). Leave blank to have one automatically
-- chosen or specify a \/14 block in 10.0.0.0\/8.
cContainerIpv4Cidr :: Lens' Cluster (Maybe Text)
cContainerIpv4Cidr
  = lens _cContainerIpv4Cidr
      (\ s a -> s{_cContainerIpv4Cidr = a})

-- | [Output only] The IP address of this cluster\'s Kubernetes master. The
-- endpoint can be accessed from the internet at
-- https:\/\/username:password\'endpoint\/. See the masterAuth property of
-- this resource for username and password information.
cEndpoint :: Lens' Cluster (Maybe Text)
cEndpoint
  = lens _cEndpoint (\ s a -> s{_cEndpoint = a})

-- | Whether logs from the cluster should be made available via the Google
-- Cloud Logging service. This includes both logs from your applications
-- running in the cluster as well as logs from the Kubernetes components
-- themselves.
cEnableCloudLogging :: Lens' Cluster (Maybe Bool)
cEnableCloudLogging
  = lens _cEnableCloudLogging
      (\ s a -> s{_cEnableCloudLogging = a})

-- | An optional description of this cluster.
cDescription :: Lens' Cluster (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

-- | [Output only] The resource URLs of [instance
-- groups](\/compute\/docs\/instance-groups\/) associated with this
-- cluster.
cInstanceGroupUrls :: Lens' Cluster [Text]
cInstanceGroupUrls
  = lens _cInstanceGroupUrls
      (\ s a -> s{_cInstanceGroupUrls = a})
      . _Default
      . _Coerce

-- | [Output only] The size of the address space on each node for hosting
-- containers.
cNodeRoutingPrefixSize :: Lens' Cluster (Maybe Int32)
cNodeRoutingPrefixSize
  = lens _cNodeRoutingPrefixSize
      (\ s a -> s{_cNodeRoutingPrefixSize = a})

instance FromJSON Cluster where
        parseJSON
          = withObject "Cluster"
              (\ o ->
                 Cluster <$>
                   (o .:? "status") <*> (o .:? "nodeConfig") <*>
                     (o .:? "numNodes")
                     <*> (o .:? "clusterApiVersion")
                     <*> (o .:? "network")
                     <*> (o .:? "zone")
                     <*> (o .:? "servicesIpv4Cidr")
                     <*> (o .:? "masterAuth")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "enableCloudMonitoring")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "containerIpv4Cidr")
                     <*> (o .:? "endpoint")
                     <*> (o .:? "enableCloudLogging")
                     <*> (o .:? "description")
                     <*> (o .:? "instanceGroupUrls" .!= mempty)
                     <*> (o .:? "nodeRoutingPrefixSize"))

instance ToJSON Cluster where
        toJSON Cluster{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cStatus,
                  ("nodeConfig" .=) <$> _cNodeConfig,
                  ("numNodes" .=) <$> _cNumNodes,
                  ("clusterApiVersion" .=) <$> _cClusterApiVersion,
                  ("network" .=) <$> _cNetwork, ("zone" .=) <$> _cZone,
                  ("servicesIpv4Cidr" .=) <$> _cServicesIpv4Cidr,
                  ("masterAuth" .=) <$> _cMasterAuth,
                  ("selfLink" .=) <$> _cSelfLink,
                  ("enableCloudMonitoring" .=) <$>
                    _cEnableCloudMonitoring,
                  ("name" .=) <$> _cName,
                  ("statusMessage" .=) <$> _cStatusMessage,
                  ("creationTimestamp" .=) <$> _cCreationTimestamp,
                  ("containerIpv4Cidr" .=) <$> _cContainerIpv4Cidr,
                  ("endpoint" .=) <$> _cEndpoint,
                  ("enableCloudLogging" .=) <$> _cEnableCloudLogging,
                  ("description" .=) <$> _cDescription,
                  ("instanceGroupUrls" .=) <$> _cInstanceGroupUrls,
                  ("nodeRoutingPrefixSize" .=) <$>
                    _cNodeRoutingPrefixSize])

--
-- /See:/ 'listAggregatedOperationsResponse' smart constructor.
newtype ListAggregatedOperationsResponse = ListAggregatedOperationsResponse
    { _laorOperations :: Maybe [Maybe Operation]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListAggregatedOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laorOperations'
listAggregatedOperationsResponse
    :: ListAggregatedOperationsResponse
listAggregatedOperationsResponse =
    ListAggregatedOperationsResponse
    { _laorOperations = Nothing
    }

-- | A list of operations in the project, across all zones.
laorOperations :: Lens' ListAggregatedOperationsResponse [Maybe Operation]
laorOperations
  = lens _laorOperations
      (\ s a -> s{_laorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListAggregatedOperationsResponse
         where
        parseJSON
          = withObject "ListAggregatedOperationsResponse"
              (\ o ->
                 ListAggregatedOperationsResponse <$>
                   (o .:? "operations" .!= mempty))

instance ToJSON ListAggregatedOperationsResponse
         where
        toJSON ListAggregatedOperationsResponse{..}
          = object
              (catMaybes [("operations" .=) <$> _laorOperations])

--
-- /See:/ 'nodeConfig' smart constructor.
data NodeConfig = NodeConfig
    { _ncServiceAccounts :: !(Maybe [Maybe ServiceAccount])
    , _ncSourceImage     :: !(Maybe Text)
    , _ncMachineType     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncServiceAccounts'
--
-- * 'ncSourceImage'
--
-- * 'ncMachineType'
nodeConfig
    :: NodeConfig
nodeConfig =
    NodeConfig
    { _ncServiceAccounts = Nothing
    , _ncSourceImage = Nothing
    , _ncMachineType = Nothing
    }

-- | The optional list of ServiceAccounts, each with their specified scopes,
-- to be made available on all of the node VMs. In addition to the service
-- accounts and scopes specified, the \"default\" account will always be
-- created with the following scopes to ensure the correct functioning of
-- the cluster: - https:\/\/www.googleapis.com\/auth\/compute, -
-- https:\/\/www.googleapis.com\/auth\/devstorage.read_only
ncServiceAccounts :: Lens' NodeConfig [Maybe ServiceAccount]
ncServiceAccounts
  = lens _ncServiceAccounts
      (\ s a -> s{_ncServiceAccounts = a})
      . _Default
      . _Coerce

-- | The fully-specified name of a Google Compute Engine image. For example:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/debian-cloud\/global\/images\/backports-debian-7-wheezy-vYYYYMMDD
-- (where YYYMMDD is the version date). If specifying an image, you are
-- responsible for ensuring its compatibility with the Debian 7 backports
-- image. We recommend leaving this field blank to accept the default
-- backports-debian-7-wheezy value.
ncSourceImage :: Lens' NodeConfig (Maybe Text)
ncSourceImage
  = lens _ncSourceImage
      (\ s a -> s{_ncSourceImage = a})

-- | The name of a Google Compute Engine machine type (e.g. n1-standard-1).
-- If unspecified, the default machine type is n1-standard-1.
ncMachineType :: Lens' NodeConfig (Maybe Text)
ncMachineType
  = lens _ncMachineType
      (\ s a -> s{_ncMachineType = a})

instance FromJSON NodeConfig where
        parseJSON
          = withObject "NodeConfig"
              (\ o ->
                 NodeConfig <$>
                   (o .:? "serviceAccounts" .!= mempty) <*>
                     (o .:? "sourceImage")
                     <*> (o .:? "machineType"))

instance ToJSON NodeConfig where
        toJSON NodeConfig{..}
          = object
              (catMaybes
                 [("serviceAccounts" .=) <$> _ncServiceAccounts,
                  ("sourceImage" .=) <$> _ncSourceImage,
                  ("machineType" .=) <$> _ncMachineType])

-- | Defines the operation resource. All fields are output only.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oStatus        :: !(Maybe Text)
    , _oZone          :: !(Maybe Text)
    , _oSelfLink      :: !(Maybe Text)
    , _oName          :: !(Maybe Text)
    , _oOperationType :: !(Maybe Text)
    , _oErrorMessage  :: !(Maybe Text)
    , _oTargetLink    :: !(Maybe Text)
    , _oTarget        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oStatus'
--
-- * 'oZone'
--
-- * 'oSelfLink'
--
-- * 'oName'
--
-- * 'oOperationType'
--
-- * 'oErrorMessage'
--
-- * 'oTargetLink'
--
-- * 'oTarget'
operation
    :: Operation
operation =
    Operation
    { _oStatus = Nothing
    , _oZone = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oOperationType = Nothing
    , _oErrorMessage = Nothing
    , _oTargetLink = Nothing
    , _oTarget = Nothing
    }

-- | The current status of the operation.
oStatus :: Lens' Operation (Maybe Text)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | The name of the Google Compute Engine zone in which the operation is
-- taking place.
oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

-- | Server-defined URL for the resource.
oSelfLink :: Lens' Operation (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

-- | The server-assigned ID for the operation.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | The operation type.
oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | If an error has occurred, a textual description of the error.
oErrorMessage :: Lens' Operation (Maybe Text)
oErrorMessage
  = lens _oErrorMessage
      (\ s a -> s{_oErrorMessage = a})

-- | Server-defined URL for the target of the operation.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

-- | [Optional] The URL of the cluster resource that this operation is
-- associated with.
oTarget :: Lens' Operation (Maybe Text)
oTarget = lens _oTarget (\ s a -> s{_oTarget = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation <$>
                   (o .:? "status") <*> (o .:? "zone") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "operationType")
                     <*> (o .:? "errorMessage")
                     <*> (o .:? "targetLink")
                     <*> (o .:? "target"))

instance ToJSON Operation where
        toJSON Operation{..}
          = object
              (catMaybes
                 [("status" .=) <$> _oStatus, ("zone" .=) <$> _oZone,
                  ("selfLink" .=) <$> _oSelfLink,
                  ("name" .=) <$> _oName,
                  ("operationType" .=) <$> _oOperationType,
                  ("errorMessage" .=) <$> _oErrorMessage,
                  ("targetLink" .=) <$> _oTargetLink,
                  ("target" .=) <$> _oTarget])

-- | A Compute Engine service account.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount = ServiceAccount
    { _saEmail  :: !(Maybe Text)
    , _saScopes :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saEmail'
--
-- * 'saScopes'
serviceAccount
    :: ServiceAccount
serviceAccount =
    ServiceAccount
    { _saEmail = Nothing
    , _saScopes = Nothing
    }

-- | Email address of the service account.
saEmail :: Lens' ServiceAccount (Maybe Text)
saEmail = lens _saEmail (\ s a -> s{_saEmail = a})

-- | The list of scopes to be made available for this service account.
saScopes :: Lens' ServiceAccount [Text]
saScopes
  = lens _saScopes (\ s a -> s{_saScopes = a}) .
      _Default
      . _Coerce

instance FromJSON ServiceAccount where
        parseJSON
          = withObject "ServiceAccount"
              (\ o ->
                 ServiceAccount <$>
                   (o .:? "email") <*> (o .:? "scopes" .!= mempty))

instance ToJSON ServiceAccount where
        toJSON ServiceAccount{..}
          = object
              (catMaybes
                 [("email" .=) <$> _saEmail,
                  ("scopes" .=) <$> _saScopes])

-- | The authentication information for accessing the master. Authentication
-- is either done using HTTP basic authentication or using a bearer token.
--
-- /See:/ 'masterAuth' smart constructor.
data MasterAuth = MasterAuth
    { _maBearerToken          :: !(Maybe Text)
    , _maClientKey            :: !(Maybe Text)
    , _maUser                 :: !(Maybe Text)
    , _maClientCertificate    :: !(Maybe Text)
    , _maPassword             :: !(Maybe Text)
    , _maClusterCaCertificate :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MasterAuth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maBearerToken'
--
-- * 'maClientKey'
--
-- * 'maUser'
--
-- * 'maClientCertificate'
--
-- * 'maPassword'
--
-- * 'maClusterCaCertificate'
masterAuth
    :: MasterAuth
masterAuth =
    MasterAuth
    { _maBearerToken = Nothing
    , _maClientKey = Nothing
    , _maUser = Nothing
    , _maClientCertificate = Nothing
    , _maPassword = Nothing
    , _maClusterCaCertificate = Nothing
    }

-- | The token used to authenticate API requests to the master. The token is
-- to be included in an HTTP Authorization Header in all requests to the
-- master endpoint. The format of the header is: \"Authorization: Bearer
-- \".
maBearerToken :: Lens' MasterAuth (Maybe Text)
maBearerToken
  = lens _maBearerToken
      (\ s a -> s{_maBearerToken = a})

-- | [Output only] Base64 encoded private key used by clients to authenticate
-- to the cluster endpoint.
maClientKey :: Lens' MasterAuth (Maybe Text)
maClientKey
  = lens _maClientKey (\ s a -> s{_maClientKey = a})

-- | The username to use for HTTP basic authentication when accessing the
-- Kubernetes master endpoint.
maUser :: Lens' MasterAuth (Maybe Text)
maUser = lens _maUser (\ s a -> s{_maUser = a})

-- | [Output only] Base64 encoded public certificate used by clients to
-- authenticate to the cluster endpoint.
maClientCertificate :: Lens' MasterAuth (Maybe Text)
maClientCertificate
  = lens _maClientCertificate
      (\ s a -> s{_maClientCertificate = a})

-- | The password to use for HTTP basic authentication when accessing the
-- Kubernetes master endpoint. Because the master endpoint is open to the
-- internet, you should create a strong password.
maPassword :: Lens' MasterAuth (Maybe Text)
maPassword
  = lens _maPassword (\ s a -> s{_maPassword = a})

-- | [Output only] Base64 encoded public certificate that is the root of
-- trust for the cluster.
maClusterCaCertificate :: Lens' MasterAuth (Maybe Text)
maClusterCaCertificate
  = lens _maClusterCaCertificate
      (\ s a -> s{_maClusterCaCertificate = a})

instance FromJSON MasterAuth where
        parseJSON
          = withObject "MasterAuth"
              (\ o ->
                 MasterAuth <$>
                   (o .:? "bearerToken") <*> (o .:? "clientKey") <*>
                     (o .:? "user")
                     <*> (o .:? "clientCertificate")
                     <*> (o .:? "password")
                     <*> (o .:? "clusterCaCertificate"))

instance ToJSON MasterAuth where
        toJSON MasterAuth{..}
          = object
              (catMaybes
                 [("bearerToken" .=) <$> _maBearerToken,
                  ("clientKey" .=) <$> _maClientKey,
                  ("user" .=) <$> _maUser,
                  ("clientCertificate" .=) <$> _maClientCertificate,
                  ("password" .=) <$> _maPassword,
                  ("clusterCaCertificate" .=) <$>
                    _maClusterCaCertificate])

--
-- /See:/ 'listAggregatedClustersResponse' smart constructor.
newtype ListAggregatedClustersResponse = ListAggregatedClustersResponse
    { _lacrClusters :: Maybe [Maybe Cluster]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListAggregatedClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lacrClusters'
listAggregatedClustersResponse
    :: ListAggregatedClustersResponse
listAggregatedClustersResponse =
    ListAggregatedClustersResponse
    { _lacrClusters = Nothing
    }

-- | A list of clusters in the project, across all zones.
lacrClusters :: Lens' ListAggregatedClustersResponse [Maybe Cluster]
lacrClusters
  = lens _lacrClusters (\ s a -> s{_lacrClusters = a})
      . _Default
      . _Coerce

instance FromJSON ListAggregatedClustersResponse
         where
        parseJSON
          = withObject "ListAggregatedClustersResponse"
              (\ o ->
                 ListAggregatedClustersResponse <$>
                   (o .:? "clusters" .!= mempty))

instance ToJSON ListAggregatedClustersResponse where
        toJSON ListAggregatedClustersResponse{..}
          = object
              (catMaybes [("clusters" .=) <$> _lacrClusters])

--
-- /See:/ 'listClustersResponse' smart constructor.
newtype ListClustersResponse = ListClustersResponse
    { _lcrClusters :: Maybe [Maybe Cluster]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrClusters'
listClustersResponse
    :: ListClustersResponse
listClustersResponse =
    ListClustersResponse
    { _lcrClusters = Nothing
    }

-- | A list of clusters in the project in the specified zone.
lcrClusters :: Lens' ListClustersResponse [Maybe Cluster]
lcrClusters
  = lens _lcrClusters (\ s a -> s{_lcrClusters = a}) .
      _Default
      . _Coerce

instance FromJSON ListClustersResponse where
        parseJSON
          = withObject "ListClustersResponse"
              (\ o ->
                 ListClustersResponse <$>
                   (o .:? "clusters" .!= mempty))

instance ToJSON ListClustersResponse where
        toJSON ListClustersResponse{..}
          = object
              (catMaybes [("clusters" .=) <$> _lcrClusters])
