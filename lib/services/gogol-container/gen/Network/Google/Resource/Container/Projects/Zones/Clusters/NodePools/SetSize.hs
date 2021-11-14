{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.SetSize
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the size for a specific node pool. The new size will be used for
-- all replicas, including future replicas created by modifying
-- NodePool.locations.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.setSize@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.SetSize
    (
    -- * REST Resource
      ProjectsZonesClustersNodePoolsSetSizeResource

    -- * Creating a Request
    , projectsZonesClustersNodePoolsSetSize
    , ProjectsZonesClustersNodePoolsSetSize

    -- * Request Lenses
    , pzcnpssXgafv
    , pzcnpssUploadProtocol
    , pzcnpssAccessToken
    , pzcnpssUploadType
    , pzcnpssZone
    , pzcnpssPayload
    , pzcnpssNodePoolId
    , pzcnpssClusterId
    , pzcnpssProjectId
    , pzcnpssCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.nodePools.setSize@ method which the
-- 'ProjectsZonesClustersNodePoolsSetSize' request conforms to.
type ProjectsZonesClustersNodePoolsSetSizeResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "nodePools" :>
                     Capture "nodePoolId" Text :>
                       "setSize" :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] SetNodePoolSizeRequest :>
                                       Post '[JSON] Operation

-- | Sets the size for a specific node pool. The new size will be used for
-- all replicas, including future replicas created by modifying
-- NodePool.locations.
--
-- /See:/ 'projectsZonesClustersNodePoolsSetSize' smart constructor.
data ProjectsZonesClustersNodePoolsSetSize =
  ProjectsZonesClustersNodePoolsSetSize'
    { _pzcnpssXgafv :: !(Maybe Xgafv)
    , _pzcnpssUploadProtocol :: !(Maybe Text)
    , _pzcnpssAccessToken :: !(Maybe Text)
    , _pzcnpssUploadType :: !(Maybe Text)
    , _pzcnpssZone :: !Text
    , _pzcnpssPayload :: !SetNodePoolSizeRequest
    , _pzcnpssNodePoolId :: !Text
    , _pzcnpssClusterId :: !Text
    , _pzcnpssProjectId :: !Text
    , _pzcnpssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersNodePoolsSetSize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcnpssXgafv'
--
-- * 'pzcnpssUploadProtocol'
--
-- * 'pzcnpssAccessToken'
--
-- * 'pzcnpssUploadType'
--
-- * 'pzcnpssZone'
--
-- * 'pzcnpssPayload'
--
-- * 'pzcnpssNodePoolId'
--
-- * 'pzcnpssClusterId'
--
-- * 'pzcnpssProjectId'
--
-- * 'pzcnpssCallback'
projectsZonesClustersNodePoolsSetSize
    :: Text -- ^ 'pzcnpssZone'
    -> SetNodePoolSizeRequest -- ^ 'pzcnpssPayload'
    -> Text -- ^ 'pzcnpssNodePoolId'
    -> Text -- ^ 'pzcnpssClusterId'
    -> Text -- ^ 'pzcnpssProjectId'
    -> ProjectsZonesClustersNodePoolsSetSize
projectsZonesClustersNodePoolsSetSize pPzcnpssZone_ pPzcnpssPayload_ pPzcnpssNodePoolId_ pPzcnpssClusterId_ pPzcnpssProjectId_ =
  ProjectsZonesClustersNodePoolsSetSize'
    { _pzcnpssXgafv = Nothing
    , _pzcnpssUploadProtocol = Nothing
    , _pzcnpssAccessToken = Nothing
    , _pzcnpssUploadType = Nothing
    , _pzcnpssZone = pPzcnpssZone_
    , _pzcnpssPayload = pPzcnpssPayload_
    , _pzcnpssNodePoolId = pPzcnpssNodePoolId_
    , _pzcnpssClusterId = pPzcnpssClusterId_
    , _pzcnpssProjectId = pPzcnpssProjectId_
    , _pzcnpssCallback = Nothing
    }


-- | V1 error format.
pzcnpssXgafv :: Lens' ProjectsZonesClustersNodePoolsSetSize (Maybe Xgafv)
pzcnpssXgafv
  = lens _pzcnpssXgafv (\ s a -> s{_pzcnpssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcnpssUploadProtocol :: Lens' ProjectsZonesClustersNodePoolsSetSize (Maybe Text)
pzcnpssUploadProtocol
  = lens _pzcnpssUploadProtocol
      (\ s a -> s{_pzcnpssUploadProtocol = a})

-- | OAuth access token.
pzcnpssAccessToken :: Lens' ProjectsZonesClustersNodePoolsSetSize (Maybe Text)
pzcnpssAccessToken
  = lens _pzcnpssAccessToken
      (\ s a -> s{_pzcnpssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcnpssUploadType :: Lens' ProjectsZonesClustersNodePoolsSetSize (Maybe Text)
pzcnpssUploadType
  = lens _pzcnpssUploadType
      (\ s a -> s{_pzcnpssUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
pzcnpssZone :: Lens' ProjectsZonesClustersNodePoolsSetSize Text
pzcnpssZone
  = lens _pzcnpssZone (\ s a -> s{_pzcnpssZone = a})

-- | Multipart request metadata.
pzcnpssPayload :: Lens' ProjectsZonesClustersNodePoolsSetSize SetNodePoolSizeRequest
pzcnpssPayload
  = lens _pzcnpssPayload
      (\ s a -> s{_pzcnpssPayload = a})

-- | Deprecated. The name of the node pool to update. This field has been
-- deprecated and replaced by the name field.
pzcnpssNodePoolId :: Lens' ProjectsZonesClustersNodePoolsSetSize Text
pzcnpssNodePoolId
  = lens _pzcnpssNodePoolId
      (\ s a -> s{_pzcnpssNodePoolId = a})

-- | Deprecated. The name of the cluster to update. This field has been
-- deprecated and replaced by the name field.
pzcnpssClusterId :: Lens' ProjectsZonesClustersNodePoolsSetSize Text
pzcnpssClusterId
  = lens _pzcnpssClusterId
      (\ s a -> s{_pzcnpssClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzcnpssProjectId :: Lens' ProjectsZonesClustersNodePoolsSetSize Text
pzcnpssProjectId
  = lens _pzcnpssProjectId
      (\ s a -> s{_pzcnpssProjectId = a})

-- | JSONP
pzcnpssCallback :: Lens' ProjectsZonesClustersNodePoolsSetSize (Maybe Text)
pzcnpssCallback
  = lens _pzcnpssCallback
      (\ s a -> s{_pzcnpssCallback = a})

instance GoogleRequest
           ProjectsZonesClustersNodePoolsSetSize
         where
        type Rs ProjectsZonesClustersNodePoolsSetSize =
             Operation
        type Scopes ProjectsZonesClustersNodePoolsSetSize =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsZonesClustersNodePoolsSetSize'{..}
          = go _pzcnpssProjectId _pzcnpssZone _pzcnpssClusterId
              _pzcnpssNodePoolId
              _pzcnpssXgafv
              _pzcnpssUploadProtocol
              _pzcnpssAccessToken
              _pzcnpssUploadType
              _pzcnpssCallback
              (Just AltJSON)
              _pzcnpssPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersNodePoolsSetSizeResource)
                      mempty
