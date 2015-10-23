{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
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

-- | ListOperationsResponse is the result of ListOperationsRequest.
--
-- /See:/ 'listOperationsResponse' smart constructor.
newtype ListOperationsResponse = ListOperationsResponse
    { _lorOperations :: Maybe [Operation]
    } deriving (Eq,Show,Data,Typeable,Generic)

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
                 ListOperationsResponse <$>
                   (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse{..}
          = object
              (catMaybes [("operations" .=) <$> _lorOperations])

-- | CreateClusterRequest creates a cluster.
--
-- /See:/ 'createClusterRequest' smart constructor.
newtype CreateClusterRequest = CreateClusterRequest
    { _ccrCluster :: Maybe Cluster
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | A [cluster
-- resource](\/container-engine\/reference\/rest\/v1\/projects.zones.clusters)
ccrCluster :: Lens' CreateClusterRequest (Maybe Cluster)
ccrCluster
  = lens _ccrCluster (\ s a -> s{_ccrCluster = a})

instance FromJSON CreateClusterRequest where
        parseJSON
          = withObject "CreateClusterRequest"
              (\ o -> CreateClusterRequest <$> (o .:? "cluster"))

instance ToJSON CreateClusterRequest where
        toJSON CreateClusterRequest{..}
          = object (catMaybes [("cluster" .=) <$> _ccrCluster])

-- | A Google Container Engine cluster.
--
-- /See:/ 'cluster' smart constructor.
data Cluster = Cluster
    { _cStatus                :: !(Maybe Text)
    , _cNodeConfig            :: !(Maybe NodeConfig)
    , _cNodeIPv4CIdRSize      :: !(Maybe (JSONText Int32))
    , _cClusterIPv4CIdR       :: !(Maybe Text)
    , _cInitialNodeCount      :: !(Maybe (JSONText Int32))
    , _cCurrentNodeVersion    :: !(Maybe Text)
    , _cNetwork               :: !(Maybe Text)
    , _cInitialClusterVersion :: !(Maybe Text)
    , _cZone                  :: !(Maybe Text)
    , _cServicesIPv4CIdR      :: !(Maybe Text)
    , _cMasterAuth            :: !(Maybe MasterAuth)
    , _cSelfLink              :: !(Maybe Text)
    , _cName                  :: !(Maybe Text)
    , _cCurrentMasterVersion  :: !(Maybe Text)
    , _cStatusMessage         :: !(Maybe Text)
    , _cEndpoint              :: !(Maybe Text)
    , _cLoggingService        :: !(Maybe Text)
    , _cDescription           :: !(Maybe Text)
    , _cInstanceGroupURLs     :: !(Maybe [Text])
    , _cMonitoringService     :: !(Maybe Text)
    , _cCreateTime            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cNodeConfig'
--
-- * 'cNodeIPv4CIdRSize'
--
-- * 'cClusterIPv4CIdR'
--
-- * 'cInitialNodeCount'
--
-- * 'cCurrentNodeVersion'
--
-- * 'cNetwork'
--
-- * 'cInitialClusterVersion'
--
-- * 'cZone'
--
-- * 'cServicesIPv4CIdR'
--
-- * 'cMasterAuth'
--
-- * 'cSelfLink'
--
-- * 'cName'
--
-- * 'cCurrentMasterVersion'
--
-- * 'cStatusMessage'
--
-- * 'cEndpoint'
--
-- * 'cLoggingService'
--
-- * 'cDescription'
--
-- * 'cInstanceGroupURLs'
--
-- * 'cMonitoringService'
--
-- * 'cCreateTime'
cluster
    :: Cluster
cluster =
    Cluster
    { _cStatus = Nothing
    , _cNodeConfig = Nothing
    , _cNodeIPv4CIdRSize = Nothing
    , _cClusterIPv4CIdR = Nothing
    , _cInitialNodeCount = Nothing
    , _cCurrentNodeVersion = Nothing
    , _cNetwork = Nothing
    , _cInitialClusterVersion = Nothing
    , _cZone = Nothing
    , _cServicesIPv4CIdR = Nothing
    , _cMasterAuth = Nothing
    , _cSelfLink = Nothing
    , _cName = Nothing
    , _cCurrentMasterVersion = Nothing
    , _cStatusMessage = Nothing
    , _cEndpoint = Nothing
    , _cLoggingService = Nothing
    , _cDescription = Nothing
    , _cInstanceGroupURLs = Nothing
    , _cMonitoringService = Nothing
    , _cCreateTime = Nothing
    }

-- | [Output only] The current status of this cluster.
cStatus :: Lens' Cluster (Maybe Text)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | Parameters used in creating the cluster\'s nodes. See the descriptions
-- of the child properties of \`nodeConfig\`. If unspecified, the defaults
-- for all child properties are used.
cNodeConfig :: Lens' Cluster (Maybe NodeConfig)
cNodeConfig
  = lens _cNodeConfig (\ s a -> s{_cNodeConfig = a})

-- | [Output only] The size of the address space on each node for hosting
-- containers. This is provisioned from within the container_ipv4_cidr
-- range.
cNodeIPv4CIdRSize :: Lens' Cluster (Maybe Int32)
cNodeIPv4CIdRSize
  = lens _cNodeIPv4CIdRSize
      (\ s a -> s{_cNodeIPv4CIdRSize = a})
      . mapping _Coerce

-- | The IP address range of the container pods in this cluster, in
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`10.96.0.0\/14\`). Leave blank to have one automatically
-- chosen or specify a \`\/14\` block in \`10.0.0.0\/8\`.
cClusterIPv4CIdR :: Lens' Cluster (Maybe Text)
cClusterIPv4CIdR
  = lens _cClusterIPv4CIdR
      (\ s a -> s{_cClusterIPv4CIdR = a})

-- | The number of nodes to create in this cluster. You must ensure that your
-- Compute Engine [resource quota](\/compute\/docs\/resource-quotas) is
-- sufficient for this number of instances. You must also have available
-- firewall and routes quota.
cInitialNodeCount :: Lens' Cluster (Maybe Int32)
cInitialNodeCount
  = lens _cInitialNodeCount
      (\ s a -> s{_cInitialNodeCount = a})
      . mapping _Coerce

-- | [Output only] The current version of the node software components. If
-- they are currently at different versions because they\'re in the process
-- of being upgraded, this reflects the minimum version of any of them.
cCurrentNodeVersion :: Lens' Cluster (Maybe Text)
cCurrentNodeVersion
  = lens _cCurrentNodeVersion
      (\ s a -> s{_cCurrentNodeVersion = a})

-- | The name of the Google Compute Engine
-- [network](\/compute\/docs\/networking#networks_1) to which the cluster
-- is connected. If left unspecified, the \"default\" network will be used.
cNetwork :: Lens' Cluster (Maybe Text)
cNetwork = lens _cNetwork (\ s a -> s{_cNetwork = a})

-- | [Output only] The software version of Kubernetes master and kubelets
-- used in the cluster when it was first created. The version can be
-- upgraded over time.
cInitialClusterVersion :: Lens' Cluster (Maybe Text)
cInitialClusterVersion
  = lens _cInitialClusterVersion
      (\ s a -> s{_cInitialClusterVersion = a})

-- | [Output only] The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
cZone :: Lens' Cluster (Maybe Text)
cZone = lens _cZone (\ s a -> s{_cZone = a})

-- | [Output only] The IP address range of the Kubernetes services in this
-- cluster, in
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`1.2.3.4\/29\`). Service addresses are typically put in
-- the last \/16 from the container CIDR.
cServicesIPv4CIdR :: Lens' Cluster (Maybe Text)
cServicesIPv4CIdR
  = lens _cServicesIPv4CIdR
      (\ s a -> s{_cServicesIPv4CIdR = a})

-- | The authentication information for accessing the master.
cMasterAuth :: Lens' Cluster (Maybe MasterAuth)
cMasterAuth
  = lens _cMasterAuth (\ s a -> s{_cMasterAuth = a})

-- | [Output only] Server-defined URL for the resource.
cSelfLink :: Lens' Cluster (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | The name of this cluster. The name must be unique within this project
-- and zone, and can be up to 40 characters with the following
-- restrictions: * Lowercase letters, numbers, and hyphens only. * Must
-- start with a letter. * Must end with a number or a letter.
cName :: Lens' Cluster (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | [Output only] The current software version of the master endpoint.
cCurrentMasterVersion :: Lens' Cluster (Maybe Text)
cCurrentMasterVersion
  = lens _cCurrentMasterVersion
      (\ s a -> s{_cCurrentMasterVersion = a})

-- | [Output only] Additional information about the current status of this
-- cluster, if available.
cStatusMessage :: Lens' Cluster (Maybe Text)
cStatusMessage
  = lens _cStatusMessage
      (\ s a -> s{_cStatusMessage = a})

-- | [Output only] The IP address of this cluster\'s Kubernetes master
-- endpoint. The endpoint can be accessed from the internet at
-- \`https:\/\/username:password\'endpoint\/\`. See the \`masterAuth\`
-- property of this resource for username and password information.
cEndpoint :: Lens' Cluster (Maybe Text)
cEndpoint
  = lens _cEndpoint (\ s a -> s{_cEndpoint = a})

-- | The logging service that the cluster should write logs to. Currently
-- available options: * \"logging.googleapis.com\" - the Google Cloud
-- Logging service * \"none\" - no logs will be exported from the cluster *
-- \"\" - default value; the default is \"logging.googleapis.com\"
cLoggingService :: Lens' Cluster (Maybe Text)
cLoggingService
  = lens _cLoggingService
      (\ s a -> s{_cLoggingService = a})

-- | An optional description of this cluster.
cDescription :: Lens' Cluster (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

-- | [Output only] The resource URLs of [instance
-- groups](\/compute\/docs\/instance-groups\/) associated with this
-- cluster.
cInstanceGroupURLs :: Lens' Cluster [Text]
cInstanceGroupURLs
  = lens _cInstanceGroupURLs
      (\ s a -> s{_cInstanceGroupURLs = a})
      . _Default
      . _Coerce

-- | The monitoring service that the cluster should write metrics to.
-- Currently available options: * \"monitoring.googleapis.com\" - the
-- Google Cloud Monitoring service * \"none\" - no metrics will be exported
-- from the cluster * \"\" - default value; the default is
-- \"monitoring.googleapis.com\"
cMonitoringService :: Lens' Cluster (Maybe Text)
cMonitoringService
  = lens _cMonitoringService
      (\ s a -> s{_cMonitoringService = a})

-- | [Output only] The time the cluster was created, in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) text format.
cCreateTime :: Lens' Cluster (Maybe Text)
cCreateTime
  = lens _cCreateTime (\ s a -> s{_cCreateTime = a})

instance FromJSON Cluster where
        parseJSON
          = withObject "Cluster"
              (\ o ->
                 Cluster <$>
                   (o .:? "status") <*> (o .:? "nodeConfig") <*>
                     (o .:? "nodeIpv4CidrSize")
                     <*> (o .:? "clusterIpv4Cidr")
                     <*> (o .:? "initialNodeCount")
                     <*> (o .:? "currentNodeVersion")
                     <*> (o .:? "network")
                     <*> (o .:? "initialClusterVersion")
                     <*> (o .:? "zone")
                     <*> (o .:? "servicesIpv4Cidr")
                     <*> (o .:? "masterAuth")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "currentMasterVersion")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "endpoint")
                     <*> (o .:? "loggingService")
                     <*> (o .:? "description")
                     <*> (o .:? "instanceGroupUrls" .!= mempty)
                     <*> (o .:? "monitoringService")
                     <*> (o .:? "createTime"))

instance ToJSON Cluster where
        toJSON Cluster{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cStatus,
                  ("nodeConfig" .=) <$> _cNodeConfig,
                  ("nodeIpv4CidrSize" .=) <$> _cNodeIPv4CIdRSize,
                  ("clusterIpv4Cidr" .=) <$> _cClusterIPv4CIdR,
                  ("initialNodeCount" .=) <$> _cInitialNodeCount,
                  ("currentNodeVersion" .=) <$> _cCurrentNodeVersion,
                  ("network" .=) <$> _cNetwork,
                  ("initialClusterVersion" .=) <$>
                    _cInitialClusterVersion,
                  ("zone" .=) <$> _cZone,
                  ("servicesIpv4Cidr" .=) <$> _cServicesIPv4CIdR,
                  ("masterAuth" .=) <$> _cMasterAuth,
                  ("selfLink" .=) <$> _cSelfLink,
                  ("name" .=) <$> _cName,
                  ("currentMasterVersion" .=) <$>
                    _cCurrentMasterVersion,
                  ("statusMessage" .=) <$> _cStatusMessage,
                  ("endpoint" .=) <$> _cEndpoint,
                  ("loggingService" .=) <$> _cLoggingService,
                  ("description" .=) <$> _cDescription,
                  ("instanceGroupUrls" .=) <$> _cInstanceGroupURLs,
                  ("monitoringService" .=) <$> _cMonitoringService,
                  ("createTime" .=) <$> _cCreateTime])

-- | UpdateClusterRequest updates a cluster.
--
-- /See:/ 'updateClusterRequest' smart constructor.
newtype UpdateClusterRequest = UpdateClusterRequest
    { _ucrUpdate :: Maybe ClusterUpdate
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrUpdate'
updateClusterRequest
    :: UpdateClusterRequest
updateClusterRequest =
    UpdateClusterRequest
    { _ucrUpdate = Nothing
    }

-- | A description of the update.
ucrUpdate :: Lens' UpdateClusterRequest (Maybe ClusterUpdate)
ucrUpdate
  = lens _ucrUpdate (\ s a -> s{_ucrUpdate = a})

instance FromJSON UpdateClusterRequest where
        parseJSON
          = withObject "UpdateClusterRequest"
              (\ o -> UpdateClusterRequest <$> (o .:? "update"))

instance ToJSON UpdateClusterRequest where
        toJSON UpdateClusterRequest{..}
          = object (catMaybes [("update" .=) <$> _ucrUpdate])

-- | Per-node parameters.
--
-- /See:/ 'nodeConfig' smart constructor.
data NodeConfig = NodeConfig
    { _ncDiskSizeGb  :: !(Maybe (JSONText Int32))
    , _ncOAuthScopes :: !(Maybe [Text])
    , _ncMachineType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncDiskSizeGb'
--
-- * 'ncOAuthScopes'
--
-- * 'ncMachineType'
nodeConfig
    :: NodeConfig
nodeConfig =
    NodeConfig
    { _ncDiskSizeGb = Nothing
    , _ncOAuthScopes = Nothing
    , _ncMachineType = Nothing
    }

-- | Size of the disk attached to each node, specified in GB. The smallest
-- allowed disk size is 10GB. If unspecified, the default disk size is
-- 100GB.
ncDiskSizeGb :: Lens' NodeConfig (Maybe Int32)
ncDiskSizeGb
  = lens _ncDiskSizeGb (\ s a -> s{_ncDiskSizeGb = a})
      . mapping _Coerce

-- | The set of Google API scopes to be made available on all of the node VMs
-- under the \"default\" service account. The following scopes are
-- recommended, but not required, and by default are not included: *
-- \`https:\/\/www.googleapis.com\/auth\/compute\` is required for mounting
-- persistent storage on your nodes. *
-- \`https:\/\/www.googleapis.com\/auth\/devstorage.read_only\` is required
-- for communicating with *gcr.io*. If unspecified, no scopes are added.
ncOAuthScopes :: Lens' NodeConfig [Text]
ncOAuthScopes
  = lens _ncOAuthScopes
      (\ s a -> s{_ncOAuthScopes = a})
      . _Default
      . _Coerce

-- | The name of a Google Compute Engine [machine
-- type](\/compute\/docs\/machine-types) (e.g. \`n1-standard-1\`). If
-- unspecified, the default machine type is \`n1-standard-1\`.
ncMachineType :: Lens' NodeConfig (Maybe Text)
ncMachineType
  = lens _ncMachineType
      (\ s a -> s{_ncMachineType = a})

instance FromJSON NodeConfig where
        parseJSON
          = withObject "NodeConfig"
              (\ o ->
                 NodeConfig <$>
                   (o .:? "diskSizeGb") <*>
                     (o .:? "oauthScopes" .!= mempty)
                     <*> (o .:? "machineType"))

instance ToJSON NodeConfig where
        toJSON NodeConfig{..}
          = object
              (catMaybes
                 [("diskSizeGb" .=) <$> _ncDiskSizeGb,
                  ("oauthScopes" .=) <$> _ncOAuthScopes,
                  ("machineType" .=) <$> _ncMachineType])

-- | Defines the operation resource. All fields are output only.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oStatus        :: !(Maybe Text)
    , _oZone          :: !(Maybe Text)
    , _oSelfLink      :: !(Maybe Text)
    , _oName          :: !(Maybe Text)
    , _oStatusMessage :: !(Maybe Text)
    , _oOperationType :: !(Maybe Text)
    , _oTargetLink    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'oStatusMessage'
--
-- * 'oOperationType'
--
-- * 'oTargetLink'
operation
    :: Operation
operation =
    Operation
    { _oStatus = Nothing
    , _oZone = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oStatusMessage = Nothing
    , _oOperationType = Nothing
    , _oTargetLink = Nothing
    }

-- | The current status of the operation.
oStatus :: Lens' Operation (Maybe Text)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the operation is
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

-- | If an error has occurred, a textual description of the error.
oStatusMessage :: Lens' Operation (Maybe Text)
oStatusMessage
  = lens _oStatusMessage
      (\ s a -> s{_oStatusMessage = a})

-- | The operation type.
oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | Server-defined URL for the target of the operation.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation <$>
                   (o .:? "status") <*> (o .:? "zone") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "operationType")
                     <*> (o .:? "targetLink"))

instance ToJSON Operation where
        toJSON Operation{..}
          = object
              (catMaybes
                 [("status" .=) <$> _oStatus, ("zone" .=) <$> _oZone,
                  ("selfLink" .=) <$> _oSelfLink,
                  ("name" .=) <$> _oName,
                  ("statusMessage" .=) <$> _oStatusMessage,
                  ("operationType" .=) <$> _oOperationType,
                  ("targetLink" .=) <$> _oTargetLink])

-- | The authentication information for accessing the master endpoint.
-- Authentication can be done using HTTP basic auth or using client
-- certificates.
--
-- /See:/ 'masterAuth' smart constructor.
data MasterAuth = MasterAuth
    { _maClientKey            :: !(Maybe Text)
    , _maUsername             :: !(Maybe Text)
    , _maClientCertificate    :: !(Maybe Text)
    , _maPassword             :: !(Maybe Text)
    , _maClusterCaCertificate :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MasterAuth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maClientKey'
--
-- * 'maUsername'
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
    { _maClientKey = Nothing
    , _maUsername = Nothing
    , _maClientCertificate = Nothing
    , _maPassword = Nothing
    , _maClusterCaCertificate = Nothing
    }

-- | [Output only] Base64 encoded private key used by clients to authenticate
-- to the cluster endpoint.
maClientKey :: Lens' MasterAuth (Maybe Text)
maClientKey
  = lens _maClientKey (\ s a -> s{_maClientKey = a})

-- | The username to use for HTTP basic authentication when accessing the
-- Kubernetes master endpoint.
maUsername :: Lens' MasterAuth (Maybe Text)
maUsername
  = lens _maUsername (\ s a -> s{_maUsername = a})

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
                   (o .:? "clientKey") <*> (o .:? "username") <*>
                     (o .:? "clientCertificate")
                     <*> (o .:? "password")
                     <*> (o .:? "clusterCaCertificate"))

instance ToJSON MasterAuth where
        toJSON MasterAuth{..}
          = object
              (catMaybes
                 [("clientKey" .=) <$> _maClientKey,
                  ("username" .=) <$> _maUsername,
                  ("clientCertificate" .=) <$> _maClientCertificate,
                  ("password" .=) <$> _maPassword,
                  ("clusterCaCertificate" .=) <$>
                    _maClusterCaCertificate])

-- | Container Engine Server configuration.
--
-- /See:/ 'serverConfig' smart constructor.
data ServerConfig = ServerConfig
    { _scValidNodeVersions     :: !(Maybe [Text])
    , _scDefaultClusterVersion :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scValidNodeVersions'
--
-- * 'scDefaultClusterVersion'
serverConfig
    :: ServerConfig
serverConfig =
    ServerConfig
    { _scValidNodeVersions = Nothing
    , _scDefaultClusterVersion = Nothing
    }

-- | List of valid node upgrade target versions.
scValidNodeVersions :: Lens' ServerConfig [Text]
scValidNodeVersions
  = lens _scValidNodeVersions
      (\ s a -> s{_scValidNodeVersions = a})
      . _Default
      . _Coerce

-- | What version this server deploys by default.
scDefaultClusterVersion :: Lens' ServerConfig (Maybe Text)
scDefaultClusterVersion
  = lens _scDefaultClusterVersion
      (\ s a -> s{_scDefaultClusterVersion = a})

instance FromJSON ServerConfig where
        parseJSON
          = withObject "ServerConfig"
              (\ o ->
                 ServerConfig <$>
                   (o .:? "validNodeVersions" .!= mempty) <*>
                     (o .:? "defaultClusterVersion"))

instance ToJSON ServerConfig where
        toJSON ServerConfig{..}
          = object
              (catMaybes
                 [("validNodeVersions" .=) <$> _scValidNodeVersions,
                  ("defaultClusterVersion" .=) <$>
                    _scDefaultClusterVersion])

-- | ListClustersResponse is the result of ListClustersRequest.
--
-- /See:/ 'listClustersResponse' smart constructor.
newtype ListClustersResponse = ListClustersResponse
    { _lcrClusters :: Maybe [Cluster]
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | A list of clusters in the project in the specified zone, or across all
-- ones.
lcrClusters :: Lens' ListClustersResponse [Cluster]
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

-- | ClusterUpdate describes an update to the cluster.
--
-- /See:/ 'clusterUpdate' smart constructor.
newtype ClusterUpdate = ClusterUpdate
    { _cuDesiredNodeVersion :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClusterUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuDesiredNodeVersion'
clusterUpdate
    :: ClusterUpdate
clusterUpdate =
    ClusterUpdate
    { _cuDesiredNodeVersion = Nothing
    }

-- | The Kubernetes version to change the nodes to (typically an upgrade).
-- Use \"-\" to upgrade to the latest version supported by the server.
cuDesiredNodeVersion :: Lens' ClusterUpdate (Maybe Text)
cuDesiredNodeVersion
  = lens _cuDesiredNodeVersion
      (\ s a -> s{_cuDesiredNodeVersion = a})

instance FromJSON ClusterUpdate where
        parseJSON
          = withObject "ClusterUpdate"
              (\ o ->
                 ClusterUpdate <$> (o .:? "desiredNodeVersion"))

instance ToJSON ClusterUpdate where
        toJSON ClusterUpdate{..}
          = object
              (catMaybes
                 [("desiredNodeVersion" .=) <$>
                    _cuDesiredNodeVersion])
