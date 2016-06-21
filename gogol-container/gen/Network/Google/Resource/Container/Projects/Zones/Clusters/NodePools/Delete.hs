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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a node pool from a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @container.projects.zones.clusters.nodePools.delete@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Delete
    (
    -- * REST Resource
      ProjectsZonesClustersNodePoolsDeleteResource

    -- * Creating a Request
    , projectsZonesClustersNodePoolsDelete
    , ProjectsZonesClustersNodePoolsDelete

    -- * Request Lenses
    , pzcnpdXgafv
    , pzcnpdUploadProtocol
    , pzcnpdPp
    , pzcnpdAccessToken
    , pzcnpdUploadType
    , pzcnpdZone
    , pzcnpdNodePoolId
    , pzcnpdBearerToken
    , pzcnpdClusterId
    , pzcnpdProjectId
    , pzcnpdCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.nodePools.delete@ method which the
-- 'ProjectsZonesClustersNodePoolsDelete' request conforms to.
type ProjectsZonesClustersNodePoolsDeleteResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "nodePools" :>
                     Capture "nodePoolId" Text :>
                       QueryParam "$.xgafv" Text :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "pp" Bool :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "bearer_token" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Delete '[JSON] Operation

-- | Deletes a node pool from a cluster.
--
-- /See:/ 'projectsZonesClustersNodePoolsDelete' smart constructor.
data ProjectsZonesClustersNodePoolsDelete = ProjectsZonesClustersNodePoolsDelete'
    { _pzcnpdXgafv          :: !(Maybe Text)
    , _pzcnpdUploadProtocol :: !(Maybe Text)
    , _pzcnpdPp             :: !Bool
    , _pzcnpdAccessToken    :: !(Maybe Text)
    , _pzcnpdUploadType     :: !(Maybe Text)
    , _pzcnpdZone           :: !Text
    , _pzcnpdNodePoolId     :: !Text
    , _pzcnpdBearerToken    :: !(Maybe Text)
    , _pzcnpdClusterId      :: !Text
    , _pzcnpdProjectId      :: !Text
    , _pzcnpdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersNodePoolsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcnpdXgafv'
--
-- * 'pzcnpdUploadProtocol'
--
-- * 'pzcnpdPp'
--
-- * 'pzcnpdAccessToken'
--
-- * 'pzcnpdUploadType'
--
-- * 'pzcnpdZone'
--
-- * 'pzcnpdNodePoolId'
--
-- * 'pzcnpdBearerToken'
--
-- * 'pzcnpdClusterId'
--
-- * 'pzcnpdProjectId'
--
-- * 'pzcnpdCallback'
projectsZonesClustersNodePoolsDelete
    :: Text -- ^ 'pzcnpdZone'
    -> Text -- ^ 'pzcnpdNodePoolId'
    -> Text -- ^ 'pzcnpdClusterId'
    -> Text -- ^ 'pzcnpdProjectId'
    -> ProjectsZonesClustersNodePoolsDelete
projectsZonesClustersNodePoolsDelete pPzcnpdZone_ pPzcnpdNodePoolId_ pPzcnpdClusterId_ pPzcnpdProjectId_ =
    ProjectsZonesClustersNodePoolsDelete'
    { _pzcnpdXgafv = Nothing
    , _pzcnpdUploadProtocol = Nothing
    , _pzcnpdPp = True
    , _pzcnpdAccessToken = Nothing
    , _pzcnpdUploadType = Nothing
    , _pzcnpdZone = pPzcnpdZone_
    , _pzcnpdNodePoolId = pPzcnpdNodePoolId_
    , _pzcnpdBearerToken = Nothing
    , _pzcnpdClusterId = pPzcnpdClusterId_
    , _pzcnpdProjectId = pPzcnpdProjectId_
    , _pzcnpdCallback = Nothing
    }

-- | V1 error format.
pzcnpdXgafv :: Lens' ProjectsZonesClustersNodePoolsDelete (Maybe Text)
pzcnpdXgafv
  = lens _pzcnpdXgafv (\ s a -> s{_pzcnpdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcnpdUploadProtocol :: Lens' ProjectsZonesClustersNodePoolsDelete (Maybe Text)
pzcnpdUploadProtocol
  = lens _pzcnpdUploadProtocol
      (\ s a -> s{_pzcnpdUploadProtocol = a})

-- | Pretty-print response.
pzcnpdPp :: Lens' ProjectsZonesClustersNodePoolsDelete Bool
pzcnpdPp = lens _pzcnpdPp (\ s a -> s{_pzcnpdPp = a})

-- | OAuth access token.
pzcnpdAccessToken :: Lens' ProjectsZonesClustersNodePoolsDelete (Maybe Text)
pzcnpdAccessToken
  = lens _pzcnpdAccessToken
      (\ s a -> s{_pzcnpdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcnpdUploadType :: Lens' ProjectsZonesClustersNodePoolsDelete (Maybe Text)
pzcnpdUploadType
  = lens _pzcnpdUploadType
      (\ s a -> s{_pzcnpdUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
pzcnpdZone :: Lens' ProjectsZonesClustersNodePoolsDelete Text
pzcnpdZone
  = lens _pzcnpdZone (\ s a -> s{_pzcnpdZone = a})

-- | The name of the node pool to delete.
pzcnpdNodePoolId :: Lens' ProjectsZonesClustersNodePoolsDelete Text
pzcnpdNodePoolId
  = lens _pzcnpdNodePoolId
      (\ s a -> s{_pzcnpdNodePoolId = a})

-- | OAuth bearer token.
pzcnpdBearerToken :: Lens' ProjectsZonesClustersNodePoolsDelete (Maybe Text)
pzcnpdBearerToken
  = lens _pzcnpdBearerToken
      (\ s a -> s{_pzcnpdBearerToken = a})

-- | The name of the cluster.
pzcnpdClusterId :: Lens' ProjectsZonesClustersNodePoolsDelete Text
pzcnpdClusterId
  = lens _pzcnpdClusterId
      (\ s a -> s{_pzcnpdClusterId = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
pzcnpdProjectId :: Lens' ProjectsZonesClustersNodePoolsDelete Text
pzcnpdProjectId
  = lens _pzcnpdProjectId
      (\ s a -> s{_pzcnpdProjectId = a})

-- | JSONP
pzcnpdCallback :: Lens' ProjectsZonesClustersNodePoolsDelete (Maybe Text)
pzcnpdCallback
  = lens _pzcnpdCallback
      (\ s a -> s{_pzcnpdCallback = a})

instance GoogleRequest
         ProjectsZonesClustersNodePoolsDelete where
        type Rs ProjectsZonesClustersNodePoolsDelete =
             Operation
        type Scopes ProjectsZonesClustersNodePoolsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsZonesClustersNodePoolsDelete'{..}
          = go _pzcnpdProjectId _pzcnpdZone _pzcnpdClusterId
              _pzcnpdNodePoolId
              _pzcnpdXgafv
              _pzcnpdUploadProtocol
              (Just _pzcnpdPp)
              _pzcnpdAccessToken
              _pzcnpdUploadType
              _pzcnpdBearerToken
              _pzcnpdCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersNodePoolsDeleteResource)
                      mempty
