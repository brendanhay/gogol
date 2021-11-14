{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Container.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Container.Types.Product where

import Network.Google.Container.Types.Sum
import Network.Google.Prelude

-- | Parameters for controlling consumption metering.
--
-- /See:/ 'consumptionMeteringConfig' smart constructor.
newtype ConsumptionMeteringConfig =
  ConsumptionMeteringConfig'
    { _cmcEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsumptionMeteringConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmcEnabled'
consumptionMeteringConfig
    :: ConsumptionMeteringConfig
consumptionMeteringConfig = ConsumptionMeteringConfig' {_cmcEnabled = Nothing}


-- | Whether to enable consumption metering for this cluster. If enabled, a
-- second BigQuery table will be created to hold resource consumption
-- records.
cmcEnabled :: Lens' ConsumptionMeteringConfig (Maybe Bool)
cmcEnabled
  = lens _cmcEnabled (\ s a -> s{_cmcEnabled = a})

instance FromJSON ConsumptionMeteringConfig where
        parseJSON
          = withObject "ConsumptionMeteringConfig"
              (\ o ->
                 ConsumptionMeteringConfig' <$> (o .:? "enabled"))

instance ToJSON ConsumptionMeteringConfig where
        toJSON ConsumptionMeteringConfig'{..}
          = object (catMaybes [("enabled" .=) <$> _cmcEnabled])

-- | Parameters that can be configured on Linux nodes.
--
-- /See:/ 'linuxNodeConfig' smart constructor.
newtype LinuxNodeConfig =
  LinuxNodeConfig'
    { _lncSysctls :: Maybe LinuxNodeConfigSysctls
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LinuxNodeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lncSysctls'
linuxNodeConfig
    :: LinuxNodeConfig
linuxNodeConfig = LinuxNodeConfig' {_lncSysctls = Nothing}


-- | The Linux kernel parameters to be applied to the nodes and all pods
-- running on the nodes. The following parameters are supported.
-- net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default
-- net.core.wmem_max net.core.optmem_max net.core.somaxconn
-- net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
lncSysctls :: Lens' LinuxNodeConfig (Maybe LinuxNodeConfigSysctls)
lncSysctls
  = lens _lncSysctls (\ s a -> s{_lncSysctls = a})

instance FromJSON LinuxNodeConfig where
        parseJSON
          = withObject "LinuxNodeConfig"
              (\ o -> LinuxNodeConfig' <$> (o .:? "sysctls"))

instance ToJSON LinuxNodeConfig where
        toJSON LinuxNodeConfig'{..}
          = object (catMaybes [("sysctls" .=) <$> _lncSysctls])

-- | Configuration for NetworkPolicy. This only tracks whether the addon is
-- enabled or not on the Master, it does not track whether network policy
-- is enabled for the nodes.
--
-- /See:/ 'networkPolicyConfig' smart constructor.
newtype NetworkPolicyConfig =
  NetworkPolicyConfig'
    { _npcDisabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkPolicyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npcDisabled'
networkPolicyConfig
    :: NetworkPolicyConfig
networkPolicyConfig = NetworkPolicyConfig' {_npcDisabled = Nothing}


-- | Whether NetworkPolicy is enabled for this cluster.
npcDisabled :: Lens' NetworkPolicyConfig (Maybe Bool)
npcDisabled
  = lens _npcDisabled (\ s a -> s{_npcDisabled = a})

instance FromJSON NetworkPolicyConfig where
        parseJSON
          = withObject "NetworkPolicyConfig"
              (\ o -> NetworkPolicyConfig' <$> (o .:? "disabled"))

instance ToJSON NetworkPolicyConfig where
        toJSON NetworkPolicyConfig'{..}
          = object
              (catMaybes [("disabled" .=) <$> _npcDisabled])

-- | ListUsableSubnetworksResponse is the response of
-- ListUsableSubnetworksRequest.
--
-- /See:/ 'listUsableSubnetworksResponse' smart constructor.
data ListUsableSubnetworksResponse =
  ListUsableSubnetworksResponse'
    { _lusrNextPageToken :: !(Maybe Text)
    , _lusrSubnetworks :: !(Maybe [UsableSubnetwork])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListUsableSubnetworksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lusrNextPageToken'
--
-- * 'lusrSubnetworks'
listUsableSubnetworksResponse
    :: ListUsableSubnetworksResponse
listUsableSubnetworksResponse =
  ListUsableSubnetworksResponse'
    {_lusrNextPageToken = Nothing, _lusrSubnetworks = Nothing}


-- | This token allows you to get the next page of results for list requests.
-- If the number of results is larger than \`page_size\`, use the
-- \`next_page_token\` as a value for the query parameter \`page_token\` in
-- the next request. The value will become empty when there are no more
-- pages.
lusrNextPageToken :: Lens' ListUsableSubnetworksResponse (Maybe Text)
lusrNextPageToken
  = lens _lusrNextPageToken
      (\ s a -> s{_lusrNextPageToken = a})

-- | A list of usable subnetworks in the specified network project.
lusrSubnetworks :: Lens' ListUsableSubnetworksResponse [UsableSubnetwork]
lusrSubnetworks
  = lens _lusrSubnetworks
      (\ s a -> s{_lusrSubnetworks = a})
      . _Default
      . _Coerce

instance FromJSON ListUsableSubnetworksResponse where
        parseJSON
          = withObject "ListUsableSubnetworksResponse"
              (\ o ->
                 ListUsableSubnetworksResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "subnetworks" .!= mempty))

instance ToJSON ListUsableSubnetworksResponse where
        toJSON ListUsableSubnetworksResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lusrNextPageToken,
                  ("subnetworks" .=) <$> _lusrSubnetworks])

-- | UpdateNodePoolRequests update a node pool\'s image and\/or version.
--
-- /See:/ 'updateNodePoolRequest' smart constructor.
data UpdateNodePoolRequest =
  UpdateNodePoolRequest'
    { _unprLinuxNodeConfig :: !(Maybe LinuxNodeConfig)
    , _unprUpgradeSettings :: !(Maybe UpgradeSettings)
    , _unprZone :: !(Maybe Text)
    , _unprNodePoolId :: !(Maybe Text)
    , _unprImageType :: !(Maybe Text)
    , _unprName :: !(Maybe Text)
    , _unprClusterId :: !(Maybe Text)
    , _unprNodeVersion :: !(Maybe Text)
    , _unprProjectId :: !(Maybe Text)
    , _unprWorkLoadMetadataConfig :: !(Maybe WorkLoadMetadataConfig)
    , _unprKubeletConfig :: !(Maybe NodeKubeletConfig)
    , _unprLocations :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateNodePoolRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unprLinuxNodeConfig'
--
-- * 'unprUpgradeSettings'
--
-- * 'unprZone'
--
-- * 'unprNodePoolId'
--
-- * 'unprImageType'
--
-- * 'unprName'
--
-- * 'unprClusterId'
--
-- * 'unprNodeVersion'
--
-- * 'unprProjectId'
--
-- * 'unprWorkLoadMetadataConfig'
--
-- * 'unprKubeletConfig'
--
-- * 'unprLocations'
updateNodePoolRequest
    :: UpdateNodePoolRequest
updateNodePoolRequest =
  UpdateNodePoolRequest'
    { _unprLinuxNodeConfig = Nothing
    , _unprUpgradeSettings = Nothing
    , _unprZone = Nothing
    , _unprNodePoolId = Nothing
    , _unprImageType = Nothing
    , _unprName = Nothing
    , _unprClusterId = Nothing
    , _unprNodeVersion = Nothing
    , _unprProjectId = Nothing
    , _unprWorkLoadMetadataConfig = Nothing
    , _unprKubeletConfig = Nothing
    , _unprLocations = Nothing
    }


-- | Parameters that can be configured on Linux nodes.
unprLinuxNodeConfig :: Lens' UpdateNodePoolRequest (Maybe LinuxNodeConfig)
unprLinuxNodeConfig
  = lens _unprLinuxNodeConfig
      (\ s a -> s{_unprLinuxNodeConfig = a})

-- | Upgrade settings control disruption and speed of the upgrade.
unprUpgradeSettings :: Lens' UpdateNodePoolRequest (Maybe UpgradeSettings)
unprUpgradeSettings
  = lens _unprUpgradeSettings
      (\ s a -> s{_unprUpgradeSettings = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
unprZone :: Lens' UpdateNodePoolRequest (Maybe Text)
unprZone = lens _unprZone (\ s a -> s{_unprZone = a})

-- | Deprecated. The name of the node pool to upgrade. This field has been
-- deprecated and replaced by the name field.
unprNodePoolId :: Lens' UpdateNodePoolRequest (Maybe Text)
unprNodePoolId
  = lens _unprNodePoolId
      (\ s a -> s{_unprNodePoolId = a})

-- | Required. The desired image type for the node pool.
unprImageType :: Lens' UpdateNodePoolRequest (Maybe Text)
unprImageType
  = lens _unprImageType
      (\ s a -> s{_unprImageType = a})

-- | The name (project, location, cluster, node pool) of the node pool to
-- update. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
unprName :: Lens' UpdateNodePoolRequest (Maybe Text)
unprName = lens _unprName (\ s a -> s{_unprName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
unprClusterId :: Lens' UpdateNodePoolRequest (Maybe Text)
unprClusterId
  = lens _unprClusterId
      (\ s a -> s{_unprClusterId = a})

-- | Required. The Kubernetes version to change the nodes to (typically an
-- upgrade). Users may specify either explicit versions offered by
-- Kubernetes Engine or version aliases, which have the following behavior:
-- - \"latest\": picks the highest valid Kubernetes version - \"1.X\":
-- picks the highest valid patch+gke.N patch in the 1.X version -
-- \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version -
-- \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the
-- Kubernetes master version
unprNodeVersion :: Lens' UpdateNodePoolRequest (Maybe Text)
unprNodeVersion
  = lens _unprNodeVersion
      (\ s a -> s{_unprNodeVersion = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
unprProjectId :: Lens' UpdateNodePoolRequest (Maybe Text)
unprProjectId
  = lens _unprProjectId
      (\ s a -> s{_unprProjectId = a})

-- | The desired workload metadata config for the node pool.
unprWorkLoadMetadataConfig :: Lens' UpdateNodePoolRequest (Maybe WorkLoadMetadataConfig)
unprWorkLoadMetadataConfig
  = lens _unprWorkLoadMetadataConfig
      (\ s a -> s{_unprWorkLoadMetadataConfig = a})

-- | Node kubelet configs.
unprKubeletConfig :: Lens' UpdateNodePoolRequest (Maybe NodeKubeletConfig)
unprKubeletConfig
  = lens _unprKubeletConfig
      (\ s a -> s{_unprKubeletConfig = a})

-- | The desired list of Google Compute Engine
-- [zones](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the node pool\'s nodes should be located. Changing the locations
-- for a node pool will result in nodes being either created or removed
-- from the node pool, depending on whether locations are being added or
-- removed.
unprLocations :: Lens' UpdateNodePoolRequest [Text]
unprLocations
  = lens _unprLocations
      (\ s a -> s{_unprLocations = a})
      . _Default
      . _Coerce

instance FromJSON UpdateNodePoolRequest where
        parseJSON
          = withObject "UpdateNodePoolRequest"
              (\ o ->
                 UpdateNodePoolRequest' <$>
                   (o .:? "linuxNodeConfig") <*>
                     (o .:? "upgradeSettings")
                     <*> (o .:? "zone")
                     <*> (o .:? "nodePoolId")
                     <*> (o .:? "imageType")
                     <*> (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "nodeVersion")
                     <*> (o .:? "projectId")
                     <*> (o .:? "workloadMetadataConfig")
                     <*> (o .:? "kubeletConfig")
                     <*> (o .:? "locations" .!= mempty))

instance ToJSON UpdateNodePoolRequest where
        toJSON UpdateNodePoolRequest'{..}
          = object
              (catMaybes
                 [("linuxNodeConfig" .=) <$> _unprLinuxNodeConfig,
                  ("upgradeSettings" .=) <$> _unprUpgradeSettings,
                  ("zone" .=) <$> _unprZone,
                  ("nodePoolId" .=) <$> _unprNodePoolId,
                  ("imageType" .=) <$> _unprImageType,
                  ("name" .=) <$> _unprName,
                  ("clusterId" .=) <$> _unprClusterId,
                  ("nodeVersion" .=) <$> _unprNodeVersion,
                  ("projectId" .=) <$> _unprProjectId,
                  ("workloadMetadataConfig" .=) <$>
                    _unprWorkLoadMetadataConfig,
                  ("kubeletConfig" .=) <$> _unprKubeletConfig,
                  ("locations" .=) <$> _unprLocations])

-- | UpgradeEvent is a notification sent to customers by the cluster server
-- when a resource is upgrading.
--
-- /See:/ 'upgradeEvent' smart constructor.
data UpgradeEvent =
  UpgradeEvent'
    { _ueResourceType :: !(Maybe UpgradeEventResourceType)
    , _ueOperation :: !(Maybe Text)
    , _ueCurrentVersion :: !(Maybe Text)
    , _ueResource :: !(Maybe Text)
    , _ueOperationStartTime :: !(Maybe DateTime')
    , _ueTargetVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpgradeEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueResourceType'
--
-- * 'ueOperation'
--
-- * 'ueCurrentVersion'
--
-- * 'ueResource'
--
-- * 'ueOperationStartTime'
--
-- * 'ueTargetVersion'
upgradeEvent
    :: UpgradeEvent
upgradeEvent =
  UpgradeEvent'
    { _ueResourceType = Nothing
    , _ueOperation = Nothing
    , _ueCurrentVersion = Nothing
    , _ueResource = Nothing
    , _ueOperationStartTime = Nothing
    , _ueTargetVersion = Nothing
    }


-- | The resource type that is upgrading.
ueResourceType :: Lens' UpgradeEvent (Maybe UpgradeEventResourceType)
ueResourceType
  = lens _ueResourceType
      (\ s a -> s{_ueResourceType = a})

-- | The operation associated with this upgrade.
ueOperation :: Lens' UpgradeEvent (Maybe Text)
ueOperation
  = lens _ueOperation (\ s a -> s{_ueOperation = a})

-- | The current version before the upgrade.
ueCurrentVersion :: Lens' UpgradeEvent (Maybe Text)
ueCurrentVersion
  = lens _ueCurrentVersion
      (\ s a -> s{_ueCurrentVersion = a})

-- | Optional relative path to the resource. For example in node pool
-- upgrades, the relative path of the node pool.
ueResource :: Lens' UpgradeEvent (Maybe Text)
ueResource
  = lens _ueResource (\ s a -> s{_ueResource = a})

-- | The time when the operation was started.
ueOperationStartTime :: Lens' UpgradeEvent (Maybe UTCTime)
ueOperationStartTime
  = lens _ueOperationStartTime
      (\ s a -> s{_ueOperationStartTime = a})
      . mapping _DateTime

-- | The target version for the upgrade.
ueTargetVersion :: Lens' UpgradeEvent (Maybe Text)
ueTargetVersion
  = lens _ueTargetVersion
      (\ s a -> s{_ueTargetVersion = a})

instance FromJSON UpgradeEvent where
        parseJSON
          = withObject "UpgradeEvent"
              (\ o ->
                 UpgradeEvent' <$>
                   (o .:? "resourceType") <*> (o .:? "operation") <*>
                     (o .:? "currentVersion")
                     <*> (o .:? "resource")
                     <*> (o .:? "operationStartTime")
                     <*> (o .:? "targetVersion"))

instance ToJSON UpgradeEvent where
        toJSON UpgradeEvent'{..}
          = object
              (catMaybes
                 [("resourceType" .=) <$> _ueResourceType,
                  ("operation" .=) <$> _ueOperation,
                  ("currentVersion" .=) <$> _ueCurrentVersion,
                  ("resource" .=) <$> _ueResource,
                  ("operationStartTime" .=) <$> _ueOperationStartTime,
                  ("targetVersion" .=) <$> _ueTargetVersion])

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

-- | UpdateMasterRequest updates the master of the cluster.
--
-- /See:/ 'updateMasterRequest' smart constructor.
data UpdateMasterRequest =
  UpdateMasterRequest'
    { _umrZone :: !(Maybe Text)
    , _umrName :: !(Maybe Text)
    , _umrClusterId :: !(Maybe Text)
    , _umrProjectId :: !(Maybe Text)
    , _umrMasterVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateMasterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umrZone'
--
-- * 'umrName'
--
-- * 'umrClusterId'
--
-- * 'umrProjectId'
--
-- * 'umrMasterVersion'
updateMasterRequest
    :: UpdateMasterRequest
updateMasterRequest =
  UpdateMasterRequest'
    { _umrZone = Nothing
    , _umrName = Nothing
    , _umrClusterId = Nothing
    , _umrProjectId = Nothing
    , _umrMasterVersion = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
umrZone :: Lens' UpdateMasterRequest (Maybe Text)
umrZone = lens _umrZone (\ s a -> s{_umrZone = a})

-- | The name (project, location, cluster) of the cluster to update.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
umrName :: Lens' UpdateMasterRequest (Maybe Text)
umrName = lens _umrName (\ s a -> s{_umrName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
umrClusterId :: Lens' UpdateMasterRequest (Maybe Text)
umrClusterId
  = lens _umrClusterId (\ s a -> s{_umrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
umrProjectId :: Lens' UpdateMasterRequest (Maybe Text)
umrProjectId
  = lens _umrProjectId (\ s a -> s{_umrProjectId = a})

-- | Required. The Kubernetes version to change the master to. Users may
-- specify either explicit versions offered by Kubernetes Engine or version
-- aliases, which have the following behavior: - \"latest\": picks the
-- highest valid Kubernetes version - \"1.X\": picks the highest valid
-- patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest
-- valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an
-- explicit Kubernetes version - \"-\": picks the default Kubernetes
-- version
umrMasterVersion :: Lens' UpdateMasterRequest (Maybe Text)
umrMasterVersion
  = lens _umrMasterVersion
      (\ s a -> s{_umrMasterVersion = a})

instance FromJSON UpdateMasterRequest where
        parseJSON
          = withObject "UpdateMasterRequest"
              (\ o ->
                 UpdateMasterRequest' <$>
                   (o .:? "zone") <*> (o .:? "name") <*>
                     (o .:? "clusterId")
                     <*> (o .:? "projectId")
                     <*> (o .:? "masterVersion"))

instance ToJSON UpdateMasterRequest where
        toJSON UpdateMasterRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _umrZone, ("name" .=) <$> _umrName,
                  ("clusterId" .=) <$> _umrClusterId,
                  ("projectId" .=) <$> _umrProjectId,
                  ("masterVersion" .=) <$> _umrMasterVersion])

-- | StartIPRotationRequest creates a new IP for the cluster and then
-- performs a node upgrade on each node pool to point to the new IP.
--
-- /See:/ 'startIPRotationRequest' smart constructor.
data StartIPRotationRequest =
  StartIPRotationRequest'
    { _sirrZone :: !(Maybe Text)
    , _sirrRotateCredentials :: !(Maybe Bool)
    , _sirrName :: !(Maybe Text)
    , _sirrClusterId :: !(Maybe Text)
    , _sirrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartIPRotationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sirrZone'
--
-- * 'sirrRotateCredentials'
--
-- * 'sirrName'
--
-- * 'sirrClusterId'
--
-- * 'sirrProjectId'
startIPRotationRequest
    :: StartIPRotationRequest
startIPRotationRequest =
  StartIPRotationRequest'
    { _sirrZone = Nothing
    , _sirrRotateCredentials = Nothing
    , _sirrName = Nothing
    , _sirrClusterId = Nothing
    , _sirrProjectId = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
sirrZone :: Lens' StartIPRotationRequest (Maybe Text)
sirrZone = lens _sirrZone (\ s a -> s{_sirrZone = a})

-- | Whether to rotate credentials during IP rotation.
sirrRotateCredentials :: Lens' StartIPRotationRequest (Maybe Bool)
sirrRotateCredentials
  = lens _sirrRotateCredentials
      (\ s a -> s{_sirrRotateCredentials = a})

-- | The name (project, location, cluster id) of the cluster to start IP
-- rotation. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\`.
sirrName :: Lens' StartIPRotationRequest (Maybe Text)
sirrName = lens _sirrName (\ s a -> s{_sirrName = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the name field.
sirrClusterId :: Lens' StartIPRotationRequest (Maybe Text)
sirrClusterId
  = lens _sirrClusterId
      (\ s a -> s{_sirrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the name field.
sirrProjectId :: Lens' StartIPRotationRequest (Maybe Text)
sirrProjectId
  = lens _sirrProjectId
      (\ s a -> s{_sirrProjectId = a})

instance FromJSON StartIPRotationRequest where
        parseJSON
          = withObject "StartIPRotationRequest"
              (\ o ->
                 StartIPRotationRequest' <$>
                   (o .:? "zone") <*> (o .:? "rotateCredentials") <*>
                     (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId"))

instance ToJSON StartIPRotationRequest where
        toJSON StartIPRotationRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _sirrZone,
                  ("rotateCredentials" .=) <$> _sirrRotateCredentials,
                  ("name" .=) <$> _sirrName,
                  ("clusterId" .=) <$> _sirrClusterId,
                  ("projectId" .=) <$> _sirrProjectId])

-- | Configuration for Binary Authorization.
--
-- /See:/ 'binaryAuthorization' smart constructor.
newtype BinaryAuthorization =
  BinaryAuthorization'
    { _baEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BinaryAuthorization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baEnabled'
binaryAuthorization
    :: BinaryAuthorization
binaryAuthorization = BinaryAuthorization' {_baEnabled = Nothing}


-- | Enable Binary Authorization for this cluster. If enabled, all container
-- images will be validated by Binary Authorization.
baEnabled :: Lens' BinaryAuthorization (Maybe Bool)
baEnabled
  = lens _baEnabled (\ s a -> s{_baEnabled = a})

instance FromJSON BinaryAuthorization where
        parseJSON
          = withObject "BinaryAuthorization"
              (\ o -> BinaryAuthorization' <$> (o .:? "enabled"))

instance ToJSON BinaryAuthorization where
        toJSON BinaryAuthorization'{..}
          = object (catMaybes [("enabled" .=) <$> _baEnabled])

-- | SetLegacyAbacRequest enables or disables the ABAC authorization
-- mechanism for a cluster.
--
-- /See:/ 'setLegacyAbacRequest' smart constructor.
data SetLegacyAbacRequest =
  SetLegacyAbacRequest'
    { _slarEnabled :: !(Maybe Bool)
    , _slarZone :: !(Maybe Text)
    , _slarName :: !(Maybe Text)
    , _slarClusterId :: !(Maybe Text)
    , _slarProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetLegacyAbacRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slarEnabled'
--
-- * 'slarZone'
--
-- * 'slarName'
--
-- * 'slarClusterId'
--
-- * 'slarProjectId'
setLegacyAbacRequest
    :: SetLegacyAbacRequest
setLegacyAbacRequest =
  SetLegacyAbacRequest'
    { _slarEnabled = Nothing
    , _slarZone = Nothing
    , _slarName = Nothing
    , _slarClusterId = Nothing
    , _slarProjectId = Nothing
    }


-- | Required. Whether ABAC authorization will be enabled in the cluster.
slarEnabled :: Lens' SetLegacyAbacRequest (Maybe Bool)
slarEnabled
  = lens _slarEnabled (\ s a -> s{_slarEnabled = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
slarZone :: Lens' SetLegacyAbacRequest (Maybe Text)
slarZone = lens _slarZone (\ s a -> s{_slarZone = a})

-- | The name (project, location, cluster id) of the cluster to set legacy
-- abac. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\`.
slarName :: Lens' SetLegacyAbacRequest (Maybe Text)
slarName = lens _slarName (\ s a -> s{_slarName = a})

-- | Deprecated. The name of the cluster to update. This field has been
-- deprecated and replaced by the name field.
slarClusterId :: Lens' SetLegacyAbacRequest (Maybe Text)
slarClusterId
  = lens _slarClusterId
      (\ s a -> s{_slarClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
slarProjectId :: Lens' SetLegacyAbacRequest (Maybe Text)
slarProjectId
  = lens _slarProjectId
      (\ s a -> s{_slarProjectId = a})

instance FromJSON SetLegacyAbacRequest where
        parseJSON
          = withObject "SetLegacyAbacRequest"
              (\ o ->
                 SetLegacyAbacRequest' <$>
                   (o .:? "enabled") <*> (o .:? "zone") <*>
                     (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId"))

instance ToJSON SetLegacyAbacRequest where
        toJSON SetLegacyAbacRequest'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _slarEnabled,
                  ("zone" .=) <$> _slarZone, ("name" .=) <$> _slarName,
                  ("clusterId" .=) <$> _slarClusterId,
                  ("projectId" .=) <$> _slarProjectId])

-- | Configuration options for the horizontal pod autoscaling feature, which
-- increases or decreases the number of replica pods a replication
-- controller has based on the resource usage of the existing pods.
--
-- /See:/ 'horizontalPodAutoscaling' smart constructor.
newtype HorizontalPodAutoscaling =
  HorizontalPodAutoscaling'
    { _hpaDisabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HorizontalPodAutoscaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hpaDisabled'
horizontalPodAutoscaling
    :: HorizontalPodAutoscaling
horizontalPodAutoscaling = HorizontalPodAutoscaling' {_hpaDisabled = Nothing}


-- | Whether the Horizontal Pod Autoscaling feature is enabled in the
-- cluster. When enabled, it ensures that metrics are collected into
-- Stackdriver Monitoring.
hpaDisabled :: Lens' HorizontalPodAutoscaling (Maybe Bool)
hpaDisabled
  = lens _hpaDisabled (\ s a -> s{_hpaDisabled = a})

instance FromJSON HorizontalPodAutoscaling where
        parseJSON
          = withObject "HorizontalPodAutoscaling"
              (\ o ->
                 HorizontalPodAutoscaling' <$> (o .:? "disabled"))

instance ToJSON HorizontalPodAutoscaling where
        toJSON HorizontalPodAutoscaling'{..}
          = object
              (catMaybes [("disabled" .=) <$> _hpaDisabled])

-- | SandboxConfig contains configurations of the sandbox to use for the
-- node.
--
-- /See:/ 'sandboxConfig' smart constructor.
newtype SandboxConfig =
  SandboxConfig'
    { _scType :: Maybe SandboxConfigType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SandboxConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scType'
sandboxConfig
    :: SandboxConfig
sandboxConfig = SandboxConfig' {_scType = Nothing}


-- | Type of the sandbox to use for the node.
scType :: Lens' SandboxConfig (Maybe SandboxConfigType)
scType = lens _scType (\ s a -> s{_scType = a})

instance FromJSON SandboxConfig where
        parseJSON
          = withObject "SandboxConfig"
              (\ o -> SandboxConfig' <$> (o .:? "type"))

instance ToJSON SandboxConfig where
        toJSON SandboxConfig'{..}
          = object (catMaybes [("type" .=) <$> _scType])

-- | NotificationConfig is the configuration of notifications.
--
-- /See:/ 'notificationConfig' smart constructor.
newtype NotificationConfig =
  NotificationConfig'
    { _ncPubsub :: Maybe PubSub
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncPubsub'
notificationConfig
    :: NotificationConfig
notificationConfig = NotificationConfig' {_ncPubsub = Nothing}


-- | Notification config for Pub\/Sub.
ncPubsub :: Lens' NotificationConfig (Maybe PubSub)
ncPubsub = lens _ncPubsub (\ s a -> s{_ncPubsub = a})

instance FromJSON NotificationConfig where
        parseJSON
          = withObject "NotificationConfig"
              (\ o -> NotificationConfig' <$> (o .:? "pubsub"))

instance ToJSON NotificationConfig where
        toJSON NotificationConfig'{..}
          = object (catMaybes [("pubsub" .=) <$> _ncPubsub])

-- | Contains information about amount of some resource in the cluster. For
-- memory, value should be in GB.
--
-- /See:/ 'resourceLimit' smart constructor.
data ResourceLimit =
  ResourceLimit'
    { _rlResourceType :: !(Maybe Text)
    , _rlMaximum :: !(Maybe (Textual Int64))
    , _rlMinimum :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlResourceType'
--
-- * 'rlMaximum'
--
-- * 'rlMinimum'
resourceLimit
    :: ResourceLimit
resourceLimit =
  ResourceLimit'
    {_rlResourceType = Nothing, _rlMaximum = Nothing, _rlMinimum = Nothing}


-- | Resource name \"cpu\", \"memory\" or gpu-specific string.
rlResourceType :: Lens' ResourceLimit (Maybe Text)
rlResourceType
  = lens _rlResourceType
      (\ s a -> s{_rlResourceType = a})

-- | Maximum amount of the resource in the cluster.
rlMaximum :: Lens' ResourceLimit (Maybe Int64)
rlMaximum
  = lens _rlMaximum (\ s a -> s{_rlMaximum = a}) .
      mapping _Coerce

-- | Minimum amount of the resource in the cluster.
rlMinimum :: Lens' ResourceLimit (Maybe Int64)
rlMinimum
  = lens _rlMinimum (\ s a -> s{_rlMinimum = a}) .
      mapping _Coerce

instance FromJSON ResourceLimit where
        parseJSON
          = withObject "ResourceLimit"
              (\ o ->
                 ResourceLimit' <$>
                   (o .:? "resourceType") <*> (o .:? "maximum") <*>
                     (o .:? "minimum"))

instance ToJSON ResourceLimit where
        toJSON ResourceLimit'{..}
          = object
              (catMaybes
                 [("resourceType" .=) <$> _rlResourceType,
                  ("maximum" .=) <$> _rlMaximum,
                  ("minimum" .=) <$> _rlMinimum])

-- | SetMasterAuthRequest updates the admin password of a cluster.
--
-- /See:/ 'setMasterAuthRequest' smart constructor.
data SetMasterAuthRequest =
  SetMasterAuthRequest'
    { _smarAction :: !(Maybe SetMasterAuthRequestAction)
    , _smarZone :: !(Maybe Text)
    , _smarName :: !(Maybe Text)
    , _smarClusterId :: !(Maybe Text)
    , _smarProjectId :: !(Maybe Text)
    , _smarUpdate :: !(Maybe MasterAuth)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetMasterAuthRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smarAction'
--
-- * 'smarZone'
--
-- * 'smarName'
--
-- * 'smarClusterId'
--
-- * 'smarProjectId'
--
-- * 'smarUpdate'
setMasterAuthRequest
    :: SetMasterAuthRequest
setMasterAuthRequest =
  SetMasterAuthRequest'
    { _smarAction = Nothing
    , _smarZone = Nothing
    , _smarName = Nothing
    , _smarClusterId = Nothing
    , _smarProjectId = Nothing
    , _smarUpdate = Nothing
    }


-- | Required. The exact form of action to be taken on the master auth.
smarAction :: Lens' SetMasterAuthRequest (Maybe SetMasterAuthRequestAction)
smarAction
  = lens _smarAction (\ s a -> s{_smarAction = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
smarZone :: Lens' SetMasterAuthRequest (Maybe Text)
smarZone = lens _smarZone (\ s a -> s{_smarZone = a})

-- | The name (project, location, cluster) of the cluster to set auth.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
smarName :: Lens' SetMasterAuthRequest (Maybe Text)
smarName = lens _smarName (\ s a -> s{_smarName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
smarClusterId :: Lens' SetMasterAuthRequest (Maybe Text)
smarClusterId
  = lens _smarClusterId
      (\ s a -> s{_smarClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
smarProjectId :: Lens' SetMasterAuthRequest (Maybe Text)
smarProjectId
  = lens _smarProjectId
      (\ s a -> s{_smarProjectId = a})

-- | Required. A description of the update.
smarUpdate :: Lens' SetMasterAuthRequest (Maybe MasterAuth)
smarUpdate
  = lens _smarUpdate (\ s a -> s{_smarUpdate = a})

instance FromJSON SetMasterAuthRequest where
        parseJSON
          = withObject "SetMasterAuthRequest"
              (\ o ->
                 SetMasterAuthRequest' <$>
                   (o .:? "action") <*> (o .:? "zone") <*>
                     (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId")
                     <*> (o .:? "update"))

instance ToJSON SetMasterAuthRequest where
        toJSON SetMasterAuthRequest'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _smarAction,
                  ("zone" .=) <$> _smarZone, ("name" .=) <$> _smarName,
                  ("clusterId" .=) <$> _smarClusterId,
                  ("projectId" .=) <$> _smarProjectId,
                  ("update" .=) <$> _smarUpdate])

-- | ListOperationsResponse is the result of ListOperationsRequest.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorOperations :: !(Maybe [Operation])
    , _lorMissingZones :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorOperations'
--
-- * 'lorMissingZones'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse' {_lorOperations = Nothing, _lorMissingZones = Nothing}


-- | A list of operations in the project in the specified zone.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

-- | If any zones are listed here, the list of operations returned may be
-- missing the operations from those zones.
lorMissingZones :: Lens' ListOperationsResponse [Text]
lorMissingZones
  = lens _lorMissingZones
      (\ s a -> s{_lorMissingZones = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "operations" .!= mempty) <*>
                     (o .:? "missingZones" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("operations" .=) <$> _lorOperations,
                  ("missingZones" .=) <$> _lorMissingZones])

-- | CreateClusterRequest creates a cluster.
--
-- /See:/ 'createClusterRequest' smart constructor.
data CreateClusterRequest =
  CreateClusterRequest'
    { _ccrParent :: !(Maybe Text)
    , _ccrCluster :: !(Maybe Cluster)
    , _ccrZone :: !(Maybe Text)
    , _ccrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrParent'
--
-- * 'ccrCluster'
--
-- * 'ccrZone'
--
-- * 'ccrProjectId'
createClusterRequest
    :: CreateClusterRequest
createClusterRequest =
  CreateClusterRequest'
    { _ccrParent = Nothing
    , _ccrCluster = Nothing
    , _ccrZone = Nothing
    , _ccrProjectId = Nothing
    }


-- | The parent (project and location) where the cluster will be created.
-- Specified in the format \`projects\/*\/locations\/*\`.
ccrParent :: Lens' CreateClusterRequest (Maybe Text)
ccrParent
  = lens _ccrParent (\ s a -> s{_ccrParent = a})

-- | Required. A [cluster
-- resource](https:\/\/cloud.google.com\/container-engine\/reference\/rest\/v1\/projects.locations.clusters)
ccrCluster :: Lens' CreateClusterRequest (Maybe Cluster)
ccrCluster
  = lens _ccrCluster (\ s a -> s{_ccrCluster = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the parent field.
ccrZone :: Lens' CreateClusterRequest (Maybe Text)
ccrZone = lens _ccrZone (\ s a -> s{_ccrZone = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the parent field.
ccrProjectId :: Lens' CreateClusterRequest (Maybe Text)
ccrProjectId
  = lens _ccrProjectId (\ s a -> s{_ccrProjectId = a})

instance FromJSON CreateClusterRequest where
        parseJSON
          = withObject "CreateClusterRequest"
              (\ o ->
                 CreateClusterRequest' <$>
                   (o .:? "parent") <*> (o .:? "cluster") <*>
                     (o .:? "zone")
                     <*> (o .:? "projectId"))

instance ToJSON CreateClusterRequest where
        toJSON CreateClusterRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _ccrParent,
                  ("cluster" .=) <$> _ccrCluster,
                  ("zone" .=) <$> _ccrZone,
                  ("projectId" .=) <$> _ccrProjectId])

-- | A Google Kubernetes Engine cluster.
--
-- /See:/ 'cluster' smart constructor.
data Cluster =
  Cluster'
    { _cBinaryAuthorization :: !(Maybe BinaryAuthorization)
    , _cStatus :: !(Maybe ClusterStatus)
    , _cNodePools :: !(Maybe [NodePool])
    , _cEnableKubernetesAlpha :: !(Maybe Bool)
    , _cResourceLabels :: !(Maybe ClusterResourceLabels)
    , _cTpuIPv4CIdRBlock :: !(Maybe Text)
    , _cNotificationConfig :: !(Maybe NotificationConfig)
    , _cNodeConfig :: !(Maybe NodeConfig)
    , _cAutoscaling :: !(Maybe ClusterAutoscaling)
    , _cNodeIPv4CIdRSize :: !(Maybe (Textual Int32))
    , _cClusterIPv4CIdR :: !(Maybe Text)
    , _cLocation :: !(Maybe Text)
    , _cInitialNodeCount :: !(Maybe (Textual Int32))
    , _cCurrentNodeVersion :: !(Maybe Text)
    , _cWorkLoadIdentityConfig :: !(Maybe WorkLoadIdentityConfig)
    , _cNetwork :: !(Maybe Text)
    , _cInitialClusterVersion :: !(Maybe Text)
    , _cZone :: !(Maybe Text)
    , _cResourceUsageExportConfig :: !(Maybe ResourceUsageExportConfig)
    , _cAddonsConfig :: !(Maybe AddonsConfig)
    , _cServicesIPv4CIdR :: !(Maybe Text)
    , _cIPAllocationPolicy :: !(Maybe IPAllocationPolicy)
    , _cAutopilot :: !(Maybe Autopilot)
    , _cConfidentialNodes :: !(Maybe ConfidentialNodes)
    , _cMasterAuthorizedNetworksConfig :: !(Maybe MasterAuthorizedNetworksConfig)
    , _cLegacyAbac :: !(Maybe LegacyAbac)
    , _cNetworkConfig :: !(Maybe NetworkConfig)
    , _cMasterAuth :: !(Maybe MasterAuth)
    , _cSelfLink :: !(Maybe Text)
    , _cName :: !(Maybe Text)
    , _cCurrentMasterVersion :: !(Maybe Text)
    , _cStatusMessage :: !(Maybe Text)
    , _cDefaultMaxPodsConstraint :: !(Maybe MaxPodsConstraint)
    , _cReleaseChannel :: !(Maybe ReleaseChannel)
    , _cDatabaseEncryption :: !(Maybe DatabaseEncryption)
    , _cSubnetwork :: !(Maybe Text)
    , _cCurrentNodeCount :: !(Maybe (Textual Int32))
    , _cId :: !(Maybe Text)
    , _cPrivateClusterConfig :: !(Maybe PrivateClusterConfig)
    , _cMaintenancePolicy :: !(Maybe MaintenancePolicy)
    , _cShieldedNodes :: !(Maybe ShieldedNodes)
    , _cConditions :: !(Maybe [StatusCondition])
    , _cEnableTpu :: !(Maybe Bool)
    , _cEndpoint :: !(Maybe Text)
    , _cVerticalPodAutoscaling :: !(Maybe VerticalPodAutoscaling)
    , _cAuthenticatorGroupsConfig :: !(Maybe AuthenticatorGroupsConfig)
    , _cExpireTime :: !(Maybe Text)
    , _cNetworkPolicy :: !(Maybe NetworkPolicy)
    , _cLocations :: !(Maybe [Text])
    , _cLoggingService :: !(Maybe Text)
    , _cLabelFingerprint :: !(Maybe Text)
    , _cDescription :: !(Maybe Text)
    , _cInstanceGroupURLs :: !(Maybe [Text])
    , _cMonitoringService :: !(Maybe Text)
    , _cCreateTime :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cBinaryAuthorization'
--
-- * 'cStatus'
--
-- * 'cNodePools'
--
-- * 'cEnableKubernetesAlpha'
--
-- * 'cResourceLabels'
--
-- * 'cTpuIPv4CIdRBlock'
--
-- * 'cNotificationConfig'
--
-- * 'cNodeConfig'
--
-- * 'cAutoscaling'
--
-- * 'cNodeIPv4CIdRSize'
--
-- * 'cClusterIPv4CIdR'
--
-- * 'cLocation'
--
-- * 'cInitialNodeCount'
--
-- * 'cCurrentNodeVersion'
--
-- * 'cWorkLoadIdentityConfig'
--
-- * 'cNetwork'
--
-- * 'cInitialClusterVersion'
--
-- * 'cZone'
--
-- * 'cResourceUsageExportConfig'
--
-- * 'cAddonsConfig'
--
-- * 'cServicesIPv4CIdR'
--
-- * 'cIPAllocationPolicy'
--
-- * 'cAutopilot'
--
-- * 'cConfidentialNodes'
--
-- * 'cMasterAuthorizedNetworksConfig'
--
-- * 'cLegacyAbac'
--
-- * 'cNetworkConfig'
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
-- * 'cDefaultMaxPodsConstraint'
--
-- * 'cReleaseChannel'
--
-- * 'cDatabaseEncryption'
--
-- * 'cSubnetwork'
--
-- * 'cCurrentNodeCount'
--
-- * 'cId'
--
-- * 'cPrivateClusterConfig'
--
-- * 'cMaintenancePolicy'
--
-- * 'cShieldedNodes'
--
-- * 'cConditions'
--
-- * 'cEnableTpu'
--
-- * 'cEndpoint'
--
-- * 'cVerticalPodAutoscaling'
--
-- * 'cAuthenticatorGroupsConfig'
--
-- * 'cExpireTime'
--
-- * 'cNetworkPolicy'
--
-- * 'cLocations'
--
-- * 'cLoggingService'
--
-- * 'cLabelFingerprint'
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
  Cluster'
    { _cBinaryAuthorization = Nothing
    , _cStatus = Nothing
    , _cNodePools = Nothing
    , _cEnableKubernetesAlpha = Nothing
    , _cResourceLabels = Nothing
    , _cTpuIPv4CIdRBlock = Nothing
    , _cNotificationConfig = Nothing
    , _cNodeConfig = Nothing
    , _cAutoscaling = Nothing
    , _cNodeIPv4CIdRSize = Nothing
    , _cClusterIPv4CIdR = Nothing
    , _cLocation = Nothing
    , _cInitialNodeCount = Nothing
    , _cCurrentNodeVersion = Nothing
    , _cWorkLoadIdentityConfig = Nothing
    , _cNetwork = Nothing
    , _cInitialClusterVersion = Nothing
    , _cZone = Nothing
    , _cResourceUsageExportConfig = Nothing
    , _cAddonsConfig = Nothing
    , _cServicesIPv4CIdR = Nothing
    , _cIPAllocationPolicy = Nothing
    , _cAutopilot = Nothing
    , _cConfidentialNodes = Nothing
    , _cMasterAuthorizedNetworksConfig = Nothing
    , _cLegacyAbac = Nothing
    , _cNetworkConfig = Nothing
    , _cMasterAuth = Nothing
    , _cSelfLink = Nothing
    , _cName = Nothing
    , _cCurrentMasterVersion = Nothing
    , _cStatusMessage = Nothing
    , _cDefaultMaxPodsConstraint = Nothing
    , _cReleaseChannel = Nothing
    , _cDatabaseEncryption = Nothing
    , _cSubnetwork = Nothing
    , _cCurrentNodeCount = Nothing
    , _cId = Nothing
    , _cPrivateClusterConfig = Nothing
    , _cMaintenancePolicy = Nothing
    , _cShieldedNodes = Nothing
    , _cConditions = Nothing
    , _cEnableTpu = Nothing
    , _cEndpoint = Nothing
    , _cVerticalPodAutoscaling = Nothing
    , _cAuthenticatorGroupsConfig = Nothing
    , _cExpireTime = Nothing
    , _cNetworkPolicy = Nothing
    , _cLocations = Nothing
    , _cLoggingService = Nothing
    , _cLabelFingerprint = Nothing
    , _cDescription = Nothing
    , _cInstanceGroupURLs = Nothing
    , _cMonitoringService = Nothing
    , _cCreateTime = Nothing
    }


-- | Configuration for Binary Authorization.
cBinaryAuthorization :: Lens' Cluster (Maybe BinaryAuthorization)
cBinaryAuthorization
  = lens _cBinaryAuthorization
      (\ s a -> s{_cBinaryAuthorization = a})

-- | [Output only] The current status of this cluster.
cStatus :: Lens' Cluster (Maybe ClusterStatus)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | The node pools associated with this cluster. This field should not be
-- set if \"node_config\" or \"initial_node_count\" are specified.
cNodePools :: Lens' Cluster [NodePool]
cNodePools
  = lens _cNodePools (\ s a -> s{_cNodePools = a}) .
      _Default
      . _Coerce

-- | Kubernetes alpha features are enabled on this cluster. This includes
-- alpha API groups (e.g. v1alpha1) and features that may not be production
-- ready in the kubernetes version of the master and nodes. The cluster has
-- no SLA for uptime and master\/node upgrades are disabled. Alpha enabled
-- clusters are automatically deleted thirty days after creation.
cEnableKubernetesAlpha :: Lens' Cluster (Maybe Bool)
cEnableKubernetesAlpha
  = lens _cEnableKubernetesAlpha
      (\ s a -> s{_cEnableKubernetesAlpha = a})

-- | The resource labels for the cluster to use to annotate any related
-- Google Compute Engine resources.
cResourceLabels :: Lens' Cluster (Maybe ClusterResourceLabels)
cResourceLabels
  = lens _cResourceLabels
      (\ s a -> s{_cResourceLabels = a})

-- | [Output only] The IP address range of the Cloud TPUs in this cluster, in
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`1.2.3.4\/29\`).
cTpuIPv4CIdRBlock :: Lens' Cluster (Maybe Text)
cTpuIPv4CIdRBlock
  = lens _cTpuIPv4CIdRBlock
      (\ s a -> s{_cTpuIPv4CIdRBlock = a})

-- | Notification configuration of the cluster.
cNotificationConfig :: Lens' Cluster (Maybe NotificationConfig)
cNotificationConfig
  = lens _cNotificationConfig
      (\ s a -> s{_cNotificationConfig = a})

-- | Parameters used in creating the cluster\'s nodes. For requests, this
-- field should only be used in lieu of a \"node_pool\" object, since this
-- configuration (along with the \"initial_node_count\") will be used to
-- create a \"NodePool\" object with an auto-generated name. Do not use
-- this and a node_pool at the same time. For responses, this field will be
-- populated with the node configuration of the first node pool. (For
-- configuration of each node pool, see \`node_pool.config\`) If
-- unspecified, the defaults are used. This field is deprecated, use
-- node_pool.config instead.
cNodeConfig :: Lens' Cluster (Maybe NodeConfig)
cNodeConfig
  = lens _cNodeConfig (\ s a -> s{_cNodeConfig = a})

-- | Cluster-level autoscaling configuration.
cAutoscaling :: Lens' Cluster (Maybe ClusterAutoscaling)
cAutoscaling
  = lens _cAutoscaling (\ s a -> s{_cAutoscaling = a})

-- | [Output only] The size of the address space on each node for hosting
-- containers. This is provisioned from within the \`container_ipv4_cidr\`
-- range. This field will only be set when cluster is in route-based
-- network mode.
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

-- | [Output only] The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones#available)
-- or
-- [region](https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones#available)
-- in which the cluster resides.
cLocation :: Lens' Cluster (Maybe Text)
cLocation
  = lens _cLocation (\ s a -> s{_cLocation = a})

-- | The number of nodes to create in this cluster. You must ensure that your
-- Compute Engine [resource
-- quota](https:\/\/cloud.google.com\/compute\/quotas) is sufficient for
-- this number of instances. You must also have available firewall and
-- routes quota. For requests, this field should only be used in lieu of a
-- \"node_pool\" object, since this configuration (along with the
-- \"node_config\") will be used to create a \"NodePool\" object with an
-- auto-generated name. Do not use this and a node_pool at the same time.
-- This field is deprecated, use node_pool.initial_node_count instead.
cInitialNodeCount :: Lens' Cluster (Maybe Int32)
cInitialNodeCount
  = lens _cInitialNodeCount
      (\ s a -> s{_cInitialNodeCount = a})
      . mapping _Coerce

-- | [Output only] Deprecated, use
-- [NodePools.version](https:\/\/cloud.google.com\/kubernetes-engine\/docs\/reference\/rest\/v1\/projects.locations.clusters.nodePools)
-- instead. The current version of the node software components. If they
-- are currently at multiple versions because they\'re in the process of
-- being upgraded, this reflects the minimum version of all nodes.
cCurrentNodeVersion :: Lens' Cluster (Maybe Text)
cCurrentNodeVersion
  = lens _cCurrentNodeVersion
      (\ s a -> s{_cCurrentNodeVersion = a})

-- | Configuration for the use of Kubernetes Service Accounts in GCP IAM
-- policies.
cWorkLoadIdentityConfig :: Lens' Cluster (Maybe WorkLoadIdentityConfig)
cWorkLoadIdentityConfig
  = lens _cWorkLoadIdentityConfig
      (\ s a -> s{_cWorkLoadIdentityConfig = a})

-- | The name of the Google Compute Engine
-- [network](https:\/\/cloud.google.com\/compute\/docs\/networks-and-firewalls#networks)
-- to which the cluster is connected. If left unspecified, the \`default\`
-- network will be used.
cNetwork :: Lens' Cluster (Maybe Text)
cNetwork = lens _cNetwork (\ s a -> s{_cNetwork = a})

-- | The initial Kubernetes version for this cluster. Valid versions are
-- those found in validMasterVersions returned by getServerConfig. The
-- version can be upgraded over time; such upgrades are reflected in
-- currentMasterVersion and currentNodeVersion. Users may specify either
-- explicit versions offered by Kubernetes Engine or version aliases, which
-- have the following behavior: - \"latest\": picks the highest valid
-- Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch
-- in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in
-- the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes
-- version - \"\",\"-\": picks the default Kubernetes version
cInitialClusterVersion :: Lens' Cluster (Maybe Text)
cInitialClusterVersion
  = lens _cInitialClusterVersion
      (\ s a -> s{_cInitialClusterVersion = a})

-- | [Output only] The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field is deprecated, use location
-- instead.
cZone :: Lens' Cluster (Maybe Text)
cZone = lens _cZone (\ s a -> s{_cZone = a})

-- | Configuration for exporting resource usages. Resource usage export is
-- disabled when this config is unspecified.
cResourceUsageExportConfig :: Lens' Cluster (Maybe ResourceUsageExportConfig)
cResourceUsageExportConfig
  = lens _cResourceUsageExportConfig
      (\ s a -> s{_cResourceUsageExportConfig = a})

-- | Configurations for the various addons available to run in the cluster.
cAddonsConfig :: Lens' Cluster (Maybe AddonsConfig)
cAddonsConfig
  = lens _cAddonsConfig
      (\ s a -> s{_cAddonsConfig = a})

-- | [Output only] The IP address range of the Kubernetes services in this
-- cluster, in
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`1.2.3.4\/29\`). Service addresses are typically put in
-- the last \`\/16\` from the container CIDR.
cServicesIPv4CIdR :: Lens' Cluster (Maybe Text)
cServicesIPv4CIdR
  = lens _cServicesIPv4CIdR
      (\ s a -> s{_cServicesIPv4CIdR = a})

-- | Configuration for cluster IP allocation.
cIPAllocationPolicy :: Lens' Cluster (Maybe IPAllocationPolicy)
cIPAllocationPolicy
  = lens _cIPAllocationPolicy
      (\ s a -> s{_cIPAllocationPolicy = a})

-- | Autopilot configuration for the cluster.
cAutopilot :: Lens' Cluster (Maybe Autopilot)
cAutopilot
  = lens _cAutopilot (\ s a -> s{_cAutopilot = a})

-- | Configuration of Confidential Nodes
cConfidentialNodes :: Lens' Cluster (Maybe ConfidentialNodes)
cConfidentialNodes
  = lens _cConfidentialNodes
      (\ s a -> s{_cConfidentialNodes = a})

-- | The configuration options for master authorized networks feature.
cMasterAuthorizedNetworksConfig :: Lens' Cluster (Maybe MasterAuthorizedNetworksConfig)
cMasterAuthorizedNetworksConfig
  = lens _cMasterAuthorizedNetworksConfig
      (\ s a -> s{_cMasterAuthorizedNetworksConfig = a})

-- | Configuration for the legacy ABAC authorization mode.
cLegacyAbac :: Lens' Cluster (Maybe LegacyAbac)
cLegacyAbac
  = lens _cLegacyAbac (\ s a -> s{_cLegacyAbac = a})

-- | Configuration for cluster networking.
cNetworkConfig :: Lens' Cluster (Maybe NetworkConfig)
cNetworkConfig
  = lens _cNetworkConfig
      (\ s a -> s{_cNetworkConfig = a})

-- | The authentication information for accessing the master endpoint. If
-- unspecified, the defaults are used: For clusters before v1.12, if
-- master_auth is unspecified, \`username\` will be set to \"admin\", a
-- random password will be generated, and a client certificate will be
-- issued.
cMasterAuth :: Lens' Cluster (Maybe MasterAuth)
cMasterAuth
  = lens _cMasterAuth (\ s a -> s{_cMasterAuth = a})

-- | [Output only] Server-defined URL for the resource.
cSelfLink :: Lens' Cluster (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | The name of this cluster. The name must be unique within this project
-- and location (e.g. zone or region), and can be up to 40 characters with
-- the following restrictions: * Lowercase letters, numbers, and hyphens
-- only. * Must start with a letter. * Must end with a number or a letter.
cName :: Lens' Cluster (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | [Output only] The current software version of the master endpoint.
cCurrentMasterVersion :: Lens' Cluster (Maybe Text)
cCurrentMasterVersion
  = lens _cCurrentMasterVersion
      (\ s a -> s{_cCurrentMasterVersion = a})

-- | [Output only] Deprecated. Use conditions instead. Additional information
-- about the current status of this cluster, if available.
cStatusMessage :: Lens' Cluster (Maybe Text)
cStatusMessage
  = lens _cStatusMessage
      (\ s a -> s{_cStatusMessage = a})

-- | The default constraint on the maximum number of pods that can be run
-- simultaneously on a node in the node pool of this cluster. Only honored
-- if cluster created with IP Alias support.
cDefaultMaxPodsConstraint :: Lens' Cluster (Maybe MaxPodsConstraint)
cDefaultMaxPodsConstraint
  = lens _cDefaultMaxPodsConstraint
      (\ s a -> s{_cDefaultMaxPodsConstraint = a})

-- | Release channel configuration.
cReleaseChannel :: Lens' Cluster (Maybe ReleaseChannel)
cReleaseChannel
  = lens _cReleaseChannel
      (\ s a -> s{_cReleaseChannel = a})

-- | Configuration of etcd encryption.
cDatabaseEncryption :: Lens' Cluster (Maybe DatabaseEncryption)
cDatabaseEncryption
  = lens _cDatabaseEncryption
      (\ s a -> s{_cDatabaseEncryption = a})

-- | The name of the Google Compute Engine
-- [subnetwork](https:\/\/cloud.google.com\/compute\/docs\/subnetworks) to
-- which the cluster is connected.
cSubnetwork :: Lens' Cluster (Maybe Text)
cSubnetwork
  = lens _cSubnetwork (\ s a -> s{_cSubnetwork = a})

-- | [Output only] The number of nodes currently in the cluster. Deprecated.
-- Call Kubernetes API directly to retrieve node information.
cCurrentNodeCount :: Lens' Cluster (Maybe Int32)
cCurrentNodeCount
  = lens _cCurrentNodeCount
      (\ s a -> s{_cCurrentNodeCount = a})
      . mapping _Coerce

-- | Output only. Unique id for the cluster.
cId :: Lens' Cluster (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | Configuration for private cluster.
cPrivateClusterConfig :: Lens' Cluster (Maybe PrivateClusterConfig)
cPrivateClusterConfig
  = lens _cPrivateClusterConfig
      (\ s a -> s{_cPrivateClusterConfig = a})

-- | Configure the maintenance policy for this cluster.
cMaintenancePolicy :: Lens' Cluster (Maybe MaintenancePolicy)
cMaintenancePolicy
  = lens _cMaintenancePolicy
      (\ s a -> s{_cMaintenancePolicy = a})

-- | Shielded Nodes configuration.
cShieldedNodes :: Lens' Cluster (Maybe ShieldedNodes)
cShieldedNodes
  = lens _cShieldedNodes
      (\ s a -> s{_cShieldedNodes = a})

-- | Which conditions caused the current cluster state.
cConditions :: Lens' Cluster [StatusCondition]
cConditions
  = lens _cConditions (\ s a -> s{_cConditions = a}) .
      _Default
      . _Coerce

-- | Enable the ability to use Cloud TPUs in this cluster.
cEnableTpu :: Lens' Cluster (Maybe Bool)
cEnableTpu
  = lens _cEnableTpu (\ s a -> s{_cEnableTpu = a})

-- | [Output only] The IP address of this cluster\'s master endpoint. The
-- endpoint can be accessed from the internet at
-- \`https:\/\/username:password\'endpoint\/\`. See the \`masterAuth\`
-- property of this resource for username and password information.
cEndpoint :: Lens' Cluster (Maybe Text)
cEndpoint
  = lens _cEndpoint (\ s a -> s{_cEndpoint = a})

-- | Cluster-level Vertical Pod Autoscaling configuration.
cVerticalPodAutoscaling :: Lens' Cluster (Maybe VerticalPodAutoscaling)
cVerticalPodAutoscaling
  = lens _cVerticalPodAutoscaling
      (\ s a -> s{_cVerticalPodAutoscaling = a})

-- | Configuration controlling RBAC group membership information.
cAuthenticatorGroupsConfig :: Lens' Cluster (Maybe AuthenticatorGroupsConfig)
cAuthenticatorGroupsConfig
  = lens _cAuthenticatorGroupsConfig
      (\ s a -> s{_cAuthenticatorGroupsConfig = a})

-- | [Output only] The time the cluster will be automatically deleted in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) text format.
cExpireTime :: Lens' Cluster (Maybe Text)
cExpireTime
  = lens _cExpireTime (\ s a -> s{_cExpireTime = a})

-- | Configuration options for the NetworkPolicy feature.
cNetworkPolicy :: Lens' Cluster (Maybe NetworkPolicy)
cNetworkPolicy
  = lens _cNetworkPolicy
      (\ s a -> s{_cNetworkPolicy = a})

-- | The list of Google Compute Engine
-- [zones](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster\'s nodes should be located. This field provides a
-- default value if
-- [NodePool.Locations](https:\/\/cloud.google.com\/kubernetes-engine\/docs\/reference\/rest\/v1\/projects.locations.clusters.nodePools#NodePool.FIELDS.locations)
-- are not specified during node pool creation. Warning: changing cluster
-- locations will update the
-- [NodePool.Locations](https:\/\/cloud.google.com\/kubernetes-engine\/docs\/reference\/rest\/v1\/projects.locations.clusters.nodePools#NodePool.FIELDS.locations)
-- of all node pools and will result in nodes being added and\/or removed.
cLocations :: Lens' Cluster [Text]
cLocations
  = lens _cLocations (\ s a -> s{_cLocations = a}) .
      _Default
      . _Coerce

-- | The logging service the cluster should use to write logs. Currently
-- available options: * \`logging.googleapis.com\/kubernetes\` - The Cloud
-- Logging service with a Kubernetes-native resource model *
-- \`logging.googleapis.com\` - The legacy Cloud Logging service (no longer
-- available as of GKE 1.15). * \`none\` - no logs will be exported from
-- the cluster. If left as an empty
-- string,\`logging.googleapis.com\/kubernetes\` will be used for GKE 1.14+
-- or \`logging.googleapis.com\` for earlier versions.
cLoggingService :: Lens' Cluster (Maybe Text)
cLoggingService
  = lens _cLoggingService
      (\ s a -> s{_cLoggingService = a})

-- | The fingerprint of the set of labels for this cluster.
cLabelFingerprint :: Lens' Cluster (Maybe Text)
cLabelFingerprint
  = lens _cLabelFingerprint
      (\ s a -> s{_cLabelFingerprint = a})

-- | An optional description of this cluster.
cDescription :: Lens' Cluster (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

-- | Deprecated. Use node_pools.instance_group_urls.
cInstanceGroupURLs :: Lens' Cluster [Text]
cInstanceGroupURLs
  = lens _cInstanceGroupURLs
      (\ s a -> s{_cInstanceGroupURLs = a})
      . _Default
      . _Coerce

-- | The monitoring service the cluster should use to write metrics.
-- Currently available options: * \"monitoring.googleapis.com\/kubernetes\"
-- - The Cloud Monitoring service with a Kubernetes-native resource model *
-- \`monitoring.googleapis.com\` - The legacy Cloud Monitoring service (no
-- longer available as of GKE 1.15). * \`none\` - No metrics will be
-- exported from the cluster. If left as an empty
-- string,\`monitoring.googleapis.com\/kubernetes\` will be used for GKE
-- 1.14+ or \`monitoring.googleapis.com\` for earlier versions.
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
                 Cluster' <$>
                   (o .:? "binaryAuthorization") <*> (o .:? "status")
                     <*> (o .:? "nodePools" .!= mempty)
                     <*> (o .:? "enableKubernetesAlpha")
                     <*> (o .:? "resourceLabels")
                     <*> (o .:? "tpuIpv4CidrBlock")
                     <*> (o .:? "notificationConfig")
                     <*> (o .:? "nodeConfig")
                     <*> (o .:? "autoscaling")
                     <*> (o .:? "nodeIpv4CidrSize")
                     <*> (o .:? "clusterIpv4Cidr")
                     <*> (o .:? "location")
                     <*> (o .:? "initialNodeCount")
                     <*> (o .:? "currentNodeVersion")
                     <*> (o .:? "workloadIdentityConfig")
                     <*> (o .:? "network")
                     <*> (o .:? "initialClusterVersion")
                     <*> (o .:? "zone")
                     <*> (o .:? "resourceUsageExportConfig")
                     <*> (o .:? "addonsConfig")
                     <*> (o .:? "servicesIpv4Cidr")
                     <*> (o .:? "ipAllocationPolicy")
                     <*> (o .:? "autopilot")
                     <*> (o .:? "confidentialNodes")
                     <*> (o .:? "masterAuthorizedNetworksConfig")
                     <*> (o .:? "legacyAbac")
                     <*> (o .:? "networkConfig")
                     <*> (o .:? "masterAuth")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "currentMasterVersion")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "defaultMaxPodsConstraint")
                     <*> (o .:? "releaseChannel")
                     <*> (o .:? "databaseEncryption")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "currentNodeCount")
                     <*> (o .:? "id")
                     <*> (o .:? "privateClusterConfig")
                     <*> (o .:? "maintenancePolicy")
                     <*> (o .:? "shieldedNodes")
                     <*> (o .:? "conditions" .!= mempty)
                     <*> (o .:? "enableTpu")
                     <*> (o .:? "endpoint")
                     <*> (o .:? "verticalPodAutoscaling")
                     <*> (o .:? "authenticatorGroupsConfig")
                     <*> (o .:? "expireTime")
                     <*> (o .:? "networkPolicy")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "loggingService")
                     <*> (o .:? "labelFingerprint")
                     <*> (o .:? "description")
                     <*> (o .:? "instanceGroupUrls" .!= mempty)
                     <*> (o .:? "monitoringService")
                     <*> (o .:? "createTime"))

instance ToJSON Cluster where
        toJSON Cluster'{..}
          = object
              (catMaybes
                 [("binaryAuthorization" .=) <$>
                    _cBinaryAuthorization,
                  ("status" .=) <$> _cStatus,
                  ("nodePools" .=) <$> _cNodePools,
                  ("enableKubernetesAlpha" .=) <$>
                    _cEnableKubernetesAlpha,
                  ("resourceLabels" .=) <$> _cResourceLabels,
                  ("tpuIpv4CidrBlock" .=) <$> _cTpuIPv4CIdRBlock,
                  ("notificationConfig" .=) <$> _cNotificationConfig,
                  ("nodeConfig" .=) <$> _cNodeConfig,
                  ("autoscaling" .=) <$> _cAutoscaling,
                  ("nodeIpv4CidrSize" .=) <$> _cNodeIPv4CIdRSize,
                  ("clusterIpv4Cidr" .=) <$> _cClusterIPv4CIdR,
                  ("location" .=) <$> _cLocation,
                  ("initialNodeCount" .=) <$> _cInitialNodeCount,
                  ("currentNodeVersion" .=) <$> _cCurrentNodeVersion,
                  ("workloadIdentityConfig" .=) <$>
                    _cWorkLoadIdentityConfig,
                  ("network" .=) <$> _cNetwork,
                  ("initialClusterVersion" .=) <$>
                    _cInitialClusterVersion,
                  ("zone" .=) <$> _cZone,
                  ("resourceUsageExportConfig" .=) <$>
                    _cResourceUsageExportConfig,
                  ("addonsConfig" .=) <$> _cAddonsConfig,
                  ("servicesIpv4Cidr" .=) <$> _cServicesIPv4CIdR,
                  ("ipAllocationPolicy" .=) <$> _cIPAllocationPolicy,
                  ("autopilot" .=) <$> _cAutopilot,
                  ("confidentialNodes" .=) <$> _cConfidentialNodes,
                  ("masterAuthorizedNetworksConfig" .=) <$>
                    _cMasterAuthorizedNetworksConfig,
                  ("legacyAbac" .=) <$> _cLegacyAbac,
                  ("networkConfig" .=) <$> _cNetworkConfig,
                  ("masterAuth" .=) <$> _cMasterAuth,
                  ("selfLink" .=) <$> _cSelfLink,
                  ("name" .=) <$> _cName,
                  ("currentMasterVersion" .=) <$>
                    _cCurrentMasterVersion,
                  ("statusMessage" .=) <$> _cStatusMessage,
                  ("defaultMaxPodsConstraint" .=) <$>
                    _cDefaultMaxPodsConstraint,
                  ("releaseChannel" .=) <$> _cReleaseChannel,
                  ("databaseEncryption" .=) <$> _cDatabaseEncryption,
                  ("subnetwork" .=) <$> _cSubnetwork,
                  ("currentNodeCount" .=) <$> _cCurrentNodeCount,
                  ("id" .=) <$> _cId,
                  ("privateClusterConfig" .=) <$>
                    _cPrivateClusterConfig,
                  ("maintenancePolicy" .=) <$> _cMaintenancePolicy,
                  ("shieldedNodes" .=) <$> _cShieldedNodes,
                  ("conditions" .=) <$> _cConditions,
                  ("enableTpu" .=) <$> _cEnableTpu,
                  ("endpoint" .=) <$> _cEndpoint,
                  ("verticalPodAutoscaling" .=) <$>
                    _cVerticalPodAutoscaling,
                  ("authenticatorGroupsConfig" .=) <$>
                    _cAuthenticatorGroupsConfig,
                  ("expireTime" .=) <$> _cExpireTime,
                  ("networkPolicy" .=) <$> _cNetworkPolicy,
                  ("locations" .=) <$> _cLocations,
                  ("loggingService" .=) <$> _cLoggingService,
                  ("labelFingerprint" .=) <$> _cLabelFingerprint,
                  ("description" .=) <$> _cDescription,
                  ("instanceGroupUrls" .=) <$> _cInstanceGroupURLs,
                  ("monitoringService" .=) <$> _cMonitoringService,
                  ("createTime" .=) <$> _cCreateTime])

-- | CancelOperationRequest cancels a single operation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
  CancelOperationRequest'
    { _corZone :: !(Maybe Text)
    , _corName :: !(Maybe Text)
    , _corProjectId :: !(Maybe Text)
    , _corOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'corZone'
--
-- * 'corName'
--
-- * 'corProjectId'
--
-- * 'corOperationId'
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest =
  CancelOperationRequest'
    { _corZone = Nothing
    , _corName = Nothing
    , _corProjectId = Nothing
    , _corOperationId = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the operation resides. This field has been deprecated and replaced
-- by the name field.
corZone :: Lens' CancelOperationRequest (Maybe Text)
corZone = lens _corZone (\ s a -> s{_corZone = a})

-- | The name (project, location, operation id) of the operation to cancel.
-- Specified in the format \`projects\/*\/locations\/*\/operations\/*\`.
corName :: Lens' CancelOperationRequest (Maybe Text)
corName = lens _corName (\ s a -> s{_corName = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
corProjectId :: Lens' CancelOperationRequest (Maybe Text)
corProjectId
  = lens _corProjectId (\ s a -> s{_corProjectId = a})

-- | Deprecated. The server-assigned \`name\` of the operation. This field
-- has been deprecated and replaced by the name field.
corOperationId :: Lens' CancelOperationRequest (Maybe Text)
corOperationId
  = lens _corOperationId
      (\ s a -> s{_corOperationId = a})

instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o ->
                 CancelOperationRequest' <$>
                   (o .:? "zone") <*> (o .:? "name") <*>
                     (o .:? "projectId")
                     <*> (o .:? "operationId"))

instance ToJSON CancelOperationRequest where
        toJSON CancelOperationRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _corZone, ("name" .=) <$> _corName,
                  ("projectId" .=) <$> _corProjectId,
                  ("operationId" .=) <$> _corOperationId])

-- | UpdateClusterRequest updates the settings of a cluster.
--
-- /See:/ 'updateClusterRequest' smart constructor.
data UpdateClusterRequest =
  UpdateClusterRequest'
    { _ucrZone :: !(Maybe Text)
    , _ucrName :: !(Maybe Text)
    , _ucrClusterId :: !(Maybe Text)
    , _ucrProjectId :: !(Maybe Text)
    , _ucrUpdate :: !(Maybe ClusterUpdate)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrZone'
--
-- * 'ucrName'
--
-- * 'ucrClusterId'
--
-- * 'ucrProjectId'
--
-- * 'ucrUpdate'
updateClusterRequest
    :: UpdateClusterRequest
updateClusterRequest =
  UpdateClusterRequest'
    { _ucrZone = Nothing
    , _ucrName = Nothing
    , _ucrClusterId = Nothing
    , _ucrProjectId = Nothing
    , _ucrUpdate = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
ucrZone :: Lens' UpdateClusterRequest (Maybe Text)
ucrZone = lens _ucrZone (\ s a -> s{_ucrZone = a})

-- | The name (project, location, cluster) of the cluster to update.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
ucrName :: Lens' UpdateClusterRequest (Maybe Text)
ucrName = lens _ucrName (\ s a -> s{_ucrName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
ucrClusterId :: Lens' UpdateClusterRequest (Maybe Text)
ucrClusterId
  = lens _ucrClusterId (\ s a -> s{_ucrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
ucrProjectId :: Lens' UpdateClusterRequest (Maybe Text)
ucrProjectId
  = lens _ucrProjectId (\ s a -> s{_ucrProjectId = a})

-- | Required. A description of the update.
ucrUpdate :: Lens' UpdateClusterRequest (Maybe ClusterUpdate)
ucrUpdate
  = lens _ucrUpdate (\ s a -> s{_ucrUpdate = a})

instance FromJSON UpdateClusterRequest where
        parseJSON
          = withObject "UpdateClusterRequest"
              (\ o ->
                 UpdateClusterRequest' <$>
                   (o .:? "zone") <*> (o .:? "name") <*>
                     (o .:? "clusterId")
                     <*> (o .:? "projectId")
                     <*> (o .:? "update"))

instance ToJSON UpdateClusterRequest where
        toJSON UpdateClusterRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _ucrZone, ("name" .=) <$> _ucrName,
                  ("clusterId" .=) <$> _ucrClusterId,
                  ("projectId" .=) <$> _ucrProjectId,
                  ("update" .=) <$> _ucrUpdate])

-- | Configuration options for the Cloud Run feature.
--
-- /See:/ 'cloudRunConfig' smart constructor.
data CloudRunConfig =
  CloudRunConfig'
    { _crcLoadBalancerType :: !(Maybe CloudRunConfigLoadBalancerType)
    , _crcDisabled :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudRunConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crcLoadBalancerType'
--
-- * 'crcDisabled'
cloudRunConfig
    :: CloudRunConfig
cloudRunConfig =
  CloudRunConfig' {_crcLoadBalancerType = Nothing, _crcDisabled = Nothing}


-- | Which load balancer type is installed for Cloud Run.
crcLoadBalancerType :: Lens' CloudRunConfig (Maybe CloudRunConfigLoadBalancerType)
crcLoadBalancerType
  = lens _crcLoadBalancerType
      (\ s a -> s{_crcLoadBalancerType = a})

-- | Whether Cloud Run addon is enabled for this cluster.
crcDisabled :: Lens' CloudRunConfig (Maybe Bool)
crcDisabled
  = lens _crcDisabled (\ s a -> s{_crcDisabled = a})

instance FromJSON CloudRunConfig where
        parseJSON
          = withObject "CloudRunConfig"
              (\ o ->
                 CloudRunConfig' <$>
                   (o .:? "loadBalancerType") <*> (o .:? "disabled"))

instance ToJSON CloudRunConfig where
        toJSON CloudRunConfig'{..}
          = object
              (catMaybes
                 [("loadBalancerType" .=) <$> _crcLoadBalancerType,
                  ("disabled" .=) <$> _crcDisabled])

-- | SetAddonsConfigRequest sets the addons associated with the cluster.
--
-- /See:/ 'setAddonsConfigRequest' smart constructor.
data SetAddonsConfigRequest =
  SetAddonsConfigRequest'
    { _sacrZone :: !(Maybe Text)
    , _sacrAddonsConfig :: !(Maybe AddonsConfig)
    , _sacrName :: !(Maybe Text)
    , _sacrClusterId :: !(Maybe Text)
    , _sacrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetAddonsConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sacrZone'
--
-- * 'sacrAddonsConfig'
--
-- * 'sacrName'
--
-- * 'sacrClusterId'
--
-- * 'sacrProjectId'
setAddonsConfigRequest
    :: SetAddonsConfigRequest
setAddonsConfigRequest =
  SetAddonsConfigRequest'
    { _sacrZone = Nothing
    , _sacrAddonsConfig = Nothing
    , _sacrName = Nothing
    , _sacrClusterId = Nothing
    , _sacrProjectId = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
sacrZone :: Lens' SetAddonsConfigRequest (Maybe Text)
sacrZone = lens _sacrZone (\ s a -> s{_sacrZone = a})

-- | Required. The desired configurations for the various addons available to
-- run in the cluster.
sacrAddonsConfig :: Lens' SetAddonsConfigRequest (Maybe AddonsConfig)
sacrAddonsConfig
  = lens _sacrAddonsConfig
      (\ s a -> s{_sacrAddonsConfig = a})

-- | The name (project, location, cluster) of the cluster to set addons.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
sacrName :: Lens' SetAddonsConfigRequest (Maybe Text)
sacrName = lens _sacrName (\ s a -> s{_sacrName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
sacrClusterId :: Lens' SetAddonsConfigRequest (Maybe Text)
sacrClusterId
  = lens _sacrClusterId
      (\ s a -> s{_sacrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
sacrProjectId :: Lens' SetAddonsConfigRequest (Maybe Text)
sacrProjectId
  = lens _sacrProjectId
      (\ s a -> s{_sacrProjectId = a})

instance FromJSON SetAddonsConfigRequest where
        parseJSON
          = withObject "SetAddonsConfigRequest"
              (\ o ->
                 SetAddonsConfigRequest' <$>
                   (o .:? "zone") <*> (o .:? "addonsConfig") <*>
                     (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId"))

instance ToJSON SetAddonsConfigRequest where
        toJSON SetAddonsConfigRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _sacrZone,
                  ("addonsConfig" .=) <$> _sacrAddonsConfig,
                  ("name" .=) <$> _sacrName,
                  ("clusterId" .=) <$> _sacrClusterId,
                  ("projectId" .=) <$> _sacrProjectId])

-- | Parameters that describe the nodes in a cluster.
--
-- /See:/ 'nodeConfig' smart constructor.
data NodeConfig =
  NodeConfig'
    { _ncLinuxNodeConfig :: !(Maybe LinuxNodeConfig)
    , _ncSandboxConfig :: !(Maybe SandboxConfig)
    , _ncNodeGroup :: !(Maybe Text)
    , _ncReservationAffinity :: !(Maybe ReservationAffinity)
    , _ncLocalSsdCount :: !(Maybe (Textual Int32))
    , _ncDiskSizeGb :: !(Maybe (Textual Int32))
    , _ncTaints :: !(Maybe [NodeTaint])
    , _ncOAuthScopes :: !(Maybe [Text])
    , _ncServiceAccount :: !(Maybe Text)
    , _ncAccelerators :: !(Maybe [AcceleratorConfig])
    , _ncImageType :: !(Maybe Text)
    , _ncMachineType :: !(Maybe Text)
    , _ncMetadata :: !(Maybe NodeConfigMetadata)
    , _ncDiskType :: !(Maybe Text)
    , _ncShieldedInstanceConfig :: !(Maybe ShieldedInstanceConfig)
    , _ncLabels :: !(Maybe NodeConfigLabels)
    , _ncWorkLoadMetadataConfig :: !(Maybe WorkLoadMetadataConfig)
    , _ncMinCPUPlatform :: !(Maybe Text)
    , _ncKubeletConfig :: !(Maybe NodeKubeletConfig)
    , _ncBootDiskKmsKey :: !(Maybe Text)
    , _ncTags :: !(Maybe [Text])
    , _ncPreemptible :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncLinuxNodeConfig'
--
-- * 'ncSandboxConfig'
--
-- * 'ncNodeGroup'
--
-- * 'ncReservationAffinity'
--
-- * 'ncLocalSsdCount'
--
-- * 'ncDiskSizeGb'
--
-- * 'ncTaints'
--
-- * 'ncOAuthScopes'
--
-- * 'ncServiceAccount'
--
-- * 'ncAccelerators'
--
-- * 'ncImageType'
--
-- * 'ncMachineType'
--
-- * 'ncMetadata'
--
-- * 'ncDiskType'
--
-- * 'ncShieldedInstanceConfig'
--
-- * 'ncLabels'
--
-- * 'ncWorkLoadMetadataConfig'
--
-- * 'ncMinCPUPlatform'
--
-- * 'ncKubeletConfig'
--
-- * 'ncBootDiskKmsKey'
--
-- * 'ncTags'
--
-- * 'ncPreemptible'
nodeConfig
    :: NodeConfig
nodeConfig =
  NodeConfig'
    { _ncLinuxNodeConfig = Nothing
    , _ncSandboxConfig = Nothing
    , _ncNodeGroup = Nothing
    , _ncReservationAffinity = Nothing
    , _ncLocalSsdCount = Nothing
    , _ncDiskSizeGb = Nothing
    , _ncTaints = Nothing
    , _ncOAuthScopes = Nothing
    , _ncServiceAccount = Nothing
    , _ncAccelerators = Nothing
    , _ncImageType = Nothing
    , _ncMachineType = Nothing
    , _ncMetadata = Nothing
    , _ncDiskType = Nothing
    , _ncShieldedInstanceConfig = Nothing
    , _ncLabels = Nothing
    , _ncWorkLoadMetadataConfig = Nothing
    , _ncMinCPUPlatform = Nothing
    , _ncKubeletConfig = Nothing
    , _ncBootDiskKmsKey = Nothing
    , _ncTags = Nothing
    , _ncPreemptible = Nothing
    }


-- | Parameters that can be configured on Linux nodes.
ncLinuxNodeConfig :: Lens' NodeConfig (Maybe LinuxNodeConfig)
ncLinuxNodeConfig
  = lens _ncLinuxNodeConfig
      (\ s a -> s{_ncLinuxNodeConfig = a})

-- | Sandbox configuration for this node.
ncSandboxConfig :: Lens' NodeConfig (Maybe SandboxConfig)
ncSandboxConfig
  = lens _ncSandboxConfig
      (\ s a -> s{_ncSandboxConfig = a})

-- | Setting this field will assign instances of this pool to run on the
-- specified node group. This is useful for running workloads on [sole
-- tenant
-- nodes](https:\/\/cloud.google.com\/compute\/docs\/nodes\/sole-tenant-nodes).
ncNodeGroup :: Lens' NodeConfig (Maybe Text)
ncNodeGroup
  = lens _ncNodeGroup (\ s a -> s{_ncNodeGroup = a})

-- | The optional reservation affinity. Setting this field will apply the
-- specified [Zonal Compute
-- Reservation](https:\/\/cloud.google.com\/compute\/docs\/instances\/reserving-zonal-resources)
-- to this node pool.
ncReservationAffinity :: Lens' NodeConfig (Maybe ReservationAffinity)
ncReservationAffinity
  = lens _ncReservationAffinity
      (\ s a -> s{_ncReservationAffinity = a})

-- | The number of local SSD disks to be attached to the node. The limit for
-- this value is dependent upon the maximum number of disks available on a
-- machine per zone. See:
-- https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd for more
-- information.
ncLocalSsdCount :: Lens' NodeConfig (Maybe Int32)
ncLocalSsdCount
  = lens _ncLocalSsdCount
      (\ s a -> s{_ncLocalSsdCount = a})
      . mapping _Coerce

-- | Size of the disk attached to each node, specified in GB. The smallest
-- allowed disk size is 10GB. If unspecified, the default disk size is
-- 100GB.
ncDiskSizeGb :: Lens' NodeConfig (Maybe Int32)
ncDiskSizeGb
  = lens _ncDiskSizeGb (\ s a -> s{_ncDiskSizeGb = a})
      . mapping _Coerce

-- | List of kubernetes taints to be applied to each node. For more
-- information, including usage and the valid values, see:
-- https:\/\/kubernetes.io\/docs\/concepts\/configuration\/taint-and-toleration\/
ncTaints :: Lens' NodeConfig [NodeTaint]
ncTaints
  = lens _ncTaints (\ s a -> s{_ncTaints = a}) .
      _Default
      . _Coerce

-- | The set of Google API scopes to be made available on all of the node VMs
-- under the \"default\" service account. The following scopes are
-- recommended, but not required, and by default are not included: *
-- \`https:\/\/www.googleapis.com\/auth\/compute\` is required for mounting
-- persistent storage on your nodes. *
-- \`https:\/\/www.googleapis.com\/auth\/devstorage.read_only\` is required
-- for communicating with **gcr.io** (the [Google Container
-- Registry](https:\/\/cloud.google.com\/container-registry\/)). If
-- unspecified, no scopes are added, unless Cloud Logging or Cloud
-- Monitoring are enabled, in which case their required scopes will be
-- added.
ncOAuthScopes :: Lens' NodeConfig [Text]
ncOAuthScopes
  = lens _ncOAuthScopes
      (\ s a -> s{_ncOAuthScopes = a})
      . _Default
      . _Coerce

-- | The Google Cloud Platform Service Account to be used by the node VMs.
-- Specify the email address of the Service Account; otherwise, if no
-- Service Account is specified, the \"default\" service account is used.
ncServiceAccount :: Lens' NodeConfig (Maybe Text)
ncServiceAccount
  = lens _ncServiceAccount
      (\ s a -> s{_ncServiceAccount = a})

-- | A list of hardware accelerators to be attached to each node. See
-- https:\/\/cloud.google.com\/compute\/docs\/gpus for more information
-- about support for GPUs.
ncAccelerators :: Lens' NodeConfig [AcceleratorConfig]
ncAccelerators
  = lens _ncAccelerators
      (\ s a -> s{_ncAccelerators = a})
      . _Default
      . _Coerce

-- | The image type to use for this node. Note that for a given image type,
-- the latest version of it will be used.
ncImageType :: Lens' NodeConfig (Maybe Text)
ncImageType
  = lens _ncImageType (\ s a -> s{_ncImageType = a})

-- | The name of a Google Compute Engine [machine
-- type](https:\/\/cloud.google.com\/compute\/docs\/machine-types) If
-- unspecified, the default machine type is \`e2-medium\`.
ncMachineType :: Lens' NodeConfig (Maybe Text)
ncMachineType
  = lens _ncMachineType
      (\ s a -> s{_ncMachineType = a})

-- | The metadata key\/value pairs assigned to instances in the cluster. Keys
-- must conform to the regexp \`[a-zA-Z0-9-_]+\` and be less than 128 bytes
-- in length. These are reflected as part of a URL in the metadata server.
-- Additionally, to avoid ambiguity, keys must not conflict with any other
-- metadata keys for the project or be one of the reserved keys: -
-- \"cluster-location\" - \"cluster-name\" - \"cluster-uid\" -
-- \"configure-sh\" - \"containerd-configure-sh\" - \"enable-os-login\" -
-- \"gci-ensure-gke-docker\" - \"gci-metrics-enabled\" -
-- \"gci-update-strategy\" - \"instance-template\" - \"kube-env\" -
-- \"startup-script\" - \"user-data\" - \"disable-address-manager\" -
-- \"windows-startup-script-ps1\" - \"common-psm1\" -
-- \"k8s-node-setup-psm1\" - \"install-ssh-psm1\" - \"user-profile-psm1\"
-- The following keys are reserved for Windows nodes: -
-- \"serial-port-logging-enable\" Values are free-form strings, and only
-- have meaning as interpreted by the image running in the instance. The
-- only restriction placed on them is that each value\'s size must be less
-- than or equal to 32 KB. The total size of all keys and values must be
-- less than 512 KB.
ncMetadata :: Lens' NodeConfig (Maybe NodeConfigMetadata)
ncMetadata
  = lens _ncMetadata (\ s a -> s{_ncMetadata = a})

-- | Type of the disk attached to each node (e.g. \'pd-standard\', \'pd-ssd\'
-- or \'pd-balanced\') If unspecified, the default disk type is
-- \'pd-standard\'
ncDiskType :: Lens' NodeConfig (Maybe Text)
ncDiskType
  = lens _ncDiskType (\ s a -> s{_ncDiskType = a})

-- | Shielded Instance options.
ncShieldedInstanceConfig :: Lens' NodeConfig (Maybe ShieldedInstanceConfig)
ncShieldedInstanceConfig
  = lens _ncShieldedInstanceConfig
      (\ s a -> s{_ncShieldedInstanceConfig = a})

-- | The map of Kubernetes labels (key\/value pairs) to be applied to each
-- node. These will added in addition to any default label(s) that
-- Kubernetes may apply to the node. In case of conflict in label keys, the
-- applied set may differ depending on the Kubernetes version -- it\'s best
-- to assume the behavior is undefined and conflicts should be avoided. For
-- more information, including usage and the valid values, see:
-- https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/labels\/
ncLabels :: Lens' NodeConfig (Maybe NodeConfigLabels)
ncLabels = lens _ncLabels (\ s a -> s{_ncLabels = a})

-- | The workload metadata configuration for this node.
ncWorkLoadMetadataConfig :: Lens' NodeConfig (Maybe WorkLoadMetadataConfig)
ncWorkLoadMetadataConfig
  = lens _ncWorkLoadMetadataConfig
      (\ s a -> s{_ncWorkLoadMetadataConfig = a})

-- | Minimum CPU platform to be used by this instance. The instance may be
-- scheduled on the specified or newer CPU platform. Applicable values are
-- the friendly names of CPU platforms, such as \`minCpuPlatform: \"Intel
-- Haswell\"\` or \`minCpuPlatform: \"Intel Sandy Bridge\"\`. For more
-- information, read [how to specify min CPU
-- platform](https:\/\/cloud.google.com\/compute\/docs\/instances\/specify-min-cpu-platform)
ncMinCPUPlatform :: Lens' NodeConfig (Maybe Text)
ncMinCPUPlatform
  = lens _ncMinCPUPlatform
      (\ s a -> s{_ncMinCPUPlatform = a})

-- | Node kubelet configs.
ncKubeletConfig :: Lens' NodeConfig (Maybe NodeKubeletConfig)
ncKubeletConfig
  = lens _ncKubeletConfig
      (\ s a -> s{_ncKubeletConfig = a})

-- | The Customer Managed Encryption Key used to encrypt the boot disk
-- attached to each node in the node pool. This should be of the form
-- projects\/[KEY_PROJECT_ID]\/locations\/[LOCATION]\/keyRings\/[RING_NAME]\/cryptoKeys\/[KEY_NAME].
-- For more information about protecting resources with Cloud KMS Keys
-- please see:
-- https:\/\/cloud.google.com\/compute\/docs\/disks\/customer-managed-encryption
ncBootDiskKmsKey :: Lens' NodeConfig (Maybe Text)
ncBootDiskKmsKey
  = lens _ncBootDiskKmsKey
      (\ s a -> s{_ncBootDiskKmsKey = a})

-- | The list of instance tags applied to all nodes. Tags are used to
-- identify valid sources or targets for network firewalls and are
-- specified by the client during cluster or node pool creation. Each tag
-- within the list must comply with RFC1035.
ncTags :: Lens' NodeConfig [Text]
ncTags
  = lens _ncTags (\ s a -> s{_ncTags = a}) . _Default .
      _Coerce

-- | Whether the nodes are created as preemptible VM instances. See:
-- https:\/\/cloud.google.com\/compute\/docs\/instances\/preemptible for
-- more information about preemptible VM instances.
ncPreemptible :: Lens' NodeConfig (Maybe Bool)
ncPreemptible
  = lens _ncPreemptible
      (\ s a -> s{_ncPreemptible = a})

instance FromJSON NodeConfig where
        parseJSON
          = withObject "NodeConfig"
              (\ o ->
                 NodeConfig' <$>
                   (o .:? "linuxNodeConfig") <*> (o .:? "sandboxConfig")
                     <*> (o .:? "nodeGroup")
                     <*> (o .:? "reservationAffinity")
                     <*> (o .:? "localSsdCount")
                     <*> (o .:? "diskSizeGb")
                     <*> (o .:? "taints" .!= mempty)
                     <*> (o .:? "oauthScopes" .!= mempty)
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "accelerators" .!= mempty)
                     <*> (o .:? "imageType")
                     <*> (o .:? "machineType")
                     <*> (o .:? "metadata")
                     <*> (o .:? "diskType")
                     <*> (o .:? "shieldedInstanceConfig")
                     <*> (o .:? "labels")
                     <*> (o .:? "workloadMetadataConfig")
                     <*> (o .:? "minCpuPlatform")
                     <*> (o .:? "kubeletConfig")
                     <*> (o .:? "bootDiskKmsKey")
                     <*> (o .:? "tags" .!= mempty)
                     <*> (o .:? "preemptible"))

instance ToJSON NodeConfig where
        toJSON NodeConfig'{..}
          = object
              (catMaybes
                 [("linuxNodeConfig" .=) <$> _ncLinuxNodeConfig,
                  ("sandboxConfig" .=) <$> _ncSandboxConfig,
                  ("nodeGroup" .=) <$> _ncNodeGroup,
                  ("reservationAffinity" .=) <$>
                    _ncReservationAffinity,
                  ("localSsdCount" .=) <$> _ncLocalSsdCount,
                  ("diskSizeGb" .=) <$> _ncDiskSizeGb,
                  ("taints" .=) <$> _ncTaints,
                  ("oauthScopes" .=) <$> _ncOAuthScopes,
                  ("serviceAccount" .=) <$> _ncServiceAccount,
                  ("accelerators" .=) <$> _ncAccelerators,
                  ("imageType" .=) <$> _ncImageType,
                  ("machineType" .=) <$> _ncMachineType,
                  ("metadata" .=) <$> _ncMetadata,
                  ("diskType" .=) <$> _ncDiskType,
                  ("shieldedInstanceConfig" .=) <$>
                    _ncShieldedInstanceConfig,
                  ("labels" .=) <$> _ncLabels,
                  ("workloadMetadataConfig" .=) <$>
                    _ncWorkLoadMetadataConfig,
                  ("minCpuPlatform" .=) <$> _ncMinCPUPlatform,
                  ("kubeletConfig" .=) <$> _ncKubeletConfig,
                  ("bootDiskKmsKey" .=) <$> _ncBootDiskKmsKey,
                  ("tags" .=) <$> _ncTags,
                  ("preemptible" .=) <$> _ncPreemptible])

-- | Parameters for using BigQuery as the destination of resource usage
-- export.
--
-- /See:/ 'bigQueryDestination' smart constructor.
newtype BigQueryDestination =
  BigQueryDestination'
    { _bqdDataSetId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BigQueryDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bqdDataSetId'
bigQueryDestination
    :: BigQueryDestination
bigQueryDestination = BigQueryDestination' {_bqdDataSetId = Nothing}


-- | The ID of a BigQuery Dataset.
bqdDataSetId :: Lens' BigQueryDestination (Maybe Text)
bqdDataSetId
  = lens _bqdDataSetId (\ s a -> s{_bqdDataSetId = a})

instance FromJSON BigQueryDestination where
        parseJSON
          = withObject "BigQueryDestination"
              (\ o -> BigQueryDestination' <$> (o .:? "datasetId"))

instance ToJSON BigQueryDestination where
        toJSON BigQueryDestination'{..}
          = object
              (catMaybes [("datasetId" .=) <$> _bqdDataSetId])

-- | [ReservationAffinity](https:\/\/cloud.google.com\/compute\/docs\/instances\/reserving-zonal-resources)
-- is the configuration of desired reservation which instances could take
-- capacity from.
--
-- /See:/ 'reservationAffinity' smart constructor.
data ReservationAffinity =
  ReservationAffinity'
    { _raConsumeReservationType :: !(Maybe ReservationAffinityConsumeReservationType)
    , _raValues :: !(Maybe [Text])
    , _raKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationAffinity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raConsumeReservationType'
--
-- * 'raValues'
--
-- * 'raKey'
reservationAffinity
    :: ReservationAffinity
reservationAffinity =
  ReservationAffinity'
    {_raConsumeReservationType = Nothing, _raValues = Nothing, _raKey = Nothing}


-- | Corresponds to the type of reservation consumption.
raConsumeReservationType :: Lens' ReservationAffinity (Maybe ReservationAffinityConsumeReservationType)
raConsumeReservationType
  = lens _raConsumeReservationType
      (\ s a -> s{_raConsumeReservationType = a})

-- | Corresponds to the label value(s) of reservation resource(s).
raValues :: Lens' ReservationAffinity [Text]
raValues
  = lens _raValues (\ s a -> s{_raValues = a}) .
      _Default
      . _Coerce

-- | Corresponds to the label key of a reservation resource. To target a
-- SPECIFIC_RESERVATION by name, specify
-- \"googleapis.com\/reservation-name\" as the key and specify the name of
-- your reservation as its value.
raKey :: Lens' ReservationAffinity (Maybe Text)
raKey = lens _raKey (\ s a -> s{_raKey = a})

instance FromJSON ReservationAffinity where
        parseJSON
          = withObject "ReservationAffinity"
              (\ o ->
                 ReservationAffinity' <$>
                   (o .:? "consumeReservationType") <*>
                     (o .:? "values" .!= mempty)
                     <*> (o .:? "key"))

instance ToJSON ReservationAffinity where
        toJSON ReservationAffinity'{..}
          = object
              (catMaybes
                 [("consumeReservationType" .=) <$>
                    _raConsumeReservationType,
                  ("values" .=) <$> _raValues, ("key" .=) <$> _raKey])

-- | Configuration options for the HTTP (L7) load balancing controller addon,
-- which makes it easy to set up HTTP load balancers for services in a
-- cluster.
--
-- /See:/ 'hTTPLoadBalancing' smart constructor.
newtype HTTPLoadBalancing =
  HTTPLoadBalancing'
    { _httplbDisabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPLoadBalancing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httplbDisabled'
hTTPLoadBalancing
    :: HTTPLoadBalancing
hTTPLoadBalancing = HTTPLoadBalancing' {_httplbDisabled = Nothing}


-- | Whether the HTTP Load Balancing controller is enabled in the cluster.
-- When enabled, it runs a small pod in the cluster that manages the load
-- balancers.
httplbDisabled :: Lens' HTTPLoadBalancing (Maybe Bool)
httplbDisabled
  = lens _httplbDisabled
      (\ s a -> s{_httplbDisabled = a})

instance FromJSON HTTPLoadBalancing where
        parseJSON
          = withObject "HTTPLoadBalancing"
              (\ o -> HTTPLoadBalancing' <$> (o .:? "disabled"))

instance ToJSON HTTPLoadBalancing where
        toJSON HTTPLoadBalancing'{..}
          = object
              (catMaybes [("disabled" .=) <$> _httplbDisabled])

-- | This operation resource represents operations that may have happened or
-- are happening on the cluster. All fields are output only.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oNodepoolConditions :: !(Maybe [StatusCondition])
    , _oStatus :: !(Maybe OperationStatus)
    , _oLocation :: !(Maybe Text)
    , _oProgress :: !(Maybe OperationProgress)
    , _oStartTime :: !(Maybe Text)
    , _oError :: !(Maybe Status)
    , _oZone :: !(Maybe Text)
    , _oSelfLink :: !(Maybe Text)
    , _oName :: !(Maybe Text)
    , _oStatusMessage :: !(Maybe Text)
    , _oEndTime :: !(Maybe Text)
    , _oClusterConditions :: !(Maybe [StatusCondition])
    , _oOperationType :: !(Maybe OperationOperationType)
    , _oTargetLink :: !(Maybe Text)
    , _oDetail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oNodepoolConditions'
--
-- * 'oStatus'
--
-- * 'oLocation'
--
-- * 'oProgress'
--
-- * 'oStartTime'
--
-- * 'oError'
--
-- * 'oZone'
--
-- * 'oSelfLink'
--
-- * 'oName'
--
-- * 'oStatusMessage'
--
-- * 'oEndTime'
--
-- * 'oClusterConditions'
--
-- * 'oOperationType'
--
-- * 'oTargetLink'
--
-- * 'oDetail'
operation
    :: Operation
operation =
  Operation'
    { _oNodepoolConditions = Nothing
    , _oStatus = Nothing
    , _oLocation = Nothing
    , _oProgress = Nothing
    , _oStartTime = Nothing
    , _oError = Nothing
    , _oZone = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oStatusMessage = Nothing
    , _oEndTime = Nothing
    , _oClusterConditions = Nothing
    , _oOperationType = Nothing
    , _oTargetLink = Nothing
    , _oDetail = Nothing
    }


-- | Which conditions caused the current node pool state. Deprecated. Use
-- field error instead.
oNodepoolConditions :: Lens' Operation [StatusCondition]
oNodepoolConditions
  = lens _oNodepoolConditions
      (\ s a -> s{_oNodepoolConditions = a})
      . _Default
      . _Coerce

-- | The current status of the operation.
oStatus :: Lens' Operation (Maybe OperationStatus)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | [Output only] The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones#available)
-- or
-- [region](https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones#available)
-- in which the cluster resides.
oLocation :: Lens' Operation (Maybe Text)
oLocation
  = lens _oLocation (\ s a -> s{_oLocation = a})

-- | Output only. [Output only] Progress information for an operation.
oProgress :: Lens' Operation (Maybe OperationProgress)
oProgress
  = lens _oProgress (\ s a -> s{_oProgress = a})

-- | [Output only] The time the operation started, in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) text format.
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | The error result of the operation in case of failure.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the operation is taking place. This field is deprecated, use
-- location instead.
oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

-- | Server-defined URL for the resource.
oSelfLink :: Lens' Operation (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

-- | The server-assigned ID for the operation.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Output only. If an error has occurred, a textual description of the
-- error. Deprecated. Use the field error instead.
oStatusMessage :: Lens' Operation (Maybe Text)
oStatusMessage
  = lens _oStatusMessage
      (\ s a -> s{_oStatusMessage = a})

-- | [Output only] The time the operation completed, in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) text format.
oEndTime :: Lens' Operation (Maybe Text)
oEndTime = lens _oEndTime (\ s a -> s{_oEndTime = a})

-- | Which conditions caused the current cluster state. Deprecated. Use field
-- error instead.
oClusterConditions :: Lens' Operation [StatusCondition]
oClusterConditions
  = lens _oClusterConditions
      (\ s a -> s{_oClusterConditions = a})
      . _Default
      . _Coerce

-- | The operation type.
oOperationType :: Lens' Operation (Maybe OperationOperationType)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | Server-defined URL for the target of the operation.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

-- | Detailed operation progress, if available.
oDetail :: Lens' Operation (Maybe Text)
oDetail = lens _oDetail (\ s a -> s{_oDetail = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "nodepoolConditions" .!= mempty) <*>
                     (o .:? "status")
                     <*> (o .:? "location")
                     <*> (o .:? "progress")
                     <*> (o .:? "startTime")
                     <*> (o .:? "error")
                     <*> (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "endTime")
                     <*> (o .:? "clusterConditions" .!= mempty)
                     <*> (o .:? "operationType")
                     <*> (o .:? "targetLink")
                     <*> (o .:? "detail"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("nodepoolConditions" .=) <$> _oNodepoolConditions,
                  ("status" .=) <$> _oStatus,
                  ("location" .=) <$> _oLocation,
                  ("progress" .=) <$> _oProgress,
                  ("startTime" .=) <$> _oStartTime,
                  ("error" .=) <$> _oError, ("zone" .=) <$> _oZone,
                  ("selfLink" .=) <$> _oSelfLink,
                  ("name" .=) <$> _oName,
                  ("statusMessage" .=) <$> _oStatusMessage,
                  ("endTime" .=) <$> _oEndTime,
                  ("clusterConditions" .=) <$> _oClusterConditions,
                  ("operationType" .=) <$> _oOperationType,
                  ("targetLink" .=) <$> _oTargetLink,
                  ("detail" .=) <$> _oDetail])

-- | The resource labels for the cluster to use to annotate any related
-- Google Compute Engine resources.
--
-- /See:/ 'clusterResourceLabels' smart constructor.
newtype ClusterResourceLabels =
  ClusterResourceLabels'
    { _crlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterResourceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crlAddtional'
clusterResourceLabels
    :: HashMap Text Text -- ^ 'crlAddtional'
    -> ClusterResourceLabels
clusterResourceLabels pCrlAddtional_ =
  ClusterResourceLabels' {_crlAddtional = _Coerce # pCrlAddtional_}


crlAddtional :: Lens' ClusterResourceLabels (HashMap Text Text)
crlAddtional
  = lens _crlAddtional (\ s a -> s{_crlAddtional = a})
      . _Coerce

instance FromJSON ClusterResourceLabels where
        parseJSON
          = withObject "ClusterResourceLabels"
              (\ o ->
                 ClusterResourceLabels' <$> (parseJSONObject o))

instance ToJSON ClusterResourceLabels where
        toJSON = toJSON . _crlAddtional

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

-- | SetNodePoolAutoscalingRequest sets the autoscaler settings of a node
-- pool.
--
-- /See:/ 'setNodePoolAutoscalingRequest' smart constructor.
data SetNodePoolAutoscalingRequest =
  SetNodePoolAutoscalingRequest'
    { _snparAutoscaling :: !(Maybe NodePoolAutoscaling)
    , _snparZone :: !(Maybe Text)
    , _snparNodePoolId :: !(Maybe Text)
    , _snparName :: !(Maybe Text)
    , _snparClusterId :: !(Maybe Text)
    , _snparProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetNodePoolAutoscalingRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snparAutoscaling'
--
-- * 'snparZone'
--
-- * 'snparNodePoolId'
--
-- * 'snparName'
--
-- * 'snparClusterId'
--
-- * 'snparProjectId'
setNodePoolAutoscalingRequest
    :: SetNodePoolAutoscalingRequest
setNodePoolAutoscalingRequest =
  SetNodePoolAutoscalingRequest'
    { _snparAutoscaling = Nothing
    , _snparZone = Nothing
    , _snparNodePoolId = Nothing
    , _snparName = Nothing
    , _snparClusterId = Nothing
    , _snparProjectId = Nothing
    }


-- | Required. Autoscaling configuration for the node pool.
snparAutoscaling :: Lens' SetNodePoolAutoscalingRequest (Maybe NodePoolAutoscaling)
snparAutoscaling
  = lens _snparAutoscaling
      (\ s a -> s{_snparAutoscaling = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
snparZone :: Lens' SetNodePoolAutoscalingRequest (Maybe Text)
snparZone
  = lens _snparZone (\ s a -> s{_snparZone = a})

-- | Deprecated. The name of the node pool to upgrade. This field has been
-- deprecated and replaced by the name field.
snparNodePoolId :: Lens' SetNodePoolAutoscalingRequest (Maybe Text)
snparNodePoolId
  = lens _snparNodePoolId
      (\ s a -> s{_snparNodePoolId = a})

-- | The name (project, location, cluster, node pool) of the node pool to set
-- autoscaler settings. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
snparName :: Lens' SetNodePoolAutoscalingRequest (Maybe Text)
snparName
  = lens _snparName (\ s a -> s{_snparName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
snparClusterId :: Lens' SetNodePoolAutoscalingRequest (Maybe Text)
snparClusterId
  = lens _snparClusterId
      (\ s a -> s{_snparClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
snparProjectId :: Lens' SetNodePoolAutoscalingRequest (Maybe Text)
snparProjectId
  = lens _snparProjectId
      (\ s a -> s{_snparProjectId = a})

instance FromJSON SetNodePoolAutoscalingRequest where
        parseJSON
          = withObject "SetNodePoolAutoscalingRequest"
              (\ o ->
                 SetNodePoolAutoscalingRequest' <$>
                   (o .:? "autoscaling") <*> (o .:? "zone") <*>
                     (o .:? "nodePoolId")
                     <*> (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId"))

instance ToJSON SetNodePoolAutoscalingRequest where
        toJSON SetNodePoolAutoscalingRequest'{..}
          = object
              (catMaybes
                 [("autoscaling" .=) <$> _snparAutoscaling,
                  ("zone" .=) <$> _snparZone,
                  ("nodePoolId" .=) <$> _snparNodePoolId,
                  ("name" .=) <$> _snparName,
                  ("clusterId" .=) <$> _snparClusterId,
                  ("projectId" .=) <$> _snparProjectId])

-- | CompleteIPRotationRequest moves the cluster master back into single-IP
-- mode.
--
-- /See:/ 'completeIPRotationRequest' smart constructor.
data CompleteIPRotationRequest =
  CompleteIPRotationRequest'
    { _cirrZone :: !(Maybe Text)
    , _cirrName :: !(Maybe Text)
    , _cirrClusterId :: !(Maybe Text)
    , _cirrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompleteIPRotationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirrZone'
--
-- * 'cirrName'
--
-- * 'cirrClusterId'
--
-- * 'cirrProjectId'
completeIPRotationRequest
    :: CompleteIPRotationRequest
completeIPRotationRequest =
  CompleteIPRotationRequest'
    { _cirrZone = Nothing
    , _cirrName = Nothing
    , _cirrClusterId = Nothing
    , _cirrProjectId = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
cirrZone :: Lens' CompleteIPRotationRequest (Maybe Text)
cirrZone = lens _cirrZone (\ s a -> s{_cirrZone = a})

-- | The name (project, location, cluster id) of the cluster to complete IP
-- rotation. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\`.
cirrName :: Lens' CompleteIPRotationRequest (Maybe Text)
cirrName = lens _cirrName (\ s a -> s{_cirrName = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the name field.
cirrClusterId :: Lens' CompleteIPRotationRequest (Maybe Text)
cirrClusterId
  = lens _cirrClusterId
      (\ s a -> s{_cirrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the name field.
cirrProjectId :: Lens' CompleteIPRotationRequest (Maybe Text)
cirrProjectId
  = lens _cirrProjectId
      (\ s a -> s{_cirrProjectId = a})

instance FromJSON CompleteIPRotationRequest where
        parseJSON
          = withObject "CompleteIPRotationRequest"
              (\ o ->
                 CompleteIPRotationRequest' <$>
                   (o .:? "zone") <*> (o .:? "name") <*>
                     (o .:? "clusterId")
                     <*> (o .:? "projectId"))

instance ToJSON CompleteIPRotationRequest where
        toJSON CompleteIPRotationRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _cirrZone,
                  ("name" .=) <$> _cirrName,
                  ("clusterId" .=) <$> _cirrClusterId,
                  ("projectId" .=) <$> _cirrProjectId])

-- | The Linux kernel parameters to be applied to the nodes and all pods
-- running on the nodes. The following parameters are supported.
-- net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default
-- net.core.wmem_max net.core.optmem_max net.core.somaxconn
-- net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
--
-- /See:/ 'linuxNodeConfigSysctls' smart constructor.
newtype LinuxNodeConfigSysctls =
  LinuxNodeConfigSysctls'
    { _lncsAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LinuxNodeConfigSysctls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lncsAddtional'
linuxNodeConfigSysctls
    :: HashMap Text Text -- ^ 'lncsAddtional'
    -> LinuxNodeConfigSysctls
linuxNodeConfigSysctls pLncsAddtional_ =
  LinuxNodeConfigSysctls' {_lncsAddtional = _Coerce # pLncsAddtional_}


lncsAddtional :: Lens' LinuxNodeConfigSysctls (HashMap Text Text)
lncsAddtional
  = lens _lncsAddtional
      (\ s a -> s{_lncsAddtional = a})
      . _Coerce

instance FromJSON LinuxNodeConfigSysctls where
        parseJSON
          = withObject "LinuxNodeConfigSysctls"
              (\ o ->
                 LinuxNodeConfigSysctls' <$> (parseJSONObject o))

instance ToJSON LinuxNodeConfigSysctls where
        toJSON = toJSON . _lncsAddtional

-- | These upgrade settings control the level of parallelism and the level of
-- disruption caused by an upgrade. maxUnavailable controls the number of
-- nodes that can be simultaneously unavailable. maxSurge controls the
-- number of additional nodes that can be added to the node pool
-- temporarily for the time of the upgrade to increase the number of
-- available nodes. (maxUnavailable + maxSurge) determines the level of
-- parallelism (how many nodes are being upgraded at the same time). Note:
-- upgrades inevitably introduce some disruption since workloads need to be
-- moved from old nodes to new, upgraded ones. Even if maxUnavailable=0,
-- this holds true. (Disruption stays within the limits of
-- PodDisruptionBudget, if it is configured.) Consider a hypothetical node
-- pool with 5 nodes having maxSurge=2, maxUnavailable=1. This means the
-- upgrade process upgrades 3 nodes simultaneously. It creates 2 additional
-- (upgraded) nodes, then it brings down 3 old (not yet upgraded) nodes at
-- the same time. This ensures that there are always at least 4 nodes
-- available.
--
-- /See:/ 'upgradeSettings' smart constructor.
data UpgradeSettings =
  UpgradeSettings'
    { _usMaxSurge :: !(Maybe (Textual Int32))
    , _usMaxUnavailable :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpgradeSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usMaxSurge'
--
-- * 'usMaxUnavailable'
upgradeSettings
    :: UpgradeSettings
upgradeSettings =
  UpgradeSettings' {_usMaxSurge = Nothing, _usMaxUnavailable = Nothing}


-- | The maximum number of nodes that can be created beyond the current size
-- of the node pool during the upgrade process.
usMaxSurge :: Lens' UpgradeSettings (Maybe Int32)
usMaxSurge
  = lens _usMaxSurge (\ s a -> s{_usMaxSurge = a}) .
      mapping _Coerce

-- | The maximum number of nodes that can be simultaneously unavailable
-- during the upgrade process. A node is considered available if its status
-- is Ready.
usMaxUnavailable :: Lens' UpgradeSettings (Maybe Int32)
usMaxUnavailable
  = lens _usMaxUnavailable
      (\ s a -> s{_usMaxUnavailable = a})
      . mapping _Coerce

instance FromJSON UpgradeSettings where
        parseJSON
          = withObject "UpgradeSettings"
              (\ o ->
                 UpgradeSettings' <$>
                   (o .:? "maxSurge") <*> (o .:? "maxUnavailable"))

instance ToJSON UpgradeSettings where
        toJSON UpgradeSettings'{..}
          = object
              (catMaybes
                 [("maxSurge" .=) <$> _usMaxSurge,
                  ("maxUnavailable" .=) <$> _usMaxUnavailable])

-- | UpgradeAvailableEvent is a notification sent to customers when a new
-- available version is released.
--
-- /See:/ 'upgradeAvailableEvent' smart constructor.
data UpgradeAvailableEvent =
  UpgradeAvailableEvent'
    { _uaeResourceType :: !(Maybe UpgradeAvailableEventResourceType)
    , _uaeVersion :: !(Maybe Text)
    , _uaeResource :: !(Maybe Text)
    , _uaeReleaseChannel :: !(Maybe ReleaseChannel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpgradeAvailableEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaeResourceType'
--
-- * 'uaeVersion'
--
-- * 'uaeResource'
--
-- * 'uaeReleaseChannel'
upgradeAvailableEvent
    :: UpgradeAvailableEvent
upgradeAvailableEvent =
  UpgradeAvailableEvent'
    { _uaeResourceType = Nothing
    , _uaeVersion = Nothing
    , _uaeResource = Nothing
    , _uaeReleaseChannel = Nothing
    }


-- | The resource type of the release version.
uaeResourceType :: Lens' UpgradeAvailableEvent (Maybe UpgradeAvailableEventResourceType)
uaeResourceType
  = lens _uaeResourceType
      (\ s a -> s{_uaeResourceType = a})

-- | The release version available for upgrade.
uaeVersion :: Lens' UpgradeAvailableEvent (Maybe Text)
uaeVersion
  = lens _uaeVersion (\ s a -> s{_uaeVersion = a})

-- | Optional relative path to the resource. For example, the relative path
-- of the node pool.
uaeResource :: Lens' UpgradeAvailableEvent (Maybe Text)
uaeResource
  = lens _uaeResource (\ s a -> s{_uaeResource = a})

-- | The release channel of the version. If empty, it means a non-channel
-- release.
uaeReleaseChannel :: Lens' UpgradeAvailableEvent (Maybe ReleaseChannel)
uaeReleaseChannel
  = lens _uaeReleaseChannel
      (\ s a -> s{_uaeReleaseChannel = a})

instance FromJSON UpgradeAvailableEvent where
        parseJSON
          = withObject "UpgradeAvailableEvent"
              (\ o ->
                 UpgradeAvailableEvent' <$>
                   (o .:? "resourceType") <*> (o .:? "version") <*>
                     (o .:? "resource")
                     <*> (o .:? "releaseChannel"))

instance ToJSON UpgradeAvailableEvent where
        toJSON UpgradeAvailableEvent'{..}
          = object
              (catMaybes
                 [("resourceType" .=) <$> _uaeResourceType,
                  ("version" .=) <$> _uaeVersion,
                  ("resource" .=) <$> _uaeResource,
                  ("releaseChannel" .=) <$> _uaeReleaseChannel])

-- | Represents an arbitrary window of time that recurs.
--
-- /See:/ 'recurringTimeWindow' smart constructor.
data RecurringTimeWindow =
  RecurringTimeWindow'
    { _rtwWindow :: !(Maybe TimeWindow)
    , _rtwRecurrence :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RecurringTimeWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtwWindow'
--
-- * 'rtwRecurrence'
recurringTimeWindow
    :: RecurringTimeWindow
recurringTimeWindow =
  RecurringTimeWindow' {_rtwWindow = Nothing, _rtwRecurrence = Nothing}


-- | The window of the first recurrence.
rtwWindow :: Lens' RecurringTimeWindow (Maybe TimeWindow)
rtwWindow
  = lens _rtwWindow (\ s a -> s{_rtwWindow = a})

-- | An RRULE (https:\/\/tools.ietf.org\/html\/rfc5545#section-3.8.5.3) for
-- how this window reccurs. They go on for the span of time between the
-- start and end time. For example, to have something repeat every weekday,
-- you\'d use: \`FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR\` To repeat some window
-- daily (equivalent to the DailyMaintenanceWindow): \`FREQ=DAILY\` For the
-- first weekend of every month: \`FREQ=MONTHLY;BYSETPOS=1;BYDAY=SA,SU\`
-- This specifies how frequently the window starts. Eg, if you wanted to
-- have a 9-5 UTC-4 window every weekday, you\'d use something like: \`\`\`
-- start time = 2019-01-01T09:00:00-0400 end time =
-- 2019-01-01T17:00:00-0400 recurrence = FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR
-- \`\`\` Windows can span multiple days. Eg, to make the window encompass
-- every weekend from midnight Saturday till the last minute of Sunday UTC:
-- \`\`\` start time = 2019-01-05T00:00:00Z end time = 2019-01-07T23:59:00Z
-- recurrence = FREQ=WEEKLY;BYDAY=SA \`\`\` Note the start and end time\'s
-- specific dates are largely arbitrary except to specify duration of the
-- window and when it first starts. The FREQ values of HOURLY, MINUTELY,
-- and SECONDLY are not supported.
rtwRecurrence :: Lens' RecurringTimeWindow (Maybe Text)
rtwRecurrence
  = lens _rtwRecurrence
      (\ s a -> s{_rtwRecurrence = a})

instance FromJSON RecurringTimeWindow where
        parseJSON
          = withObject "RecurringTimeWindow"
              (\ o ->
                 RecurringTimeWindow' <$>
                   (o .:? "window") <*> (o .:? "recurrence"))

instance ToJSON RecurringTimeWindow where
        toJSON RecurringTimeWindow'{..}
          = object
              (catMaybes
                 [("window" .=) <$> _rtwWindow,
                  ("recurrence" .=) <$> _rtwRecurrence])

-- | Information about operation (or operation stage) progress.
--
-- /See:/ 'operationProgress' smart constructor.
data OperationProgress =
  OperationProgress'
    { _opStatus :: !(Maybe OperationProgressStatus)
    , _opMetrics :: !(Maybe [Metric])
    , _opName :: !(Maybe Text)
    , _opStages :: !(Maybe [OperationProgress])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opStatus'
--
-- * 'opMetrics'
--
-- * 'opName'
--
-- * 'opStages'
operationProgress
    :: OperationProgress
operationProgress =
  OperationProgress'
    { _opStatus = Nothing
    , _opMetrics = Nothing
    , _opName = Nothing
    , _opStages = Nothing
    }


-- | Status of an operation stage. Unset for single-stage operations.
opStatus :: Lens' OperationProgress (Maybe OperationProgressStatus)
opStatus = lens _opStatus (\ s a -> s{_opStatus = a})

-- | Progress metric bundle, for example: metrics: [{name: \"nodes done\",
-- int_value: 15}, {name: \"nodes total\", int_value: 32}] or metrics:
-- [{name: \"progress\", double_value: 0.56}, {name: \"progress scale\",
-- double_value: 1.0}]
opMetrics :: Lens' OperationProgress [Metric]
opMetrics
  = lens _opMetrics (\ s a -> s{_opMetrics = a}) .
      _Default
      . _Coerce

-- | A non-parameterized string describing an operation stage. Unset for
-- single-stage operations.
opName :: Lens' OperationProgress (Maybe Text)
opName = lens _opName (\ s a -> s{_opName = a})

-- | Substages of an operation or a stage.
opStages :: Lens' OperationProgress [OperationProgress]
opStages
  = lens _opStages (\ s a -> s{_opStages = a}) .
      _Default
      . _Coerce

instance FromJSON OperationProgress where
        parseJSON
          = withObject "OperationProgress"
              (\ o ->
                 OperationProgress' <$>
                   (o .:? "status") <*> (o .:? "metrics" .!= mempty) <*>
                     (o .:? "name")
                     <*> (o .:? "stages" .!= mempty))

instance ToJSON OperationProgress where
        toJSON OperationProgress'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _opStatus,
                  ("metrics" .=) <$> _opMetrics,
                  ("name" .=) <$> _opName,
                  ("stages" .=) <$> _opStages])

-- | ClusterAutoscaling contains global, per-cluster information required by
-- Cluster Autoscaler to automatically adjust the size of the cluster and
-- create\/delete node pools based on the current needs.
--
-- /See:/ 'clusterAutoscaling' smart constructor.
data ClusterAutoscaling =
  ClusterAutoscaling'
    { _caResourceLimits :: !(Maybe [ResourceLimit])
    , _caEnableNodeAutoprovisioning :: !(Maybe Bool)
    , _caAutoprovisioningLocations :: !(Maybe [Text])
    , _caAutoprovisioningNodePoolDefaults :: !(Maybe AutoprovisioningNodePoolDefaults)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterAutoscaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caResourceLimits'
--
-- * 'caEnableNodeAutoprovisioning'
--
-- * 'caAutoprovisioningLocations'
--
-- * 'caAutoprovisioningNodePoolDefaults'
clusterAutoscaling
    :: ClusterAutoscaling
clusterAutoscaling =
  ClusterAutoscaling'
    { _caResourceLimits = Nothing
    , _caEnableNodeAutoprovisioning = Nothing
    , _caAutoprovisioningLocations = Nothing
    , _caAutoprovisioningNodePoolDefaults = Nothing
    }


-- | Contains global constraints regarding minimum and maximum amount of
-- resources in the cluster.
caResourceLimits :: Lens' ClusterAutoscaling [ResourceLimit]
caResourceLimits
  = lens _caResourceLimits
      (\ s a -> s{_caResourceLimits = a})
      . _Default
      . _Coerce

-- | Enables automatic node pool creation and deletion.
caEnableNodeAutoprovisioning :: Lens' ClusterAutoscaling (Maybe Bool)
caEnableNodeAutoprovisioning
  = lens _caEnableNodeAutoprovisioning
      (\ s a -> s{_caEnableNodeAutoprovisioning = a})

-- | The list of Google Compute Engine
-- [zones](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the NodePool\'s nodes can be created by NAP.
caAutoprovisioningLocations :: Lens' ClusterAutoscaling [Text]
caAutoprovisioningLocations
  = lens _caAutoprovisioningLocations
      (\ s a -> s{_caAutoprovisioningLocations = a})
      . _Default
      . _Coerce

-- | AutoprovisioningNodePoolDefaults contains defaults for a node pool
-- created by NAP.
caAutoprovisioningNodePoolDefaults :: Lens' ClusterAutoscaling (Maybe AutoprovisioningNodePoolDefaults)
caAutoprovisioningNodePoolDefaults
  = lens _caAutoprovisioningNodePoolDefaults
      (\ s a -> s{_caAutoprovisioningNodePoolDefaults = a})

instance FromJSON ClusterAutoscaling where
        parseJSON
          = withObject "ClusterAutoscaling"
              (\ o ->
                 ClusterAutoscaling' <$>
                   (o .:? "resourceLimits" .!= mempty) <*>
                     (o .:? "enableNodeAutoprovisioning")
                     <*> (o .:? "autoprovisioningLocations" .!= mempty)
                     <*> (o .:? "autoprovisioningNodePoolDefaults"))

instance ToJSON ClusterAutoscaling where
        toJSON ClusterAutoscaling'{..}
          = object
              (catMaybes
                 [("resourceLimits" .=) <$> _caResourceLimits,
                  ("enableNodeAutoprovisioning" .=) <$>
                    _caEnableNodeAutoprovisioning,
                  ("autoprovisioningLocations" .=) <$>
                    _caAutoprovisioningLocations,
                  ("autoprovisioningNodePoolDefaults" .=) <$>
                    _caAutoprovisioningNodePoolDefaults])

-- | Configuration options for the Config Connector add-on.
--
-- /See:/ 'configConnectorConfig' smart constructor.
newtype ConfigConnectorConfig =
  ConfigConnectorConfig'
    { _cccEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigConnectorConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cccEnabled'
configConnectorConfig
    :: ConfigConnectorConfig
configConnectorConfig = ConfigConnectorConfig' {_cccEnabled = Nothing}


-- | Whether Cloud Connector is enabled for this cluster.
cccEnabled :: Lens' ConfigConnectorConfig (Maybe Bool)
cccEnabled
  = lens _cccEnabled (\ s a -> s{_cccEnabled = a})

instance FromJSON ConfigConnectorConfig where
        parseJSON
          = withObject "ConfigConnectorConfig"
              (\ o -> ConfigConnectorConfig' <$> (o .:? "enabled"))

instance ToJSON ConfigConnectorConfig where
        toJSON ConfigConnectorConfig'{..}
          = object (catMaybes [("enabled" .=) <$> _cccEnabled])

-- | Secondary IP range of a usable subnetwork.
--
-- /See:/ 'usableSubnetworkSecondaryRange' smart constructor.
data UsableSubnetworkSecondaryRange =
  UsableSubnetworkSecondaryRange'
    { _ussrStatus :: !(Maybe UsableSubnetworkSecondaryRangeStatus)
    , _ussrRangeName :: !(Maybe Text)
    , _ussrIPCIdRRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsableSubnetworkSecondaryRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussrStatus'
--
-- * 'ussrRangeName'
--
-- * 'ussrIPCIdRRange'
usableSubnetworkSecondaryRange
    :: UsableSubnetworkSecondaryRange
usableSubnetworkSecondaryRange =
  UsableSubnetworkSecondaryRange'
    { _ussrStatus = Nothing
    , _ussrRangeName = Nothing
    , _ussrIPCIdRRange = Nothing
    }


-- | This field is to determine the status of the secondary range
-- programmably.
ussrStatus :: Lens' UsableSubnetworkSecondaryRange (Maybe UsableSubnetworkSecondaryRangeStatus)
ussrStatus
  = lens _ussrStatus (\ s a -> s{_ussrStatus = a})

-- | The name associated with this subnetwork secondary range, used when
-- adding an alias IP range to a VM instance.
ussrRangeName :: Lens' UsableSubnetworkSecondaryRange (Maybe Text)
ussrRangeName
  = lens _ussrRangeName
      (\ s a -> s{_ussrRangeName = a})

-- | The range of IP addresses belonging to this subnetwork secondary range.
ussrIPCIdRRange :: Lens' UsableSubnetworkSecondaryRange (Maybe Text)
ussrIPCIdRRange
  = lens _ussrIPCIdRRange
      (\ s a -> s{_ussrIPCIdRRange = a})

instance FromJSON UsableSubnetworkSecondaryRange
         where
        parseJSON
          = withObject "UsableSubnetworkSecondaryRange"
              (\ o ->
                 UsableSubnetworkSecondaryRange' <$>
                   (o .:? "status") <*> (o .:? "rangeName") <*>
                     (o .:? "ipCidrRange"))

instance ToJSON UsableSubnetworkSecondaryRange where
        toJSON UsableSubnetworkSecondaryRange'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _ussrStatus,
                  ("rangeName" .=) <$> _ussrRangeName,
                  ("ipCidrRange" .=) <$> _ussrIPCIdRRange])

-- | Exceptions to maintenance window. Non-emergency maintenance should not
-- occur in these windows.
--
-- /See:/ 'maintenanceWindowMaintenanceExclusions' smart constructor.
newtype MaintenanceWindowMaintenanceExclusions =
  MaintenanceWindowMaintenanceExclusions'
    { _mwmeAddtional :: HashMap Text TimeWindow
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenanceWindowMaintenanceExclusions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwmeAddtional'
maintenanceWindowMaintenanceExclusions
    :: HashMap Text TimeWindow -- ^ 'mwmeAddtional'
    -> MaintenanceWindowMaintenanceExclusions
maintenanceWindowMaintenanceExclusions pMwmeAddtional_ =
  MaintenanceWindowMaintenanceExclusions'
    {_mwmeAddtional = _Coerce # pMwmeAddtional_}


mwmeAddtional :: Lens' MaintenanceWindowMaintenanceExclusions (HashMap Text TimeWindow)
mwmeAddtional
  = lens _mwmeAddtional
      (\ s a -> s{_mwmeAddtional = a})
      . _Coerce

instance FromJSON
           MaintenanceWindowMaintenanceExclusions
         where
        parseJSON
          = withObject "MaintenanceWindowMaintenanceExclusions"
              (\ o ->
                 MaintenanceWindowMaintenanceExclusions' <$>
                   (parseJSONObject o))

instance ToJSON
           MaintenanceWindowMaintenanceExclusions
         where
        toJSON = toJSON . _mwmeAddtional

-- | Pub\/Sub specific notification config.
--
-- /See:/ 'pubSub' smart constructor.
data PubSub =
  PubSub'
    { _psEnabled :: !(Maybe Bool)
    , _psTopic :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubSub' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psEnabled'
--
-- * 'psTopic'
pubSub
    :: PubSub
pubSub = PubSub' {_psEnabled = Nothing, _psTopic = Nothing}


-- | Enable notifications for Pub\/Sub.
psEnabled :: Lens' PubSub (Maybe Bool)
psEnabled
  = lens _psEnabled (\ s a -> s{_psEnabled = a})

-- | The desired Pub\/Sub topic to which notifications will be sent by GKE.
-- Format is \`projects\/{project}\/topics\/{topic}\`.
psTopic :: Lens' PubSub (Maybe Text)
psTopic = lens _psTopic (\ s a -> s{_psTopic = a})

instance FromJSON PubSub where
        parseJSON
          = withObject "PubSub"
              (\ o ->
                 PubSub' <$> (o .:? "enabled") <*> (o .:? "topic"))

instance ToJSON PubSub where
        toJSON PubSub'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _psEnabled,
                  ("topic" .=) <$> _psTopic])

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

-- | Configuration for the use of Kubernetes Service Accounts in GCP IAM
-- policies.
--
-- /See:/ 'workLoadIdentityConfig' smart constructor.
newtype WorkLoadIdentityConfig =
  WorkLoadIdentityConfig'
    { _wlicWorkLoadPool :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkLoadIdentityConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlicWorkLoadPool'
workLoadIdentityConfig
    :: WorkLoadIdentityConfig
workLoadIdentityConfig = WorkLoadIdentityConfig' {_wlicWorkLoadPool = Nothing}


-- | The workload pool to attach all Kubernetes service accounts to.
wlicWorkLoadPool :: Lens' WorkLoadIdentityConfig (Maybe Text)
wlicWorkLoadPool
  = lens _wlicWorkLoadPool
      (\ s a -> s{_wlicWorkLoadPool = a})

instance FromJSON WorkLoadIdentityConfig where
        parseJSON
          = withObject "WorkLoadIdentityConfig"
              (\ o ->
                 WorkLoadIdentityConfig' <$> (o .:? "workloadPool"))

instance ToJSON WorkLoadIdentityConfig where
        toJSON WorkLoadIdentityConfig'{..}
          = object
              (catMaybes
                 [("workloadPool" .=) <$> _wlicWorkLoadPool])

-- | NodeManagement defines the set of node management services turned on for
-- the node pool.
--
-- /See:/ 'nodeManagement' smart constructor.
data NodeManagement =
  NodeManagement'
    { _nmAutoUpgrade :: !(Maybe Bool)
    , _nmAutoRepair :: !(Maybe Bool)
    , _nmUpgradeOptions :: !(Maybe AutoUpgradeOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeManagement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nmAutoUpgrade'
--
-- * 'nmAutoRepair'
--
-- * 'nmUpgradeOptions'
nodeManagement
    :: NodeManagement
nodeManagement =
  NodeManagement'
    { _nmAutoUpgrade = Nothing
    , _nmAutoRepair = Nothing
    , _nmUpgradeOptions = Nothing
    }


-- | A flag that specifies whether node auto-upgrade is enabled for the node
-- pool. If enabled, node auto-upgrade helps keep the nodes in your node
-- pool up to date with the latest release version of Kubernetes.
nmAutoUpgrade :: Lens' NodeManagement (Maybe Bool)
nmAutoUpgrade
  = lens _nmAutoUpgrade
      (\ s a -> s{_nmAutoUpgrade = a})

-- | A flag that specifies whether the node auto-repair is enabled for the
-- node pool. If enabled, the nodes in this node pool will be monitored
-- and, if they fail health checks too many times, an automatic repair
-- action will be triggered.
nmAutoRepair :: Lens' NodeManagement (Maybe Bool)
nmAutoRepair
  = lens _nmAutoRepair (\ s a -> s{_nmAutoRepair = a})

-- | Specifies the Auto Upgrade knobs for the node pool.
nmUpgradeOptions :: Lens' NodeManagement (Maybe AutoUpgradeOptions)
nmUpgradeOptions
  = lens _nmUpgradeOptions
      (\ s a -> s{_nmUpgradeOptions = a})

instance FromJSON NodeManagement where
        parseJSON
          = withObject "NodeManagement"
              (\ o ->
                 NodeManagement' <$>
                   (o .:? "autoUpgrade") <*> (o .:? "autoRepair") <*>
                     (o .:? "upgradeOptions"))

instance ToJSON NodeManagement where
        toJSON NodeManagement'{..}
          = object
              (catMaybes
                 [("autoUpgrade" .=) <$> _nmAutoUpgrade,
                  ("autoRepair" .=) <$> _nmAutoRepair,
                  ("upgradeOptions" .=) <$> _nmUpgradeOptions])

-- | Kubernetes taint is comprised of three fields: key, value, and effect.
-- Effect can only be one of three types: NoSchedule, PreferNoSchedule or
-- NoExecute. See
-- [here](https:\/\/kubernetes.io\/docs\/concepts\/configuration\/taint-and-toleration)
-- for more information, including usage and the valid values.
--
-- /See:/ 'nodeTaint' smart constructor.
data NodeTaint =
  NodeTaint'
    { _ntEffect :: !(Maybe NodeTaintEffect)
    , _ntValue :: !(Maybe Text)
    , _ntKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTaint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntEffect'
--
-- * 'ntValue'
--
-- * 'ntKey'
nodeTaint
    :: NodeTaint
nodeTaint =
  NodeTaint' {_ntEffect = Nothing, _ntValue = Nothing, _ntKey = Nothing}


-- | Effect for taint.
ntEffect :: Lens' NodeTaint (Maybe NodeTaintEffect)
ntEffect = lens _ntEffect (\ s a -> s{_ntEffect = a})

-- | Value for taint.
ntValue :: Lens' NodeTaint (Maybe Text)
ntValue = lens _ntValue (\ s a -> s{_ntValue = a})

-- | Key for taint.
ntKey :: Lens' NodeTaint (Maybe Text)
ntKey = lens _ntKey (\ s a -> s{_ntKey = a})

instance FromJSON NodeTaint where
        parseJSON
          = withObject "NodeTaint"
              (\ o ->
                 NodeTaint' <$>
                   (o .:? "effect") <*> (o .:? "value") <*>
                     (o .:? "key"))

instance ToJSON NodeTaint where
        toJSON NodeTaint'{..}
          = object
              (catMaybes
                 [("effect" .=) <$> _ntEffect,
                  ("value" .=) <$> _ntValue, ("key" .=) <$> _ntKey])

-- | NodePoolAutoscaling contains information required by cluster autoscaler
-- to adjust the size of the node pool to the current cluster usage.
--
-- /See:/ 'nodePoolAutoscaling' smart constructor.
data NodePoolAutoscaling =
  NodePoolAutoscaling'
    { _npaMaxNodeCount :: !(Maybe (Textual Int32))
    , _npaEnabled :: !(Maybe Bool)
    , _npaAutoprovisioned :: !(Maybe Bool)
    , _npaMinNodeCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodePoolAutoscaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npaMaxNodeCount'
--
-- * 'npaEnabled'
--
-- * 'npaAutoprovisioned'
--
-- * 'npaMinNodeCount'
nodePoolAutoscaling
    :: NodePoolAutoscaling
nodePoolAutoscaling =
  NodePoolAutoscaling'
    { _npaMaxNodeCount = Nothing
    , _npaEnabled = Nothing
    , _npaAutoprovisioned = Nothing
    , _npaMinNodeCount = Nothing
    }


-- | Maximum number of nodes in the NodePool. Must be >= min_node_count.
-- There has to be enough quota to scale up the cluster.
npaMaxNodeCount :: Lens' NodePoolAutoscaling (Maybe Int32)
npaMaxNodeCount
  = lens _npaMaxNodeCount
      (\ s a -> s{_npaMaxNodeCount = a})
      . mapping _Coerce

-- | Is autoscaling enabled for this node pool.
npaEnabled :: Lens' NodePoolAutoscaling (Maybe Bool)
npaEnabled
  = lens _npaEnabled (\ s a -> s{_npaEnabled = a})

-- | Can this node pool be deleted automatically.
npaAutoprovisioned :: Lens' NodePoolAutoscaling (Maybe Bool)
npaAutoprovisioned
  = lens _npaAutoprovisioned
      (\ s a -> s{_npaAutoprovisioned = a})

-- | Minimum number of nodes in the NodePool. Must be >= 1 and \<=
-- max_node_count.
npaMinNodeCount :: Lens' NodePoolAutoscaling (Maybe Int32)
npaMinNodeCount
  = lens _npaMinNodeCount
      (\ s a -> s{_npaMinNodeCount = a})
      . mapping _Coerce

instance FromJSON NodePoolAutoscaling where
        parseJSON
          = withObject "NodePoolAutoscaling"
              (\ o ->
                 NodePoolAutoscaling' <$>
                   (o .:? "maxNodeCount") <*> (o .:? "enabled") <*>
                     (o .:? "autoprovisioned")
                     <*> (o .:? "minNodeCount"))

instance ToJSON NodePoolAutoscaling where
        toJSON NodePoolAutoscaling'{..}
          = object
              (catMaybes
                 [("maxNodeCount" .=) <$> _npaMaxNodeCount,
                  ("enabled" .=) <$> _npaEnabled,
                  ("autoprovisioned" .=) <$> _npaAutoprovisioned,
                  ("minNodeCount" .=) <$> _npaMinNodeCount])

-- | SetMaintenancePolicyRequest sets the maintenance policy for a cluster.
--
-- /See:/ 'setMaintenancePolicyRequest' smart constructor.
data SetMaintenancePolicyRequest =
  SetMaintenancePolicyRequest'
    { _smprZone :: !(Maybe Text)
    , _smprName :: !(Maybe Text)
    , _smprClusterId :: !(Maybe Text)
    , _smprMaintenancePolicy :: !(Maybe MaintenancePolicy)
    , _smprProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetMaintenancePolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smprZone'
--
-- * 'smprName'
--
-- * 'smprClusterId'
--
-- * 'smprMaintenancePolicy'
--
-- * 'smprProjectId'
setMaintenancePolicyRequest
    :: SetMaintenancePolicyRequest
setMaintenancePolicyRequest =
  SetMaintenancePolicyRequest'
    { _smprZone = Nothing
    , _smprName = Nothing
    , _smprClusterId = Nothing
    , _smprMaintenancePolicy = Nothing
    , _smprProjectId = Nothing
    }


-- | Required. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides.
smprZone :: Lens' SetMaintenancePolicyRequest (Maybe Text)
smprZone = lens _smprZone (\ s a -> s{_smprZone = a})

-- | The name (project, location, cluster id) of the cluster to set
-- maintenance policy. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\`.
smprName :: Lens' SetMaintenancePolicyRequest (Maybe Text)
smprName = lens _smprName (\ s a -> s{_smprName = a})

-- | Required. The name of the cluster to update.
smprClusterId :: Lens' SetMaintenancePolicyRequest (Maybe Text)
smprClusterId
  = lens _smprClusterId
      (\ s a -> s{_smprClusterId = a})

-- | Required. The maintenance policy to be set for the cluster. An empty
-- field clears the existing maintenance policy.
smprMaintenancePolicy :: Lens' SetMaintenancePolicyRequest (Maybe MaintenancePolicy)
smprMaintenancePolicy
  = lens _smprMaintenancePolicy
      (\ s a -> s{_smprMaintenancePolicy = a})

-- | Required. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840).
smprProjectId :: Lens' SetMaintenancePolicyRequest (Maybe Text)
smprProjectId
  = lens _smprProjectId
      (\ s a -> s{_smprProjectId = a})

instance FromJSON SetMaintenancePolicyRequest where
        parseJSON
          = withObject "SetMaintenancePolicyRequest"
              (\ o ->
                 SetMaintenancePolicyRequest' <$>
                   (o .:? "zone") <*> (o .:? "name") <*>
                     (o .:? "clusterId")
                     <*> (o .:? "maintenancePolicy")
                     <*> (o .:? "projectId"))

instance ToJSON SetMaintenancePolicyRequest where
        toJSON SetMaintenancePolicyRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _smprZone,
                  ("name" .=) <$> _smprName,
                  ("clusterId" .=) <$> _smprClusterId,
                  ("maintenancePolicy" .=) <$> _smprMaintenancePolicy,
                  ("projectId" .=) <$> _smprProjectId])

-- | UsableSubnetwork resource returns the subnetwork name, its associated
-- network and the primary CIDR range.
--
-- /See:/ 'usableSubnetwork' smart constructor.
data UsableSubnetwork =
  UsableSubnetwork'
    { _usNetwork :: !(Maybe Text)
    , _usStatusMessage :: !(Maybe Text)
    , _usSecondaryIPRanges :: !(Maybe [UsableSubnetworkSecondaryRange])
    , _usIPCIdRRange :: !(Maybe Text)
    , _usSubnetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsableSubnetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usNetwork'
--
-- * 'usStatusMessage'
--
-- * 'usSecondaryIPRanges'
--
-- * 'usIPCIdRRange'
--
-- * 'usSubnetwork'
usableSubnetwork
    :: UsableSubnetwork
usableSubnetwork =
  UsableSubnetwork'
    { _usNetwork = Nothing
    , _usStatusMessage = Nothing
    , _usSecondaryIPRanges = Nothing
    , _usIPCIdRRange = Nothing
    , _usSubnetwork = Nothing
    }


-- | Network Name. Example:
-- projects\/my-project\/global\/networks\/my-network
usNetwork :: Lens' UsableSubnetwork (Maybe Text)
usNetwork
  = lens _usNetwork (\ s a -> s{_usNetwork = a})

-- | A human readable status message representing the reasons for cases where
-- the caller cannot use the secondary ranges under the subnet. For example
-- if the secondary_ip_ranges is empty due to a permission issue, an
-- insufficient permission message will be given by status_message.
usStatusMessage :: Lens' UsableSubnetwork (Maybe Text)
usStatusMessage
  = lens _usStatusMessage
      (\ s a -> s{_usStatusMessage = a})

-- | Secondary IP ranges.
usSecondaryIPRanges :: Lens' UsableSubnetwork [UsableSubnetworkSecondaryRange]
usSecondaryIPRanges
  = lens _usSecondaryIPRanges
      (\ s a -> s{_usSecondaryIPRanges = a})
      . _Default
      . _Coerce

-- | The range of internal addresses that are owned by this subnetwork.
usIPCIdRRange :: Lens' UsableSubnetwork (Maybe Text)
usIPCIdRRange
  = lens _usIPCIdRRange
      (\ s a -> s{_usIPCIdRRange = a})

-- | Subnetwork Name. Example:
-- projects\/my-project\/regions\/us-central1\/subnetworks\/my-subnet
usSubnetwork :: Lens' UsableSubnetwork (Maybe Text)
usSubnetwork
  = lens _usSubnetwork (\ s a -> s{_usSubnetwork = a})

instance FromJSON UsableSubnetwork where
        parseJSON
          = withObject "UsableSubnetwork"
              (\ o ->
                 UsableSubnetwork' <$>
                   (o .:? "network") <*> (o .:? "statusMessage") <*>
                     (o .:? "secondaryIpRanges" .!= mempty)
                     <*> (o .:? "ipCidrRange")
                     <*> (o .:? "subnetwork"))

instance ToJSON UsableSubnetwork where
        toJSON UsableSubnetwork'{..}
          = object
              (catMaybes
                 [("network" .=) <$> _usNetwork,
                  ("statusMessage" .=) <$> _usStatusMessage,
                  ("secondaryIpRanges" .=) <$> _usSecondaryIPRanges,
                  ("ipCidrRange" .=) <$> _usIPCIdRRange,
                  ("subnetwork" .=) <$> _usSubnetwork])

-- | Configuration for the Kubernetes Dashboard.
--
-- /See:/ 'kubernetesDashboard' smart constructor.
newtype KubernetesDashboard =
  KubernetesDashboard'
    { _kdDisabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KubernetesDashboard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kdDisabled'
kubernetesDashboard
    :: KubernetesDashboard
kubernetesDashboard = KubernetesDashboard' {_kdDisabled = Nothing}


-- | Whether the Kubernetes Dashboard is enabled for this cluster.
kdDisabled :: Lens' KubernetesDashboard (Maybe Bool)
kdDisabled
  = lens _kdDisabled (\ s a -> s{_kdDisabled = a})

instance FromJSON KubernetesDashboard where
        parseJSON
          = withObject "KubernetesDashboard"
              (\ o -> KubernetesDashboard' <$> (o .:? "disabled"))

instance ToJSON KubernetesDashboard where
        toJSON KubernetesDashboard'{..}
          = object
              (catMaybes [("disabled" .=) <$> _kdDisabled])

-- | Configuration for client certificates on the cluster.
--
-- /See:/ 'clientCertificateConfig' smart constructor.
newtype ClientCertificateConfig =
  ClientCertificateConfig'
    { _cccIssueClientCertificate :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClientCertificateConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cccIssueClientCertificate'
clientCertificateConfig
    :: ClientCertificateConfig
clientCertificateConfig =
  ClientCertificateConfig' {_cccIssueClientCertificate = Nothing}


-- | Issue a client certificate.
cccIssueClientCertificate :: Lens' ClientCertificateConfig (Maybe Bool)
cccIssueClientCertificate
  = lens _cccIssueClientCertificate
      (\ s a -> s{_cccIssueClientCertificate = a})

instance FromJSON ClientCertificateConfig where
        parseJSON
          = withObject "ClientCertificateConfig"
              (\ o ->
                 ClientCertificateConfig' <$>
                   (o .:? "issueClientCertificate"))

instance ToJSON ClientCertificateConfig where
        toJSON ClientCertificateConfig'{..}
          = object
              (catMaybes
                 [("issueClientCertificate" .=) <$>
                    _cccIssueClientCertificate])

-- | SetLabelsRequest sets the Google Cloud Platform labels on a Google
-- Container Engine cluster, which will in turn set them for Google Compute
-- Engine resources used by that cluster
--
-- /See:/ 'setLabelsRequest' smart constructor.
data SetLabelsRequest =
  SetLabelsRequest'
    { _slrResourceLabels :: !(Maybe SetLabelsRequestResourceLabels)
    , _slrZone :: !(Maybe Text)
    , _slrName :: !(Maybe Text)
    , _slrClusterId :: !(Maybe Text)
    , _slrProjectId :: !(Maybe Text)
    , _slrLabelFingerprint :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetLabelsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrResourceLabels'
--
-- * 'slrZone'
--
-- * 'slrName'
--
-- * 'slrClusterId'
--
-- * 'slrProjectId'
--
-- * 'slrLabelFingerprint'
setLabelsRequest
    :: SetLabelsRequest
setLabelsRequest =
  SetLabelsRequest'
    { _slrResourceLabels = Nothing
    , _slrZone = Nothing
    , _slrName = Nothing
    , _slrClusterId = Nothing
    , _slrProjectId = Nothing
    , _slrLabelFingerprint = Nothing
    }


-- | Required. The labels to set for that cluster.
slrResourceLabels :: Lens' SetLabelsRequest (Maybe SetLabelsRequestResourceLabels)
slrResourceLabels
  = lens _slrResourceLabels
      (\ s a -> s{_slrResourceLabels = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
slrZone :: Lens' SetLabelsRequest (Maybe Text)
slrZone = lens _slrZone (\ s a -> s{_slrZone = a})

-- | The name (project, location, cluster id) of the cluster to set labels.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
slrName :: Lens' SetLabelsRequest (Maybe Text)
slrName = lens _slrName (\ s a -> s{_slrName = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the name field.
slrClusterId :: Lens' SetLabelsRequest (Maybe Text)
slrClusterId
  = lens _slrClusterId (\ s a -> s{_slrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the name field.
slrProjectId :: Lens' SetLabelsRequest (Maybe Text)
slrProjectId
  = lens _slrProjectId (\ s a -> s{_slrProjectId = a})

-- | Required. The fingerprint of the previous set of labels for this
-- resource, used to detect conflicts. The fingerprint is initially
-- generated by Kubernetes Engine and changes after every request to modify
-- or update labels. You must always provide an up-to-date fingerprint hash
-- when updating or changing labels. Make a \`get()\` request to the
-- resource to get the latest fingerprint.
slrLabelFingerprint :: Lens' SetLabelsRequest (Maybe Text)
slrLabelFingerprint
  = lens _slrLabelFingerprint
      (\ s a -> s{_slrLabelFingerprint = a})

instance FromJSON SetLabelsRequest where
        parseJSON
          = withObject "SetLabelsRequest"
              (\ o ->
                 SetLabelsRequest' <$>
                   (o .:? "resourceLabels") <*> (o .:? "zone") <*>
                     (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId")
                     <*> (o .:? "labelFingerprint"))

instance ToJSON SetLabelsRequest where
        toJSON SetLabelsRequest'{..}
          = object
              (catMaybes
                 [("resourceLabels" .=) <$> _slrResourceLabels,
                  ("zone" .=) <$> _slrZone, ("name" .=) <$> _slrName,
                  ("clusterId" .=) <$> _slrClusterId,
                  ("projectId" .=) <$> _slrProjectId,
                  ("labelFingerprint" .=) <$> _slrLabelFingerprint])

-- | GetOpenIDConfigResponse is an OIDC discovery document for the cluster.
-- See the OpenID Connect Discovery 1.0 specification for details.
--
-- /See:/ 'getOpenIdConfigResponse' smart constructor.
data GetOpenIdConfigResponse =
  GetOpenIdConfigResponse'
    { _goicrCacheHeader :: !(Maybe HTTPCacheControlResponseHeader)
    , _goicrIdTokenSigningAlgValuesSupported :: !(Maybe [Text])
    , _goicrResponseTypesSupported :: !(Maybe [Text])
    , _goicrJWKsURI :: !(Maybe Text)
    , _goicrGrantTypes :: !(Maybe [Text])
    , _goicrClaimsSupported :: !(Maybe [Text])
    , _goicrIssuer :: !(Maybe Text)
    , _goicrSubjectTypesSupported :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetOpenIdConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goicrCacheHeader'
--
-- * 'goicrIdTokenSigningAlgValuesSupported'
--
-- * 'goicrResponseTypesSupported'
--
-- * 'goicrJWKsURI'
--
-- * 'goicrGrantTypes'
--
-- * 'goicrClaimsSupported'
--
-- * 'goicrIssuer'
--
-- * 'goicrSubjectTypesSupported'
getOpenIdConfigResponse
    :: GetOpenIdConfigResponse
getOpenIdConfigResponse =
  GetOpenIdConfigResponse'
    { _goicrCacheHeader = Nothing
    , _goicrIdTokenSigningAlgValuesSupported = Nothing
    , _goicrResponseTypesSupported = Nothing
    , _goicrJWKsURI = Nothing
    , _goicrGrantTypes = Nothing
    , _goicrClaimsSupported = Nothing
    , _goicrIssuer = Nothing
    , _goicrSubjectTypesSupported = Nothing
    }


-- | OnePlatform automatically extracts this field and uses it to set the
-- HTTP Cache-Control header.
goicrCacheHeader :: Lens' GetOpenIdConfigResponse (Maybe HTTPCacheControlResponseHeader)
goicrCacheHeader
  = lens _goicrCacheHeader
      (\ s a -> s{_goicrCacheHeader = a})

-- | supported ID Token signing Algorithms.
goicrIdTokenSigningAlgValuesSupported :: Lens' GetOpenIdConfigResponse [Text]
goicrIdTokenSigningAlgValuesSupported
  = lens _goicrIdTokenSigningAlgValuesSupported
      (\ s a ->
         s{_goicrIdTokenSigningAlgValuesSupported = a})
      . _Default
      . _Coerce

-- | Supported response types.
goicrResponseTypesSupported :: Lens' GetOpenIdConfigResponse [Text]
goicrResponseTypesSupported
  = lens _goicrResponseTypesSupported
      (\ s a -> s{_goicrResponseTypesSupported = a})
      . _Default
      . _Coerce

-- | JSON Web Key uri.
goicrJWKsURI :: Lens' GetOpenIdConfigResponse (Maybe Text)
goicrJWKsURI
  = lens _goicrJWKsURI (\ s a -> s{_goicrJWKsURI = a})

-- | Supported grant types.
goicrGrantTypes :: Lens' GetOpenIdConfigResponse [Text]
goicrGrantTypes
  = lens _goicrGrantTypes
      (\ s a -> s{_goicrGrantTypes = a})
      . _Default
      . _Coerce

-- | Supported claims.
goicrClaimsSupported :: Lens' GetOpenIdConfigResponse [Text]
goicrClaimsSupported
  = lens _goicrClaimsSupported
      (\ s a -> s{_goicrClaimsSupported = a})
      . _Default
      . _Coerce

-- | OIDC Issuer.
goicrIssuer :: Lens' GetOpenIdConfigResponse (Maybe Text)
goicrIssuer
  = lens _goicrIssuer (\ s a -> s{_goicrIssuer = a})

-- | Supported subject types.
goicrSubjectTypesSupported :: Lens' GetOpenIdConfigResponse [Text]
goicrSubjectTypesSupported
  = lens _goicrSubjectTypesSupported
      (\ s a -> s{_goicrSubjectTypesSupported = a})
      . _Default
      . _Coerce

instance FromJSON GetOpenIdConfigResponse where
        parseJSON
          = withObject "GetOpenIdConfigResponse"
              (\ o ->
                 GetOpenIdConfigResponse' <$>
                   (o .:? "cacheHeader") <*>
                     (o .:? "id_token_signing_alg_values_supported" .!=
                        mempty)
                     <*> (o .:? "response_types_supported" .!= mempty)
                     <*> (o .:? "jwks_uri")
                     <*> (o .:? "grant_types" .!= mempty)
                     <*> (o .:? "claims_supported" .!= mempty)
                     <*> (o .:? "issuer")
                     <*> (o .:? "subject_types_supported" .!= mempty))

instance ToJSON GetOpenIdConfigResponse where
        toJSON GetOpenIdConfigResponse'{..}
          = object
              (catMaybes
                 [("cacheHeader" .=) <$> _goicrCacheHeader,
                  ("id_token_signing_alg_values_supported" .=) <$>
                    _goicrIdTokenSigningAlgValuesSupported,
                  ("response_types_supported" .=) <$>
                    _goicrResponseTypesSupported,
                  ("jwks_uri" .=) <$> _goicrJWKsURI,
                  ("grant_types" .=) <$> _goicrGrantTypes,
                  ("claims_supported" .=) <$> _goicrClaimsSupported,
                  ("issuer" .=) <$> _goicrIssuer,
                  ("subject_types_supported" .=) <$>
                    _goicrSubjectTypesSupported])

-- | Configuration for controlling master global access settings.
--
-- /See:/ 'privateClusterMasterGlobalAccessConfig' smart constructor.
newtype PrivateClusterMasterGlobalAccessConfig =
  PrivateClusterMasterGlobalAccessConfig'
    { _pcmgacEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrivateClusterMasterGlobalAccessConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcmgacEnabled'
privateClusterMasterGlobalAccessConfig
    :: PrivateClusterMasterGlobalAccessConfig
privateClusterMasterGlobalAccessConfig =
  PrivateClusterMasterGlobalAccessConfig' {_pcmgacEnabled = Nothing}


-- | Whenever master is accessible globally or not.
pcmgacEnabled :: Lens' PrivateClusterMasterGlobalAccessConfig (Maybe Bool)
pcmgacEnabled
  = lens _pcmgacEnabled
      (\ s a -> s{_pcmgacEnabled = a})

instance FromJSON
           PrivateClusterMasterGlobalAccessConfig
         where
        parseJSON
          = withObject "PrivateClusterMasterGlobalAccessConfig"
              (\ o ->
                 PrivateClusterMasterGlobalAccessConfig' <$>
                   (o .:? "enabled"))

instance ToJSON
           PrivateClusterMasterGlobalAccessConfig
         where
        toJSON PrivateClusterMasterGlobalAccessConfig'{..}
          = object
              (catMaybes [("enabled" .=) <$> _pcmgacEnabled])

-- | Jwk is a JSON Web Key as specified in RFC 7517
--
-- /See:/ 'jwk' smart constructor.
data JWK =
  JWK'
    { _jCrv :: !(Maybe Text)
    , _jAlg :: !(Maybe Text)
    , _jUse :: !(Maybe Text)
    , _jKid :: !(Maybe Text)
    , _jN :: !(Maybe Text)
    , _jE :: !(Maybe Text)
    , _jX :: !(Maybe Text)
    , _jKty :: !(Maybe Text)
    , _jY :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JWK' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jCrv'
--
-- * 'jAlg'
--
-- * 'jUse'
--
-- * 'jKid'
--
-- * 'jN'
--
-- * 'jE'
--
-- * 'jX'
--
-- * 'jKty'
--
-- * 'jY'
jwk
    :: JWK
jwk =
  JWK'
    { _jCrv = Nothing
    , _jAlg = Nothing
    , _jUse = Nothing
    , _jKid = Nothing
    , _jN = Nothing
    , _jE = Nothing
    , _jX = Nothing
    , _jKty = Nothing
    , _jY = Nothing
    }


-- | Used for ECDSA keys.
jCrv :: Lens' JWK (Maybe Text)
jCrv = lens _jCrv (\ s a -> s{_jCrv = a})

-- | Algorithm.
jAlg :: Lens' JWK (Maybe Text)
jAlg = lens _jAlg (\ s a -> s{_jAlg = a})

-- | Permitted uses for the public keys.
jUse :: Lens' JWK (Maybe Text)
jUse = lens _jUse (\ s a -> s{_jUse = a})

-- | Key ID.
jKid :: Lens' JWK (Maybe Text)
jKid = lens _jKid (\ s a -> s{_jKid = a})

-- | Used for RSA keys.
jN :: Lens' JWK (Maybe Text)
jN = lens _jN (\ s a -> s{_jN = a})

-- | Used for RSA keys.
jE :: Lens' JWK (Maybe Text)
jE = lens _jE (\ s a -> s{_jE = a})

-- | Used for ECDSA keys.
jX :: Lens' JWK (Maybe Text)
jX = lens _jX (\ s a -> s{_jX = a})

-- | Key Type.
jKty :: Lens' JWK (Maybe Text)
jKty = lens _jKty (\ s a -> s{_jKty = a})

-- | Used for ECDSA keys.
jY :: Lens' JWK (Maybe Text)
jY = lens _jY (\ s a -> s{_jY = a})

instance FromJSON JWK where
        parseJSON
          = withObject "JWK"
              (\ o ->
                 JWK' <$>
                   (o .:? "crv") <*> (o .:? "alg") <*> (o .:? "use") <*>
                     (o .:? "kid")
                     <*> (o .:? "n")
                     <*> (o .:? "e")
                     <*> (o .:? "x")
                     <*> (o .:? "kty")
                     <*> (o .:? "y"))

instance ToJSON JWK where
        toJSON JWK'{..}
          = object
              (catMaybes
                 [("crv" .=) <$> _jCrv, ("alg" .=) <$> _jAlg,
                  ("use" .=) <$> _jUse, ("kid" .=) <$> _jKid,
                  ("n" .=) <$> _jN, ("e" .=) <$> _jE, ("x" .=) <$> _jX,
                  ("kty" .=) <$> _jKty, ("y" .=) <$> _jY])

-- | ConfidentialNodes is configuration for the confidential nodes feature,
-- which makes nodes run on confidential VMs.
--
-- /See:/ 'confidentialNodes' smart constructor.
newtype ConfidentialNodes =
  ConfidentialNodes'
    { _cnEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfidentialNodes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnEnabled'
confidentialNodes
    :: ConfidentialNodes
confidentialNodes = ConfidentialNodes' {_cnEnabled = Nothing}


-- | Whether Confidential Nodes feature is enabled for all nodes in this
-- cluster.
cnEnabled :: Lens' ConfidentialNodes (Maybe Bool)
cnEnabled
  = lens _cnEnabled (\ s a -> s{_cnEnabled = a})

instance FromJSON ConfidentialNodes where
        parseJSON
          = withObject "ConfidentialNodes"
              (\ o -> ConfidentialNodes' <$> (o .:? "enabled"))

instance ToJSON ConfidentialNodes where
        toJSON ConfidentialNodes'{..}
          = object (catMaybes [("enabled" .=) <$> _cnEnabled])

-- | Configuration for exporting cluster resource usages.
--
-- /See:/ 'resourceUsageExportConfig' smart constructor.
data ResourceUsageExportConfig =
  ResourceUsageExportConfig'
    { _ruecConsumptionMeteringConfig :: !(Maybe ConsumptionMeteringConfig)
    , _ruecBigQueryDestination :: !(Maybe BigQueryDestination)
    , _ruecEnableNetworkEgressMetering :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceUsageExportConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruecConsumptionMeteringConfig'
--
-- * 'ruecBigQueryDestination'
--
-- * 'ruecEnableNetworkEgressMetering'
resourceUsageExportConfig
    :: ResourceUsageExportConfig
resourceUsageExportConfig =
  ResourceUsageExportConfig'
    { _ruecConsumptionMeteringConfig = Nothing
    , _ruecBigQueryDestination = Nothing
    , _ruecEnableNetworkEgressMetering = Nothing
    }


-- | Configuration to enable resource consumption metering.
ruecConsumptionMeteringConfig :: Lens' ResourceUsageExportConfig (Maybe ConsumptionMeteringConfig)
ruecConsumptionMeteringConfig
  = lens _ruecConsumptionMeteringConfig
      (\ s a -> s{_ruecConsumptionMeteringConfig = a})

-- | Configuration to use BigQuery as usage export destination.
ruecBigQueryDestination :: Lens' ResourceUsageExportConfig (Maybe BigQueryDestination)
ruecBigQueryDestination
  = lens _ruecBigQueryDestination
      (\ s a -> s{_ruecBigQueryDestination = a})

-- | Whether to enable network egress metering for this cluster. If enabled,
-- a daemonset will be created in the cluster to meter network egress
-- traffic.
ruecEnableNetworkEgressMetering :: Lens' ResourceUsageExportConfig (Maybe Bool)
ruecEnableNetworkEgressMetering
  = lens _ruecEnableNetworkEgressMetering
      (\ s a -> s{_ruecEnableNetworkEgressMetering = a})

instance FromJSON ResourceUsageExportConfig where
        parseJSON
          = withObject "ResourceUsageExportConfig"
              (\ o ->
                 ResourceUsageExportConfig' <$>
                   (o .:? "consumptionMeteringConfig") <*>
                     (o .:? "bigqueryDestination")
                     <*> (o .:? "enableNetworkEgressMetering"))

instance ToJSON ResourceUsageExportConfig where
        toJSON ResourceUsageExportConfig'{..}
          = object
              (catMaybes
                 [("consumptionMeteringConfig" .=) <$>
                    _ruecConsumptionMeteringConfig,
                  ("bigqueryDestination" .=) <$>
                    _ruecBigQueryDestination,
                  ("enableNetworkEgressMetering" .=) <$>
                    _ruecEnableNetworkEgressMetering])

-- | MaintenanceWindow defines the maintenance window to be used for the
-- cluster.
--
-- /See:/ 'maintenanceWindow' smart constructor.
data MaintenanceWindow =
  MaintenanceWindow'
    { _mwRecurringWindow :: !(Maybe RecurringTimeWindow)
    , _mwMaintenanceExclusions :: !(Maybe MaintenanceWindowMaintenanceExclusions)
    , _mwDailyMaintenanceWindow :: !(Maybe DailyMaintenanceWindow)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwRecurringWindow'
--
-- * 'mwMaintenanceExclusions'
--
-- * 'mwDailyMaintenanceWindow'
maintenanceWindow
    :: MaintenanceWindow
maintenanceWindow =
  MaintenanceWindow'
    { _mwRecurringWindow = Nothing
    , _mwMaintenanceExclusions = Nothing
    , _mwDailyMaintenanceWindow = Nothing
    }


-- | RecurringWindow specifies some number of recurring time periods for
-- maintenance to occur. The time windows may be overlapping. If no
-- maintenance windows are set, maintenance can occur at any time.
mwRecurringWindow :: Lens' MaintenanceWindow (Maybe RecurringTimeWindow)
mwRecurringWindow
  = lens _mwRecurringWindow
      (\ s a -> s{_mwRecurringWindow = a})

-- | Exceptions to maintenance window. Non-emergency maintenance should not
-- occur in these windows.
mwMaintenanceExclusions :: Lens' MaintenanceWindow (Maybe MaintenanceWindowMaintenanceExclusions)
mwMaintenanceExclusions
  = lens _mwMaintenanceExclusions
      (\ s a -> s{_mwMaintenanceExclusions = a})

-- | DailyMaintenanceWindow specifies a daily maintenance operation window.
mwDailyMaintenanceWindow :: Lens' MaintenanceWindow (Maybe DailyMaintenanceWindow)
mwDailyMaintenanceWindow
  = lens _mwDailyMaintenanceWindow
      (\ s a -> s{_mwDailyMaintenanceWindow = a})

instance FromJSON MaintenanceWindow where
        parseJSON
          = withObject "MaintenanceWindow"
              (\ o ->
                 MaintenanceWindow' <$>
                   (o .:? "recurringWindow") <*>
                     (o .:? "maintenanceExclusions")
                     <*> (o .:? "dailyMaintenanceWindow"))

instance ToJSON MaintenanceWindow where
        toJSON MaintenanceWindow'{..}
          = object
              (catMaybes
                 [("recurringWindow" .=) <$> _mwRecurringWindow,
                  ("maintenanceExclusions" .=) <$>
                    _mwMaintenanceExclusions,
                  ("dailyMaintenanceWindow" .=) <$>
                    _mwDailyMaintenanceWindow])

-- | Represents an arbitrary window of time.
--
-- /See:/ 'timeWindow' smart constructor.
data TimeWindow =
  TimeWindow'
    { _twStartTime :: !(Maybe DateTime')
    , _twEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'twStartTime'
--
-- * 'twEndTime'
timeWindow
    :: TimeWindow
timeWindow = TimeWindow' {_twStartTime = Nothing, _twEndTime = Nothing}


-- | The time that the window first starts.
twStartTime :: Lens' TimeWindow (Maybe UTCTime)
twStartTime
  = lens _twStartTime (\ s a -> s{_twStartTime = a}) .
      mapping _DateTime

-- | The time that the window ends. The end time should take place after the
-- start time.
twEndTime :: Lens' TimeWindow (Maybe UTCTime)
twEndTime
  = lens _twEndTime (\ s a -> s{_twEndTime = a}) .
      mapping _DateTime

instance FromJSON TimeWindow where
        parseJSON
          = withObject "TimeWindow"
              (\ o ->
                 TimeWindow' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON TimeWindow where
        toJSON TimeWindow'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _twStartTime,
                  ("endTime" .=) <$> _twEndTime])

-- | Constraints applied to pods.
--
-- /See:/ 'maxPodsConstraint' smart constructor.
newtype MaxPodsConstraint =
  MaxPodsConstraint'
    { _mpcMaxPodsPerNode :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaxPodsConstraint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpcMaxPodsPerNode'
maxPodsConstraint
    :: MaxPodsConstraint
maxPodsConstraint = MaxPodsConstraint' {_mpcMaxPodsPerNode = Nothing}


-- | Constraint enforced on the max num of pods per node.
mpcMaxPodsPerNode :: Lens' MaxPodsConstraint (Maybe Int64)
mpcMaxPodsPerNode
  = lens _mpcMaxPodsPerNode
      (\ s a -> s{_mpcMaxPodsPerNode = a})
      . mapping _Coerce

instance FromJSON MaxPodsConstraint where
        parseJSON
          = withObject "MaxPodsConstraint"
              (\ o ->
                 MaxPodsConstraint' <$> (o .:? "maxPodsPerNode"))

instance ToJSON MaxPodsConstraint where
        toJSON MaxPodsConstraint'{..}
          = object
              (catMaybes
                 [("maxPodsPerNode" .=) <$> _mpcMaxPodsPerNode])

-- | Configuration for controlling how IPs are allocated in the cluster.
--
-- /See:/ 'ipAllocationPolicy' smart constructor.
data IPAllocationPolicy =
  IPAllocationPolicy'
    { _iapServicesSecondaryRangeName :: !(Maybe Text)
    , _iapTpuIPv4CIdRBlock :: !(Maybe Text)
    , _iapNodeIPv4CIdR :: !(Maybe Text)
    , _iapUseIPAliases :: !(Maybe Bool)
    , _iapClusterIPv4CIdR :: !(Maybe Text)
    , _iapSubnetworkName :: !(Maybe Text)
    , _iapClusterSecondaryRangeName :: !(Maybe Text)
    , _iapNodeIPv4CIdRBlock :: !(Maybe Text)
    , _iapServicesIPv4CIdR :: !(Maybe Text)
    , _iapUseRoutes :: !(Maybe Bool)
    , _iapClusterIPv4CIdRBlock :: !(Maybe Text)
    , _iapServicesIPv4CIdRBlock :: !(Maybe Text)
    , _iapCreateSubnetwork :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IPAllocationPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapServicesSecondaryRangeName'
--
-- * 'iapTpuIPv4CIdRBlock'
--
-- * 'iapNodeIPv4CIdR'
--
-- * 'iapUseIPAliases'
--
-- * 'iapClusterIPv4CIdR'
--
-- * 'iapSubnetworkName'
--
-- * 'iapClusterSecondaryRangeName'
--
-- * 'iapNodeIPv4CIdRBlock'
--
-- * 'iapServicesIPv4CIdR'
--
-- * 'iapUseRoutes'
--
-- * 'iapClusterIPv4CIdRBlock'
--
-- * 'iapServicesIPv4CIdRBlock'
--
-- * 'iapCreateSubnetwork'
ipAllocationPolicy
    :: IPAllocationPolicy
ipAllocationPolicy =
  IPAllocationPolicy'
    { _iapServicesSecondaryRangeName = Nothing
    , _iapTpuIPv4CIdRBlock = Nothing
    , _iapNodeIPv4CIdR = Nothing
    , _iapUseIPAliases = Nothing
    , _iapClusterIPv4CIdR = Nothing
    , _iapSubnetworkName = Nothing
    , _iapClusterSecondaryRangeName = Nothing
    , _iapNodeIPv4CIdRBlock = Nothing
    , _iapServicesIPv4CIdR = Nothing
    , _iapUseRoutes = Nothing
    , _iapClusterIPv4CIdRBlock = Nothing
    , _iapServicesIPv4CIdRBlock = Nothing
    , _iapCreateSubnetwork = Nothing
    }


-- | The name of the secondary range to be used as for the services CIDR
-- block. The secondary range will be used for service ClusterIPs. This
-- must be an existing secondary range associated with the cluster
-- subnetwork. This field is only applicable with use_ip_aliases is true
-- and create_subnetwork is false.
iapServicesSecondaryRangeName :: Lens' IPAllocationPolicy (Maybe Text)
iapServicesSecondaryRangeName
  = lens _iapServicesSecondaryRangeName
      (\ s a -> s{_iapServicesSecondaryRangeName = a})

-- | The IP address range of the Cloud TPUs in this cluster. If unspecified,
-- a range will be automatically chosen with the default size. This field
-- is only applicable when \`use_ip_aliases\` is true. If unspecified, the
-- range will use the default size. Set to \/netmask (e.g. \`\/14\`) to
-- have a range chosen with a specific netmask. Set to a
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`10.96.0.0\/14\`) from the RFC-1918 private networks
-- (e.g. \`10.0.0.0\/8\`, \`172.16.0.0\/12\`, \`192.168.0.0\/16\`) to pick
-- a specific range to use.
iapTpuIPv4CIdRBlock :: Lens' IPAllocationPolicy (Maybe Text)
iapTpuIPv4CIdRBlock
  = lens _iapTpuIPv4CIdRBlock
      (\ s a -> s{_iapTpuIPv4CIdRBlock = a})

-- | This field is deprecated, use node_ipv4_cidr_block.
iapNodeIPv4CIdR :: Lens' IPAllocationPolicy (Maybe Text)
iapNodeIPv4CIdR
  = lens _iapNodeIPv4CIdR
      (\ s a -> s{_iapNodeIPv4CIdR = a})

-- | Whether alias IPs will be used for pod IPs in the cluster. This is used
-- in conjunction with use_routes. It cannot be true if use_routes is true.
-- If both use_ip_aliases and use_routes are false, then the server picks
-- the default IP allocation mode
iapUseIPAliases :: Lens' IPAllocationPolicy (Maybe Bool)
iapUseIPAliases
  = lens _iapUseIPAliases
      (\ s a -> s{_iapUseIPAliases = a})

-- | This field is deprecated, use cluster_ipv4_cidr_block.
iapClusterIPv4CIdR :: Lens' IPAllocationPolicy (Maybe Text)
iapClusterIPv4CIdR
  = lens _iapClusterIPv4CIdR
      (\ s a -> s{_iapClusterIPv4CIdR = a})

-- | A custom subnetwork name to be used if \`create_subnetwork\` is true. If
-- this field is empty, then an automatic name will be chosen for the new
-- subnetwork.
iapSubnetworkName :: Lens' IPAllocationPolicy (Maybe Text)
iapSubnetworkName
  = lens _iapSubnetworkName
      (\ s a -> s{_iapSubnetworkName = a})

-- | The name of the secondary range to be used for the cluster CIDR block.
-- The secondary range will be used for pod IP addresses. This must be an
-- existing secondary range associated with the cluster subnetwork. This
-- field is only applicable with use_ip_aliases is true and
-- create_subnetwork is false.
iapClusterSecondaryRangeName :: Lens' IPAllocationPolicy (Maybe Text)
iapClusterSecondaryRangeName
  = lens _iapClusterSecondaryRangeName
      (\ s a -> s{_iapClusterSecondaryRangeName = a})

-- | The IP address range of the instance IPs in this cluster. This is
-- applicable only if \`create_subnetwork\` is true. Set to blank to have a
-- range chosen with the default size. Set to \/netmask (e.g. \`\/14\`) to
-- have a range chosen with a specific netmask. Set to a
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`10.96.0.0\/14\`) from the RFC-1918 private networks
-- (e.g. \`10.0.0.0\/8\`, \`172.16.0.0\/12\`, \`192.168.0.0\/16\`) to pick
-- a specific range to use.
iapNodeIPv4CIdRBlock :: Lens' IPAllocationPolicy (Maybe Text)
iapNodeIPv4CIdRBlock
  = lens _iapNodeIPv4CIdRBlock
      (\ s a -> s{_iapNodeIPv4CIdRBlock = a})

-- | This field is deprecated, use services_ipv4_cidr_block.
iapServicesIPv4CIdR :: Lens' IPAllocationPolicy (Maybe Text)
iapServicesIPv4CIdR
  = lens _iapServicesIPv4CIdR
      (\ s a -> s{_iapServicesIPv4CIdR = a})

-- | Whether routes will be used for pod IPs in the cluster. This is used in
-- conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is
-- true. If both use_ip_aliases and use_routes are false, then the server
-- picks the default IP allocation mode
iapUseRoutes :: Lens' IPAllocationPolicy (Maybe Bool)
iapUseRoutes
  = lens _iapUseRoutes (\ s a -> s{_iapUseRoutes = a})

-- | The IP address range for the cluster pod IPs. If this field is set, then
-- \`cluster.cluster_ipv4_cidr\` must be left blank. This field is only
-- applicable when \`use_ip_aliases\` is true. Set to blank to have a range
-- chosen with the default size. Set to \/netmask (e.g. \`\/14\`) to have a
-- range chosen with a specific netmask. Set to a
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`10.96.0.0\/14\`) from the RFC-1918 private networks
-- (e.g. \`10.0.0.0\/8\`, \`172.16.0.0\/12\`, \`192.168.0.0\/16\`) to pick
-- a specific range to use.
iapClusterIPv4CIdRBlock :: Lens' IPAllocationPolicy (Maybe Text)
iapClusterIPv4CIdRBlock
  = lens _iapClusterIPv4CIdRBlock
      (\ s a -> s{_iapClusterIPv4CIdRBlock = a})

-- | The IP address range of the services IPs in this cluster. If blank, a
-- range will be automatically chosen with the default size. This field is
-- only applicable when \`use_ip_aliases\` is true. Set to blank to have a
-- range chosen with the default size. Set to \/netmask (e.g. \`\/14\`) to
-- have a range chosen with a specific netmask. Set to a
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`10.96.0.0\/14\`) from the RFC-1918 private networks
-- (e.g. \`10.0.0.0\/8\`, \`172.16.0.0\/12\`, \`192.168.0.0\/16\`) to pick
-- a specific range to use.
iapServicesIPv4CIdRBlock :: Lens' IPAllocationPolicy (Maybe Text)
iapServicesIPv4CIdRBlock
  = lens _iapServicesIPv4CIdRBlock
      (\ s a -> s{_iapServicesIPv4CIdRBlock = a})

-- | Whether a new subnetwork will be created automatically for the cluster.
-- This field is only applicable when \`use_ip_aliases\` is true.
iapCreateSubnetwork :: Lens' IPAllocationPolicy (Maybe Bool)
iapCreateSubnetwork
  = lens _iapCreateSubnetwork
      (\ s a -> s{_iapCreateSubnetwork = a})

instance FromJSON IPAllocationPolicy where
        parseJSON
          = withObject "IPAllocationPolicy"
              (\ o ->
                 IPAllocationPolicy' <$>
                   (o .:? "servicesSecondaryRangeName") <*>
                     (o .:? "tpuIpv4CidrBlock")
                     <*> (o .:? "nodeIpv4Cidr")
                     <*> (o .:? "useIpAliases")
                     <*> (o .:? "clusterIpv4Cidr")
                     <*> (o .:? "subnetworkName")
                     <*> (o .:? "clusterSecondaryRangeName")
                     <*> (o .:? "nodeIpv4CidrBlock")
                     <*> (o .:? "servicesIpv4Cidr")
                     <*> (o .:? "useRoutes")
                     <*> (o .:? "clusterIpv4CidrBlock")
                     <*> (o .:? "servicesIpv4CidrBlock")
                     <*> (o .:? "createSubnetwork"))

instance ToJSON IPAllocationPolicy where
        toJSON IPAllocationPolicy'{..}
          = object
              (catMaybes
                 [("servicesSecondaryRangeName" .=) <$>
                    _iapServicesSecondaryRangeName,
                  ("tpuIpv4CidrBlock" .=) <$> _iapTpuIPv4CIdRBlock,
                  ("nodeIpv4Cidr" .=) <$> _iapNodeIPv4CIdR,
                  ("useIpAliases" .=) <$> _iapUseIPAliases,
                  ("clusterIpv4Cidr" .=) <$> _iapClusterIPv4CIdR,
                  ("subnetworkName" .=) <$> _iapSubnetworkName,
                  ("clusterSecondaryRangeName" .=) <$>
                    _iapClusterSecondaryRangeName,
                  ("nodeIpv4CidrBlock" .=) <$> _iapNodeIPv4CIdRBlock,
                  ("servicesIpv4Cidr" .=) <$> _iapServicesIPv4CIdR,
                  ("useRoutes" .=) <$> _iapUseRoutes,
                  ("clusterIpv4CidrBlock" .=) <$>
                    _iapClusterIPv4CIdRBlock,
                  ("servicesIpv4CidrBlock" .=) <$>
                    _iapServicesIPv4CIdRBlock,
                  ("createSubnetwork" .=) <$> _iapCreateSubnetwork])

-- | Configuration for the addons that can be automatically spun up in the
-- cluster, enabling additional functionality.
--
-- /See:/ 'addonsConfig' smart constructor.
data AddonsConfig =
  AddonsConfig'
    { _acNetworkPolicyConfig :: !(Maybe NetworkPolicyConfig)
    , _acHorizontalPodAutoscaling :: !(Maybe HorizontalPodAutoscaling)
    , _acCloudRunConfig :: !(Maybe CloudRunConfig)
    , _acHTTPLoadBalancing :: !(Maybe HTTPLoadBalancing)
    , _acConfigConnectorConfig :: !(Maybe ConfigConnectorConfig)
    , _acKubernetesDashboard :: !(Maybe KubernetesDashboard)
    , _acGcePersistentDiskCsiDriverConfig :: !(Maybe GcePersistentDiskCsiDriverConfig)
    , _acDNSCacheConfig :: !(Maybe DNSCacheConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddonsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acNetworkPolicyConfig'
--
-- * 'acHorizontalPodAutoscaling'
--
-- * 'acCloudRunConfig'
--
-- * 'acHTTPLoadBalancing'
--
-- * 'acConfigConnectorConfig'
--
-- * 'acKubernetesDashboard'
--
-- * 'acGcePersistentDiskCsiDriverConfig'
--
-- * 'acDNSCacheConfig'
addonsConfig
    :: AddonsConfig
addonsConfig =
  AddonsConfig'
    { _acNetworkPolicyConfig = Nothing
    , _acHorizontalPodAutoscaling = Nothing
    , _acCloudRunConfig = Nothing
    , _acHTTPLoadBalancing = Nothing
    , _acConfigConnectorConfig = Nothing
    , _acKubernetesDashboard = Nothing
    , _acGcePersistentDiskCsiDriverConfig = Nothing
    , _acDNSCacheConfig = Nothing
    }


-- | Configuration for NetworkPolicy. This only tracks whether the addon is
-- enabled or not on the Master, it does not track whether network policy
-- is enabled for the nodes.
acNetworkPolicyConfig :: Lens' AddonsConfig (Maybe NetworkPolicyConfig)
acNetworkPolicyConfig
  = lens _acNetworkPolicyConfig
      (\ s a -> s{_acNetworkPolicyConfig = a})

-- | Configuration for the horizontal pod autoscaling feature, which
-- increases or decreases the number of replica pods a replication
-- controller has based on the resource usage of the existing pods.
acHorizontalPodAutoscaling :: Lens' AddonsConfig (Maybe HorizontalPodAutoscaling)
acHorizontalPodAutoscaling
  = lens _acHorizontalPodAutoscaling
      (\ s a -> s{_acHorizontalPodAutoscaling = a})

-- | Configuration for the Cloud Run addon, which allows the user to use a
-- managed Knative service.
acCloudRunConfig :: Lens' AddonsConfig (Maybe CloudRunConfig)
acCloudRunConfig
  = lens _acCloudRunConfig
      (\ s a -> s{_acCloudRunConfig = a})

-- | Configuration for the HTTP (L7) load balancing controller addon, which
-- makes it easy to set up HTTP load balancers for services in a cluster.
acHTTPLoadBalancing :: Lens' AddonsConfig (Maybe HTTPLoadBalancing)
acHTTPLoadBalancing
  = lens _acHTTPLoadBalancing
      (\ s a -> s{_acHTTPLoadBalancing = a})

-- | Configuration for the ConfigConnector add-on, a Kubernetes extension to
-- manage hosted GCP services through the Kubernetes API
acConfigConnectorConfig :: Lens' AddonsConfig (Maybe ConfigConnectorConfig)
acConfigConnectorConfig
  = lens _acConfigConnectorConfig
      (\ s a -> s{_acConfigConnectorConfig = a})

-- | Configuration for the Kubernetes Dashboard. This addon is deprecated,
-- and will be disabled in 1.15. It is recommended to use the Cloud Console
-- to manage and monitor your Kubernetes clusters, workloads and
-- applications. For more information, see:
-- https:\/\/cloud.google.com\/kubernetes-engine\/docs\/concepts\/dashboards
acKubernetesDashboard :: Lens' AddonsConfig (Maybe KubernetesDashboard)
acKubernetesDashboard
  = lens _acKubernetesDashboard
      (\ s a -> s{_acKubernetesDashboard = a})

-- | Configuration for the Compute Engine Persistent Disk CSI driver.
acGcePersistentDiskCsiDriverConfig :: Lens' AddonsConfig (Maybe GcePersistentDiskCsiDriverConfig)
acGcePersistentDiskCsiDriverConfig
  = lens _acGcePersistentDiskCsiDriverConfig
      (\ s a -> s{_acGcePersistentDiskCsiDriverConfig = a})

-- | Configuration for NodeLocalDNS, a dns cache running on cluster nodes
acDNSCacheConfig :: Lens' AddonsConfig (Maybe DNSCacheConfig)
acDNSCacheConfig
  = lens _acDNSCacheConfig
      (\ s a -> s{_acDNSCacheConfig = a})

instance FromJSON AddonsConfig where
        parseJSON
          = withObject "AddonsConfig"
              (\ o ->
                 AddonsConfig' <$>
                   (o .:? "networkPolicyConfig") <*>
                     (o .:? "horizontalPodAutoscaling")
                     <*> (o .:? "cloudRunConfig")
                     <*> (o .:? "httpLoadBalancing")
                     <*> (o .:? "configConnectorConfig")
                     <*> (o .:? "kubernetesDashboard")
                     <*> (o .:? "gcePersistentDiskCsiDriverConfig")
                     <*> (o .:? "dnsCacheConfig"))

instance ToJSON AddonsConfig where
        toJSON AddonsConfig'{..}
          = object
              (catMaybes
                 [("networkPolicyConfig" .=) <$>
                    _acNetworkPolicyConfig,
                  ("horizontalPodAutoscaling" .=) <$>
                    _acHorizontalPodAutoscaling,
                  ("cloudRunConfig" .=) <$> _acCloudRunConfig,
                  ("httpLoadBalancing" .=) <$> _acHTTPLoadBalancing,
                  ("configConnectorConfig" .=) <$>
                    _acConfigConnectorConfig,
                  ("kubernetesDashboard" .=) <$>
                    _acKubernetesDashboard,
                  ("gcePersistentDiskCsiDriverConfig" .=) <$>
                    _acGcePersistentDiskCsiDriverConfig,
                  ("dnsCacheConfig" .=) <$> _acDNSCacheConfig])

-- | Autopilot is the configuration for Autopilot settings on the cluster.
--
-- /See:/ 'autopilot' smart constructor.
newtype Autopilot =
  Autopilot'
    { _aEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Autopilot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEnabled'
autopilot
    :: Autopilot
autopilot = Autopilot' {_aEnabled = Nothing}


-- | Enable Autopilot
aEnabled :: Lens' Autopilot (Maybe Bool)
aEnabled = lens _aEnabled (\ s a -> s{_aEnabled = a})

instance FromJSON Autopilot where
        parseJSON
          = withObject "Autopilot"
              (\ o -> Autopilot' <$> (o .:? "enabled"))

instance ToJSON Autopilot where
        toJSON Autopilot'{..}
          = object (catMaybes [("enabled" .=) <$> _aEnabled])

-- | NetworkConfig reports the relative names of network & subnetwork.
--
-- /See:/ 'networkConfig' smart constructor.
data NetworkConfig =
  NetworkConfig'
    { _ncEnableIntraNodeVisibility :: !(Maybe Bool)
    , _ncNetwork :: !(Maybe Text)
    , _ncDatapathProvider :: !(Maybe NetworkConfigDatapathProvider)
    , _ncEnableL4ilbSubSetting :: !(Maybe Bool)
    , _ncDefaultSnatStatus :: !(Maybe DefaultSnatStatus)
    , _ncSubnetwork :: !(Maybe Text)
    , _ncPrivateIPv6GoogleAccess :: !(Maybe NetworkConfigPrivateIPv6GoogleAccess)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncEnableIntraNodeVisibility'
--
-- * 'ncNetwork'
--
-- * 'ncDatapathProvider'
--
-- * 'ncEnableL4ilbSubSetting'
--
-- * 'ncDefaultSnatStatus'
--
-- * 'ncSubnetwork'
--
-- * 'ncPrivateIPv6GoogleAccess'
networkConfig
    :: NetworkConfig
networkConfig =
  NetworkConfig'
    { _ncEnableIntraNodeVisibility = Nothing
    , _ncNetwork = Nothing
    , _ncDatapathProvider = Nothing
    , _ncEnableL4ilbSubSetting = Nothing
    , _ncDefaultSnatStatus = Nothing
    , _ncSubnetwork = Nothing
    , _ncPrivateIPv6GoogleAccess = Nothing
    }


-- | Whether Intra-node visibility is enabled for this cluster. This makes
-- same node pod to pod traffic visible for VPC network.
ncEnableIntraNodeVisibility :: Lens' NetworkConfig (Maybe Bool)
ncEnableIntraNodeVisibility
  = lens _ncEnableIntraNodeVisibility
      (\ s a -> s{_ncEnableIntraNodeVisibility = a})

-- | Output only. The relative name of the Google Compute Engine
-- network(https:\/\/cloud.google.com\/compute\/docs\/networks-and-firewalls#networks)
-- to which the cluster is connected. Example:
-- projects\/my-project\/global\/networks\/my-network
ncNetwork :: Lens' NetworkConfig (Maybe Text)
ncNetwork
  = lens _ncNetwork (\ s a -> s{_ncNetwork = a})

-- | The desired datapath provider for this cluster. By default, uses the
-- IPTables-based kube-proxy implementation.
ncDatapathProvider :: Lens' NetworkConfig (Maybe NetworkConfigDatapathProvider)
ncDatapathProvider
  = lens _ncDatapathProvider
      (\ s a -> s{_ncDatapathProvider = a})

-- | Whether L4ILB Subsetting is enabled for this cluster.
ncEnableL4ilbSubSetting :: Lens' NetworkConfig (Maybe Bool)
ncEnableL4ilbSubSetting
  = lens _ncEnableL4ilbSubSetting
      (\ s a -> s{_ncEnableL4ilbSubSetting = a})

-- | Whether the cluster disables default in-node sNAT rules. In-node sNAT
-- rules will be disabled when default_snat_status is disabled. When
-- disabled is set to false, default IP masquerade rules will be applied to
-- the nodes to prevent sNAT on cluster internal traffic.
ncDefaultSnatStatus :: Lens' NetworkConfig (Maybe DefaultSnatStatus)
ncDefaultSnatStatus
  = lens _ncDefaultSnatStatus
      (\ s a -> s{_ncDefaultSnatStatus = a})

-- | Output only. The relative name of the Google Compute Engine
-- [subnetwork](https:\/\/cloud.google.com\/compute\/docs\/vpc) to which
-- the cluster is connected. Example:
-- projects\/my-project\/regions\/us-central1\/subnetworks\/my-subnet
ncSubnetwork :: Lens' NetworkConfig (Maybe Text)
ncSubnetwork
  = lens _ncSubnetwork (\ s a -> s{_ncSubnetwork = a})

-- | The desired state of IPv6 connectivity to Google Services. By default,
-- no private IPv6 access to or from Google Services (all access will be
-- via IPv4)
ncPrivateIPv6GoogleAccess :: Lens' NetworkConfig (Maybe NetworkConfigPrivateIPv6GoogleAccess)
ncPrivateIPv6GoogleAccess
  = lens _ncPrivateIPv6GoogleAccess
      (\ s a -> s{_ncPrivateIPv6GoogleAccess = a})

instance FromJSON NetworkConfig where
        parseJSON
          = withObject "NetworkConfig"
              (\ o ->
                 NetworkConfig' <$>
                   (o .:? "enableIntraNodeVisibility") <*>
                     (o .:? "network")
                     <*> (o .:? "datapathProvider")
                     <*> (o .:? "enableL4ilbSubsetting")
                     <*> (o .:? "defaultSnatStatus")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "privateIpv6GoogleAccess"))

instance ToJSON NetworkConfig where
        toJSON NetworkConfig'{..}
          = object
              (catMaybes
                 [("enableIntraNodeVisibility" .=) <$>
                    _ncEnableIntraNodeVisibility,
                  ("network" .=) <$> _ncNetwork,
                  ("datapathProvider" .=) <$> _ncDatapathProvider,
                  ("enableL4ilbSubsetting" .=) <$>
                    _ncEnableL4ilbSubSetting,
                  ("defaultSnatStatus" .=) <$> _ncDefaultSnatStatus,
                  ("subnetwork" .=) <$> _ncSubnetwork,
                  ("privateIpv6GoogleAccess" .=) <$>
                    _ncPrivateIPv6GoogleAccess])

-- | NodePool contains the name and configuration for a cluster\'s node pool.
-- Node pools are a set of nodes (i.e. VM\'s), with a common configuration
-- and specification, under the control of the cluster master. They may
-- have a set of Kubernetes labels applied to them, which may be used to
-- reference them during pod scheduling. They may also be resized up or
-- down, to accommodate the workload.
--
-- /See:/ 'nodePool' smart constructor.
data NodePool =
  NodePool'
    { _npStatus :: !(Maybe NodePoolStatus)
    , _npAutoscaling :: !(Maybe NodePoolAutoscaling)
    , _npConfig :: !(Maybe NodeConfig)
    , _npUpgradeSettings :: !(Maybe UpgradeSettings)
    , _npInitialNodeCount :: !(Maybe (Textual Int32))
    , _npManagement :: !(Maybe NodeManagement)
    , _npMaxPodsConstraint :: !(Maybe MaxPodsConstraint)
    , _npSelfLink :: !(Maybe Text)
    , _npName :: !(Maybe Text)
    , _npStatusMessage :: !(Maybe Text)
    , _npVersion :: !(Maybe Text)
    , _npConditions :: !(Maybe [StatusCondition])
    , _npLocations :: !(Maybe [Text])
    , _npInstanceGroupURLs :: !(Maybe [Text])
    , _npPodIPv4CIdRSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodePool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npStatus'
--
-- * 'npAutoscaling'
--
-- * 'npConfig'
--
-- * 'npUpgradeSettings'
--
-- * 'npInitialNodeCount'
--
-- * 'npManagement'
--
-- * 'npMaxPodsConstraint'
--
-- * 'npSelfLink'
--
-- * 'npName'
--
-- * 'npStatusMessage'
--
-- * 'npVersion'
--
-- * 'npConditions'
--
-- * 'npLocations'
--
-- * 'npInstanceGroupURLs'
--
-- * 'npPodIPv4CIdRSize'
nodePool
    :: NodePool
nodePool =
  NodePool'
    { _npStatus = Nothing
    , _npAutoscaling = Nothing
    , _npConfig = Nothing
    , _npUpgradeSettings = Nothing
    , _npInitialNodeCount = Nothing
    , _npManagement = Nothing
    , _npMaxPodsConstraint = Nothing
    , _npSelfLink = Nothing
    , _npName = Nothing
    , _npStatusMessage = Nothing
    , _npVersion = Nothing
    , _npConditions = Nothing
    , _npLocations = Nothing
    , _npInstanceGroupURLs = Nothing
    , _npPodIPv4CIdRSize = Nothing
    }


-- | [Output only] The status of the nodes in this pool instance.
npStatus :: Lens' NodePool (Maybe NodePoolStatus)
npStatus = lens _npStatus (\ s a -> s{_npStatus = a})

-- | Autoscaler configuration for this NodePool. Autoscaler is enabled only
-- if a valid configuration is present.
npAutoscaling :: Lens' NodePool (Maybe NodePoolAutoscaling)
npAutoscaling
  = lens _npAutoscaling
      (\ s a -> s{_npAutoscaling = a})

-- | The node configuration of the pool.
npConfig :: Lens' NodePool (Maybe NodeConfig)
npConfig = lens _npConfig (\ s a -> s{_npConfig = a})

-- | Upgrade settings control disruption and speed of the upgrade.
npUpgradeSettings :: Lens' NodePool (Maybe UpgradeSettings)
npUpgradeSettings
  = lens _npUpgradeSettings
      (\ s a -> s{_npUpgradeSettings = a})

-- | The initial node count for the pool. You must ensure that your Compute
-- Engine [resource quota](https:\/\/cloud.google.com\/compute\/quotas) is
-- sufficient for this number of instances. You must also have available
-- firewall and routes quota.
npInitialNodeCount :: Lens' NodePool (Maybe Int32)
npInitialNodeCount
  = lens _npInitialNodeCount
      (\ s a -> s{_npInitialNodeCount = a})
      . mapping _Coerce

-- | NodeManagement configuration for this NodePool.
npManagement :: Lens' NodePool (Maybe NodeManagement)
npManagement
  = lens _npManagement (\ s a -> s{_npManagement = a})

-- | The constraint on the maximum number of pods that can be run
-- simultaneously on a node in the node pool.
npMaxPodsConstraint :: Lens' NodePool (Maybe MaxPodsConstraint)
npMaxPodsConstraint
  = lens _npMaxPodsConstraint
      (\ s a -> s{_npMaxPodsConstraint = a})

-- | [Output only] Server-defined URL for the resource.
npSelfLink :: Lens' NodePool (Maybe Text)
npSelfLink
  = lens _npSelfLink (\ s a -> s{_npSelfLink = a})

-- | The name of the node pool.
npName :: Lens' NodePool (Maybe Text)
npName = lens _npName (\ s a -> s{_npName = a})

-- | [Output only] Deprecated. Use conditions instead. Additional information
-- about the current status of this node pool instance, if available.
npStatusMessage :: Lens' NodePool (Maybe Text)
npStatusMessage
  = lens _npStatusMessage
      (\ s a -> s{_npStatusMessage = a})

-- | The version of the Kubernetes of this node.
npVersion :: Lens' NodePool (Maybe Text)
npVersion
  = lens _npVersion (\ s a -> s{_npVersion = a})

-- | Which conditions caused the current node pool state.
npConditions :: Lens' NodePool [StatusCondition]
npConditions
  = lens _npConditions (\ s a -> s{_npConditions = a})
      . _Default
      . _Coerce

-- | The list of Google Compute Engine
-- [zones](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the NodePool\'s nodes should be located. If this value is
-- unspecified during node pool creation, the
-- [Cluster.Locations](https:\/\/cloud.google.com\/kubernetes-engine\/docs\/reference\/rest\/v1\/projects.locations.clusters#Cluster.FIELDS.locations)
-- value will be used, instead. Warning: changing node pool locations will
-- result in nodes being added and\/or removed.
npLocations :: Lens' NodePool [Text]
npLocations
  = lens _npLocations (\ s a -> s{_npLocations = a}) .
      _Default
      . _Coerce

-- | [Output only] The resource URLs of the [managed instance
-- groups](https:\/\/cloud.google.com\/compute\/docs\/instance-groups\/creating-groups-of-managed-instances)
-- associated with this node pool.
npInstanceGroupURLs :: Lens' NodePool [Text]
npInstanceGroupURLs
  = lens _npInstanceGroupURLs
      (\ s a -> s{_npInstanceGroupURLs = a})
      . _Default
      . _Coerce

-- | [Output only] The pod CIDR block size per node in this node pool.
npPodIPv4CIdRSize :: Lens' NodePool (Maybe Int32)
npPodIPv4CIdRSize
  = lens _npPodIPv4CIdRSize
      (\ s a -> s{_npPodIPv4CIdRSize = a})
      . mapping _Coerce

instance FromJSON NodePool where
        parseJSON
          = withObject "NodePool"
              (\ o ->
                 NodePool' <$>
                   (o .:? "status") <*> (o .:? "autoscaling") <*>
                     (o .:? "config")
                     <*> (o .:? "upgradeSettings")
                     <*> (o .:? "initialNodeCount")
                     <*> (o .:? "management")
                     <*> (o .:? "maxPodsConstraint")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "version")
                     <*> (o .:? "conditions" .!= mempty)
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "instanceGroupUrls" .!= mempty)
                     <*> (o .:? "podIpv4CidrSize"))

instance ToJSON NodePool where
        toJSON NodePool'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _npStatus,
                  ("autoscaling" .=) <$> _npAutoscaling,
                  ("config" .=) <$> _npConfig,
                  ("upgradeSettings" .=) <$> _npUpgradeSettings,
                  ("initialNodeCount" .=) <$> _npInitialNodeCount,
                  ("management" .=) <$> _npManagement,
                  ("maxPodsConstraint" .=) <$> _npMaxPodsConstraint,
                  ("selfLink" .=) <$> _npSelfLink,
                  ("name" .=) <$> _npName,
                  ("statusMessage" .=) <$> _npStatusMessage,
                  ("version" .=) <$> _npVersion,
                  ("conditions" .=) <$> _npConditions,
                  ("locations" .=) <$> _npLocations,
                  ("instanceGroupUrls" .=) <$> _npInstanceGroupURLs,
                  ("podIpv4CidrSize" .=) <$> _npPodIPv4CIdRSize])

-- | SetNodePoolManagementRequest sets the node management properties of a
-- node pool.
--
-- /See:/ 'setNodePoolManagementRequest' smart constructor.
data SetNodePoolManagementRequest =
  SetNodePoolManagementRequest'
    { _snpmrManagement :: !(Maybe NodeManagement)
    , _snpmrZone :: !(Maybe Text)
    , _snpmrNodePoolId :: !(Maybe Text)
    , _snpmrName :: !(Maybe Text)
    , _snpmrClusterId :: !(Maybe Text)
    , _snpmrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetNodePoolManagementRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snpmrManagement'
--
-- * 'snpmrZone'
--
-- * 'snpmrNodePoolId'
--
-- * 'snpmrName'
--
-- * 'snpmrClusterId'
--
-- * 'snpmrProjectId'
setNodePoolManagementRequest
    :: SetNodePoolManagementRequest
setNodePoolManagementRequest =
  SetNodePoolManagementRequest'
    { _snpmrManagement = Nothing
    , _snpmrZone = Nothing
    , _snpmrNodePoolId = Nothing
    , _snpmrName = Nothing
    , _snpmrClusterId = Nothing
    , _snpmrProjectId = Nothing
    }


-- | Required. NodeManagement configuration for the node pool.
snpmrManagement :: Lens' SetNodePoolManagementRequest (Maybe NodeManagement)
snpmrManagement
  = lens _snpmrManagement
      (\ s a -> s{_snpmrManagement = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
snpmrZone :: Lens' SetNodePoolManagementRequest (Maybe Text)
snpmrZone
  = lens _snpmrZone (\ s a -> s{_snpmrZone = a})

-- | Deprecated. The name of the node pool to update. This field has been
-- deprecated and replaced by the name field.
snpmrNodePoolId :: Lens' SetNodePoolManagementRequest (Maybe Text)
snpmrNodePoolId
  = lens _snpmrNodePoolId
      (\ s a -> s{_snpmrNodePoolId = a})

-- | The name (project, location, cluster, node pool id) of the node pool to
-- set management properties. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
snpmrName :: Lens' SetNodePoolManagementRequest (Maybe Text)
snpmrName
  = lens _snpmrName (\ s a -> s{_snpmrName = a})

-- | Deprecated. The name of the cluster to update. This field has been
-- deprecated and replaced by the name field.
snpmrClusterId :: Lens' SetNodePoolManagementRequest (Maybe Text)
snpmrClusterId
  = lens _snpmrClusterId
      (\ s a -> s{_snpmrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
snpmrProjectId :: Lens' SetNodePoolManagementRequest (Maybe Text)
snpmrProjectId
  = lens _snpmrProjectId
      (\ s a -> s{_snpmrProjectId = a})

instance FromJSON SetNodePoolManagementRequest where
        parseJSON
          = withObject "SetNodePoolManagementRequest"
              (\ o ->
                 SetNodePoolManagementRequest' <$>
                   (o .:? "management") <*> (o .:? "zone") <*>
                     (o .:? "nodePoolId")
                     <*> (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId"))

instance ToJSON SetNodePoolManagementRequest where
        toJSON SetNodePoolManagementRequest'{..}
          = object
              (catMaybes
                 [("management" .=) <$> _snpmrManagement,
                  ("zone" .=) <$> _snpmrZone,
                  ("nodePoolId" .=) <$> _snpmrNodePoolId,
                  ("name" .=) <$> _snpmrName,
                  ("clusterId" .=) <$> _snpmrClusterId,
                  ("projectId" .=) <$> _snpmrProjectId])

-- | Configuration for the Compute Engine PD CSI driver.
--
-- /See:/ 'gcePersistentDiskCsiDriverConfig' smart constructor.
newtype GcePersistentDiskCsiDriverConfig =
  GcePersistentDiskCsiDriverConfig'
    { _gpdcdcEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcePersistentDiskCsiDriverConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdcdcEnabled'
gcePersistentDiskCsiDriverConfig
    :: GcePersistentDiskCsiDriverConfig
gcePersistentDiskCsiDriverConfig =
  GcePersistentDiskCsiDriverConfig' {_gpdcdcEnabled = Nothing}


-- | Whether the Compute Engine PD CSI driver is enabled for this cluster.
gpdcdcEnabled :: Lens' GcePersistentDiskCsiDriverConfig (Maybe Bool)
gpdcdcEnabled
  = lens _gpdcdcEnabled
      (\ s a -> s{_gpdcdcEnabled = a})

instance FromJSON GcePersistentDiskCsiDriverConfig
         where
        parseJSON
          = withObject "GcePersistentDiskCsiDriverConfig"
              (\ o ->
                 GcePersistentDiskCsiDriverConfig' <$>
                   (o .:? "enabled"))

instance ToJSON GcePersistentDiskCsiDriverConfig
         where
        toJSON GcePersistentDiskCsiDriverConfig'{..}
          = object
              (catMaybes [("enabled" .=) <$> _gpdcdcEnabled])

-- | IntraNodeVisibilityConfig contains the desired config of the intra-node
-- visibility on this cluster.
--
-- /See:/ 'intraNodeVisibilityConfig' smart constructor.
newtype IntraNodeVisibilityConfig =
  IntraNodeVisibilityConfig'
    { _invcEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IntraNodeVisibilityConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'invcEnabled'
intraNodeVisibilityConfig
    :: IntraNodeVisibilityConfig
intraNodeVisibilityConfig = IntraNodeVisibilityConfig' {_invcEnabled = Nothing}


-- | Enables intra node visibility for this cluster.
invcEnabled :: Lens' IntraNodeVisibilityConfig (Maybe Bool)
invcEnabled
  = lens _invcEnabled (\ s a -> s{_invcEnabled = a})

instance FromJSON IntraNodeVisibilityConfig where
        parseJSON
          = withObject "IntraNodeVisibilityConfig"
              (\ o ->
                 IntraNodeVisibilityConfig' <$> (o .:? "enabled"))

instance ToJSON IntraNodeVisibilityConfig where
        toJSON IntraNodeVisibilityConfig'{..}
          = object
              (catMaybes [("enabled" .=) <$> _invcEnabled])

-- | Configuration options for the master authorized networks feature.
-- Enabled master authorized networks will disallow all external traffic to
-- access Kubernetes master through HTTPS except traffic from the given
-- CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
--
-- /See:/ 'masterAuthorizedNetworksConfig' smart constructor.
data MasterAuthorizedNetworksConfig =
  MasterAuthorizedNetworksConfig'
    { _mancEnabled :: !(Maybe Bool)
    , _mancCIdRBlocks :: !(Maybe [CIdRBlock])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MasterAuthorizedNetworksConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mancEnabled'
--
-- * 'mancCIdRBlocks'
masterAuthorizedNetworksConfig
    :: MasterAuthorizedNetworksConfig
masterAuthorizedNetworksConfig =
  MasterAuthorizedNetworksConfig'
    {_mancEnabled = Nothing, _mancCIdRBlocks = Nothing}


-- | Whether or not master authorized networks is enabled.
mancEnabled :: Lens' MasterAuthorizedNetworksConfig (Maybe Bool)
mancEnabled
  = lens _mancEnabled (\ s a -> s{_mancEnabled = a})

-- | cidr_blocks define up to 50 external networks that could access
-- Kubernetes master through HTTPS.
mancCIdRBlocks :: Lens' MasterAuthorizedNetworksConfig [CIdRBlock]
mancCIdRBlocks
  = lens _mancCIdRBlocks
      (\ s a -> s{_mancCIdRBlocks = a})
      . _Default
      . _Coerce

instance FromJSON MasterAuthorizedNetworksConfig
         where
        parseJSON
          = withObject "MasterAuthorizedNetworksConfig"
              (\ o ->
                 MasterAuthorizedNetworksConfig' <$>
                   (o .:? "enabled") <*>
                     (o .:? "cidrBlocks" .!= mempty))

instance ToJSON MasterAuthorizedNetworksConfig where
        toJSON MasterAuthorizedNetworksConfig'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _mancEnabled,
                  ("cidrBlocks" .=) <$> _mancCIdRBlocks])

-- | Configuration for the legacy Attribute Based Access Control
-- authorization mode.
--
-- /See:/ 'legacyAbac' smart constructor.
newtype LegacyAbac =
  LegacyAbac'
    { _laEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LegacyAbac' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laEnabled'
legacyAbac
    :: LegacyAbac
legacyAbac = LegacyAbac' {_laEnabled = Nothing}


-- | Whether the ABAC authorizer is enabled for this cluster. When enabled,
-- identities in the system, including service accounts, nodes, and
-- controllers, will have statically granted permissions beyond those
-- provided by the RBAC configuration or IAM.
laEnabled :: Lens' LegacyAbac (Maybe Bool)
laEnabled
  = lens _laEnabled (\ s a -> s{_laEnabled = a})

instance FromJSON LegacyAbac where
        parseJSON
          = withObject "LegacyAbac"
              (\ o -> LegacyAbac' <$> (o .:? "enabled"))

instance ToJSON LegacyAbac where
        toJSON LegacyAbac'{..}
          = object (catMaybes [("enabled" .=) <$> _laEnabled])

-- | The authentication information for accessing the master endpoint.
-- Authentication can be done using HTTP basic auth or using client
-- certificates.
--
-- /See:/ 'masterAuth' smart constructor.
data MasterAuth =
  MasterAuth'
    { _maClientKey :: !(Maybe Text)
    , _maUsername :: !(Maybe Text)
    , _maClientCertificateConfig :: !(Maybe ClientCertificateConfig)
    , _maClientCertificate :: !(Maybe Text)
    , _maPassword :: !(Maybe Text)
    , _maClusterCaCertificate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MasterAuth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maClientKey'
--
-- * 'maUsername'
--
-- * 'maClientCertificateConfig'
--
-- * 'maClientCertificate'
--
-- * 'maPassword'
--
-- * 'maClusterCaCertificate'
masterAuth
    :: MasterAuth
masterAuth =
  MasterAuth'
    { _maClientKey = Nothing
    , _maUsername = Nothing
    , _maClientCertificateConfig = Nothing
    , _maClientCertificate = Nothing
    , _maPassword = Nothing
    , _maClusterCaCertificate = Nothing
    }


-- | [Output only] Base64-encoded private key used by clients to authenticate
-- to the cluster endpoint.
maClientKey :: Lens' MasterAuth (Maybe Text)
maClientKey
  = lens _maClientKey (\ s a -> s{_maClientKey = a})

-- | The username to use for HTTP basic authentication to the master
-- endpoint. For clusters v1.6.0 and later, basic authentication can be
-- disabled by leaving username unspecified (or setting it to the empty
-- string). Warning: basic authentication is deprecated, and will be
-- removed in GKE control plane versions 1.19 and newer. For a list of
-- recommended authentication methods, see:
-- https:\/\/cloud.google.com\/kubernetes-engine\/docs\/how-to\/api-server-authentication
maUsername :: Lens' MasterAuth (Maybe Text)
maUsername
  = lens _maUsername (\ s a -> s{_maUsername = a})

-- | Configuration for client certificate authentication on the cluster. For
-- clusters before v1.12, if no configuration is specified, a client
-- certificate is issued.
maClientCertificateConfig :: Lens' MasterAuth (Maybe ClientCertificateConfig)
maClientCertificateConfig
  = lens _maClientCertificateConfig
      (\ s a -> s{_maClientCertificateConfig = a})

-- | [Output only] Base64-encoded public certificate used by clients to
-- authenticate to the cluster endpoint.
maClientCertificate :: Lens' MasterAuth (Maybe Text)
maClientCertificate
  = lens _maClientCertificate
      (\ s a -> s{_maClientCertificate = a})

-- | The password to use for HTTP basic authentication to the master
-- endpoint. Because the master endpoint is open to the Internet, you
-- should create a strong password. If a password is provided for cluster
-- creation, username must be non-empty. Warning: basic authentication is
-- deprecated, and will be removed in GKE control plane versions 1.19 and
-- newer. For a list of recommended authentication methods, see:
-- https:\/\/cloud.google.com\/kubernetes-engine\/docs\/how-to\/api-server-authentication
maPassword :: Lens' MasterAuth (Maybe Text)
maPassword
  = lens _maPassword (\ s a -> s{_maPassword = a})

-- | [Output only] Base64-encoded public certificate that is the root of
-- trust for the cluster.
maClusterCaCertificate :: Lens' MasterAuth (Maybe Text)
maClusterCaCertificate
  = lens _maClusterCaCertificate
      (\ s a -> s{_maClusterCaCertificate = a})

instance FromJSON MasterAuth where
        parseJSON
          = withObject "MasterAuth"
              (\ o ->
                 MasterAuth' <$>
                   (o .:? "clientKey") <*> (o .:? "username") <*>
                     (o .:? "clientCertificateConfig")
                     <*> (o .:? "clientCertificate")
                     <*> (o .:? "password")
                     <*> (o .:? "clusterCaCertificate"))

instance ToJSON MasterAuth where
        toJSON MasterAuth'{..}
          = object
              (catMaybes
                 [("clientKey" .=) <$> _maClientKey,
                  ("username" .=) <$> _maUsername,
                  ("clientCertificateConfig" .=) <$>
                    _maClientCertificateConfig,
                  ("clientCertificate" .=) <$> _maClientCertificate,
                  ("password" .=) <$> _maPassword,
                  ("clusterCaCertificate" .=) <$>
                    _maClusterCaCertificate])

-- | Progress metric is (string, int|float|string) pair.
--
-- /See:/ 'metric' smart constructor.
data Metric =
  Metric'
    { _mIntValue :: !(Maybe (Textual Int64))
    , _mDoubleValue :: !(Maybe (Textual Double))
    , _mStringValue :: !(Maybe Text)
    , _mName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mIntValue'
--
-- * 'mDoubleValue'
--
-- * 'mStringValue'
--
-- * 'mName'
metric
    :: Metric
metric =
  Metric'
    { _mIntValue = Nothing
    , _mDoubleValue = Nothing
    , _mStringValue = Nothing
    , _mName = Nothing
    }


-- | For metrics with integer value.
mIntValue :: Lens' Metric (Maybe Int64)
mIntValue
  = lens _mIntValue (\ s a -> s{_mIntValue = a}) .
      mapping _Coerce

-- | For metrics with floating point value.
mDoubleValue :: Lens' Metric (Maybe Double)
mDoubleValue
  = lens _mDoubleValue (\ s a -> s{_mDoubleValue = a})
      . mapping _Coerce

-- | For metrics with custom values (ratios, visual progress, etc.).
mStringValue :: Lens' Metric (Maybe Text)
mStringValue
  = lens _mStringValue (\ s a -> s{_mStringValue = a})

-- | Required. Metric name, e.g., \"nodes total\", \"percent done\".
mName :: Lens' Metric (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

instance FromJSON Metric where
        parseJSON
          = withObject "Metric"
              (\ o ->
                 Metric' <$>
                   (o .:? "intValue") <*> (o .:? "doubleValue") <*>
                     (o .:? "stringValue")
                     <*> (o .:? "name"))

instance ToJSON Metric where
        toJSON Metric'{..}
          = object
              (catMaybes
                 [("intValue" .=) <$> _mIntValue,
                  ("doubleValue" .=) <$> _mDoubleValue,
                  ("stringValue" .=) <$> _mStringValue,
                  ("name" .=) <$> _mName])

-- | StatusCondition describes why a cluster or a node pool has a certain
-- status (e.g., ERROR or DEGRADED).
--
-- /See:/ 'statusCondition' smart constructor.
data StatusCondition =
  StatusCondition'
    { _scCanonicalCode :: !(Maybe StatusConditionCanonicalCode)
    , _scCode :: !(Maybe StatusConditionCode)
    , _scMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCanonicalCode'
--
-- * 'scCode'
--
-- * 'scMessage'
statusCondition
    :: StatusCondition
statusCondition =
  StatusCondition'
    {_scCanonicalCode = Nothing, _scCode = Nothing, _scMessage = Nothing}


-- | Canonical code of the condition.
scCanonicalCode :: Lens' StatusCondition (Maybe StatusConditionCanonicalCode)
scCanonicalCode
  = lens _scCanonicalCode
      (\ s a -> s{_scCanonicalCode = a})

-- | Machine-friendly representation of the condition Deprecated. Use
-- canonical_code instead.
scCode :: Lens' StatusCondition (Maybe StatusConditionCode)
scCode = lens _scCode (\ s a -> s{_scCode = a})

-- | Human-friendly representation of the condition
scMessage :: Lens' StatusCondition (Maybe Text)
scMessage
  = lens _scMessage (\ s a -> s{_scMessage = a})

instance FromJSON StatusCondition where
        parseJSON
          = withObject "StatusCondition"
              (\ o ->
                 StatusCondition' <$>
                   (o .:? "canonicalCode") <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON StatusCondition where
        toJSON StatusCondition'{..}
          = object
              (catMaybes
                 [("canonicalCode" .=) <$> _scCanonicalCode,
                  ("code" .=) <$> _scCode,
                  ("message" .=) <$> _scMessage])

-- | ILBSubsettingConfig contains the desired config of L4 Internal
-- LoadBalancer subsetting on this cluster.
--
-- /See:/ 'iLBSubSettingConfig' smart constructor.
newtype ILBSubSettingConfig =
  ILBSubSettingConfig'
    { _ilbsscEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ILBSubSettingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilbsscEnabled'
iLBSubSettingConfig
    :: ILBSubSettingConfig
iLBSubSettingConfig = ILBSubSettingConfig' {_ilbsscEnabled = Nothing}


-- | Enables l4 ILB subsetting for this cluster.
ilbsscEnabled :: Lens' ILBSubSettingConfig (Maybe Bool)
ilbsscEnabled
  = lens _ilbsscEnabled
      (\ s a -> s{_ilbsscEnabled = a})

instance FromJSON ILBSubSettingConfig where
        parseJSON
          = withObject "ILBSubSettingConfig"
              (\ o -> ILBSubSettingConfig' <$> (o .:? "enabled"))

instance ToJSON ILBSubSettingConfig where
        toJSON ILBSubSettingConfig'{..}
          = object
              (catMaybes [("enabled" .=) <$> _ilbsscEnabled])

-- | DefaultSnatStatus contains the desired state of whether default sNAT
-- should be disabled on the cluster.
--
-- /See:/ 'defaultSnatStatus' smart constructor.
newtype DefaultSnatStatus =
  DefaultSnatStatus'
    { _dssDisabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DefaultSnatStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssDisabled'
defaultSnatStatus
    :: DefaultSnatStatus
defaultSnatStatus = DefaultSnatStatus' {_dssDisabled = Nothing}


-- | Disables cluster default sNAT rules.
dssDisabled :: Lens' DefaultSnatStatus (Maybe Bool)
dssDisabled
  = lens _dssDisabled (\ s a -> s{_dssDisabled = a})

instance FromJSON DefaultSnatStatus where
        parseJSON
          = withObject "DefaultSnatStatus"
              (\ o -> DefaultSnatStatus' <$> (o .:? "disabled"))

instance ToJSON DefaultSnatStatus where
        toJSON DefaultSnatStatus'{..}
          = object
              (catMaybes [("disabled" .=) <$> _dssDisabled])

-- | The metadata key\/value pairs assigned to instances in the cluster. Keys
-- must conform to the regexp \`[a-zA-Z0-9-_]+\` and be less than 128 bytes
-- in length. These are reflected as part of a URL in the metadata server.
-- Additionally, to avoid ambiguity, keys must not conflict with any other
-- metadata keys for the project or be one of the reserved keys: -
-- \"cluster-location\" - \"cluster-name\" - \"cluster-uid\" -
-- \"configure-sh\" - \"containerd-configure-sh\" - \"enable-os-login\" -
-- \"gci-ensure-gke-docker\" - \"gci-metrics-enabled\" -
-- \"gci-update-strategy\" - \"instance-template\" - \"kube-env\" -
-- \"startup-script\" - \"user-data\" - \"disable-address-manager\" -
-- \"windows-startup-script-ps1\" - \"common-psm1\" -
-- \"k8s-node-setup-psm1\" - \"install-ssh-psm1\" - \"user-profile-psm1\"
-- The following keys are reserved for Windows nodes: -
-- \"serial-port-logging-enable\" Values are free-form strings, and only
-- have meaning as interpreted by the image running in the instance. The
-- only restriction placed on them is that each value\'s size must be less
-- than or equal to 32 KB. The total size of all keys and values must be
-- less than 512 KB.
--
-- /See:/ 'nodeConfigMetadata' smart constructor.
newtype NodeConfigMetadata =
  NodeConfigMetadata'
    { _ncmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeConfigMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncmAddtional'
nodeConfigMetadata
    :: HashMap Text Text -- ^ 'ncmAddtional'
    -> NodeConfigMetadata
nodeConfigMetadata pNcmAddtional_ =
  NodeConfigMetadata' {_ncmAddtional = _Coerce # pNcmAddtional_}


ncmAddtional :: Lens' NodeConfigMetadata (HashMap Text Text)
ncmAddtional
  = lens _ncmAddtional (\ s a -> s{_ncmAddtional = a})
      . _Coerce

instance FromJSON NodeConfigMetadata where
        parseJSON
          = withObject "NodeConfigMetadata"
              (\ o -> NodeConfigMetadata' <$> (parseJSONObject o))

instance ToJSON NodeConfigMetadata where
        toJSON = toJSON . _ncmAddtional

-- | The map of Kubernetes labels (key\/value pairs) to be applied to each
-- node. These will added in addition to any default label(s) that
-- Kubernetes may apply to the node. In case of conflict in label keys, the
-- applied set may differ depending on the Kubernetes version -- it\'s best
-- to assume the behavior is undefined and conflicts should be avoided. For
-- more information, including usage and the valid values, see:
-- https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/labels\/
--
-- /See:/ 'nodeConfigLabels' smart constructor.
newtype NodeConfigLabels =
  NodeConfigLabels'
    { _nclAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeConfigLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nclAddtional'
nodeConfigLabels
    :: HashMap Text Text -- ^ 'nclAddtional'
    -> NodeConfigLabels
nodeConfigLabels pNclAddtional_ =
  NodeConfigLabels' {_nclAddtional = _Coerce # pNclAddtional_}


nclAddtional :: Lens' NodeConfigLabels (HashMap Text Text)
nclAddtional
  = lens _nclAddtional (\ s a -> s{_nclAddtional = a})
      . _Coerce

instance FromJSON NodeConfigLabels where
        parseJSON
          = withObject "NodeConfigLabels"
              (\ o -> NodeConfigLabels' <$> (parseJSONObject o))

instance ToJSON NodeConfigLabels where
        toJSON = toJSON . _nclAddtional

-- | Configuration for NodeLocal DNSCache
--
-- /See:/ 'dnsCacheConfig' smart constructor.
newtype DNSCacheConfig =
  DNSCacheConfig'
    { _dccEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSCacheConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccEnabled'
dnsCacheConfig
    :: DNSCacheConfig
dnsCacheConfig = DNSCacheConfig' {_dccEnabled = Nothing}


-- | Whether NodeLocal DNSCache is enabled for this cluster.
dccEnabled :: Lens' DNSCacheConfig (Maybe Bool)
dccEnabled
  = lens _dccEnabled (\ s a -> s{_dccEnabled = a})

instance FromJSON DNSCacheConfig where
        parseJSON
          = withObject "DNSCacheConfig"
              (\ o -> DNSCacheConfig' <$> (o .:? "enabled"))

instance ToJSON DNSCacheConfig where
        toJSON DNSCacheConfig'{..}
          = object (catMaybes [("enabled" .=) <$> _dccEnabled])

-- | Kubernetes Engine service configuration.
--
-- /See:/ 'serverConfig' smart constructor.
data ServerConfig =
  ServerConfig'
    { _scDefaultImageType :: !(Maybe Text)
    , _scValidNodeVersions :: !(Maybe [Text])
    , _scChannels :: !(Maybe [ReleaseChannelConfig])
    , _scValidImageTypes :: !(Maybe [Text])
    , _scDefaultClusterVersion :: !(Maybe Text)
    , _scValidMasterVersions :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scDefaultImageType'
--
-- * 'scValidNodeVersions'
--
-- * 'scChannels'
--
-- * 'scValidImageTypes'
--
-- * 'scDefaultClusterVersion'
--
-- * 'scValidMasterVersions'
serverConfig
    :: ServerConfig
serverConfig =
  ServerConfig'
    { _scDefaultImageType = Nothing
    , _scValidNodeVersions = Nothing
    , _scChannels = Nothing
    , _scValidImageTypes = Nothing
    , _scDefaultClusterVersion = Nothing
    , _scValidMasterVersions = Nothing
    }


-- | Default image type.
scDefaultImageType :: Lens' ServerConfig (Maybe Text)
scDefaultImageType
  = lens _scDefaultImageType
      (\ s a -> s{_scDefaultImageType = a})

-- | List of valid node upgrade target versions, in descending order.
scValidNodeVersions :: Lens' ServerConfig [Text]
scValidNodeVersions
  = lens _scValidNodeVersions
      (\ s a -> s{_scValidNodeVersions = a})
      . _Default
      . _Coerce

-- | List of release channel configurations.
scChannels :: Lens' ServerConfig [ReleaseChannelConfig]
scChannels
  = lens _scChannels (\ s a -> s{_scChannels = a}) .
      _Default
      . _Coerce

-- | List of valid image types.
scValidImageTypes :: Lens' ServerConfig [Text]
scValidImageTypes
  = lens _scValidImageTypes
      (\ s a -> s{_scValidImageTypes = a})
      . _Default
      . _Coerce

-- | Version of Kubernetes the service deploys by default.
scDefaultClusterVersion :: Lens' ServerConfig (Maybe Text)
scDefaultClusterVersion
  = lens _scDefaultClusterVersion
      (\ s a -> s{_scDefaultClusterVersion = a})

-- | List of valid master versions, in descending order.
scValidMasterVersions :: Lens' ServerConfig [Text]
scValidMasterVersions
  = lens _scValidMasterVersions
      (\ s a -> s{_scValidMasterVersions = a})
      . _Default
      . _Coerce

instance FromJSON ServerConfig where
        parseJSON
          = withObject "ServerConfig"
              (\ o ->
                 ServerConfig' <$>
                   (o .:? "defaultImageType") <*>
                     (o .:? "validNodeVersions" .!= mempty)
                     <*> (o .:? "channels" .!= mempty)
                     <*> (o .:? "validImageTypes" .!= mempty)
                     <*> (o .:? "defaultClusterVersion")
                     <*> (o .:? "validMasterVersions" .!= mempty))

instance ToJSON ServerConfig where
        toJSON ServerConfig'{..}
          = object
              (catMaybes
                 [("defaultImageType" .=) <$> _scDefaultImageType,
                  ("validNodeVersions" .=) <$> _scValidNodeVersions,
                  ("channels" .=) <$> _scChannels,
                  ("validImageTypes" .=) <$> _scValidImageTypes,
                  ("defaultClusterVersion" .=) <$>
                    _scDefaultClusterVersion,
                  ("validMasterVersions" .=) <$>
                    _scValidMasterVersions])

-- | RFC-2616: cache control support
--
-- /See:/ 'hTTPCacheControlResponseHeader' smart constructor.
data HTTPCacheControlResponseHeader =
  HTTPCacheControlResponseHeader'
    { _httpccrhDirective :: !(Maybe Text)
    , _httpccrhExpires :: !(Maybe Text)
    , _httpccrhAge :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPCacheControlResponseHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpccrhDirective'
--
-- * 'httpccrhExpires'
--
-- * 'httpccrhAge'
hTTPCacheControlResponseHeader
    :: HTTPCacheControlResponseHeader
hTTPCacheControlResponseHeader =
  HTTPCacheControlResponseHeader'
    { _httpccrhDirective = Nothing
    , _httpccrhExpires = Nothing
    , _httpccrhAge = Nothing
    }


-- | 14.9 request and response directives
httpccrhDirective :: Lens' HTTPCacheControlResponseHeader (Maybe Text)
httpccrhDirective
  = lens _httpccrhDirective
      (\ s a -> s{_httpccrhDirective = a})

-- | 14.21 response cache expires, in RFC 1123 date format
httpccrhExpires :: Lens' HTTPCacheControlResponseHeader (Maybe Text)
httpccrhExpires
  = lens _httpccrhExpires
      (\ s a -> s{_httpccrhExpires = a})

-- | 14.6 response cache age, in seconds since the response is generated
httpccrhAge :: Lens' HTTPCacheControlResponseHeader (Maybe Int64)
httpccrhAge
  = lens _httpccrhAge (\ s a -> s{_httpccrhAge = a}) .
      mapping _Coerce

instance FromJSON HTTPCacheControlResponseHeader
         where
        parseJSON
          = withObject "HTTPCacheControlResponseHeader"
              (\ o ->
                 HTTPCacheControlResponseHeader' <$>
                   (o .:? "directive") <*> (o .:? "expires") <*>
                     (o .:? "age"))

instance ToJSON HTTPCacheControlResponseHeader where
        toJSON HTTPCacheControlResponseHeader'{..}
          = object
              (catMaybes
                 [("directive" .=) <$> _httpccrhDirective,
                  ("expires" .=) <$> _httpccrhExpires,
                  ("age" .=) <$> _httpccrhAge])

-- | AutoUpgradeOptions defines the set of options for the user to control
-- how the Auto Upgrades will proceed.
--
-- /See:/ 'autoUpgradeOptions' smart constructor.
data AutoUpgradeOptions =
  AutoUpgradeOptions'
    { _auoAutoUpgradeStartTime :: !(Maybe Text)
    , _auoDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoUpgradeOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auoAutoUpgradeStartTime'
--
-- * 'auoDescription'
autoUpgradeOptions
    :: AutoUpgradeOptions
autoUpgradeOptions =
  AutoUpgradeOptions'
    {_auoAutoUpgradeStartTime = Nothing, _auoDescription = Nothing}


-- | [Output only] This field is set when upgrades are about to commence with
-- the approximate start time for the upgrades, in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) text format.
auoAutoUpgradeStartTime :: Lens' AutoUpgradeOptions (Maybe Text)
auoAutoUpgradeStartTime
  = lens _auoAutoUpgradeStartTime
      (\ s a -> s{_auoAutoUpgradeStartTime = a})

-- | [Output only] This field is set when upgrades are about to commence with
-- the description of the upgrade.
auoDescription :: Lens' AutoUpgradeOptions (Maybe Text)
auoDescription
  = lens _auoDescription
      (\ s a -> s{_auoDescription = a})

instance FromJSON AutoUpgradeOptions where
        parseJSON
          = withObject "AutoUpgradeOptions"
              (\ o ->
                 AutoUpgradeOptions' <$>
                   (o .:? "autoUpgradeStartTime") <*>
                     (o .:? "description"))

instance ToJSON AutoUpgradeOptions where
        toJSON AutoUpgradeOptions'{..}
          = object
              (catMaybes
                 [("autoUpgradeStartTime" .=) <$>
                    _auoAutoUpgradeStartTime,
                  ("description" .=) <$> _auoDescription])

-- | ReleaseChannel indicates which release channel a cluster is subscribed
-- to. Release channels are arranged in order of risk. When a cluster is
-- subscribed to a release channel, Google maintains both the master
-- version and the node version. Node auto-upgrade defaults to true and
-- cannot be disabled.
--
-- /See:/ 'releaseChannel' smart constructor.
newtype ReleaseChannel =
  ReleaseChannel'
    { _rcChannel :: Maybe ReleaseChannelChannel
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReleaseChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcChannel'
releaseChannel
    :: ReleaseChannel
releaseChannel = ReleaseChannel' {_rcChannel = Nothing}


-- | channel specifies which release channel the cluster is subscribed to.
rcChannel :: Lens' ReleaseChannel (Maybe ReleaseChannelChannel)
rcChannel
  = lens _rcChannel (\ s a -> s{_rcChannel = a})

instance FromJSON ReleaseChannel where
        parseJSON
          = withObject "ReleaseChannel"
              (\ o -> ReleaseChannel' <$> (o .:? "channel"))

instance ToJSON ReleaseChannel where
        toJSON ReleaseChannel'{..}
          = object (catMaybes [("channel" .=) <$> _rcChannel])

-- | SetNodePoolSizeRequest sets the size of a node pool.
--
-- /See:/ 'setNodePoolSizeRequest' smart constructor.
data SetNodePoolSizeRequest =
  SetNodePoolSizeRequest'
    { _snpsrNodeCount :: !(Maybe (Textual Int32))
    , _snpsrZone :: !(Maybe Text)
    , _snpsrNodePoolId :: !(Maybe Text)
    , _snpsrName :: !(Maybe Text)
    , _snpsrClusterId :: !(Maybe Text)
    , _snpsrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetNodePoolSizeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snpsrNodeCount'
--
-- * 'snpsrZone'
--
-- * 'snpsrNodePoolId'
--
-- * 'snpsrName'
--
-- * 'snpsrClusterId'
--
-- * 'snpsrProjectId'
setNodePoolSizeRequest
    :: SetNodePoolSizeRequest
setNodePoolSizeRequest =
  SetNodePoolSizeRequest'
    { _snpsrNodeCount = Nothing
    , _snpsrZone = Nothing
    , _snpsrNodePoolId = Nothing
    , _snpsrName = Nothing
    , _snpsrClusterId = Nothing
    , _snpsrProjectId = Nothing
    }


-- | Required. The desired node count for the pool.
snpsrNodeCount :: Lens' SetNodePoolSizeRequest (Maybe Int32)
snpsrNodeCount
  = lens _snpsrNodeCount
      (\ s a -> s{_snpsrNodeCount = a})
      . mapping _Coerce

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
snpsrZone :: Lens' SetNodePoolSizeRequest (Maybe Text)
snpsrZone
  = lens _snpsrZone (\ s a -> s{_snpsrZone = a})

-- | Deprecated. The name of the node pool to update. This field has been
-- deprecated and replaced by the name field.
snpsrNodePoolId :: Lens' SetNodePoolSizeRequest (Maybe Text)
snpsrNodePoolId
  = lens _snpsrNodePoolId
      (\ s a -> s{_snpsrNodePoolId = a})

-- | The name (project, location, cluster, node pool id) of the node pool to
-- set size. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
snpsrName :: Lens' SetNodePoolSizeRequest (Maybe Text)
snpsrName
  = lens _snpsrName (\ s a -> s{_snpsrName = a})

-- | Deprecated. The name of the cluster to update. This field has been
-- deprecated and replaced by the name field.
snpsrClusterId :: Lens' SetNodePoolSizeRequest (Maybe Text)
snpsrClusterId
  = lens _snpsrClusterId
      (\ s a -> s{_snpsrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
snpsrProjectId :: Lens' SetNodePoolSizeRequest (Maybe Text)
snpsrProjectId
  = lens _snpsrProjectId
      (\ s a -> s{_snpsrProjectId = a})

instance FromJSON SetNodePoolSizeRequest where
        parseJSON
          = withObject "SetNodePoolSizeRequest"
              (\ o ->
                 SetNodePoolSizeRequest' <$>
                   (o .:? "nodeCount") <*> (o .:? "zone") <*>
                     (o .:? "nodePoolId")
                     <*> (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId"))

instance ToJSON SetNodePoolSizeRequest where
        toJSON SetNodePoolSizeRequest'{..}
          = object
              (catMaybes
                 [("nodeCount" .=) <$> _snpsrNodeCount,
                  ("zone" .=) <$> _snpsrZone,
                  ("nodePoolId" .=) <$> _snpsrNodePoolId,
                  ("name" .=) <$> _snpsrName,
                  ("clusterId" .=) <$> _snpsrClusterId,
                  ("projectId" .=) <$> _snpsrProjectId])

-- | Configuration of etcd encryption.
--
-- /See:/ 'databaseEncryption' smart constructor.
data DatabaseEncryption =
  DatabaseEncryption'
    { _deState :: !(Maybe DatabaseEncryptionState)
    , _deKeyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabaseEncryption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deState'
--
-- * 'deKeyName'
databaseEncryption
    :: DatabaseEncryption
databaseEncryption =
  DatabaseEncryption' {_deState = Nothing, _deKeyName = Nothing}


-- | Denotes the state of etcd encryption.
deState :: Lens' DatabaseEncryption (Maybe DatabaseEncryptionState)
deState = lens _deState (\ s a -> s{_deState = a})

-- | Name of CloudKMS key to use for the encryption of secrets in etcd. Ex.
-- projects\/my-project\/locations\/global\/keyRings\/my-ring\/cryptoKeys\/my-key
deKeyName :: Lens' DatabaseEncryption (Maybe Text)
deKeyName
  = lens _deKeyName (\ s a -> s{_deKeyName = a})

instance FromJSON DatabaseEncryption where
        parseJSON
          = withObject "DatabaseEncryption"
              (\ o ->
                 DatabaseEncryption' <$>
                   (o .:? "state") <*> (o .:? "keyName"))

instance ToJSON DatabaseEncryption where
        toJSON DatabaseEncryption'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _deState,
                  ("keyName" .=) <$> _deKeyName])

-- | SetMonitoringServiceRequest sets the monitoring service of a cluster.
--
-- /See:/ 'setMonitoringServiceRequest' smart constructor.
data SetMonitoringServiceRequest =
  SetMonitoringServiceRequest'
    { _smsrZone :: !(Maybe Text)
    , _smsrName :: !(Maybe Text)
    , _smsrClusterId :: !(Maybe Text)
    , _smsrProjectId :: !(Maybe Text)
    , _smsrMonitoringService :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetMonitoringServiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smsrZone'
--
-- * 'smsrName'
--
-- * 'smsrClusterId'
--
-- * 'smsrProjectId'
--
-- * 'smsrMonitoringService'
setMonitoringServiceRequest
    :: SetMonitoringServiceRequest
setMonitoringServiceRequest =
  SetMonitoringServiceRequest'
    { _smsrZone = Nothing
    , _smsrName = Nothing
    , _smsrClusterId = Nothing
    , _smsrProjectId = Nothing
    , _smsrMonitoringService = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
smsrZone :: Lens' SetMonitoringServiceRequest (Maybe Text)
smsrZone = lens _smsrZone (\ s a -> s{_smsrZone = a})

-- | The name (project, location, cluster) of the cluster to set monitoring.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
smsrName :: Lens' SetMonitoringServiceRequest (Maybe Text)
smsrName = lens _smsrName (\ s a -> s{_smsrName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
smsrClusterId :: Lens' SetMonitoringServiceRequest (Maybe Text)
smsrClusterId
  = lens _smsrClusterId
      (\ s a -> s{_smsrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
smsrProjectId :: Lens' SetMonitoringServiceRequest (Maybe Text)
smsrProjectId
  = lens _smsrProjectId
      (\ s a -> s{_smsrProjectId = a})

-- | Required. The monitoring service the cluster should use to write
-- metrics. Currently available options: *
-- \"monitoring.googleapis.com\/kubernetes\" - The Cloud Monitoring service
-- with a Kubernetes-native resource model * \`monitoring.googleapis.com\`
-- - The legacy Cloud Monitoring service (no longer available as of GKE
-- 1.15). * \`none\` - No metrics will be exported from the cluster. If
-- left as an empty string,\`monitoring.googleapis.com\/kubernetes\` will
-- be used for GKE 1.14+ or \`monitoring.googleapis.com\` for earlier
-- versions.
smsrMonitoringService :: Lens' SetMonitoringServiceRequest (Maybe Text)
smsrMonitoringService
  = lens _smsrMonitoringService
      (\ s a -> s{_smsrMonitoringService = a})

instance FromJSON SetMonitoringServiceRequest where
        parseJSON
          = withObject "SetMonitoringServiceRequest"
              (\ o ->
                 SetMonitoringServiceRequest' <$>
                   (o .:? "zone") <*> (o .:? "name") <*>
                     (o .:? "clusterId")
                     <*> (o .:? "projectId")
                     <*> (o .:? "monitoringService"))

instance ToJSON SetMonitoringServiceRequest where
        toJSON SetMonitoringServiceRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _smsrZone,
                  ("name" .=) <$> _smsrName,
                  ("clusterId" .=) <$> _smsrClusterId,
                  ("projectId" .=) <$> _smsrProjectId,
                  ("monitoringService" .=) <$> _smsrMonitoringService])

-- | AutoprovisioningNodePoolDefaults contains defaults for a node pool
-- created by NAP.
--
-- /See:/ 'autoprovisioningNodePoolDefaults' smart constructor.
data AutoprovisioningNodePoolDefaults =
  AutoprovisioningNodePoolDefaults'
    { _anpdDiskSizeGb :: !(Maybe (Textual Int32))
    , _anpdUpgradeSettings :: !(Maybe UpgradeSettings)
    , _anpdManagement :: !(Maybe NodeManagement)
    , _anpdOAuthScopes :: !(Maybe [Text])
    , _anpdServiceAccount :: !(Maybe Text)
    , _anpdImageType :: !(Maybe Text)
    , _anpdDiskType :: !(Maybe Text)
    , _anpdShieldedInstanceConfig :: !(Maybe ShieldedInstanceConfig)
    , _anpdMinCPUPlatform :: !(Maybe Text)
    , _anpdBootDiskKmsKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoprovisioningNodePoolDefaults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'anpdDiskSizeGb'
--
-- * 'anpdUpgradeSettings'
--
-- * 'anpdManagement'
--
-- * 'anpdOAuthScopes'
--
-- * 'anpdServiceAccount'
--
-- * 'anpdImageType'
--
-- * 'anpdDiskType'
--
-- * 'anpdShieldedInstanceConfig'
--
-- * 'anpdMinCPUPlatform'
--
-- * 'anpdBootDiskKmsKey'
autoprovisioningNodePoolDefaults
    :: AutoprovisioningNodePoolDefaults
autoprovisioningNodePoolDefaults =
  AutoprovisioningNodePoolDefaults'
    { _anpdDiskSizeGb = Nothing
    , _anpdUpgradeSettings = Nothing
    , _anpdManagement = Nothing
    , _anpdOAuthScopes = Nothing
    , _anpdServiceAccount = Nothing
    , _anpdImageType = Nothing
    , _anpdDiskType = Nothing
    , _anpdShieldedInstanceConfig = Nothing
    , _anpdMinCPUPlatform = Nothing
    , _anpdBootDiskKmsKey = Nothing
    }


-- | Size of the disk attached to each node, specified in GB. The smallest
-- allowed disk size is 10GB. If unspecified, the default disk size is
-- 100GB.
anpdDiskSizeGb :: Lens' AutoprovisioningNodePoolDefaults (Maybe Int32)
anpdDiskSizeGb
  = lens _anpdDiskSizeGb
      (\ s a -> s{_anpdDiskSizeGb = a})
      . mapping _Coerce

-- | Specifies the upgrade settings for NAP created node pools
anpdUpgradeSettings :: Lens' AutoprovisioningNodePoolDefaults (Maybe UpgradeSettings)
anpdUpgradeSettings
  = lens _anpdUpgradeSettings
      (\ s a -> s{_anpdUpgradeSettings = a})

-- | Specifies the node management options for NAP created node-pools.
anpdManagement :: Lens' AutoprovisioningNodePoolDefaults (Maybe NodeManagement)
anpdManagement
  = lens _anpdManagement
      (\ s a -> s{_anpdManagement = a})

-- | Scopes that are used by NAP when creating node pools.
anpdOAuthScopes :: Lens' AutoprovisioningNodePoolDefaults [Text]
anpdOAuthScopes
  = lens _anpdOAuthScopes
      (\ s a -> s{_anpdOAuthScopes = a})
      . _Default
      . _Coerce

-- | The Google Cloud Platform Service Account to be used by the node VMs.
anpdServiceAccount :: Lens' AutoprovisioningNodePoolDefaults (Maybe Text)
anpdServiceAccount
  = lens _anpdServiceAccount
      (\ s a -> s{_anpdServiceAccount = a})

-- | The image type to use for NAP created node.
anpdImageType :: Lens' AutoprovisioningNodePoolDefaults (Maybe Text)
anpdImageType
  = lens _anpdImageType
      (\ s a -> s{_anpdImageType = a})

-- | Type of the disk attached to each node (e.g. \'pd-standard\', \'pd-ssd\'
-- or \'pd-balanced\') If unspecified, the default disk type is
-- \'pd-standard\'
anpdDiskType :: Lens' AutoprovisioningNodePoolDefaults (Maybe Text)
anpdDiskType
  = lens _anpdDiskType (\ s a -> s{_anpdDiskType = a})

-- | Shielded Instance options.
anpdShieldedInstanceConfig :: Lens' AutoprovisioningNodePoolDefaults (Maybe ShieldedInstanceConfig)
anpdShieldedInstanceConfig
  = lens _anpdShieldedInstanceConfig
      (\ s a -> s{_anpdShieldedInstanceConfig = a})

-- | Minimum CPU platform to be used for NAP created node pools. The instance
-- may be scheduled on the specified or newer CPU platform. Applicable
-- values are the friendly names of CPU platforms, such as minCpuPlatform:
-- Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more
-- information, read [how to specify min CPU
-- platform](https:\/\/cloud.google.com\/compute\/docs\/instances\/specify-min-cpu-platform)
-- To unset the min cpu platform field pass \"automatic\" as field value.
anpdMinCPUPlatform :: Lens' AutoprovisioningNodePoolDefaults (Maybe Text)
anpdMinCPUPlatform
  = lens _anpdMinCPUPlatform
      (\ s a -> s{_anpdMinCPUPlatform = a})

-- | The Customer Managed Encryption Key used to encrypt the boot disk
-- attached to each node in the node pool. This should be of the form
-- projects\/[KEY_PROJECT_ID]\/locations\/[LOCATION]\/keyRings\/[RING_NAME]\/cryptoKeys\/[KEY_NAME].
-- For more information about protecting resources with Cloud KMS Keys
-- please see:
-- https:\/\/cloud.google.com\/compute\/docs\/disks\/customer-managed-encryption
anpdBootDiskKmsKey :: Lens' AutoprovisioningNodePoolDefaults (Maybe Text)
anpdBootDiskKmsKey
  = lens _anpdBootDiskKmsKey
      (\ s a -> s{_anpdBootDiskKmsKey = a})

instance FromJSON AutoprovisioningNodePoolDefaults
         where
        parseJSON
          = withObject "AutoprovisioningNodePoolDefaults"
              (\ o ->
                 AutoprovisioningNodePoolDefaults' <$>
                   (o .:? "diskSizeGb") <*> (o .:? "upgradeSettings")
                     <*> (o .:? "management")
                     <*> (o .:? "oauthScopes" .!= mempty)
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "imageType")
                     <*> (o .:? "diskType")
                     <*> (o .:? "shieldedInstanceConfig")
                     <*> (o .:? "minCpuPlatform")
                     <*> (o .:? "bootDiskKmsKey"))

instance ToJSON AutoprovisioningNodePoolDefaults
         where
        toJSON AutoprovisioningNodePoolDefaults'{..}
          = object
              (catMaybes
                 [("diskSizeGb" .=) <$> _anpdDiskSizeGb,
                  ("upgradeSettings" .=) <$> _anpdUpgradeSettings,
                  ("management" .=) <$> _anpdManagement,
                  ("oauthScopes" .=) <$> _anpdOAuthScopes,
                  ("serviceAccount" .=) <$> _anpdServiceAccount,
                  ("imageType" .=) <$> _anpdImageType,
                  ("diskType" .=) <$> _anpdDiskType,
                  ("shieldedInstanceConfig" .=) <$>
                    _anpdShieldedInstanceConfig,
                  ("minCpuPlatform" .=) <$> _anpdMinCPUPlatform,
                  ("bootDiskKmsKey" .=) <$> _anpdBootDiskKmsKey])

-- | SetLoggingServiceRequest sets the logging service of a cluster.
--
-- /See:/ 'setLoggingServiceRequest' smart constructor.
data SetLoggingServiceRequest =
  SetLoggingServiceRequest'
    { _slsrZone :: !(Maybe Text)
    , _slsrName :: !(Maybe Text)
    , _slsrClusterId :: !(Maybe Text)
    , _slsrProjectId :: !(Maybe Text)
    , _slsrLoggingService :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetLoggingServiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slsrZone'
--
-- * 'slsrName'
--
-- * 'slsrClusterId'
--
-- * 'slsrProjectId'
--
-- * 'slsrLoggingService'
setLoggingServiceRequest
    :: SetLoggingServiceRequest
setLoggingServiceRequest =
  SetLoggingServiceRequest'
    { _slsrZone = Nothing
    , _slsrName = Nothing
    , _slsrClusterId = Nothing
    , _slsrProjectId = Nothing
    , _slsrLoggingService = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
slsrZone :: Lens' SetLoggingServiceRequest (Maybe Text)
slsrZone = lens _slsrZone (\ s a -> s{_slsrZone = a})

-- | The name (project, location, cluster) of the cluster to set logging.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
slsrName :: Lens' SetLoggingServiceRequest (Maybe Text)
slsrName = lens _slsrName (\ s a -> s{_slsrName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
slsrClusterId :: Lens' SetLoggingServiceRequest (Maybe Text)
slsrClusterId
  = lens _slsrClusterId
      (\ s a -> s{_slsrClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
slsrProjectId :: Lens' SetLoggingServiceRequest (Maybe Text)
slsrProjectId
  = lens _slsrProjectId
      (\ s a -> s{_slsrProjectId = a})

-- | Required. The logging service the cluster should use to write logs.
-- Currently available options: * \`logging.googleapis.com\/kubernetes\` -
-- The Cloud Logging service with a Kubernetes-native resource model *
-- \`logging.googleapis.com\` - The legacy Cloud Logging service (no longer
-- available as of GKE 1.15). * \`none\` - no logs will be exported from
-- the cluster. If left as an empty
-- string,\`logging.googleapis.com\/kubernetes\` will be used for GKE 1.14+
-- or \`logging.googleapis.com\` for earlier versions.
slsrLoggingService :: Lens' SetLoggingServiceRequest (Maybe Text)
slsrLoggingService
  = lens _slsrLoggingService
      (\ s a -> s{_slsrLoggingService = a})

instance FromJSON SetLoggingServiceRequest where
        parseJSON
          = withObject "SetLoggingServiceRequest"
              (\ o ->
                 SetLoggingServiceRequest' <$>
                   (o .:? "zone") <*> (o .:? "name") <*>
                     (o .:? "clusterId")
                     <*> (o .:? "projectId")
                     <*> (o .:? "loggingService"))

instance ToJSON SetLoggingServiceRequest where
        toJSON SetLoggingServiceRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _slsrZone,
                  ("name" .=) <$> _slsrName,
                  ("clusterId" .=) <$> _slsrClusterId,
                  ("projectId" .=) <$> _slsrProjectId,
                  ("loggingService" .=) <$> _slsrLoggingService])

-- | MaintenancePolicy defines the maintenance policy to be used for the
-- cluster.
--
-- /See:/ 'maintenancePolicy' smart constructor.
data MaintenancePolicy =
  MaintenancePolicy'
    { _mpWindow :: !(Maybe MaintenanceWindow)
    , _mpResourceVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenancePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpWindow'
--
-- * 'mpResourceVersion'
maintenancePolicy
    :: MaintenancePolicy
maintenancePolicy =
  MaintenancePolicy' {_mpWindow = Nothing, _mpResourceVersion = Nothing}


-- | Specifies the maintenance window in which maintenance may be performed.
mpWindow :: Lens' MaintenancePolicy (Maybe MaintenanceWindow)
mpWindow = lens _mpWindow (\ s a -> s{_mpWindow = a})

-- | A hash identifying the version of this policy, so that updates to fields
-- of the policy won\'t accidentally undo intermediate changes (and so that
-- users of the API unaware of some fields won\'t accidentally remove other
-- fields). Make a \`get()\` request to the cluster to get the current
-- resource version and include it with requests to set the policy.
mpResourceVersion :: Lens' MaintenancePolicy (Maybe Text)
mpResourceVersion
  = lens _mpResourceVersion
      (\ s a -> s{_mpResourceVersion = a})

instance FromJSON MaintenancePolicy where
        parseJSON
          = withObject "MaintenancePolicy"
              (\ o ->
                 MaintenancePolicy' <$>
                   (o .:? "window") <*> (o .:? "resourceVersion"))

instance ToJSON MaintenancePolicy where
        toJSON MaintenancePolicy'{..}
          = object
              (catMaybes
                 [("window" .=) <$> _mpWindow,
                  ("resourceVersion" .=) <$> _mpResourceVersion])

-- | Configuration of Shielded Nodes feature.
--
-- /See:/ 'shieldedNodes' smart constructor.
newtype ShieldedNodes =
  ShieldedNodes'
    { _snEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShieldedNodes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snEnabled'
shieldedNodes
    :: ShieldedNodes
shieldedNodes = ShieldedNodes' {_snEnabled = Nothing}


-- | Whether Shielded Nodes features are enabled on all nodes in this
-- cluster.
snEnabled :: Lens' ShieldedNodes (Maybe Bool)
snEnabled
  = lens _snEnabled (\ s a -> s{_snEnabled = a})

instance FromJSON ShieldedNodes where
        parseJSON
          = withObject "ShieldedNodes"
              (\ o -> ShieldedNodes' <$> (o .:? "enabled"))

instance ToJSON ShieldedNodes where
        toJSON ShieldedNodes'{..}
          = object (catMaybes [("enabled" .=) <$> _snEnabled])

-- | CidrBlock contains an optional name and one CIDR block.
--
-- /See:/ 'cIdRBlock' smart constructor.
data CIdRBlock =
  CIdRBlock'
    { _cirbCIdRBlock :: !(Maybe Text)
    , _cirbDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CIdRBlock' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirbCIdRBlock'
--
-- * 'cirbDisplayName'
cIdRBlock
    :: CIdRBlock
cIdRBlock = CIdRBlock' {_cirbCIdRBlock = Nothing, _cirbDisplayName = Nothing}


-- | cidr_block must be specified in CIDR notation.
cirbCIdRBlock :: Lens' CIdRBlock (Maybe Text)
cirbCIdRBlock
  = lens _cirbCIdRBlock
      (\ s a -> s{_cirbCIdRBlock = a})

-- | display_name is an optional field for users to identify CIDR blocks.
cirbDisplayName :: Lens' CIdRBlock (Maybe Text)
cirbDisplayName
  = lens _cirbDisplayName
      (\ s a -> s{_cirbDisplayName = a})

instance FromJSON CIdRBlock where
        parseJSON
          = withObject "CIdRBlock"
              (\ o ->
                 CIdRBlock' <$>
                   (o .:? "cidrBlock") <*> (o .:? "displayName"))

instance ToJSON CIdRBlock where
        toJSON CIdRBlock'{..}
          = object
              (catMaybes
                 [("cidrBlock" .=) <$> _cirbCIdRBlock,
                  ("displayName" .=) <$> _cirbDisplayName])

-- | A set of Shielded Instance options.
--
-- /See:/ 'shieldedInstanceConfig' smart constructor.
data ShieldedInstanceConfig =
  ShieldedInstanceConfig'
    { _sicEnableIntegrityMonitoring :: !(Maybe Bool)
    , _sicEnableSecureBoot :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShieldedInstanceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sicEnableIntegrityMonitoring'
--
-- * 'sicEnableSecureBoot'
shieldedInstanceConfig
    :: ShieldedInstanceConfig
shieldedInstanceConfig =
  ShieldedInstanceConfig'
    {_sicEnableIntegrityMonitoring = Nothing, _sicEnableSecureBoot = Nothing}


-- | Defines whether the instance has integrity monitoring enabled. Enables
-- monitoring and attestation of the boot integrity of the instance. The
-- attestation is performed against the integrity policy baseline. This
-- baseline is initially derived from the implicitly trusted boot image
-- when the instance is created.
sicEnableIntegrityMonitoring :: Lens' ShieldedInstanceConfig (Maybe Bool)
sicEnableIntegrityMonitoring
  = lens _sicEnableIntegrityMonitoring
      (\ s a -> s{_sicEnableIntegrityMonitoring = a})

-- | Defines whether the instance has Secure Boot enabled. Secure Boot helps
-- ensure that the system only runs authentic software by verifying the
-- digital signature of all boot components, and halting the boot process
-- if signature verification fails.
sicEnableSecureBoot :: Lens' ShieldedInstanceConfig (Maybe Bool)
sicEnableSecureBoot
  = lens _sicEnableSecureBoot
      (\ s a -> s{_sicEnableSecureBoot = a})

instance FromJSON ShieldedInstanceConfig where
        parseJSON
          = withObject "ShieldedInstanceConfig"
              (\ o ->
                 ShieldedInstanceConfig' <$>
                   (o .:? "enableIntegrityMonitoring") <*>
                     (o .:? "enableSecureBoot"))

instance ToJSON ShieldedInstanceConfig where
        toJSON ShieldedInstanceConfig'{..}
          = object
              (catMaybes
                 [("enableIntegrityMonitoring" .=) <$>
                    _sicEnableIntegrityMonitoring,
                  ("enableSecureBoot" .=) <$> _sicEnableSecureBoot])

-- | AcceleratorConfig represents a Hardware Accelerator request.
--
-- /See:/ 'acceleratorConfig' smart constructor.
data AcceleratorConfig =
  AcceleratorConfig'
    { _acAcceleratorCount :: !(Maybe (Textual Int64))
    , _acAcceleratorType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AcceleratorConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acAcceleratorCount'
--
-- * 'acAcceleratorType'
acceleratorConfig
    :: AcceleratorConfig
acceleratorConfig =
  AcceleratorConfig'
    {_acAcceleratorCount = Nothing, _acAcceleratorType = Nothing}


-- | The number of the accelerator cards exposed to an instance.
acAcceleratorCount :: Lens' AcceleratorConfig (Maybe Int64)
acAcceleratorCount
  = lens _acAcceleratorCount
      (\ s a -> s{_acAcceleratorCount = a})
      . mapping _Coerce

-- | The accelerator type resource name. List of supported accelerators
-- [here](https:\/\/cloud.google.com\/compute\/docs\/gpus)
acAcceleratorType :: Lens' AcceleratorConfig (Maybe Text)
acAcceleratorType
  = lens _acAcceleratorType
      (\ s a -> s{_acAcceleratorType = a})

instance FromJSON AcceleratorConfig where
        parseJSON
          = withObject "AcceleratorConfig"
              (\ o ->
                 AcceleratorConfig' <$>
                   (o .:? "acceleratorCount") <*>
                     (o .:? "acceleratorType"))

instance ToJSON AcceleratorConfig where
        toJSON AcceleratorConfig'{..}
          = object
              (catMaybes
                 [("acceleratorCount" .=) <$> _acAcceleratorCount,
                  ("acceleratorType" .=) <$> _acAcceleratorType])

-- | SetLocationsRequest sets the locations of the cluster.
--
-- /See:/ 'setLocationsRequest' smart constructor.
data SetLocationsRequest =
  SetLocationsRequest'
    { _sZone :: !(Maybe Text)
    , _sName :: !(Maybe Text)
    , _sClusterId :: !(Maybe Text)
    , _sProjectId :: !(Maybe Text)
    , _sLocations :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetLocationsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sZone'
--
-- * 'sName'
--
-- * 'sClusterId'
--
-- * 'sProjectId'
--
-- * 'sLocations'
setLocationsRequest
    :: SetLocationsRequest
setLocationsRequest =
  SetLocationsRequest'
    { _sZone = Nothing
    , _sName = Nothing
    , _sClusterId = Nothing
    , _sProjectId = Nothing
    , _sLocations = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
sZone :: Lens' SetLocationsRequest (Maybe Text)
sZone = lens _sZone (\ s a -> s{_sZone = a})

-- | The name (project, location, cluster) of the cluster to set locations.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
sName :: Lens' SetLocationsRequest (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
sClusterId :: Lens' SetLocationsRequest (Maybe Text)
sClusterId
  = lens _sClusterId (\ s a -> s{_sClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
sProjectId :: Lens' SetLocationsRequest (Maybe Text)
sProjectId
  = lens _sProjectId (\ s a -> s{_sProjectId = a})

-- | Required. The desired list of Google Compute Engine
-- [zones](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster\'s nodes should be located. Changing the locations a
-- cluster is in will result in nodes being either created or removed from
-- the cluster, depending on whether locations are being added or removed.
-- This list must always include the cluster\'s primary zone.
sLocations :: Lens' SetLocationsRequest [Text]
sLocations
  = lens _sLocations (\ s a -> s{_sLocations = a}) .
      _Default
      . _Coerce

instance FromJSON SetLocationsRequest where
        parseJSON
          = withObject "SetLocationsRequest"
              (\ o ->
                 SetLocationsRequest' <$>
                   (o .:? "zone") <*> (o .:? "name") <*>
                     (o .:? "clusterId")
                     <*> (o .:? "projectId")
                     <*> (o .:? "locations" .!= mempty))

instance ToJSON SetLocationsRequest where
        toJSON SetLocationsRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _sZone, ("name" .=) <$> _sName,
                  ("clusterId" .=) <$> _sClusterId,
                  ("projectId" .=) <$> _sProjectId,
                  ("locations" .=) <$> _sLocations])

-- | SetNetworkPolicyRequest enables\/disables network policy for a cluster.
--
-- /See:/ 'setNetworkPolicyRequest' smart constructor.
data SetNetworkPolicyRequest =
  SetNetworkPolicyRequest'
    { _snprZone :: !(Maybe Text)
    , _snprName :: !(Maybe Text)
    , _snprClusterId :: !(Maybe Text)
    , _snprProjectId :: !(Maybe Text)
    , _snprNetworkPolicy :: !(Maybe NetworkPolicy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetNetworkPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snprZone'
--
-- * 'snprName'
--
-- * 'snprClusterId'
--
-- * 'snprProjectId'
--
-- * 'snprNetworkPolicy'
setNetworkPolicyRequest
    :: SetNetworkPolicyRequest
setNetworkPolicyRequest =
  SetNetworkPolicyRequest'
    { _snprZone = Nothing
    , _snprName = Nothing
    , _snprClusterId = Nothing
    , _snprProjectId = Nothing
    , _snprNetworkPolicy = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
snprZone :: Lens' SetNetworkPolicyRequest (Maybe Text)
snprZone = lens _snprZone (\ s a -> s{_snprZone = a})

-- | The name (project, location, cluster id) of the cluster to set
-- networking policy. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\`.
snprName :: Lens' SetNetworkPolicyRequest (Maybe Text)
snprName = lens _snprName (\ s a -> s{_snprName = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the name field.
snprClusterId :: Lens' SetNetworkPolicyRequest (Maybe Text)
snprClusterId
  = lens _snprClusterId
      (\ s a -> s{_snprClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the name field.
snprProjectId :: Lens' SetNetworkPolicyRequest (Maybe Text)
snprProjectId
  = lens _snprProjectId
      (\ s a -> s{_snprProjectId = a})

-- | Required. Configuration options for the NetworkPolicy feature.
snprNetworkPolicy :: Lens' SetNetworkPolicyRequest (Maybe NetworkPolicy)
snprNetworkPolicy
  = lens _snprNetworkPolicy
      (\ s a -> s{_snprNetworkPolicy = a})

instance FromJSON SetNetworkPolicyRequest where
        parseJSON
          = withObject "SetNetworkPolicyRequest"
              (\ o ->
                 SetNetworkPolicyRequest' <$>
                   (o .:? "zone") <*> (o .:? "name") <*>
                     (o .:? "clusterId")
                     <*> (o .:? "projectId")
                     <*> (o .:? "networkPolicy"))

instance ToJSON SetNetworkPolicyRequest where
        toJSON SetNetworkPolicyRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _snprZone,
                  ("name" .=) <$> _snprName,
                  ("clusterId" .=) <$> _snprClusterId,
                  ("projectId" .=) <$> _snprProjectId,
                  ("networkPolicy" .=) <$> _snprNetworkPolicy])

-- | Configuration options for private clusters.
--
-- /See:/ 'privateClusterConfig' smart constructor.
data PrivateClusterConfig =
  PrivateClusterConfig'
    { _pccEnablePrivateNodes :: !(Maybe Bool)
    , _pccEnablePrivateEndpoint :: !(Maybe Bool)
    , _pccPublicEndpoint :: !(Maybe Text)
    , _pccMasterIPv4CIdRBlock :: !(Maybe Text)
    , _pccPrivateEndpoint :: !(Maybe Text)
    , _pccMasterGlobalAccessConfig :: !(Maybe PrivateClusterMasterGlobalAccessConfig)
    , _pccPeeringName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrivateClusterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccEnablePrivateNodes'
--
-- * 'pccEnablePrivateEndpoint'
--
-- * 'pccPublicEndpoint'
--
-- * 'pccMasterIPv4CIdRBlock'
--
-- * 'pccPrivateEndpoint'
--
-- * 'pccMasterGlobalAccessConfig'
--
-- * 'pccPeeringName'
privateClusterConfig
    :: PrivateClusterConfig
privateClusterConfig =
  PrivateClusterConfig'
    { _pccEnablePrivateNodes = Nothing
    , _pccEnablePrivateEndpoint = Nothing
    , _pccPublicEndpoint = Nothing
    , _pccMasterIPv4CIdRBlock = Nothing
    , _pccPrivateEndpoint = Nothing
    , _pccMasterGlobalAccessConfig = Nothing
    , _pccPeeringName = Nothing
    }


-- | Whether nodes have internal IP addresses only. If enabled, all nodes are
-- given only RFC 1918 private addresses and communicate with the master
-- via private networking.
pccEnablePrivateNodes :: Lens' PrivateClusterConfig (Maybe Bool)
pccEnablePrivateNodes
  = lens _pccEnablePrivateNodes
      (\ s a -> s{_pccEnablePrivateNodes = a})

-- | Whether the master\'s internal IP address is used as the cluster
-- endpoint.
pccEnablePrivateEndpoint :: Lens' PrivateClusterConfig (Maybe Bool)
pccEnablePrivateEndpoint
  = lens _pccEnablePrivateEndpoint
      (\ s a -> s{_pccEnablePrivateEndpoint = a})

-- | Output only. The external IP address of this cluster\'s master endpoint.
pccPublicEndpoint :: Lens' PrivateClusterConfig (Maybe Text)
pccPublicEndpoint
  = lens _pccPublicEndpoint
      (\ s a -> s{_pccPublicEndpoint = a})

-- | The IP range in CIDR notation to use for the hosted master network. This
-- range will be used for assigning internal IP addresses to the master or
-- set of masters, as well as the ILB VIP. This range must not overlap with
-- any other ranges in use within the cluster\'s network.
pccMasterIPv4CIdRBlock :: Lens' PrivateClusterConfig (Maybe Text)
pccMasterIPv4CIdRBlock
  = lens _pccMasterIPv4CIdRBlock
      (\ s a -> s{_pccMasterIPv4CIdRBlock = a})

-- | Output only. The internal IP address of this cluster\'s master endpoint.
pccPrivateEndpoint :: Lens' PrivateClusterConfig (Maybe Text)
pccPrivateEndpoint
  = lens _pccPrivateEndpoint
      (\ s a -> s{_pccPrivateEndpoint = a})

-- | Controls master global access settings.
pccMasterGlobalAccessConfig :: Lens' PrivateClusterConfig (Maybe PrivateClusterMasterGlobalAccessConfig)
pccMasterGlobalAccessConfig
  = lens _pccMasterGlobalAccessConfig
      (\ s a -> s{_pccMasterGlobalAccessConfig = a})

-- | Output only. The peering name in the customer VPC used by this cluster.
pccPeeringName :: Lens' PrivateClusterConfig (Maybe Text)
pccPeeringName
  = lens _pccPeeringName
      (\ s a -> s{_pccPeeringName = a})

instance FromJSON PrivateClusterConfig where
        parseJSON
          = withObject "PrivateClusterConfig"
              (\ o ->
                 PrivateClusterConfig' <$>
                   (o .:? "enablePrivateNodes") <*>
                     (o .:? "enablePrivateEndpoint")
                     <*> (o .:? "publicEndpoint")
                     <*> (o .:? "masterIpv4CidrBlock")
                     <*> (o .:? "privateEndpoint")
                     <*> (o .:? "masterGlobalAccessConfig")
                     <*> (o .:? "peeringName"))

instance ToJSON PrivateClusterConfig where
        toJSON PrivateClusterConfig'{..}
          = object
              (catMaybes
                 [("enablePrivateNodes" .=) <$>
                    _pccEnablePrivateNodes,
                  ("enablePrivateEndpoint" .=) <$>
                    _pccEnablePrivateEndpoint,
                  ("publicEndpoint" .=) <$> _pccPublicEndpoint,
                  ("masterIpv4CidrBlock" .=) <$>
                    _pccMasterIPv4CIdRBlock,
                  ("privateEndpoint" .=) <$> _pccPrivateEndpoint,
                  ("masterGlobalAccessConfig" .=) <$>
                    _pccMasterGlobalAccessConfig,
                  ("peeringName" .=) <$> _pccPeeringName])

-- | WorkloadMetadataConfig defines the metadata configuration to expose to
-- workloads on the node pool.
--
-- /See:/ 'workLoadMetadataConfig' smart constructor.
newtype WorkLoadMetadataConfig =
  WorkLoadMetadataConfig'
    { _wlmcMode :: Maybe WorkLoadMetadataConfigMode
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkLoadMetadataConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlmcMode'
workLoadMetadataConfig
    :: WorkLoadMetadataConfig
workLoadMetadataConfig = WorkLoadMetadataConfig' {_wlmcMode = Nothing}


-- | Mode is the configuration for how to expose metadata to workloads
-- running on the node pool.
wlmcMode :: Lens' WorkLoadMetadataConfig (Maybe WorkLoadMetadataConfigMode)
wlmcMode = lens _wlmcMode (\ s a -> s{_wlmcMode = a})

instance FromJSON WorkLoadMetadataConfig where
        parseJSON
          = withObject "WorkLoadMetadataConfig"
              (\ o -> WorkLoadMetadataConfig' <$> (o .:? "mode"))

instance ToJSON WorkLoadMetadataConfig where
        toJSON WorkLoadMetadataConfig'{..}
          = object (catMaybes [("mode" .=) <$> _wlmcMode])

-- | Time window specified for daily maintenance operations.
--
-- /See:/ 'dailyMaintenanceWindow' smart constructor.
data DailyMaintenanceWindow =
  DailyMaintenanceWindow'
    { _dmwStartTime :: !(Maybe Text)
    , _dmwDuration :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DailyMaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwStartTime'
--
-- * 'dmwDuration'
dailyMaintenanceWindow
    :: DailyMaintenanceWindow
dailyMaintenanceWindow =
  DailyMaintenanceWindow' {_dmwStartTime = Nothing, _dmwDuration = Nothing}


-- | Time within the maintenance window to start the maintenance operations.
-- Time format should be in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) format \"HH:MM\",
-- where HH : [00-23] and MM : [00-59] GMT.
dmwStartTime :: Lens' DailyMaintenanceWindow (Maybe Text)
dmwStartTime
  = lens _dmwStartTime (\ s a -> s{_dmwStartTime = a})

-- | [Output only] Duration of the time window, automatically chosen to be
-- smallest possible in the given scenario. Duration will be in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) format \"PTnHnMnS\".
dmwDuration :: Lens' DailyMaintenanceWindow (Maybe Text)
dmwDuration
  = lens _dmwDuration (\ s a -> s{_dmwDuration = a})

instance FromJSON DailyMaintenanceWindow where
        parseJSON
          = withObject "DailyMaintenanceWindow"
              (\ o ->
                 DailyMaintenanceWindow' <$>
                   (o .:? "startTime") <*> (o .:? "duration"))

instance ToJSON DailyMaintenanceWindow where
        toJSON DailyMaintenanceWindow'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _dmwStartTime,
                  ("duration" .=) <$> _dmwDuration])

-- | ListClustersResponse is the result of ListClustersRequest.
--
-- /See:/ 'listClustersResponse' smart constructor.
data ListClustersResponse =
  ListClustersResponse'
    { _lcrClusters :: !(Maybe [Cluster])
    , _lcrMissingZones :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrClusters'
--
-- * 'lcrMissingZones'
listClustersResponse
    :: ListClustersResponse
listClustersResponse =
  ListClustersResponse' {_lcrClusters = Nothing, _lcrMissingZones = Nothing}


-- | A list of clusters in the project in the specified zone, or across all
-- ones.
lcrClusters :: Lens' ListClustersResponse [Cluster]
lcrClusters
  = lens _lcrClusters (\ s a -> s{_lcrClusters = a}) .
      _Default
      . _Coerce

-- | If any zones are listed here, the list of clusters returned may be
-- missing those zones.
lcrMissingZones :: Lens' ListClustersResponse [Text]
lcrMissingZones
  = lens _lcrMissingZones
      (\ s a -> s{_lcrMissingZones = a})
      . _Default
      . _Coerce

instance FromJSON ListClustersResponse where
        parseJSON
          = withObject "ListClustersResponse"
              (\ o ->
                 ListClustersResponse' <$>
                   (o .:? "clusters" .!= mempty) <*>
                     (o .:? "missingZones" .!= mempty))

instance ToJSON ListClustersResponse where
        toJSON ListClustersResponse'{..}
          = object
              (catMaybes
                 [("clusters" .=) <$> _lcrClusters,
                  ("missingZones" .=) <$> _lcrMissingZones])

-- | ReleaseChannelConfig exposes configuration for a release channel.
--
-- /See:/ 'releaseChannelConfig' smart constructor.
data ReleaseChannelConfig =
  ReleaseChannelConfig'
    { _rccValidVersions :: !(Maybe [Text])
    , _rccChannel :: !(Maybe ReleaseChannelConfigChannel)
    , _rccDefaultVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReleaseChannelConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccValidVersions'
--
-- * 'rccChannel'
--
-- * 'rccDefaultVersion'
releaseChannelConfig
    :: ReleaseChannelConfig
releaseChannelConfig =
  ReleaseChannelConfig'
    { _rccValidVersions = Nothing
    , _rccChannel = Nothing
    , _rccDefaultVersion = Nothing
    }


-- | List of valid versions for the channel.
rccValidVersions :: Lens' ReleaseChannelConfig [Text]
rccValidVersions
  = lens _rccValidVersions
      (\ s a -> s{_rccValidVersions = a})
      . _Default
      . _Coerce

-- | The release channel this configuration applies to.
rccChannel :: Lens' ReleaseChannelConfig (Maybe ReleaseChannelConfigChannel)
rccChannel
  = lens _rccChannel (\ s a -> s{_rccChannel = a})

-- | The default version for newly created clusters on the channel.
rccDefaultVersion :: Lens' ReleaseChannelConfig (Maybe Text)
rccDefaultVersion
  = lens _rccDefaultVersion
      (\ s a -> s{_rccDefaultVersion = a})

instance FromJSON ReleaseChannelConfig where
        parseJSON
          = withObject "ReleaseChannelConfig"
              (\ o ->
                 ReleaseChannelConfig' <$>
                   (o .:? "validVersions" .!= mempty) <*>
                     (o .:? "channel")
                     <*> (o .:? "defaultVersion"))

instance ToJSON ReleaseChannelConfig where
        toJSON ReleaseChannelConfig'{..}
          = object
              (catMaybes
                 [("validVersions" .=) <$> _rccValidVersions,
                  ("channel" .=) <$> _rccChannel,
                  ("defaultVersion" .=) <$> _rccDefaultVersion])

-- | Configuration for returning group information from authenticators.
--
-- /See:/ 'authenticatorGroupsConfig' smart constructor.
data AuthenticatorGroupsConfig =
  AuthenticatorGroupsConfig'
    { _agcEnabled :: !(Maybe Bool)
    , _agcSecurityGroup :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthenticatorGroupsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agcEnabled'
--
-- * 'agcSecurityGroup'
authenticatorGroupsConfig
    :: AuthenticatorGroupsConfig
authenticatorGroupsConfig =
  AuthenticatorGroupsConfig'
    {_agcEnabled = Nothing, _agcSecurityGroup = Nothing}


-- | Whether this cluster should return group membership lookups during
-- authentication using a group of security groups.
agcEnabled :: Lens' AuthenticatorGroupsConfig (Maybe Bool)
agcEnabled
  = lens _agcEnabled (\ s a -> s{_agcEnabled = a})

-- | The name of the security group-of-groups to be used. Only relevant if
-- enabled = true.
agcSecurityGroup :: Lens' AuthenticatorGroupsConfig (Maybe Text)
agcSecurityGroup
  = lens _agcSecurityGroup
      (\ s a -> s{_agcSecurityGroup = a})

instance FromJSON AuthenticatorGroupsConfig where
        parseJSON
          = withObject "AuthenticatorGroupsConfig"
              (\ o ->
                 AuthenticatorGroupsConfig' <$>
                   (o .:? "enabled") <*> (o .:? "securityGroup"))

instance ToJSON AuthenticatorGroupsConfig where
        toJSON AuthenticatorGroupsConfig'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _agcEnabled,
                  ("securityGroup" .=) <$> _agcSecurityGroup])

-- | ClusterUpdate describes an update to the cluster. Exactly one update can
-- be applied to a cluster with each request, so at most one field can be
-- provided.
--
-- /See:/ 'clusterUpdate' smart constructor.
data ClusterUpdate =
  ClusterUpdate'
    { _cuDesiredBinaryAuthorization :: !(Maybe BinaryAuthorization)
    , _cuDesiredNotificationConfig :: !(Maybe NotificationConfig)
    , _cuDesiredL4ilbSubSettingConfig :: !(Maybe ILBSubSettingConfig)
    , _cuDesiredClusterAutoscaling :: !(Maybe ClusterAutoscaling)
    , _cuDesiredWorkLoadIdentityConfig :: !(Maybe WorkLoadIdentityConfig)
    , _cuDesiredNodePoolAutoscaling :: !(Maybe NodePoolAutoscaling)
    , _cuDesiredAddonsConfig :: !(Maybe AddonsConfig)
    , _cuDesiredResourceUsageExportConfig :: !(Maybe ResourceUsageExportConfig)
    , _cuDesiredNodePoolId :: !(Maybe Text)
    , _cuDesiredAutopilot :: !(Maybe Autopilot)
    , _cuDesiredDatapathProvider :: !(Maybe ClusterUpdateDesiredDatapathProvider)
    , _cuDesiredMasterAuthorizedNetworksConfig :: !(Maybe MasterAuthorizedNetworksConfig)
    , _cuDesiredIntraNodeVisibilityConfig :: !(Maybe IntraNodeVisibilityConfig)
    , _cuDesiredImageType :: !(Maybe Text)
    , _cuDesiredDefaultSnatStatus :: !(Maybe DefaultSnatStatus)
    , _cuDesiredNodeVersion :: !(Maybe Text)
    , _cuDesiredReleaseChannel :: !(Maybe ReleaseChannel)
    , _cuDesiredDatabaseEncryption :: !(Maybe DatabaseEncryption)
    , _cuDesiredPrivateClusterConfig :: !(Maybe PrivateClusterConfig)
    , _cuDesiredShieldedNodes :: !(Maybe ShieldedNodes)
    , _cuDesiredAuthenticatorGroupsConfig :: !(Maybe AuthenticatorGroupsConfig)
    , _cuDesiredVerticalPodAutoscaling :: !(Maybe VerticalPodAutoscaling)
    , _cuDesiredMasterVersion :: !(Maybe Text)
    , _cuDesiredLocations :: !(Maybe [Text])
    , _cuDesiredLoggingService :: !(Maybe Text)
    , _cuDesiredMonitoringService :: !(Maybe Text)
    , _cuDesiredPrivateIPv6GoogleAccess :: !(Maybe ClusterUpdateDesiredPrivateIPv6GoogleAccess)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuDesiredBinaryAuthorization'
--
-- * 'cuDesiredNotificationConfig'
--
-- * 'cuDesiredL4ilbSubSettingConfig'
--
-- * 'cuDesiredClusterAutoscaling'
--
-- * 'cuDesiredWorkLoadIdentityConfig'
--
-- * 'cuDesiredNodePoolAutoscaling'
--
-- * 'cuDesiredAddonsConfig'
--
-- * 'cuDesiredResourceUsageExportConfig'
--
-- * 'cuDesiredNodePoolId'
--
-- * 'cuDesiredAutopilot'
--
-- * 'cuDesiredDatapathProvider'
--
-- * 'cuDesiredMasterAuthorizedNetworksConfig'
--
-- * 'cuDesiredIntraNodeVisibilityConfig'
--
-- * 'cuDesiredImageType'
--
-- * 'cuDesiredDefaultSnatStatus'
--
-- * 'cuDesiredNodeVersion'
--
-- * 'cuDesiredReleaseChannel'
--
-- * 'cuDesiredDatabaseEncryption'
--
-- * 'cuDesiredPrivateClusterConfig'
--
-- * 'cuDesiredShieldedNodes'
--
-- * 'cuDesiredAuthenticatorGroupsConfig'
--
-- * 'cuDesiredVerticalPodAutoscaling'
--
-- * 'cuDesiredMasterVersion'
--
-- * 'cuDesiredLocations'
--
-- * 'cuDesiredLoggingService'
--
-- * 'cuDesiredMonitoringService'
--
-- * 'cuDesiredPrivateIPv6GoogleAccess'
clusterUpdate
    :: ClusterUpdate
clusterUpdate =
  ClusterUpdate'
    { _cuDesiredBinaryAuthorization = Nothing
    , _cuDesiredNotificationConfig = Nothing
    , _cuDesiredL4ilbSubSettingConfig = Nothing
    , _cuDesiredClusterAutoscaling = Nothing
    , _cuDesiredWorkLoadIdentityConfig = Nothing
    , _cuDesiredNodePoolAutoscaling = Nothing
    , _cuDesiredAddonsConfig = Nothing
    , _cuDesiredResourceUsageExportConfig = Nothing
    , _cuDesiredNodePoolId = Nothing
    , _cuDesiredAutopilot = Nothing
    , _cuDesiredDatapathProvider = Nothing
    , _cuDesiredMasterAuthorizedNetworksConfig = Nothing
    , _cuDesiredIntraNodeVisibilityConfig = Nothing
    , _cuDesiredImageType = Nothing
    , _cuDesiredDefaultSnatStatus = Nothing
    , _cuDesiredNodeVersion = Nothing
    , _cuDesiredReleaseChannel = Nothing
    , _cuDesiredDatabaseEncryption = Nothing
    , _cuDesiredPrivateClusterConfig = Nothing
    , _cuDesiredShieldedNodes = Nothing
    , _cuDesiredAuthenticatorGroupsConfig = Nothing
    , _cuDesiredVerticalPodAutoscaling = Nothing
    , _cuDesiredMasterVersion = Nothing
    , _cuDesiredLocations = Nothing
    , _cuDesiredLoggingService = Nothing
    , _cuDesiredMonitoringService = Nothing
    , _cuDesiredPrivateIPv6GoogleAccess = Nothing
    }


-- | The desired configuration options for the Binary Authorization feature.
cuDesiredBinaryAuthorization :: Lens' ClusterUpdate (Maybe BinaryAuthorization)
cuDesiredBinaryAuthorization
  = lens _cuDesiredBinaryAuthorization
      (\ s a -> s{_cuDesiredBinaryAuthorization = a})

-- | The desired notification configuration.
cuDesiredNotificationConfig :: Lens' ClusterUpdate (Maybe NotificationConfig)
cuDesiredNotificationConfig
  = lens _cuDesiredNotificationConfig
      (\ s a -> s{_cuDesiredNotificationConfig = a})

-- | The desired L4 Internal Load Balancer Subsetting configuration.
cuDesiredL4ilbSubSettingConfig :: Lens' ClusterUpdate (Maybe ILBSubSettingConfig)
cuDesiredL4ilbSubSettingConfig
  = lens _cuDesiredL4ilbSubSettingConfig
      (\ s a -> s{_cuDesiredL4ilbSubSettingConfig = a})

-- | Cluster-level autoscaling configuration.
cuDesiredClusterAutoscaling :: Lens' ClusterUpdate (Maybe ClusterAutoscaling)
cuDesiredClusterAutoscaling
  = lens _cuDesiredClusterAutoscaling
      (\ s a -> s{_cuDesiredClusterAutoscaling = a})

-- | Configuration for Workload Identity.
cuDesiredWorkLoadIdentityConfig :: Lens' ClusterUpdate (Maybe WorkLoadIdentityConfig)
cuDesiredWorkLoadIdentityConfig
  = lens _cuDesiredWorkLoadIdentityConfig
      (\ s a -> s{_cuDesiredWorkLoadIdentityConfig = a})

-- | Autoscaler configuration for the node pool specified in
-- desired_node_pool_id. If there is only one pool in the cluster and
-- desired_node_pool_id is not provided then the change applies to that
-- single node pool.
cuDesiredNodePoolAutoscaling :: Lens' ClusterUpdate (Maybe NodePoolAutoscaling)
cuDesiredNodePoolAutoscaling
  = lens _cuDesiredNodePoolAutoscaling
      (\ s a -> s{_cuDesiredNodePoolAutoscaling = a})

-- | Configurations for the various addons available to run in the cluster.
cuDesiredAddonsConfig :: Lens' ClusterUpdate (Maybe AddonsConfig)
cuDesiredAddonsConfig
  = lens _cuDesiredAddonsConfig
      (\ s a -> s{_cuDesiredAddonsConfig = a})

-- | The desired configuration for exporting resource usage.
cuDesiredResourceUsageExportConfig :: Lens' ClusterUpdate (Maybe ResourceUsageExportConfig)
cuDesiredResourceUsageExportConfig
  = lens _cuDesiredResourceUsageExportConfig
      (\ s a -> s{_cuDesiredResourceUsageExportConfig = a})

-- | The node pool to be upgraded. This field is mandatory if
-- \"desired_node_version\", \"desired_image_family\" or
-- \"desired_node_pool_autoscaling\" is specified and there is more than
-- one node pool on the cluster.
cuDesiredNodePoolId :: Lens' ClusterUpdate (Maybe Text)
cuDesiredNodePoolId
  = lens _cuDesiredNodePoolId
      (\ s a -> s{_cuDesiredNodePoolId = a})

-- | The desired Autopilot configuration for the cluster.
cuDesiredAutopilot :: Lens' ClusterUpdate (Maybe Autopilot)
cuDesiredAutopilot
  = lens _cuDesiredAutopilot
      (\ s a -> s{_cuDesiredAutopilot = a})

-- | The desired datapath provider for the cluster.
cuDesiredDatapathProvider :: Lens' ClusterUpdate (Maybe ClusterUpdateDesiredDatapathProvider)
cuDesiredDatapathProvider
  = lens _cuDesiredDatapathProvider
      (\ s a -> s{_cuDesiredDatapathProvider = a})

-- | The desired configuration options for master authorized networks
-- feature.
cuDesiredMasterAuthorizedNetworksConfig :: Lens' ClusterUpdate (Maybe MasterAuthorizedNetworksConfig)
cuDesiredMasterAuthorizedNetworksConfig
  = lens _cuDesiredMasterAuthorizedNetworksConfig
      (\ s a ->
         s{_cuDesiredMasterAuthorizedNetworksConfig = a})

-- | The desired config of Intra-node visibility.
cuDesiredIntraNodeVisibilityConfig :: Lens' ClusterUpdate (Maybe IntraNodeVisibilityConfig)
cuDesiredIntraNodeVisibilityConfig
  = lens _cuDesiredIntraNodeVisibilityConfig
      (\ s a -> s{_cuDesiredIntraNodeVisibilityConfig = a})

-- | The desired image type for the node pool. NOTE: Set the
-- \"desired_node_pool\" field as well.
cuDesiredImageType :: Lens' ClusterUpdate (Maybe Text)
cuDesiredImageType
  = lens _cuDesiredImageType
      (\ s a -> s{_cuDesiredImageType = a})

-- | The desired status of whether to disable default sNAT for this cluster.
cuDesiredDefaultSnatStatus :: Lens' ClusterUpdate (Maybe DefaultSnatStatus)
cuDesiredDefaultSnatStatus
  = lens _cuDesiredDefaultSnatStatus
      (\ s a -> s{_cuDesiredDefaultSnatStatus = a})

-- | The Kubernetes version to change the nodes to (typically an upgrade).
-- Users may specify either explicit versions offered by Kubernetes Engine
-- or version aliases, which have the following behavior: - \"latest\":
-- picks the highest valid Kubernetes version - \"1.X\": picks the highest
-- valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the
-- highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks
-- an explicit Kubernetes version - \"-\": picks the Kubernetes master
-- version
cuDesiredNodeVersion :: Lens' ClusterUpdate (Maybe Text)
cuDesiredNodeVersion
  = lens _cuDesiredNodeVersion
      (\ s a -> s{_cuDesiredNodeVersion = a})

-- | The desired release channel configuration.
cuDesiredReleaseChannel :: Lens' ClusterUpdate (Maybe ReleaseChannel)
cuDesiredReleaseChannel
  = lens _cuDesiredReleaseChannel
      (\ s a -> s{_cuDesiredReleaseChannel = a})

-- | Configuration of etcd encryption.
cuDesiredDatabaseEncryption :: Lens' ClusterUpdate (Maybe DatabaseEncryption)
cuDesiredDatabaseEncryption
  = lens _cuDesiredDatabaseEncryption
      (\ s a -> s{_cuDesiredDatabaseEncryption = a})

-- | The desired private cluster configuration.
cuDesiredPrivateClusterConfig :: Lens' ClusterUpdate (Maybe PrivateClusterConfig)
cuDesiredPrivateClusterConfig
  = lens _cuDesiredPrivateClusterConfig
      (\ s a -> s{_cuDesiredPrivateClusterConfig = a})

-- | Configuration for Shielded Nodes.
cuDesiredShieldedNodes :: Lens' ClusterUpdate (Maybe ShieldedNodes)
cuDesiredShieldedNodes
  = lens _cuDesiredShieldedNodes
      (\ s a -> s{_cuDesiredShieldedNodes = a})

-- | The desired authenticator groups config for the cluster.
cuDesiredAuthenticatorGroupsConfig :: Lens' ClusterUpdate (Maybe AuthenticatorGroupsConfig)
cuDesiredAuthenticatorGroupsConfig
  = lens _cuDesiredAuthenticatorGroupsConfig
      (\ s a -> s{_cuDesiredAuthenticatorGroupsConfig = a})

-- | Cluster-level Vertical Pod Autoscaling configuration.
cuDesiredVerticalPodAutoscaling :: Lens' ClusterUpdate (Maybe VerticalPodAutoscaling)
cuDesiredVerticalPodAutoscaling
  = lens _cuDesiredVerticalPodAutoscaling
      (\ s a -> s{_cuDesiredVerticalPodAutoscaling = a})

-- | The Kubernetes version to change the master to. Users may specify either
-- explicit versions offered by Kubernetes Engine or version aliases, which
-- have the following behavior: - \"latest\": picks the highest valid
-- Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch
-- in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in
-- the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes
-- version - \"-\": picks the default Kubernetes version
cuDesiredMasterVersion :: Lens' ClusterUpdate (Maybe Text)
cuDesiredMasterVersion
  = lens _cuDesiredMasterVersion
      (\ s a -> s{_cuDesiredMasterVersion = a})

-- | The desired list of Google Compute Engine
-- [zones](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster\'s nodes should be located. This list must always
-- include the cluster\'s primary zone. Warning: changing cluster locations
-- will update the locations of all node pools and will result in nodes
-- being added and\/or removed.
cuDesiredLocations :: Lens' ClusterUpdate [Text]
cuDesiredLocations
  = lens _cuDesiredLocations
      (\ s a -> s{_cuDesiredLocations = a})
      . _Default
      . _Coerce

-- | The logging service the cluster should use to write logs. Currently
-- available options: * \`logging.googleapis.com\/kubernetes\` - The Cloud
-- Logging service with a Kubernetes-native resource model *
-- \`logging.googleapis.com\` - The legacy Cloud Logging service (no longer
-- available as of GKE 1.15). * \`none\` - no logs will be exported from
-- the cluster. If left as an empty
-- string,\`logging.googleapis.com\/kubernetes\` will be used for GKE 1.14+
-- or \`logging.googleapis.com\` for earlier versions.
cuDesiredLoggingService :: Lens' ClusterUpdate (Maybe Text)
cuDesiredLoggingService
  = lens _cuDesiredLoggingService
      (\ s a -> s{_cuDesiredLoggingService = a})

-- | The monitoring service the cluster should use to write metrics.
-- Currently available options: * \"monitoring.googleapis.com\/kubernetes\"
-- - The Cloud Monitoring service with a Kubernetes-native resource model *
-- \`monitoring.googleapis.com\` - The legacy Cloud Monitoring service (no
-- longer available as of GKE 1.15). * \`none\` - No metrics will be
-- exported from the cluster. If left as an empty
-- string,\`monitoring.googleapis.com\/kubernetes\` will be used for GKE
-- 1.14+ or \`monitoring.googleapis.com\` for earlier versions.
cuDesiredMonitoringService :: Lens' ClusterUpdate (Maybe Text)
cuDesiredMonitoringService
  = lens _cuDesiredMonitoringService
      (\ s a -> s{_cuDesiredMonitoringService = a})

-- | The desired state of IPv6 connectivity to Google Services.
cuDesiredPrivateIPv6GoogleAccess :: Lens' ClusterUpdate (Maybe ClusterUpdateDesiredPrivateIPv6GoogleAccess)
cuDesiredPrivateIPv6GoogleAccess
  = lens _cuDesiredPrivateIPv6GoogleAccess
      (\ s a -> s{_cuDesiredPrivateIPv6GoogleAccess = a})

instance FromJSON ClusterUpdate where
        parseJSON
          = withObject "ClusterUpdate"
              (\ o ->
                 ClusterUpdate' <$>
                   (o .:? "desiredBinaryAuthorization") <*>
                     (o .:? "desiredNotificationConfig")
                     <*> (o .:? "desiredL4ilbSubsettingConfig")
                     <*> (o .:? "desiredClusterAutoscaling")
                     <*> (o .:? "desiredWorkloadIdentityConfig")
                     <*> (o .:? "desiredNodePoolAutoscaling")
                     <*> (o .:? "desiredAddonsConfig")
                     <*> (o .:? "desiredResourceUsageExportConfig")
                     <*> (o .:? "desiredNodePoolId")
                     <*> (o .:? "desiredAutopilot")
                     <*> (o .:? "desiredDatapathProvider")
                     <*> (o .:? "desiredMasterAuthorizedNetworksConfig")
                     <*> (o .:? "desiredIntraNodeVisibilityConfig")
                     <*> (o .:? "desiredImageType")
                     <*> (o .:? "desiredDefaultSnatStatus")
                     <*> (o .:? "desiredNodeVersion")
                     <*> (o .:? "desiredReleaseChannel")
                     <*> (o .:? "desiredDatabaseEncryption")
                     <*> (o .:? "desiredPrivateClusterConfig")
                     <*> (o .:? "desiredShieldedNodes")
                     <*> (o .:? "desiredAuthenticatorGroupsConfig")
                     <*> (o .:? "desiredVerticalPodAutoscaling")
                     <*> (o .:? "desiredMasterVersion")
                     <*> (o .:? "desiredLocations" .!= mempty)
                     <*> (o .:? "desiredLoggingService")
                     <*> (o .:? "desiredMonitoringService")
                     <*> (o .:? "desiredPrivateIpv6GoogleAccess"))

instance ToJSON ClusterUpdate where
        toJSON ClusterUpdate'{..}
          = object
              (catMaybes
                 [("desiredBinaryAuthorization" .=) <$>
                    _cuDesiredBinaryAuthorization,
                  ("desiredNotificationConfig" .=) <$>
                    _cuDesiredNotificationConfig,
                  ("desiredL4ilbSubsettingConfig" .=) <$>
                    _cuDesiredL4ilbSubSettingConfig,
                  ("desiredClusterAutoscaling" .=) <$>
                    _cuDesiredClusterAutoscaling,
                  ("desiredWorkloadIdentityConfig" .=) <$>
                    _cuDesiredWorkLoadIdentityConfig,
                  ("desiredNodePoolAutoscaling" .=) <$>
                    _cuDesiredNodePoolAutoscaling,
                  ("desiredAddonsConfig" .=) <$>
                    _cuDesiredAddonsConfig,
                  ("desiredResourceUsageExportConfig" .=) <$>
                    _cuDesiredResourceUsageExportConfig,
                  ("desiredNodePoolId" .=) <$> _cuDesiredNodePoolId,
                  ("desiredAutopilot" .=) <$> _cuDesiredAutopilot,
                  ("desiredDatapathProvider" .=) <$>
                    _cuDesiredDatapathProvider,
                  ("desiredMasterAuthorizedNetworksConfig" .=) <$>
                    _cuDesiredMasterAuthorizedNetworksConfig,
                  ("desiredIntraNodeVisibilityConfig" .=) <$>
                    _cuDesiredIntraNodeVisibilityConfig,
                  ("desiredImageType" .=) <$> _cuDesiredImageType,
                  ("desiredDefaultSnatStatus" .=) <$>
                    _cuDesiredDefaultSnatStatus,
                  ("desiredNodeVersion" .=) <$> _cuDesiredNodeVersion,
                  ("desiredReleaseChannel" .=) <$>
                    _cuDesiredReleaseChannel,
                  ("desiredDatabaseEncryption" .=) <$>
                    _cuDesiredDatabaseEncryption,
                  ("desiredPrivateClusterConfig" .=) <$>
                    _cuDesiredPrivateClusterConfig,
                  ("desiredShieldedNodes" .=) <$>
                    _cuDesiredShieldedNodes,
                  ("desiredAuthenticatorGroupsConfig" .=) <$>
                    _cuDesiredAuthenticatorGroupsConfig,
                  ("desiredVerticalPodAutoscaling" .=) <$>
                    _cuDesiredVerticalPodAutoscaling,
                  ("desiredMasterVersion" .=) <$>
                    _cuDesiredMasterVersion,
                  ("desiredLocations" .=) <$> _cuDesiredLocations,
                  ("desiredLoggingService" .=) <$>
                    _cuDesiredLoggingService,
                  ("desiredMonitoringService" .=) <$>
                    _cuDesiredMonitoringService,
                  ("desiredPrivateIpv6GoogleAccess" .=) <$>
                    _cuDesiredPrivateIPv6GoogleAccess])

-- | VerticalPodAutoscaling contains global, per-cluster information required
-- by Vertical Pod Autoscaler to automatically adjust the resources of pods
-- controlled by it.
--
-- /See:/ 'verticalPodAutoscaling' smart constructor.
newtype VerticalPodAutoscaling =
  VerticalPodAutoscaling'
    { _vpaEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VerticalPodAutoscaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpaEnabled'
verticalPodAutoscaling
    :: VerticalPodAutoscaling
verticalPodAutoscaling = VerticalPodAutoscaling' {_vpaEnabled = Nothing}


-- | Enables vertical pod autoscaling.
vpaEnabled :: Lens' VerticalPodAutoscaling (Maybe Bool)
vpaEnabled
  = lens _vpaEnabled (\ s a -> s{_vpaEnabled = a})

instance FromJSON VerticalPodAutoscaling where
        parseJSON
          = withObject "VerticalPodAutoscaling"
              (\ o ->
                 VerticalPodAutoscaling' <$> (o .:? "enabled"))

instance ToJSON VerticalPodAutoscaling where
        toJSON VerticalPodAutoscaling'{..}
          = object (catMaybes [("enabled" .=) <$> _vpaEnabled])

-- | RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or
-- Failed NodePool upgrade. This will be an no-op if the last upgrade
-- successfully completed.
--
-- /See:/ 'rollbackNodePoolUpgradeRequest' smart constructor.
data RollbackNodePoolUpgradeRequest =
  RollbackNodePoolUpgradeRequest'
    { _rnpurZone :: !(Maybe Text)
    , _rnpurNodePoolId :: !(Maybe Text)
    , _rnpurName :: !(Maybe Text)
    , _rnpurClusterId :: !(Maybe Text)
    , _rnpurProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RollbackNodePoolUpgradeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnpurZone'
--
-- * 'rnpurNodePoolId'
--
-- * 'rnpurName'
--
-- * 'rnpurClusterId'
--
-- * 'rnpurProjectId'
rollbackNodePoolUpgradeRequest
    :: RollbackNodePoolUpgradeRequest
rollbackNodePoolUpgradeRequest =
  RollbackNodePoolUpgradeRequest'
    { _rnpurZone = Nothing
    , _rnpurNodePoolId = Nothing
    , _rnpurName = Nothing
    , _rnpurClusterId = Nothing
    , _rnpurProjectId = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
rnpurZone :: Lens' RollbackNodePoolUpgradeRequest (Maybe Text)
rnpurZone
  = lens _rnpurZone (\ s a -> s{_rnpurZone = a})

-- | Deprecated. The name of the node pool to rollback. This field has been
-- deprecated and replaced by the name field.
rnpurNodePoolId :: Lens' RollbackNodePoolUpgradeRequest (Maybe Text)
rnpurNodePoolId
  = lens _rnpurNodePoolId
      (\ s a -> s{_rnpurNodePoolId = a})

-- | The name (project, location, cluster, node pool id) of the node poll to
-- rollback upgrade. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
rnpurName :: Lens' RollbackNodePoolUpgradeRequest (Maybe Text)
rnpurName
  = lens _rnpurName (\ s a -> s{_rnpurName = a})

-- | Deprecated. The name of the cluster to rollback. This field has been
-- deprecated and replaced by the name field.
rnpurClusterId :: Lens' RollbackNodePoolUpgradeRequest (Maybe Text)
rnpurClusterId
  = lens _rnpurClusterId
      (\ s a -> s{_rnpurClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
rnpurProjectId :: Lens' RollbackNodePoolUpgradeRequest (Maybe Text)
rnpurProjectId
  = lens _rnpurProjectId
      (\ s a -> s{_rnpurProjectId = a})

instance FromJSON RollbackNodePoolUpgradeRequest
         where
        parseJSON
          = withObject "RollbackNodePoolUpgradeRequest"
              (\ o ->
                 RollbackNodePoolUpgradeRequest' <$>
                   (o .:? "zone") <*> (o .:? "nodePoolId") <*>
                     (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId"))

instance ToJSON RollbackNodePoolUpgradeRequest where
        toJSON RollbackNodePoolUpgradeRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _rnpurZone,
                  ("nodePoolId" .=) <$> _rnpurNodePoolId,
                  ("name" .=) <$> _rnpurName,
                  ("clusterId" .=) <$> _rnpurClusterId,
                  ("projectId" .=) <$> _rnpurProjectId])

-- | Configuration options for the NetworkPolicy feature.
-- https:\/\/kubernetes.io\/docs\/concepts\/services-networking\/networkpolicies\/
--
-- /See:/ 'networkPolicy' smart constructor.
data NetworkPolicy =
  NetworkPolicy'
    { _npEnabled :: !(Maybe Bool)
    , _npProvider :: !(Maybe NetworkPolicyProvider)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npEnabled'
--
-- * 'npProvider'
networkPolicy
    :: NetworkPolicy
networkPolicy = NetworkPolicy' {_npEnabled = Nothing, _npProvider = Nothing}


-- | Whether network policy is enabled on the cluster.
npEnabled :: Lens' NetworkPolicy (Maybe Bool)
npEnabled
  = lens _npEnabled (\ s a -> s{_npEnabled = a})

-- | The selected network policy provider.
npProvider :: Lens' NetworkPolicy (Maybe NetworkPolicyProvider)
npProvider
  = lens _npProvider (\ s a -> s{_npProvider = a})

instance FromJSON NetworkPolicy where
        parseJSON
          = withObject "NetworkPolicy"
              (\ o ->
                 NetworkPolicy' <$>
                   (o .:? "enabled") <*> (o .:? "provider"))

instance ToJSON NetworkPolicy where
        toJSON NetworkPolicy'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _npEnabled,
                  ("provider" .=) <$> _npProvider])

-- | ListNodePoolsResponse is the result of ListNodePoolsRequest.
--
-- /See:/ 'listNodePoolsResponse' smart constructor.
newtype ListNodePoolsResponse =
  ListNodePoolsResponse'
    { _lnprNodePools :: Maybe [NodePool]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListNodePoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnprNodePools'
listNodePoolsResponse
    :: ListNodePoolsResponse
listNodePoolsResponse = ListNodePoolsResponse' {_lnprNodePools = Nothing}


-- | A list of node pools for a cluster.
lnprNodePools :: Lens' ListNodePoolsResponse [NodePool]
lnprNodePools
  = lens _lnprNodePools
      (\ s a -> s{_lnprNodePools = a})
      . _Default
      . _Coerce

instance FromJSON ListNodePoolsResponse where
        parseJSON
          = withObject "ListNodePoolsResponse"
              (\ o ->
                 ListNodePoolsResponse' <$>
                   (o .:? "nodePools" .!= mempty))

instance ToJSON ListNodePoolsResponse where
        toJSON ListNodePoolsResponse'{..}
          = object
              (catMaybes [("nodePools" .=) <$> _lnprNodePools])

-- | Node kubelet configs.
--
-- /See:/ 'nodeKubeletConfig' smart constructor.
data NodeKubeletConfig =
  NodeKubeletConfig'
    { _nkcCPUCfsQuotaPeriod :: !(Maybe Text)
    , _nkcCPUManagerPolicy :: !(Maybe Text)
    , _nkcCPUCfsQuota :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeKubeletConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nkcCPUCfsQuotaPeriod'
--
-- * 'nkcCPUManagerPolicy'
--
-- * 'nkcCPUCfsQuota'
nodeKubeletConfig
    :: NodeKubeletConfig
nodeKubeletConfig =
  NodeKubeletConfig'
    { _nkcCPUCfsQuotaPeriod = Nothing
    , _nkcCPUManagerPolicy = Nothing
    , _nkcCPUCfsQuota = Nothing
    }


-- | Set the CPU CFS quota period value \'cpu.cfs_period_us\'. The string
-- must be a sequence of decimal numbers, each with optional fraction and a
-- unit suffix, such as \"300ms\". Valid time units are \"ns\", \"us\" (or
-- \"µs\"), \"ms\", \"s\", \"m\", \"h\". The value must be a positive
-- duration.
nkcCPUCfsQuotaPeriod :: Lens' NodeKubeletConfig (Maybe Text)
nkcCPUCfsQuotaPeriod
  = lens _nkcCPUCfsQuotaPeriod
      (\ s a -> s{_nkcCPUCfsQuotaPeriod = a})

-- | Control the CPU management policy on the node. See
-- https:\/\/kubernetes.io\/docs\/tasks\/administer-cluster\/cpu-management-policies\/
-- The following values are allowed. - \"none\": the default, which
-- represents the existing scheduling behavior. - \"static\": allows pods
-- with certain resource characteristics to be granted increased CPU
-- affinity and exclusivity on the node. The default value is \'none\' if
-- unspecified.
nkcCPUManagerPolicy :: Lens' NodeKubeletConfig (Maybe Text)
nkcCPUManagerPolicy
  = lens _nkcCPUManagerPolicy
      (\ s a -> s{_nkcCPUManagerPolicy = a})

-- | Enable CPU CFS quota enforcement for containers that specify CPU limits.
-- This option is enabled by default which makes kubelet use CFS quota
-- (https:\/\/www.kernel.org\/doc\/Documentation\/scheduler\/sched-bwc.txt)
-- to enforce container CPU limits. Otherwise, CPU limits will not be
-- enforced at all. Disable this option to mitigate CPU throttling problems
-- while still having your pods to be in Guaranteed QoS class by specifying
-- the CPU limits. The default value is \'true\' if unspecified.
nkcCPUCfsQuota :: Lens' NodeKubeletConfig (Maybe Bool)
nkcCPUCfsQuota
  = lens _nkcCPUCfsQuota
      (\ s a -> s{_nkcCPUCfsQuota = a})

instance FromJSON NodeKubeletConfig where
        parseJSON
          = withObject "NodeKubeletConfig"
              (\ o ->
                 NodeKubeletConfig' <$>
                   (o .:? "cpuCfsQuotaPeriod") <*>
                     (o .:? "cpuManagerPolicy")
                     <*> (o .:? "cpuCfsQuota"))

instance ToJSON NodeKubeletConfig where
        toJSON NodeKubeletConfig'{..}
          = object
              (catMaybes
                 [("cpuCfsQuotaPeriod" .=) <$> _nkcCPUCfsQuotaPeriod,
                  ("cpuManagerPolicy" .=) <$> _nkcCPUManagerPolicy,
                  ("cpuCfsQuota" .=) <$> _nkcCPUCfsQuota])

-- | GetJSONWebKeysResponse is a valid JSON Web Key Set as specififed in rfc
-- 7517
--
-- /See:/ 'getJSONWebKeysResponse' smart constructor.
data GetJSONWebKeysResponse =
  GetJSONWebKeysResponse'
    { _gjwkrCacheHeader :: !(Maybe HTTPCacheControlResponseHeader)
    , _gjwkrKeys :: !(Maybe [JWK])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetJSONWebKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjwkrCacheHeader'
--
-- * 'gjwkrKeys'
getJSONWebKeysResponse
    :: GetJSONWebKeysResponse
getJSONWebKeysResponse =
  GetJSONWebKeysResponse' {_gjwkrCacheHeader = Nothing, _gjwkrKeys = Nothing}


-- | OnePlatform automatically extracts this field and uses it to set the
-- HTTP Cache-Control header.
gjwkrCacheHeader :: Lens' GetJSONWebKeysResponse (Maybe HTTPCacheControlResponseHeader)
gjwkrCacheHeader
  = lens _gjwkrCacheHeader
      (\ s a -> s{_gjwkrCacheHeader = a})

-- | The public component of the keys used by the cluster to sign token
-- requests.
gjwkrKeys :: Lens' GetJSONWebKeysResponse [JWK]
gjwkrKeys
  = lens _gjwkrKeys (\ s a -> s{_gjwkrKeys = a}) .
      _Default
      . _Coerce

instance FromJSON GetJSONWebKeysResponse where
        parseJSON
          = withObject "GetJSONWebKeysResponse"
              (\ o ->
                 GetJSONWebKeysResponse' <$>
                   (o .:? "cacheHeader") <*> (o .:? "keys" .!= mempty))

instance ToJSON GetJSONWebKeysResponse where
        toJSON GetJSONWebKeysResponse'{..}
          = object
              (catMaybes
                 [("cacheHeader" .=) <$> _gjwkrCacheHeader,
                  ("keys" .=) <$> _gjwkrKeys])

-- | CreateNodePoolRequest creates a node pool for a cluster.
--
-- /See:/ 'createNodePoolRequest' smart constructor.
data CreateNodePoolRequest =
  CreateNodePoolRequest'
    { _cnprParent :: !(Maybe Text)
    , _cnprZone :: !(Maybe Text)
    , _cnprNodePool :: !(Maybe NodePool)
    , _cnprClusterId :: !(Maybe Text)
    , _cnprProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateNodePoolRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnprParent'
--
-- * 'cnprZone'
--
-- * 'cnprNodePool'
--
-- * 'cnprClusterId'
--
-- * 'cnprProjectId'
createNodePoolRequest
    :: CreateNodePoolRequest
createNodePoolRequest =
  CreateNodePoolRequest'
    { _cnprParent = Nothing
    , _cnprZone = Nothing
    , _cnprNodePool = Nothing
    , _cnprClusterId = Nothing
    , _cnprProjectId = Nothing
    }


-- | The parent (project, location, cluster id) where the node pool will be
-- created. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\`.
cnprParent :: Lens' CreateNodePoolRequest (Maybe Text)
cnprParent
  = lens _cnprParent (\ s a -> s{_cnprParent = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the parent field.
cnprZone :: Lens' CreateNodePoolRequest (Maybe Text)
cnprZone = lens _cnprZone (\ s a -> s{_cnprZone = a})

-- | Required. The node pool to create.
cnprNodePool :: Lens' CreateNodePoolRequest (Maybe NodePool)
cnprNodePool
  = lens _cnprNodePool (\ s a -> s{_cnprNodePool = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the parent field.
cnprClusterId :: Lens' CreateNodePoolRequest (Maybe Text)
cnprClusterId
  = lens _cnprClusterId
      (\ s a -> s{_cnprClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the parent field.
cnprProjectId :: Lens' CreateNodePoolRequest (Maybe Text)
cnprProjectId
  = lens _cnprProjectId
      (\ s a -> s{_cnprProjectId = a})

instance FromJSON CreateNodePoolRequest where
        parseJSON
          = withObject "CreateNodePoolRequest"
              (\ o ->
                 CreateNodePoolRequest' <$>
                   (o .:? "parent") <*> (o .:? "zone") <*>
                     (o .:? "nodePool")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "projectId"))

instance ToJSON CreateNodePoolRequest where
        toJSON CreateNodePoolRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _cnprParent,
                  ("zone" .=) <$> _cnprZone,
                  ("nodePool" .=) <$> _cnprNodePool,
                  ("clusterId" .=) <$> _cnprClusterId,
                  ("projectId" .=) <$> _cnprProjectId])

-- | Required. The labels to set for that cluster.
--
-- /See:/ 'setLabelsRequestResourceLabels' smart constructor.
newtype SetLabelsRequestResourceLabels =
  SetLabelsRequestResourceLabels'
    { _slrrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetLabelsRequestResourceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrrlAddtional'
setLabelsRequestResourceLabels
    :: HashMap Text Text -- ^ 'slrrlAddtional'
    -> SetLabelsRequestResourceLabels
setLabelsRequestResourceLabels pSlrrlAddtional_ =
  SetLabelsRequestResourceLabels' {_slrrlAddtional = _Coerce # pSlrrlAddtional_}


slrrlAddtional :: Lens' SetLabelsRequestResourceLabels (HashMap Text Text)
slrrlAddtional
  = lens _slrrlAddtional
      (\ s a -> s{_slrrlAddtional = a})
      . _Coerce

instance FromJSON SetLabelsRequestResourceLabels
         where
        parseJSON
          = withObject "SetLabelsRequestResourceLabels"
              (\ o ->
                 SetLabelsRequestResourceLabels' <$>
                   (parseJSONObject o))

instance ToJSON SetLabelsRequestResourceLabels where
        toJSON = toJSON . _slrrlAddtional
