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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the node pools for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @container.projects.zones.clusters.nodePools.list@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.List
    (
    -- * REST Resource
      ProjectsZonesClustersNodePoolsListResource

    -- * Creating a Request
    , projectsZonesClustersNodePoolsList
    , ProjectsZonesClustersNodePoolsList

    -- * Request Lenses
    , pzcnplXgafv
    , pzcnplUploadProtocol
    , pzcnplPp
    , pzcnplAccessToken
    , pzcnplUploadType
    , pzcnplZone
    , pzcnplBearerToken
    , pzcnplClusterId
    , pzcnplProjectId
    , pzcnplCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.nodePools.list@ method which the
-- 'ProjectsZonesClustersNodePoolsList' request conforms to.
type ProjectsZonesClustersNodePoolsListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "nodePools" :>
                     QueryParam "$.xgafv" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListNodePoolsResponse

-- | Lists the node pools for a cluster.
--
-- /See:/ 'projectsZonesClustersNodePoolsList' smart constructor.
data ProjectsZonesClustersNodePoolsList = ProjectsZonesClustersNodePoolsList'
    { _pzcnplXgafv          :: !(Maybe Text)
    , _pzcnplUploadProtocol :: !(Maybe Text)
    , _pzcnplPp             :: !Bool
    , _pzcnplAccessToken    :: !(Maybe Text)
    , _pzcnplUploadType     :: !(Maybe Text)
    , _pzcnplZone           :: !Text
    , _pzcnplBearerToken    :: !(Maybe Text)
    , _pzcnplClusterId      :: !Text
    , _pzcnplProjectId      :: !Text
    , _pzcnplCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersNodePoolsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcnplXgafv'
--
-- * 'pzcnplUploadProtocol'
--
-- * 'pzcnplPp'
--
-- * 'pzcnplAccessToken'
--
-- * 'pzcnplUploadType'
--
-- * 'pzcnplZone'
--
-- * 'pzcnplBearerToken'
--
-- * 'pzcnplClusterId'
--
-- * 'pzcnplProjectId'
--
-- * 'pzcnplCallback'
projectsZonesClustersNodePoolsList
    :: Text -- ^ 'pzcnplZone'
    -> Text -- ^ 'pzcnplClusterId'
    -> Text -- ^ 'pzcnplProjectId'
    -> ProjectsZonesClustersNodePoolsList
projectsZonesClustersNodePoolsList pPzcnplZone_ pPzcnplClusterId_ pPzcnplProjectId_ =
    ProjectsZonesClustersNodePoolsList'
    { _pzcnplXgafv = Nothing
    , _pzcnplUploadProtocol = Nothing
    , _pzcnplPp = True
    , _pzcnplAccessToken = Nothing
    , _pzcnplUploadType = Nothing
    , _pzcnplZone = pPzcnplZone_
    , _pzcnplBearerToken = Nothing
    , _pzcnplClusterId = pPzcnplClusterId_
    , _pzcnplProjectId = pPzcnplProjectId_
    , _pzcnplCallback = Nothing
    }

-- | V1 error format.
pzcnplXgafv :: Lens' ProjectsZonesClustersNodePoolsList (Maybe Text)
pzcnplXgafv
  = lens _pzcnplXgafv (\ s a -> s{_pzcnplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcnplUploadProtocol :: Lens' ProjectsZonesClustersNodePoolsList (Maybe Text)
pzcnplUploadProtocol
  = lens _pzcnplUploadProtocol
      (\ s a -> s{_pzcnplUploadProtocol = a})

-- | Pretty-print response.
pzcnplPp :: Lens' ProjectsZonesClustersNodePoolsList Bool
pzcnplPp = lens _pzcnplPp (\ s a -> s{_pzcnplPp = a})

-- | OAuth access token.
pzcnplAccessToken :: Lens' ProjectsZonesClustersNodePoolsList (Maybe Text)
pzcnplAccessToken
  = lens _pzcnplAccessToken
      (\ s a -> s{_pzcnplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcnplUploadType :: Lens' ProjectsZonesClustersNodePoolsList (Maybe Text)
pzcnplUploadType
  = lens _pzcnplUploadType
      (\ s a -> s{_pzcnplUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
pzcnplZone :: Lens' ProjectsZonesClustersNodePoolsList Text
pzcnplZone
  = lens _pzcnplZone (\ s a -> s{_pzcnplZone = a})

-- | OAuth bearer token.
pzcnplBearerToken :: Lens' ProjectsZonesClustersNodePoolsList (Maybe Text)
pzcnplBearerToken
  = lens _pzcnplBearerToken
      (\ s a -> s{_pzcnplBearerToken = a})

-- | The name of the cluster.
pzcnplClusterId :: Lens' ProjectsZonesClustersNodePoolsList Text
pzcnplClusterId
  = lens _pzcnplClusterId
      (\ s a -> s{_pzcnplClusterId = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
pzcnplProjectId :: Lens' ProjectsZonesClustersNodePoolsList Text
pzcnplProjectId
  = lens _pzcnplProjectId
      (\ s a -> s{_pzcnplProjectId = a})

-- | JSONP
pzcnplCallback :: Lens' ProjectsZonesClustersNodePoolsList (Maybe Text)
pzcnplCallback
  = lens _pzcnplCallback
      (\ s a -> s{_pzcnplCallback = a})

instance GoogleRequest
         ProjectsZonesClustersNodePoolsList where
        type Rs ProjectsZonesClustersNodePoolsList =
             ListNodePoolsResponse
        type Scopes ProjectsZonesClustersNodePoolsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersNodePoolsList'{..}
          = go _pzcnplProjectId _pzcnplZone _pzcnplClusterId
              _pzcnplXgafv
              _pzcnplUploadProtocol
              (Just _pzcnplPp)
              _pzcnplAccessToken
              _pzcnplUploadType
              _pzcnplBearerToken
              _pzcnplCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersNodePoolsListResource)
                      mempty
