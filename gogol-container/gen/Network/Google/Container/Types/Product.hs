{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Container.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Container.Types.Product where

import           Network.Google.Container.Types.Sum
import           Network.Google.Prelude

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

-- | UpdateNodePoolRequests update a node pool\'s image and\/or version.
--
-- /See:/ 'updateNodePoolRequest' smart constructor.
data UpdateNodePoolRequest =
  UpdateNodePoolRequest'
    { _unprZone        :: !(Maybe Text)
    , _unprNodePoolId  :: !(Maybe Text)
    , _unprImageType   :: !(Maybe Text)
    , _unprName        :: !(Maybe Text)
    , _unprClusterId   :: !(Maybe Text)
    , _unprNodeVersion :: !(Maybe Text)
    , _unprProjectId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateNodePoolRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
updateNodePoolRequest
    :: UpdateNodePoolRequest
updateNodePoolRequest =
  UpdateNodePoolRequest'
    { _unprZone = Nothing
    , _unprNodePoolId = Nothing
    , _unprImageType = Nothing
    , _unprName = Nothing
    , _unprClusterId = Nothing
    , _unprNodeVersion = Nothing
    , _unprProjectId = Nothing
    }


-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
unprZone :: Lens' UpdateNodePoolRequest (Maybe Text)
unprZone = lens _unprZone (\ s a -> s{_unprZone = a})

-- | Deprecated. The name of the node pool to upgrade. This field has been
-- deprecated and replaced by the name field.
unprNodePoolId :: Lens' UpdateNodePoolRequest (Maybe Text)
unprNodePoolId
  = lens _unprNodePoolId
      (\ s a -> s{_unprNodePoolId = a})

-- | The desired image type for the node pool.
unprImageType :: Lens' UpdateNodePoolRequest (Maybe Text)
unprImageType
  = lens _unprImageType
      (\ s a -> s{_unprImageType = a})

-- | The name (project, location, cluster, node pool) of the node pool to
-- update. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\'.
unprName :: Lens' UpdateNodePoolRequest (Maybe Text)
unprName = lens _unprName (\ s a -> s{_unprName = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
unprClusterId :: Lens' UpdateNodePoolRequest (Maybe Text)
unprClusterId
  = lens _unprClusterId
      (\ s a -> s{_unprClusterId = a})

-- | The Kubernetes version to change the nodes to (typically an upgrade).
-- Users may specify either explicit versions offered by Kubernetes Engine
-- or version aliases, which have the following behavior: - \"latest\":
-- picks the highest valid Kubernetes version - \"1.X\": picks the highest
-- valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the
-- highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks
-- an explicit Kubernetes version - \"-\": picks the Kubernetes master
-- version
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

instance FromJSON UpdateNodePoolRequest where
        parseJSON
          = withObject "UpdateNodePoolRequest"
              (\ o ->
                 UpdateNodePoolRequest' <$>
                   (o .:? "zone") <*> (o .:? "nodePoolId") <*>
                     (o .:? "imageType")
                     <*> (o .:? "name")
                     <*> (o .:? "clusterId")
                     <*> (o .:? "nodeVersion")
                     <*> (o .:? "projectId"))

instance ToJSON UpdateNodePoolRequest where
        toJSON UpdateNodePoolRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _unprZone,
                  ("nodePoolId" .=) <$> _unprNodePoolId,
                  ("imageType" .=) <$> _unprImageType,
                  ("name" .=) <$> _unprName,
                  ("clusterId" .=) <$> _unprClusterId,
                  ("nodeVersion" .=) <$> _unprNodeVersion,
                  ("projectId" .=) <$> _unprProjectId])

-- | UpdateMasterRequest updates the master of the cluster.
--
-- /See:/ 'updateMasterRequest' smart constructor.
data UpdateMasterRequest =
  UpdateMasterRequest'
    { _umrZone          :: !(Maybe Text)
    , _umrName          :: !(Maybe Text)
    , _umrClusterId     :: !(Maybe Text)
    , _umrProjectId     :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
umrZone :: Lens' UpdateMasterRequest (Maybe Text)
umrZone = lens _umrZone (\ s a -> s{_umrZone = a})

-- | The name (project, location, cluster) of the cluster to update.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | The Kubernetes version to change the master to. Users may specify either
-- explicit versions offered by Kubernetes Engine or version aliases, which
-- have the following behavior: - \"latest\": picks the highest valid
-- Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch
-- in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in
-- the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes
-- version - \"-\": picks the default Kubernetes version
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
    { _sirrZone              :: !(Maybe Text)
    , _sirrRotateCredentials :: !(Maybe Bool)
    , _sirrName              :: !(Maybe Text)
    , _sirrClusterId         :: !(Maybe Text)
    , _sirrProjectId         :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
sirrZone :: Lens' StartIPRotationRequest (Maybe Text)
sirrZone = lens _sirrZone (\ s a -> s{_sirrZone = a})

-- | Whether to rotate credentials during IP rotation.
sirrRotateCredentials :: Lens' StartIPRotationRequest (Maybe Bool)
sirrRotateCredentials
  = lens _sirrRotateCredentials
      (\ s a -> s{_sirrRotateCredentials = a})

-- | The name (project, location, cluster id) of the cluster to start IP
-- rotation. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | SetLegacyAbacRequest enables or disables the ABAC authorization
-- mechanism for a cluster.
--
-- /See:/ 'setLegacyAbacRequest' smart constructor.
data SetLegacyAbacRequest =
  SetLegacyAbacRequest'
    { _slarEnabled   :: !(Maybe Bool)
    , _slarZone      :: !(Maybe Text)
    , _slarName      :: !(Maybe Text)
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


-- | Whether ABAC authorization will be enabled in the cluster.
slarEnabled :: Lens' SetLegacyAbacRequest (Maybe Bool)
slarEnabled
  = lens _slarEnabled (\ s a -> s{_slarEnabled = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
slarZone :: Lens' SetLegacyAbacRequest (Maybe Text)
slarZone = lens _slarZone (\ s a -> s{_slarZone = a})

-- | The name (project, location, cluster id) of the cluster to set legacy
-- abac. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
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
-- cluster. When enabled, it ensures that a Heapster pod is running in the
-- cluster, which is also used by the Cloud Monitoring service.
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

-- | SetMasterAuthRequest updates the admin password of a cluster.
--
-- /See:/ 'setMasterAuthRequest' smart constructor.
data SetMasterAuthRequest =
  SetMasterAuthRequest'
    { _smarAction    :: !(Maybe SetMasterAuthRequestAction)
    , _smarZone      :: !(Maybe Text)
    , _smarName      :: !(Maybe Text)
    , _smarClusterId :: !(Maybe Text)
    , _smarProjectId :: !(Maybe Text)
    , _smarUpdate    :: !(Maybe MasterAuth)
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


-- | The exact form of action to be taken on the master auth.
smarAction :: Lens' SetMasterAuthRequest (Maybe SetMasterAuthRequestAction)
smarAction
  = lens _smarAction (\ s a -> s{_smarAction = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
smarZone :: Lens' SetMasterAuthRequest (Maybe Text)
smarZone = lens _smarZone (\ s a -> s{_smarZone = a})

-- | The name (project, location, cluster) of the cluster to set auth.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | A description of the update.
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
    { _lorOperations   :: !(Maybe [Operation])
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
    { _ccrParent    :: !(Maybe Text)
    , _ccrCluster   :: !(Maybe Cluster)
    , _ccrZone      :: !(Maybe Text)
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
-- Specified in the format \'projects\/*\/locations\/*\'.
ccrParent :: Lens' CreateClusterRequest (Maybe Text)
ccrParent
  = lens _ccrParent (\ s a -> s{_ccrParent = a})

-- | A [cluster
-- resource](\/container-engine\/reference\/rest\/v1\/projects.zones.clusters)
ccrCluster :: Lens' CreateClusterRequest (Maybe Cluster)
ccrCluster
  = lens _ccrCluster (\ s a -> s{_ccrCluster = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the parent field.
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
    { _cStatus                         :: !(Maybe ClusterStatus)
    , _cNodePools                      :: !(Maybe [NodePool])
    , _cEnableKubernetesAlpha          :: !(Maybe Bool)
    , _cResourceLabels                 :: !(Maybe ClusterResourceLabels)
    , _cNodeConfig                     :: !(Maybe NodeConfig)
    , _cNodeIPv4CIdRSize               :: !(Maybe (Textual Int32))
    , _cClusterIPv4CIdR                :: !(Maybe Text)
    , _cLocation                       :: !(Maybe Text)
    , _cInitialNodeCount               :: !(Maybe (Textual Int32))
    , _cCurrentNodeVersion             :: !(Maybe Text)
    , _cNetwork                        :: !(Maybe Text)
    , _cInitialClusterVersion          :: !(Maybe Text)
    , _cZone                           :: !(Maybe Text)
    , _cAddonsConfig                   :: !(Maybe AddonsConfig)
    , _cServicesIPv4CIdR               :: !(Maybe Text)
    , _cIPAllocationPolicy             :: !(Maybe IPAllocationPolicy)
    , _cMasterAuthorizedNetworksConfig :: !(Maybe MasterAuthorizedNetworksConfig)
    , _cLegacyAbac                     :: !(Maybe LegacyAbac)
    , _cNetworkConfig                  :: !(Maybe NetworkConfig)
    , _cMasterAuth                     :: !(Maybe MasterAuth)
    , _cSelfLink                       :: !(Maybe Text)
    , _cName                           :: !(Maybe Text)
    , _cCurrentMasterVersion           :: !(Maybe Text)
    , _cStatusMessage                  :: !(Maybe Text)
    , _cSubnetwork                     :: !(Maybe Text)
    , _cCurrentNodeCount               :: !(Maybe (Textual Int32))
    , _cPrivateClusterConfig           :: !(Maybe PrivateClusterConfig)
    , _cMaintenancePolicy              :: !(Maybe MaintenancePolicy)
    , _cConditions                     :: !(Maybe [StatusCondition])
    , _cEndpoint                       :: !(Maybe Text)
    , _cExpireTime                     :: !(Maybe Text)
    , _cNetworkPolicy                  :: !(Maybe NetworkPolicy)
    , _cLocations                      :: !(Maybe [Text])
    , _cLoggingService                 :: !(Maybe Text)
    , _cLabelFingerprint               :: !(Maybe Text)
    , _cDescription                    :: !(Maybe Text)
    , _cInstanceGroupURLs              :: !(Maybe [Text])
    , _cMonitoringService              :: !(Maybe Text)
    , _cCreateTime                     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cNodePools'
--
-- * 'cEnableKubernetesAlpha'
--
-- * 'cResourceLabels'
--
-- * 'cNodeConfig'
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
-- * 'cNetwork'
--
-- * 'cInitialClusterVersion'
--
-- * 'cZone'
--
-- * 'cAddonsConfig'
--
-- * 'cServicesIPv4CIdR'
--
-- * 'cIPAllocationPolicy'
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
-- * 'cSubnetwork'
--
-- * 'cCurrentNodeCount'
--
-- * 'cPrivateClusterConfig'
--
-- * 'cMaintenancePolicy'
--
-- * 'cConditions'
--
-- * 'cEndpoint'
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
    { _cStatus = Nothing
    , _cNodePools = Nothing
    , _cEnableKubernetesAlpha = Nothing
    , _cResourceLabels = Nothing
    , _cNodeConfig = Nothing
    , _cNodeIPv4CIdRSize = Nothing
    , _cClusterIPv4CIdR = Nothing
    , _cLocation = Nothing
    , _cInitialNodeCount = Nothing
    , _cCurrentNodeVersion = Nothing
    , _cNetwork = Nothing
    , _cInitialClusterVersion = Nothing
    , _cZone = Nothing
    , _cAddonsConfig = Nothing
    , _cServicesIPv4CIdR = Nothing
    , _cIPAllocationPolicy = Nothing
    , _cMasterAuthorizedNetworksConfig = Nothing
    , _cLegacyAbac = Nothing
    , _cNetworkConfig = Nothing
    , _cMasterAuth = Nothing
    , _cSelfLink = Nothing
    , _cName = Nothing
    , _cCurrentMasterVersion = Nothing
    , _cStatusMessage = Nothing
    , _cSubnetwork = Nothing
    , _cCurrentNodeCount = Nothing
    , _cPrivateClusterConfig = Nothing
    , _cMaintenancePolicy = Nothing
    , _cConditions = Nothing
    , _cEndpoint = Nothing
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

-- | Parameters used in creating the cluster\'s nodes. See \`nodeConfig\` for
-- the description of its properties. For requests, this field should only
-- be used in lieu of a \"node_pool\" object, since this configuration
-- (along with the \"initial_node_count\") will be used to create a
-- \"NodePool\" object with an auto-generated name. Do not use this and a
-- node_pool at the same time. For responses, this field will be populated
-- with the node configuration of the first node pool. If unspecified, the
-- defaults are used.
cNodeConfig :: Lens' Cluster (Maybe NodeConfig)
cNodeConfig
  = lens _cNodeConfig (\ s a -> s{_cNodeConfig = a})

-- | [Output only] The size of the address space on each node for hosting
-- containers. This is provisioned from within the \`container_ipv4_cidr\`
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

-- | [Output only] The name of the Google Compute Engine
-- [zone](\/compute\/docs\/regions-zones\/regions-zones#available) or
-- [region](\/compute\/docs\/regions-zones\/regions-zones#available) in
-- which the cluster resides.
cLocation :: Lens' Cluster (Maybe Text)
cLocation
  = lens _cLocation (\ s a -> s{_cLocation = a})

-- | The number of nodes to create in this cluster. You must ensure that your
-- Compute Engine </compute/docs/resource-quotas resource quota> is
-- sufficient for this number of instances. You must also have available
-- firewall and routes quota. For requests, this field should only be used
-- in lieu of a \"node_pool\" object, since this configuration (along with
-- the \"node_config\") will be used to create a \"NodePool\" object with
-- an auto-generated name. Do not use this and a node_pool at the same
-- time.
cInitialNodeCount :: Lens' Cluster (Maybe Int32)
cInitialNodeCount
  = lens _cInitialNodeCount
      (\ s a -> s{_cInitialNodeCount = a})
      . mapping _Coerce

-- | [Output only] Deprecated, use
-- [NodePool.version](\/kubernetes-engine\/docs\/reference\/rest\/v1\/projects.zones.clusters.nodePool)
-- instead. The current version of the node software components. If they
-- are currently at multiple versions because they\'re in the process of
-- being upgraded, this reflects the minimum version of all nodes.
cCurrentNodeVersion :: Lens' Cluster (Maybe Text)
cCurrentNodeVersion
  = lens _cCurrentNodeVersion
      (\ s a -> s{_cCurrentNodeVersion = a})

-- | The name of the Google Compute Engine
-- [network](\/compute\/docs\/networks-and-firewalls#networks) to which the
-- cluster is connected. If left unspecified, the \`default\` network will
-- be used.
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field is deprecated, use location instead.
cZone :: Lens' Cluster (Maybe Text)
cZone = lens _cZone (\ s a -> s{_cZone = a})

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

-- | The name of the Google Compute Engine
-- [subnetwork](\/compute\/docs\/subnetworks) to which the cluster is
-- connected.
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

-- | Which conditions caused the current cluster state.
cConditions :: Lens' Cluster [StatusCondition]
cConditions
  = lens _cConditions (\ s a -> s{_cConditions = a}) .
      _Default
      . _Coerce

-- | [Output only] The IP address of this cluster\'s master endpoint. The
-- endpoint can be accessed from the internet at
-- \`https:\/\/username:password\'endpoint\/\`. See the \`masterAuth\`
-- property of this resource for username and password information.
cEndpoint :: Lens' Cluster (Maybe Text)
cEndpoint
  = lens _cEndpoint (\ s a -> s{_cEndpoint = a})

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
-- [zones](\/compute\/docs\/zones#available) in which the cluster\'s nodes
-- should be located.
cLocations :: Lens' Cluster [Text]
cLocations
  = lens _cLocations (\ s a -> s{_cLocations = a}) .
      _Default
      . _Coerce

-- | The logging service the cluster should use to write logs. Currently
-- available options: * \`logging.googleapis.com\` - the Google Cloud
-- Logging service. * \`none\` - no logs will be exported from the cluster.
-- * if left as an empty string,\`logging.googleapis.com\` will be used.
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
-- Currently available options: * \`monitoring.googleapis.com\` - the
-- Google Cloud Monitoring service. * \`none\` - no metrics will be
-- exported from the cluster. * if left as an empty string,
-- \`monitoring.googleapis.com\` will be used.
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
                   (o .:? "status") <*> (o .:? "nodePools" .!= mempty)
                     <*> (o .:? "enableKubernetesAlpha")
                     <*> (o .:? "resourceLabels")
                     <*> (o .:? "nodeConfig")
                     <*> (o .:? "nodeIpv4CidrSize")
                     <*> (o .:? "clusterIpv4Cidr")
                     <*> (o .:? "location")
                     <*> (o .:? "initialNodeCount")
                     <*> (o .:? "currentNodeVersion")
                     <*> (o .:? "network")
                     <*> (o .:? "initialClusterVersion")
                     <*> (o .:? "zone")
                     <*> (o .:? "addonsConfig")
                     <*> (o .:? "servicesIpv4Cidr")
                     <*> (o .:? "ipAllocationPolicy")
                     <*> (o .:? "masterAuthorizedNetworksConfig")
                     <*> (o .:? "legacyAbac")
                     <*> (o .:? "networkConfig")
                     <*> (o .:? "masterAuth")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "currentMasterVersion")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "currentNodeCount")
                     <*> (o .:? "privateClusterConfig")
                     <*> (o .:? "maintenancePolicy")
                     <*> (o .:? "conditions" .!= mempty)
                     <*> (o .:? "endpoint")
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
                 [("status" .=) <$> _cStatus,
                  ("nodePools" .=) <$> _cNodePools,
                  ("enableKubernetesAlpha" .=) <$>
                    _cEnableKubernetesAlpha,
                  ("resourceLabels" .=) <$> _cResourceLabels,
                  ("nodeConfig" .=) <$> _cNodeConfig,
                  ("nodeIpv4CidrSize" .=) <$> _cNodeIPv4CIdRSize,
                  ("clusterIpv4Cidr" .=) <$> _cClusterIPv4CIdR,
                  ("location" .=) <$> _cLocation,
                  ("initialNodeCount" .=) <$> _cInitialNodeCount,
                  ("currentNodeVersion" .=) <$> _cCurrentNodeVersion,
                  ("network" .=) <$> _cNetwork,
                  ("initialClusterVersion" .=) <$>
                    _cInitialClusterVersion,
                  ("zone" .=) <$> _cZone,
                  ("addonsConfig" .=) <$> _cAddonsConfig,
                  ("servicesIpv4Cidr" .=) <$> _cServicesIPv4CIdR,
                  ("ipAllocationPolicy" .=) <$> _cIPAllocationPolicy,
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
                  ("subnetwork" .=) <$> _cSubnetwork,
                  ("currentNodeCount" .=) <$> _cCurrentNodeCount,
                  ("privateClusterConfig" .=) <$>
                    _cPrivateClusterConfig,
                  ("maintenancePolicy" .=) <$> _cMaintenancePolicy,
                  ("conditions" .=) <$> _cConditions,
                  ("endpoint" .=) <$> _cEndpoint,
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
    { _corZone        :: !(Maybe Text)
    , _corName        :: !(Maybe Text)
    , _corProjectId   :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the operation resides.
-- This field has been deprecated and replaced by the name field.
corZone :: Lens' CancelOperationRequest (Maybe Text)
corZone = lens _corZone (\ s a -> s{_corZone = a})

-- | The name (project, location, operation id) of the operation to cancel.
-- Specified in the format \'projects\/*\/locations\/*\/operations\/*\'.
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
    { _ucrZone      :: !(Maybe Text)
    , _ucrName      :: !(Maybe Text)
    , _ucrClusterId :: !(Maybe Text)
    , _ucrProjectId :: !(Maybe Text)
    , _ucrUpdate    :: !(Maybe ClusterUpdate)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
ucrZone :: Lens' UpdateClusterRequest (Maybe Text)
ucrZone = lens _ucrZone (\ s a -> s{_ucrZone = a})

-- | The name (project, location, cluster) of the cluster to update.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | A description of the update.
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

-- | SetAddonsConfigRequest sets the addons associated with the cluster.
--
-- /See:/ 'setAddonsConfigRequest' smart constructor.
data SetAddonsConfigRequest =
  SetAddonsConfigRequest'
    { _sacrZone         :: !(Maybe Text)
    , _sacrAddonsConfig :: !(Maybe AddonsConfig)
    , _sacrName         :: !(Maybe Text)
    , _sacrClusterId    :: !(Maybe Text)
    , _sacrProjectId    :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
sacrZone :: Lens' SetAddonsConfigRequest (Maybe Text)
sacrZone = lens _sacrZone (\ s a -> s{_sacrZone = a})

-- | The desired configurations for the various addons available to run in
-- the cluster.
sacrAddonsConfig :: Lens' SetAddonsConfigRequest (Maybe AddonsConfig)
sacrAddonsConfig
  = lens _sacrAddonsConfig
      (\ s a -> s{_sacrAddonsConfig = a})

-- | The name (project, location, cluster) of the cluster to set addons.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
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
    { _ncLocalSsdCount  :: !(Maybe (Textual Int32))
    , _ncDiskSizeGb     :: !(Maybe (Textual Int32))
    , _ncTaints         :: !(Maybe [NodeTaint])
    , _ncOAuthScopes    :: !(Maybe [Text])
    , _ncServiceAccount :: !(Maybe Text)
    , _ncAccelerators   :: !(Maybe [AcceleratorConfig])
    , _ncImageType      :: !(Maybe Text)
    , _ncMachineType    :: !(Maybe Text)
    , _ncMetadata       :: !(Maybe NodeConfigMetadata)
    , _ncDiskType       :: !(Maybe Text)
    , _ncLabels         :: !(Maybe NodeConfigLabels)
    , _ncMinCPUPlatform :: !(Maybe Text)
    , _ncTags           :: !(Maybe [Text])
    , _ncPreemptible    :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'ncLabels'
--
-- * 'ncMinCPUPlatform'
--
-- * 'ncTags'
--
-- * 'ncPreemptible'
nodeConfig
    :: NodeConfig
nodeConfig =
  NodeConfig'
    { _ncLocalSsdCount = Nothing
    , _ncDiskSizeGb = Nothing
    , _ncTaints = Nothing
    , _ncOAuthScopes = Nothing
    , _ncServiceAccount = Nothing
    , _ncAccelerators = Nothing
    , _ncImageType = Nothing
    , _ncMachineType = Nothing
    , _ncMetadata = Nothing
    , _ncDiskType = Nothing
    , _ncLabels = Nothing
    , _ncMinCPUPlatform = Nothing
    , _ncTags = Nothing
    , _ncPreemptible = Nothing
    }


-- | The number of local SSD disks to be attached to the node. The limit for
-- this value is dependant upon the maximum number of disks available on a
-- machine per zone. See:
-- https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd#local_ssd_limits
-- for more information.
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
-- Registry](\/container-registry\/)). If unspecified, no scopes are added,
-- unless Cloud Logging or Cloud Monitoring are enabled, in which case
-- their required scopes will be added.
ncOAuthScopes :: Lens' NodeConfig [Text]
ncOAuthScopes
  = lens _ncOAuthScopes
      (\ s a -> s{_ncOAuthScopes = a})
      . _Default
      . _Coerce

-- | The Google Cloud Platform Service Account to be used by the node VMs. If
-- no Service Account is specified, the \"default\" service account is
-- used.
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
-- type](\/compute\/docs\/machine-types) (e.g. \`n1-standard-1\`). If
-- unspecified, the default machine type is \`n1-standard-1\`.
ncMachineType :: Lens' NodeConfig (Maybe Text)
ncMachineType
  = lens _ncMachineType
      (\ s a -> s{_ncMachineType = a})

-- | The metadata key\/value pairs assigned to instances in the cluster. Keys
-- must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes in
-- length. These are reflected as part of a URL in the metadata server.
-- Additionally, to avoid ambiguity, keys must not conflict with any other
-- metadata keys for the project or be one of the reserved keys:
-- \"cluster-location\" \"cluster-name\" \"cluster-uid\" \"configure-sh\"
-- \"enable-os-login\" \"gci-update-strategy\" \"gci-ensure-gke-docker\"
-- \"instance-template\" \"kube-env\" \"startup-script\" \"user-data\"
-- Values are free-form strings, and only have meaning as interpreted by
-- the image running in the instance. The only restriction placed on them
-- is that each value\'s size must be less than or equal to 32 KB. The
-- total size of all keys and values must be less than 512 KB.
ncMetadata :: Lens' NodeConfig (Maybe NodeConfigMetadata)
ncMetadata
  = lens _ncMetadata (\ s a -> s{_ncMetadata = a})

-- | Type of the disk attached to each node (e.g. \'pd-standard\' or
-- \'pd-ssd\') If unspecified, the default disk type is \'pd-standard\'
ncDiskType :: Lens' NodeConfig (Maybe Text)
ncDiskType
  = lens _ncDiskType (\ s a -> s{_ncDiskType = a})

-- | The map of Kubernetes labels (key\/value pairs) to be applied to each
-- node. These will added in addition to any default label(s) that
-- Kubernetes may apply to the node. In case of conflict in label keys, the
-- applied set may differ depending on the Kubernetes version -- it\'s best
-- to assume the behavior is undefined and conflicts should be avoided. For
-- more information, including usage and the valid values, see:
-- https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/labels\/
ncLabels :: Lens' NodeConfig (Maybe NodeConfigLabels)
ncLabels = lens _ncLabels (\ s a -> s{_ncLabels = a})

-- | Minimum CPU platform to be used by this instance. The instance may be
-- scheduled on the specified or newer CPU platform. Applicable values are
-- the friendly names of CPU platforms, such as
-- 'minCpuPlatform: \"Intel Haswell\"' or
-- 'minCpuPlatform: \"Intel Sandy Bridge\"'. For more information, read
-- [how to specify min CPU
-- platform](https:\/\/cloud.google.com\/compute\/docs\/instances\/specify-min-cpu-platform)
ncMinCPUPlatform :: Lens' NodeConfig (Maybe Text)
ncMinCPUPlatform
  = lens _ncMinCPUPlatform
      (\ s a -> s{_ncMinCPUPlatform = a})

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
                   (o .:? "localSsdCount") <*> (o .:? "diskSizeGb") <*>
                     (o .:? "taints" .!= mempty)
                     <*> (o .:? "oauthScopes" .!= mempty)
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "accelerators" .!= mempty)
                     <*> (o .:? "imageType")
                     <*> (o .:? "machineType")
                     <*> (o .:? "metadata")
                     <*> (o .:? "diskType")
                     <*> (o .:? "labels")
                     <*> (o .:? "minCpuPlatform")
                     <*> (o .:? "tags" .!= mempty)
                     <*> (o .:? "preemptible"))

instance ToJSON NodeConfig where
        toJSON NodeConfig'{..}
          = object
              (catMaybes
                 [("localSsdCount" .=) <$> _ncLocalSsdCount,
                  ("diskSizeGb" .=) <$> _ncDiskSizeGb,
                  ("taints" .=) <$> _ncTaints,
                  ("oauthScopes" .=) <$> _ncOAuthScopes,
                  ("serviceAccount" .=) <$> _ncServiceAccount,
                  ("accelerators" .=) <$> _ncAccelerators,
                  ("imageType" .=) <$> _ncImageType,
                  ("machineType" .=) <$> _ncMachineType,
                  ("metadata" .=) <$> _ncMetadata,
                  ("diskType" .=) <$> _ncDiskType,
                  ("labels" .=) <$> _ncLabels,
                  ("minCpuPlatform" .=) <$> _ncMinCPUPlatform,
                  ("tags" .=) <$> _ncTags,
                  ("preemptible" .=) <$> _ncPreemptible])

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
    , _oStatus             :: !(Maybe OperationStatus)
    , _oLocation           :: !(Maybe Text)
    , _oStartTime          :: !(Maybe Text)
    , _oZone               :: !(Maybe Text)
    , _oSelfLink           :: !(Maybe Text)
    , _oName               :: !(Maybe Text)
    , _oStatusMessage      :: !(Maybe Text)
    , _oEndTime            :: !(Maybe Text)
    , _oClusterConditions  :: !(Maybe [StatusCondition])
    , _oOperationType      :: !(Maybe OperationOperationType)
    , _oTargetLink         :: !(Maybe Text)
    , _oDetail             :: !(Maybe Text)
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
-- * 'oStartTime'
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
    , _oStartTime = Nothing
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


-- | Which conditions caused the current node pool state.
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
-- [zone](\/compute\/docs\/regions-zones\/regions-zones#available) or
-- [region](\/compute\/docs\/regions-zones\/regions-zones#available) in
-- which the cluster resides.
oLocation :: Lens' Operation (Maybe Text)
oLocation
  = lens _oLocation (\ s a -> s{_oLocation = a})

-- | [Output only] The time the operation started, in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) text format.
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the operation is
-- taking place. This field is deprecated, use location instead.
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

-- | [Output only] The time the operation completed, in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) text format.
oEndTime :: Lens' Operation (Maybe Text)
oEndTime = lens _oEndTime (\ s a -> s{_oEndTime = a})

-- | Which conditions caused the current cluster state.
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
                     <*> (o .:? "startTime")
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
                  ("startTime" .=) <$> _oStartTime,
                  ("zone" .=) <$> _oZone,
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
    , _snparZone        :: !(Maybe Text)
    , _snparNodePoolId  :: !(Maybe Text)
    , _snparName        :: !(Maybe Text)
    , _snparClusterId   :: !(Maybe Text)
    , _snparProjectId   :: !(Maybe Text)
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


-- | Autoscaling configuration for the node pool.
snparAutoscaling :: Lens' SetNodePoolAutoscalingRequest (Maybe NodePoolAutoscaling)
snparAutoscaling
  = lens _snparAutoscaling
      (\ s a -> s{_snparAutoscaling = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
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
-- \'projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\'.
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
    { _cirrZone      :: !(Maybe Text)
    , _cirrName      :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
cirrZone :: Lens' CompleteIPRotationRequest (Maybe Text)
cirrZone = lens _cirrZone (\ s a -> s{_cirrZone = a})

-- | The name (project, location, cluster id) of the cluster to complete IP
-- rotation. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | NodeManagement defines the set of node management services turned on for
-- the node pool.
--
-- /See:/ 'nodeManagement' smart constructor.
data NodeManagement =
  NodeManagement'
    { _nmAutoUpgrade    :: !(Maybe Bool)
    , _nmAutoRepair     :: !(Maybe Bool)
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
-- NoExecute. For more information, including usage and the valid values,
-- see:
-- https:\/\/kubernetes.io\/docs\/concepts\/configuration\/taint-and-toleration\/
--
-- /See:/ 'nodeTaint' smart constructor.
data NodeTaint =
  NodeTaint'
    { _ntEffect :: !(Maybe NodeTaintEffect)
    , _ntValue  :: !(Maybe Text)
    , _ntKey    :: !(Maybe Text)
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
    , _npaEnabled      :: !(Maybe Bool)
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
-- * 'npaMinNodeCount'
nodePoolAutoscaling
    :: NodePoolAutoscaling
nodePoolAutoscaling =
  NodePoolAutoscaling'
    { _npaMaxNodeCount = Nothing
    , _npaEnabled = Nothing
    , _npaMinNodeCount = Nothing
    }


-- | Maximum number of nodes in the NodePool. Must be >= min_node_count.
-- There has to enough quota to scale up the cluster.
npaMaxNodeCount :: Lens' NodePoolAutoscaling (Maybe Int32)
npaMaxNodeCount
  = lens _npaMaxNodeCount
      (\ s a -> s{_npaMaxNodeCount = a})
      . mapping _Coerce

-- | Is autoscaling enabled for this node pool.
npaEnabled :: Lens' NodePoolAutoscaling (Maybe Bool)
npaEnabled
  = lens _npaEnabled (\ s a -> s{_npaEnabled = a})

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
                     (o .:? "minNodeCount"))

instance ToJSON NodePoolAutoscaling where
        toJSON NodePoolAutoscaling'{..}
          = object
              (catMaybes
                 [("maxNodeCount" .=) <$> _npaMaxNodeCount,
                  ("enabled" .=) <$> _npaEnabled,
                  ("minNodeCount" .=) <$> _npaMinNodeCount])

-- | SetMaintenancePolicyRequest sets the maintenance policy for a cluster.
--
-- /See:/ 'setMaintenancePolicyRequest' smart constructor.
data SetMaintenancePolicyRequest =
  SetMaintenancePolicyRequest'
    { _smprZone              :: !(Maybe Text)
    , _smprName              :: !(Maybe Text)
    , _smprClusterId         :: !(Maybe Text)
    , _smprMaintenancePolicy :: !(Maybe MaintenancePolicy)
    , _smprProjectId         :: !(Maybe Text)
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


-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
smprZone :: Lens' SetMaintenancePolicyRequest (Maybe Text)
smprZone = lens _smprZone (\ s a -> s{_smprZone = a})

-- | The name (project, location, cluster id) of the cluster to set
-- maintenance policy. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
smprName :: Lens' SetMaintenancePolicyRequest (Maybe Text)
smprName = lens _smprName (\ s a -> s{_smprName = a})

-- | The name of the cluster to update.
smprClusterId :: Lens' SetMaintenancePolicyRequest (Maybe Text)
smprClusterId
  = lens _smprClusterId
      (\ s a -> s{_smprClusterId = a})

-- | The maintenance policy to be set for the cluster. An empty field clears
-- the existing maintenance policy.
smprMaintenancePolicy :: Lens' SetMaintenancePolicyRequest (Maybe MaintenancePolicy)
smprMaintenancePolicy
  = lens _smprMaintenancePolicy
      (\ s a -> s{_smprMaintenancePolicy = a})

-- | The Google Developers Console [project ID or project
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
    { _slrResourceLabels   :: !(Maybe SetLabelsRequestResourceLabels)
    , _slrZone             :: !(Maybe Text)
    , _slrName             :: !(Maybe Text)
    , _slrClusterId        :: !(Maybe Text)
    , _slrProjectId        :: !(Maybe Text)
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


-- | The labels to set for that cluster.
slrResourceLabels :: Lens' SetLabelsRequest (Maybe SetLabelsRequestResourceLabels)
slrResourceLabels
  = lens _slrResourceLabels
      (\ s a -> s{_slrResourceLabels = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
slrZone :: Lens' SetLabelsRequest (Maybe Text)
slrZone = lens _slrZone (\ s a -> s{_slrZone = a})

-- | The name (project, location, cluster id) of the cluster to set labels.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | The fingerprint of the previous set of labels for this resource, used to
-- detect conflicts. The fingerprint is initially generated by Kubernetes
-- Engine and changes after every request to modify or update labels. You
-- must always provide an up-to-date fingerprint hash when updating or
-- changing labels. Make a 'get()' request to the resource to get the
-- latest fingerprint.
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
    { _goicrIdTokenSigningAlgValuesSupported :: !(Maybe [Text])
    , _goicrResponseTypesSupported           :: !(Maybe [Text])
    , _goicrJWKsURI                          :: !(Maybe Text)
    , _goicrGrantTypes                       :: !(Maybe [Text])
    , _goicrClaimsSupported                  :: !(Maybe [Text])
    , _goicrIssuer                           :: !(Maybe Text)
    , _goicrSubjectTypesSupported            :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetOpenIdConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _goicrIdTokenSigningAlgValuesSupported = Nothing
    , _goicrResponseTypesSupported = Nothing
    , _goicrJWKsURI = Nothing
    , _goicrGrantTypes = Nothing
    , _goicrClaimsSupported = Nothing
    , _goicrIssuer = Nothing
    , _goicrSubjectTypesSupported = Nothing
    }


-- | NOLINT
goicrIdTokenSigningAlgValuesSupported :: Lens' GetOpenIdConfigResponse [Text]
goicrIdTokenSigningAlgValuesSupported
  = lens _goicrIdTokenSigningAlgValuesSupported
      (\ s a ->
         s{_goicrIdTokenSigningAlgValuesSupported = a})
      . _Default
      . _Coerce

-- | NOLINT
goicrResponseTypesSupported :: Lens' GetOpenIdConfigResponse [Text]
goicrResponseTypesSupported
  = lens _goicrResponseTypesSupported
      (\ s a -> s{_goicrResponseTypesSupported = a})
      . _Default
      . _Coerce

-- | NOLINT
goicrJWKsURI :: Lens' GetOpenIdConfigResponse (Maybe Text)
goicrJWKsURI
  = lens _goicrJWKsURI (\ s a -> s{_goicrJWKsURI = a})

-- | NOLINT
goicrGrantTypes :: Lens' GetOpenIdConfigResponse [Text]
goicrGrantTypes
  = lens _goicrGrantTypes
      (\ s a -> s{_goicrGrantTypes = a})
      . _Default
      . _Coerce

-- | NOLINT
goicrClaimsSupported :: Lens' GetOpenIdConfigResponse [Text]
goicrClaimsSupported
  = lens _goicrClaimsSupported
      (\ s a -> s{_goicrClaimsSupported = a})
      . _Default
      . _Coerce

-- | NOLINT
goicrIssuer :: Lens' GetOpenIdConfigResponse (Maybe Text)
goicrIssuer
  = lens _goicrIssuer (\ s a -> s{_goicrIssuer = a})

-- | NOLINT
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
                 [("id_token_signing_alg_values_supported" .=) <$>
                    _goicrIdTokenSigningAlgValuesSupported,
                  ("response_types_supported" .=) <$>
                    _goicrResponseTypesSupported,
                  ("jwks_uri" .=) <$> _goicrJWKsURI,
                  ("grant_types" .=) <$> _goicrGrantTypes,
                  ("claims_supported" .=) <$> _goicrClaimsSupported,
                  ("issuer" .=) <$> _goicrIssuer,
                  ("subject_types_supported" .=) <$>
                    _goicrSubjectTypesSupported])

-- | Jwk is a JSON Web Key as specified in RFC 7517
--
-- /See:/ 'jwk' smart constructor.
data JWK =
  JWK'
    { _jCrv :: !(Maybe Text)
    , _jAlg :: !(Maybe Text)
    , _jUse :: !(Maybe Text)
    , _jKid :: !(Maybe Text)
    , _jN   :: !(Maybe Text)
    , _jE   :: !(Maybe Text)
    , _jX   :: !(Maybe Text)
    , _jKty :: !(Maybe Text)
    , _jY   :: !(Maybe Text)
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


-- | NOLINT
jCrv :: Lens' JWK (Maybe Text)
jCrv = lens _jCrv (\ s a -> s{_jCrv = a})

-- | NOLINT
jAlg :: Lens' JWK (Maybe Text)
jAlg = lens _jAlg (\ s a -> s{_jAlg = a})

-- | NOLINT
jUse :: Lens' JWK (Maybe Text)
jUse = lens _jUse (\ s a -> s{_jUse = a})

-- | NOLINT
jKid :: Lens' JWK (Maybe Text)
jKid = lens _jKid (\ s a -> s{_jKid = a})

-- | Fields for RSA keys. NOLINT
jN :: Lens' JWK (Maybe Text)
jN = lens _jN (\ s a -> s{_jN = a})

-- | NOLINT
jE :: Lens' JWK (Maybe Text)
jE = lens _jE (\ s a -> s{_jE = a})

-- | Fields for ECDSA keys. NOLINT
jX :: Lens' JWK (Maybe Text)
jX = lens _jX (\ s a -> s{_jX = a})

-- | NOLINT
jKty :: Lens' JWK (Maybe Text)
jKty = lens _jKty (\ s a -> s{_jKty = a})

-- | NOLINT
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

-- | MaintenanceWindow defines the maintenance window to be used for the
-- cluster.
--
-- /See:/ 'maintenanceWindow' smart constructor.
newtype MaintenanceWindow =
  MaintenanceWindow'
    { _mwDailyMaintenanceWindow :: Maybe DailyMaintenanceWindow
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwDailyMaintenanceWindow'
maintenanceWindow
    :: MaintenanceWindow
maintenanceWindow = MaintenanceWindow' {_mwDailyMaintenanceWindow = Nothing}


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
                   (o .:? "dailyMaintenanceWindow"))

instance ToJSON MaintenanceWindow where
        toJSON MaintenanceWindow'{..}
          = object
              (catMaybes
                 [("dailyMaintenanceWindow" .=) <$>
                    _mwDailyMaintenanceWindow])

-- | Configuration for controlling how IPs are allocated in the cluster.
--
-- /See:/ 'ipAllocationPolicy' smart constructor.
data IPAllocationPolicy =
  IPAllocationPolicy'
    { _iapServicesSecondaryRangeName :: !(Maybe Text)
    , _iapNodeIPv4CIdR               :: !(Maybe Text)
    , _iapUseIPAliases               :: !(Maybe Bool)
    , _iapClusterIPv4CIdR            :: !(Maybe Text)
    , _iapSubnetworkName             :: !(Maybe Text)
    , _iapClusterSecondaryRangeName  :: !(Maybe Text)
    , _iapNodeIPv4CIdRBlock          :: !(Maybe Text)
    , _iapServicesIPv4CIdR           :: !(Maybe Text)
    , _iapClusterIPv4CIdRBlock       :: !(Maybe Text)
    , _iapServicesIPv4CIdRBlock      :: !(Maybe Text)
    , _iapCreateSubnetwork           :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IPAllocationPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapServicesSecondaryRangeName'
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
    , _iapNodeIPv4CIdR = Nothing
    , _iapUseIPAliases = Nothing
    , _iapClusterIPv4CIdR = Nothing
    , _iapSubnetworkName = Nothing
    , _iapClusterSecondaryRangeName = Nothing
    , _iapNodeIPv4CIdRBlock = Nothing
    , _iapServicesIPv4CIdR = Nothing
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

-- | This field is deprecated, use node_ipv4_cidr_block.
iapNodeIPv4CIdR :: Lens' IPAllocationPolicy (Maybe Text)
iapNodeIPv4CIdR
  = lens _iapNodeIPv4CIdR
      (\ s a -> s{_iapNodeIPv4CIdR = a})

-- | Whether alias IPs will be used for pod IPs in the cluster.
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
                     (o .:? "nodeIpv4Cidr")
                     <*> (o .:? "useIpAliases")
                     <*> (o .:? "clusterIpv4Cidr")
                     <*> (o .:? "subnetworkName")
                     <*> (o .:? "clusterSecondaryRangeName")
                     <*> (o .:? "nodeIpv4CidrBlock")
                     <*> (o .:? "servicesIpv4Cidr")
                     <*> (o .:? "clusterIpv4CidrBlock")
                     <*> (o .:? "servicesIpv4CidrBlock")
                     <*> (o .:? "createSubnetwork"))

instance ToJSON IPAllocationPolicy where
        toJSON IPAllocationPolicy'{..}
          = object
              (catMaybes
                 [("servicesSecondaryRangeName" .=) <$>
                    _iapServicesSecondaryRangeName,
                  ("nodeIpv4Cidr" .=) <$> _iapNodeIPv4CIdR,
                  ("useIpAliases" .=) <$> _iapUseIPAliases,
                  ("clusterIpv4Cidr" .=) <$> _iapClusterIPv4CIdR,
                  ("subnetworkName" .=) <$> _iapSubnetworkName,
                  ("clusterSecondaryRangeName" .=) <$>
                    _iapClusterSecondaryRangeName,
                  ("nodeIpv4CidrBlock" .=) <$> _iapNodeIPv4CIdRBlock,
                  ("servicesIpv4Cidr" .=) <$> _iapServicesIPv4CIdR,
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
    { _acNetworkPolicyConfig      :: !(Maybe NetworkPolicyConfig)
    , _acHorizontalPodAutoscaling :: !(Maybe HorizontalPodAutoscaling)
    , _acHTTPLoadBalancing        :: !(Maybe HTTPLoadBalancing)
    , _acKubernetesDashboard      :: !(Maybe KubernetesDashboard)
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
-- * 'acHTTPLoadBalancing'
--
-- * 'acKubernetesDashboard'
addonsConfig
    :: AddonsConfig
addonsConfig =
  AddonsConfig'
    { _acNetworkPolicyConfig = Nothing
    , _acHorizontalPodAutoscaling = Nothing
    , _acHTTPLoadBalancing = Nothing
    , _acKubernetesDashboard = Nothing
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

-- | Configuration for the HTTP (L7) load balancing controller addon, which
-- makes it easy to set up HTTP load balancers for services in a cluster.
acHTTPLoadBalancing :: Lens' AddonsConfig (Maybe HTTPLoadBalancing)
acHTTPLoadBalancing
  = lens _acHTTPLoadBalancing
      (\ s a -> s{_acHTTPLoadBalancing = a})

-- | Configuration for the Kubernetes Dashboard.
acKubernetesDashboard :: Lens' AddonsConfig (Maybe KubernetesDashboard)
acKubernetesDashboard
  = lens _acKubernetesDashboard
      (\ s a -> s{_acKubernetesDashboard = a})

instance FromJSON AddonsConfig where
        parseJSON
          = withObject "AddonsConfig"
              (\ o ->
                 AddonsConfig' <$>
                   (o .:? "networkPolicyConfig") <*>
                     (o .:? "horizontalPodAutoscaling")
                     <*> (o .:? "httpLoadBalancing")
                     <*> (o .:? "kubernetesDashboard"))

instance ToJSON AddonsConfig where
        toJSON AddonsConfig'{..}
          = object
              (catMaybes
                 [("networkPolicyConfig" .=) <$>
                    _acNetworkPolicyConfig,
                  ("horizontalPodAutoscaling" .=) <$>
                    _acHorizontalPodAutoscaling,
                  ("httpLoadBalancing" .=) <$> _acHTTPLoadBalancing,
                  ("kubernetesDashboard" .=) <$>
                    _acKubernetesDashboard])

-- | NetworkConfig reports the relative names of network & subnetwork.
--
-- /See:/ 'networkConfig' smart constructor.
data NetworkConfig =
  NetworkConfig'
    { _ncNetwork    :: !(Maybe Text)
    , _ncSubnetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncNetwork'
--
-- * 'ncSubnetwork'
networkConfig
    :: NetworkConfig
networkConfig = NetworkConfig' {_ncNetwork = Nothing, _ncSubnetwork = Nothing}


-- | Output only. The relative name of the Google Compute Engine
-- network(\/compute\/docs\/networks-and-firewalls#networks) to which the
-- cluster is connected. Example:
-- projects\/my-project\/global\/networks\/my-network
ncNetwork :: Lens' NetworkConfig (Maybe Text)
ncNetwork
  = lens _ncNetwork (\ s a -> s{_ncNetwork = a})

-- | Output only. The relative name of the Google Compute Engine
-- [subnetwork](\/compute\/docs\/vpc) to which the cluster is connected.
-- Example:
-- projects\/my-project\/regions\/us-central1\/subnetworks\/my-subnet
ncSubnetwork :: Lens' NetworkConfig (Maybe Text)
ncSubnetwork
  = lens _ncSubnetwork (\ s a -> s{_ncSubnetwork = a})

instance FromJSON NetworkConfig where
        parseJSON
          = withObject "NetworkConfig"
              (\ o ->
                 NetworkConfig' <$>
                   (o .:? "network") <*> (o .:? "subnetwork"))

instance ToJSON NetworkConfig where
        toJSON NetworkConfig'{..}
          = object
              (catMaybes
                 [("network" .=) <$> _ncNetwork,
                  ("subnetwork" .=) <$> _ncSubnetwork])

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
    { _npStatus            :: !(Maybe NodePoolStatus)
    , _npAutoscaling       :: !(Maybe NodePoolAutoscaling)
    , _npConfig            :: !(Maybe NodeConfig)
    , _npInitialNodeCount  :: !(Maybe (Textual Int32))
    , _npManagement        :: !(Maybe NodeManagement)
    , _npSelfLink          :: !(Maybe Text)
    , _npName              :: !(Maybe Text)
    , _npStatusMessage     :: !(Maybe Text)
    , _npVersion           :: !(Maybe Text)
    , _npConditions        :: !(Maybe [StatusCondition])
    , _npInstanceGroupURLs :: !(Maybe [Text])
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
-- * 'npInitialNodeCount'
--
-- * 'npManagement'
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
-- * 'npInstanceGroupURLs'
nodePool
    :: NodePool
nodePool =
  NodePool'
    { _npStatus = Nothing
    , _npAutoscaling = Nothing
    , _npConfig = Nothing
    , _npInitialNodeCount = Nothing
    , _npManagement = Nothing
    , _npSelfLink = Nothing
    , _npName = Nothing
    , _npStatusMessage = Nothing
    , _npVersion = Nothing
    , _npConditions = Nothing
    , _npInstanceGroupURLs = Nothing
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

-- | The initial node count for the pool. You must ensure that your Compute
-- Engine </compute/docs/resource-quotas resource quota> is sufficient for
-- this number of instances. You must also have available firewall and
-- routes quota.
npInitialNodeCount :: Lens' NodePool (Maybe Int32)
npInitialNodeCount
  = lens _npInitialNodeCount
      (\ s a -> s{_npInitialNodeCount = a})
      . mapping _Coerce

-- | NodeManagement configuration for this NodePool.
npManagement :: Lens' NodePool (Maybe NodeManagement)
npManagement
  = lens _npManagement (\ s a -> s{_npManagement = a})

-- | [Output only] Server-defined URL for the resource.
npSelfLink :: Lens' NodePool (Maybe Text)
npSelfLink
  = lens _npSelfLink (\ s a -> s{_npSelfLink = a})

-- | The name of the node pool.
npName :: Lens' NodePool (Maybe Text)
npName = lens _npName (\ s a -> s{_npName = a})

-- | [Output only] Additional information about the current status of this
-- node pool instance, if available.
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

-- | [Output only] The resource URLs of the [managed instance
-- groups](\/compute\/docs\/instance-groups\/creating-groups-of-managed-instances)
-- associated with this node pool.
npInstanceGroupURLs :: Lens' NodePool [Text]
npInstanceGroupURLs
  = lens _npInstanceGroupURLs
      (\ s a -> s{_npInstanceGroupURLs = a})
      . _Default
      . _Coerce

instance FromJSON NodePool where
        parseJSON
          = withObject "NodePool"
              (\ o ->
                 NodePool' <$>
                   (o .:? "status") <*> (o .:? "autoscaling") <*>
                     (o .:? "config")
                     <*> (o .:? "initialNodeCount")
                     <*> (o .:? "management")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "version")
                     <*> (o .:? "conditions" .!= mempty)
                     <*> (o .:? "instanceGroupUrls" .!= mempty))

instance ToJSON NodePool where
        toJSON NodePool'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _npStatus,
                  ("autoscaling" .=) <$> _npAutoscaling,
                  ("config" .=) <$> _npConfig,
                  ("initialNodeCount" .=) <$> _npInitialNodeCount,
                  ("management" .=) <$> _npManagement,
                  ("selfLink" .=) <$> _npSelfLink,
                  ("name" .=) <$> _npName,
                  ("statusMessage" .=) <$> _npStatusMessage,
                  ("version" .=) <$> _npVersion,
                  ("conditions" .=) <$> _npConditions,
                  ("instanceGroupUrls" .=) <$> _npInstanceGroupURLs])

-- | SetNodePoolManagementRequest sets the node management properties of a
-- node pool.
--
-- /See:/ 'setNodePoolManagementRequest' smart constructor.
data SetNodePoolManagementRequest =
  SetNodePoolManagementRequest'
    { _snpmrManagement :: !(Maybe NodeManagement)
    , _snpmrZone       :: !(Maybe Text)
    , _snpmrNodePoolId :: !(Maybe Text)
    , _snpmrName       :: !(Maybe Text)
    , _snpmrClusterId  :: !(Maybe Text)
    , _snpmrProjectId  :: !(Maybe Text)
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


-- | NodeManagement configuration for the node pool.
snpmrManagement :: Lens' SetNodePoolManagementRequest (Maybe NodeManagement)
snpmrManagement
  = lens _snpmrManagement
      (\ s a -> s{_snpmrManagement = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
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
-- \'projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\'.
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

-- | Configuration options for the master authorized networks feature.
-- Enabled master authorized networks will disallow all external traffic to
-- access Kubernetes master through HTTPS except traffic from the given
-- CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
--
-- /See:/ 'masterAuthorizedNetworksConfig' smart constructor.
data MasterAuthorizedNetworksConfig =
  MasterAuthorizedNetworksConfig'
    { _mancEnabled    :: !(Maybe Bool)
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

-- | cidr_blocks define up to 10 external networks that could access
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
    { _maClientKey               :: !(Maybe Text)
    , _maUsername                :: !(Maybe Text)
    , _maClientCertificateConfig :: !(Maybe ClientCertificateConfig)
    , _maClientCertificate       :: !(Maybe Text)
    , _maPassword                :: !(Maybe Text)
    , _maClusterCaCertificate    :: !(Maybe Text)
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
-- string).
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
-- creation, username must be non-empty.
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

-- | StatusCondition describes why a cluster or a node pool has a certain
-- status (e.g., ERROR or DEGRADED).
--
-- /See:/ 'statusCondition' smart constructor.
data StatusCondition =
  StatusCondition'
    { _scCode    :: !(Maybe StatusConditionCode)
    , _scMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCode'
--
-- * 'scMessage'
statusCondition
    :: StatusCondition
statusCondition = StatusCondition' {_scCode = Nothing, _scMessage = Nothing}


-- | Machine-friendly representation of the condition
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
                   (o .:? "code") <*> (o .:? "message"))

instance ToJSON StatusCondition where
        toJSON StatusCondition'{..}
          = object
              (catMaybes
                 [("code" .=) <$> _scCode,
                  ("message" .=) <$> _scMessage])

-- | The metadata key\/value pairs assigned to instances in the cluster. Keys
-- must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes in
-- length. These are reflected as part of a URL in the metadata server.
-- Additionally, to avoid ambiguity, keys must not conflict with any other
-- metadata keys for the project or be one of the reserved keys:
-- \"cluster-location\" \"cluster-name\" \"cluster-uid\" \"configure-sh\"
-- \"enable-os-login\" \"gci-update-strategy\" \"gci-ensure-gke-docker\"
-- \"instance-template\" \"kube-env\" \"startup-script\" \"user-data\"
-- Values are free-form strings, and only have meaning as interpreted by
-- the image running in the instance. The only restriction placed on them
-- is that each value\'s size must be less than or equal to 32 KB. The
-- total size of all keys and values must be less than 512 KB.
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

-- | Kubernetes Engine service configuration.
--
-- /See:/ 'serverConfig' smart constructor.
data ServerConfig =
  ServerConfig'
    { _scDefaultImageType      :: !(Maybe Text)
    , _scValidNodeVersions     :: !(Maybe [Text])
    , _scValidImageTypes       :: !(Maybe [Text])
    , _scDefaultClusterVersion :: !(Maybe Text)
    , _scValidMasterVersions   :: !(Maybe [Text])
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
    , _scValidImageTypes = Nothing
    , _scDefaultClusterVersion = Nothing
    , _scValidMasterVersions = Nothing
    }


-- | Default image type.
scDefaultImageType :: Lens' ServerConfig (Maybe Text)
scDefaultImageType
  = lens _scDefaultImageType
      (\ s a -> s{_scDefaultImageType = a})

-- | List of valid node upgrade target versions.
scValidNodeVersions :: Lens' ServerConfig [Text]
scValidNodeVersions
  = lens _scValidNodeVersions
      (\ s a -> s{_scValidNodeVersions = a})
      . _Default
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

-- | List of valid master versions.
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
                     <*> (o .:? "validImageTypes" .!= mempty)
                     <*> (o .:? "defaultClusterVersion")
                     <*> (o .:? "validMasterVersions" .!= mempty))

instance ToJSON ServerConfig where
        toJSON ServerConfig'{..}
          = object
              (catMaybes
                 [("defaultImageType" .=) <$> _scDefaultImageType,
                  ("validNodeVersions" .=) <$> _scValidNodeVersions,
                  ("validImageTypes" .=) <$> _scValidImageTypes,
                  ("defaultClusterVersion" .=) <$>
                    _scDefaultClusterVersion,
                  ("validMasterVersions" .=) <$>
                    _scValidMasterVersions])

-- | AutoUpgradeOptions defines the set of options for the user to control
-- how the Auto Upgrades will proceed.
--
-- /See:/ 'autoUpgradeOptions' smart constructor.
data AutoUpgradeOptions =
  AutoUpgradeOptions'
    { _auoAutoUpgradeStartTime :: !(Maybe Text)
    , _auoDescription          :: !(Maybe Text)
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

-- | SetNodePoolSizeRequest sets the size a node pool.
--
-- /See:/ 'setNodePoolSizeRequest' smart constructor.
data SetNodePoolSizeRequest =
  SetNodePoolSizeRequest'
    { _snpsrNodeCount  :: !(Maybe (Textual Int32))
    , _snpsrZone       :: !(Maybe Text)
    , _snpsrNodePoolId :: !(Maybe Text)
    , _snpsrName       :: !(Maybe Text)
    , _snpsrClusterId  :: !(Maybe Text)
    , _snpsrProjectId  :: !(Maybe Text)
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


-- | The desired node count for the pool.
snpsrNodeCount :: Lens' SetNodePoolSizeRequest (Maybe Int32)
snpsrNodeCount
  = lens _snpsrNodeCount
      (\ s a -> s{_snpsrNodeCount = a})
      . mapping _Coerce

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
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
-- \'projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\'.
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

-- | SetMonitoringServiceRequest sets the monitoring service of a cluster.
--
-- /See:/ 'setMonitoringServiceRequest' smart constructor.
data SetMonitoringServiceRequest =
  SetMonitoringServiceRequest'
    { _smsrZone              :: !(Maybe Text)
    , _smsrName              :: !(Maybe Text)
    , _smsrClusterId         :: !(Maybe Text)
    , _smsrProjectId         :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
smsrZone :: Lens' SetMonitoringServiceRequest (Maybe Text)
smsrZone = lens _smsrZone (\ s a -> s{_smsrZone = a})

-- | The name (project, location, cluster) of the cluster to set monitoring.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | The monitoring service the cluster should use to write metrics.
-- Currently available options: * \"monitoring.googleapis.com\" - the
-- Google Cloud Monitoring service * \"none\" - no metrics will be exported
-- from the cluster
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

-- | SetLoggingServiceRequest sets the logging service of a cluster.
--
-- /See:/ 'setLoggingServiceRequest' smart constructor.
data SetLoggingServiceRequest =
  SetLoggingServiceRequest'
    { _slsrZone           :: !(Maybe Text)
    , _slsrName           :: !(Maybe Text)
    , _slsrClusterId      :: !(Maybe Text)
    , _slsrProjectId      :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
slsrZone :: Lens' SetLoggingServiceRequest (Maybe Text)
slsrZone = lens _slsrZone (\ s a -> s{_slsrZone = a})

-- | The name (project, location, cluster) of the cluster to set logging.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | The logging service the cluster should use to write metrics. Currently
-- available options: * \"logging.googleapis.com\" - the Google Cloud
-- Logging service * \"none\" - no metrics will be exported from the
-- cluster
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
newtype MaintenancePolicy =
  MaintenancePolicy'
    { _mpWindow :: Maybe MaintenanceWindow
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaintenancePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpWindow'
maintenancePolicy
    :: MaintenancePolicy
maintenancePolicy = MaintenancePolicy' {_mpWindow = Nothing}


-- | Specifies the maintenance window in which maintenance may be performed.
mpWindow :: Lens' MaintenancePolicy (Maybe MaintenanceWindow)
mpWindow = lens _mpWindow (\ s a -> s{_mpWindow = a})

instance FromJSON MaintenancePolicy where
        parseJSON
          = withObject "MaintenancePolicy"
              (\ o -> MaintenancePolicy' <$> (o .:? "window"))

instance ToJSON MaintenancePolicy where
        toJSON MaintenancePolicy'{..}
          = object (catMaybes [("window" .=) <$> _mpWindow])

-- | CidrBlock contains an optional name and one CIDR block.
--
-- /See:/ 'cIdRBlock' smart constructor.
data CIdRBlock =
  CIdRBlock'
    { _cirbCIdRBlock   :: !(Maybe Text)
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

-- | AcceleratorConfig represents a Hardware Accelerator request.
--
-- /See:/ 'acceleratorConfig' smart constructor.
data AcceleratorConfig =
  AcceleratorConfig'
    { _acAcceleratorCount :: !(Maybe (Textual Int64))
    , _acAcceleratorType  :: !(Maybe Text)
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
-- [here](\/compute\/docs\/gpus\/#Introduction)
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
    { _sZone      :: !(Maybe Text)
    , _sName      :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
sZone :: Lens' SetLocationsRequest (Maybe Text)
sZone = lens _sZone (\ s a -> s{_sZone = a})

-- | The name (project, location, cluster) of the cluster to set locations.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | The desired list of Google Compute Engine
-- [zones](\/compute\/docs\/zones#available) in which the cluster\'s nodes
-- should be located. Changing the locations a cluster is in will result in
-- nodes being either created or removed from the cluster, depending on
-- whether locations are being added or removed. This list must always
-- include the cluster\'s primary zone.
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
    { _snprZone          :: !(Maybe Text)
    , _snprName          :: !(Maybe Text)
    , _snprClusterId     :: !(Maybe Text)
    , _snprProjectId     :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
snprZone :: Lens' SetNetworkPolicyRequest (Maybe Text)
snprZone = lens _snprZone (\ s a -> s{_snprZone = a})

-- | The name (project, location, cluster id) of the cluster to set
-- networking policy. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
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

-- | Configuration options for the NetworkPolicy feature.
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
    { _pccEnablePrivateNodes    :: !(Maybe Bool)
    , _pccEnablePrivateEndpoint :: !(Maybe Bool)
    , _pccPublicEndpoint        :: !(Maybe Text)
    , _pccMasterIPv4CIdRBlock   :: !(Maybe Text)
    , _pccPrivateEndpoint       :: !(Maybe Text)
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
privateClusterConfig
    :: PrivateClusterConfig
privateClusterConfig =
  PrivateClusterConfig'
    { _pccEnablePrivateNodes = Nothing
    , _pccEnablePrivateEndpoint = Nothing
    , _pccPublicEndpoint = Nothing
    , _pccMasterIPv4CIdRBlock = Nothing
    , _pccPrivateEndpoint = Nothing
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

instance FromJSON PrivateClusterConfig where
        parseJSON
          = withObject "PrivateClusterConfig"
              (\ o ->
                 PrivateClusterConfig' <$>
                   (o .:? "enablePrivateNodes") <*>
                     (o .:? "enablePrivateEndpoint")
                     <*> (o .:? "publicEndpoint")
                     <*> (o .:? "masterIpv4CidrBlock")
                     <*> (o .:? "privateEndpoint"))

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
                  ("privateEndpoint" .=) <$> _pccPrivateEndpoint])

-- | Time window specified for daily maintenance operations.
--
-- /See:/ 'dailyMaintenanceWindow' smart constructor.
data DailyMaintenanceWindow =
  DailyMaintenanceWindow'
    { _dmwStartTime :: !(Maybe Text)
    , _dmwDuration  :: !(Maybe Text)
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
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) format \"HH:MM”,
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
    { _lcrClusters     :: !(Maybe [Cluster])
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

-- | ClusterUpdate describes an update to the cluster. Exactly one update can
-- be applied to a cluster with each request, so at most one field can be
-- provided.
--
-- /See:/ 'clusterUpdate' smart constructor.
data ClusterUpdate =
  ClusterUpdate'
    { _cuDesiredNodePoolAutoscaling            :: !(Maybe NodePoolAutoscaling)
    , _cuDesiredAddonsConfig                   :: !(Maybe AddonsConfig)
    , _cuDesiredNodePoolId                     :: !(Maybe Text)
    , _cuDesiredMasterAuthorizedNetworksConfig :: !(Maybe MasterAuthorizedNetworksConfig)
    , _cuDesiredImageType                      :: !(Maybe Text)
    , _cuDesiredNodeVersion                    :: !(Maybe Text)
    , _cuDesiredMasterVersion                  :: !(Maybe Text)
    , _cuDesiredLocations                      :: !(Maybe [Text])
    , _cuDesiredMonitoringService              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuDesiredNodePoolAutoscaling'
--
-- * 'cuDesiredAddonsConfig'
--
-- * 'cuDesiredNodePoolId'
--
-- * 'cuDesiredMasterAuthorizedNetworksConfig'
--
-- * 'cuDesiredImageType'
--
-- * 'cuDesiredNodeVersion'
--
-- * 'cuDesiredMasterVersion'
--
-- * 'cuDesiredLocations'
--
-- * 'cuDesiredMonitoringService'
clusterUpdate
    :: ClusterUpdate
clusterUpdate =
  ClusterUpdate'
    { _cuDesiredNodePoolAutoscaling = Nothing
    , _cuDesiredAddonsConfig = Nothing
    , _cuDesiredNodePoolId = Nothing
    , _cuDesiredMasterAuthorizedNetworksConfig = Nothing
    , _cuDesiredImageType = Nothing
    , _cuDesiredNodeVersion = Nothing
    , _cuDesiredMasterVersion = Nothing
    , _cuDesiredLocations = Nothing
    , _cuDesiredMonitoringService = Nothing
    }


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

-- | The node pool to be upgraded. This field is mandatory if
-- \"desired_node_version\", \"desired_image_family\" or
-- \"desired_node_pool_autoscaling\" is specified and there is more than
-- one node pool on the cluster.
cuDesiredNodePoolId :: Lens' ClusterUpdate (Maybe Text)
cuDesiredNodePoolId
  = lens _cuDesiredNodePoolId
      (\ s a -> s{_cuDesiredNodePoolId = a})

-- | The desired configuration options for master authorized networks
-- feature.
cuDesiredMasterAuthorizedNetworksConfig :: Lens' ClusterUpdate (Maybe MasterAuthorizedNetworksConfig)
cuDesiredMasterAuthorizedNetworksConfig
  = lens _cuDesiredMasterAuthorizedNetworksConfig
      (\ s a ->
         s{_cuDesiredMasterAuthorizedNetworksConfig = a})

-- | The desired image type for the node pool. NOTE: Set the
-- \"desired_node_pool\" field as well.
cuDesiredImageType :: Lens' ClusterUpdate (Maybe Text)
cuDesiredImageType
  = lens _cuDesiredImageType
      (\ s a -> s{_cuDesiredImageType = a})

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
-- [zones](\/compute\/docs\/zones#available) in which the cluster\'s nodes
-- should be located. Changing the locations a cluster is in will result in
-- nodes being either created or removed from the cluster, depending on
-- whether locations are being added or removed. This list must always
-- include the cluster\'s primary zone.
cuDesiredLocations :: Lens' ClusterUpdate [Text]
cuDesiredLocations
  = lens _cuDesiredLocations
      (\ s a -> s{_cuDesiredLocations = a})
      . _Default
      . _Coerce

-- | The monitoring service the cluster should use to write metrics.
-- Currently available options: * \"monitoring.googleapis.com\" - the
-- Google Cloud Monitoring service * \"none\" - no metrics will be exported
-- from the cluster
cuDesiredMonitoringService :: Lens' ClusterUpdate (Maybe Text)
cuDesiredMonitoringService
  = lens _cuDesiredMonitoringService
      (\ s a -> s{_cuDesiredMonitoringService = a})

instance FromJSON ClusterUpdate where
        parseJSON
          = withObject "ClusterUpdate"
              (\ o ->
                 ClusterUpdate' <$>
                   (o .:? "desiredNodePoolAutoscaling") <*>
                     (o .:? "desiredAddonsConfig")
                     <*> (o .:? "desiredNodePoolId")
                     <*> (o .:? "desiredMasterAuthorizedNetworksConfig")
                     <*> (o .:? "desiredImageType")
                     <*> (o .:? "desiredNodeVersion")
                     <*> (o .:? "desiredMasterVersion")
                     <*> (o .:? "desiredLocations" .!= mempty)
                     <*> (o .:? "desiredMonitoringService"))

instance ToJSON ClusterUpdate where
        toJSON ClusterUpdate'{..}
          = object
              (catMaybes
                 [("desiredNodePoolAutoscaling" .=) <$>
                    _cuDesiredNodePoolAutoscaling,
                  ("desiredAddonsConfig" .=) <$>
                    _cuDesiredAddonsConfig,
                  ("desiredNodePoolId" .=) <$> _cuDesiredNodePoolId,
                  ("desiredMasterAuthorizedNetworksConfig" .=) <$>
                    _cuDesiredMasterAuthorizedNetworksConfig,
                  ("desiredImageType" .=) <$> _cuDesiredImageType,
                  ("desiredNodeVersion" .=) <$> _cuDesiredNodeVersion,
                  ("desiredMasterVersion" .=) <$>
                    _cuDesiredMasterVersion,
                  ("desiredLocations" .=) <$> _cuDesiredLocations,
                  ("desiredMonitoringService" .=) <$>
                    _cuDesiredMonitoringService])

-- | RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or
-- Failed NodePool upgrade. This will be an no-op if the last upgrade
-- successfully completed.
--
-- /See:/ 'rollbackNodePoolUpgradeRequest' smart constructor.
data RollbackNodePoolUpgradeRequest =
  RollbackNodePoolUpgradeRequest'
    { _rnpurZone       :: !(Maybe Text)
    , _rnpurNodePoolId :: !(Maybe Text)
    , _rnpurName       :: !(Maybe Text)
    , _rnpurClusterId  :: !(Maybe Text)
    , _rnpurProjectId  :: !(Maybe Text)
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
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
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
-- \'projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\'.
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
    { _npEnabled  :: !(Maybe Bool)
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

-- | GetJSONWebKeysResponse is a valid JSON Web Key Set as specififed in rfc
-- 7517
--
-- /See:/ 'getJSONWebKeysResponse' smart constructor.
newtype GetJSONWebKeysResponse =
  GetJSONWebKeysResponse'
    { _gjwkrKeys :: Maybe [JWK]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetJSONWebKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjwkrKeys'
getJSONWebKeysResponse
    :: GetJSONWebKeysResponse
getJSONWebKeysResponse = GetJSONWebKeysResponse' {_gjwkrKeys = Nothing}


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
                   (o .:? "keys" .!= mempty))

instance ToJSON GetJSONWebKeysResponse where
        toJSON GetJSONWebKeysResponse'{..}
          = object (catMaybes [("keys" .=) <$> _gjwkrKeys])

-- | CreateNodePoolRequest creates a node pool for a cluster.
--
-- /See:/ 'createNodePoolRequest' smart constructor.
data CreateNodePoolRequest =
  CreateNodePoolRequest'
    { _cnprParent    :: !(Maybe Text)
    , _cnprZone      :: !(Maybe Text)
    , _cnprNodePool  :: !(Maybe NodePool)
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
-- \'projects\/*\/locations\/*\/clusters\/*\'.
cnprParent :: Lens' CreateNodePoolRequest (Maybe Text)
cnprParent
  = lens _cnprParent (\ s a -> s{_cnprParent = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the parent field.
cnprZone :: Lens' CreateNodePoolRequest (Maybe Text)
cnprZone = lens _cnprZone (\ s a -> s{_cnprZone = a})

-- | The node pool to create.
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

-- | The labels to set for that cluster.
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
