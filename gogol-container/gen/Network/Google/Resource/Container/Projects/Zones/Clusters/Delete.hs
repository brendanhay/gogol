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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the cluster, including the Kubernetes endpoint and all worker
-- nodes. Firewalls and routes that were configured during cluster creation
-- are also deleted. Other Google Compute Engine resources that might be in
-- use by the cluster (e.g. load balancer resources) will not be deleted if
-- they weren\'t present at the initial create time.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @container.projects.zones.clusters.delete@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Delete
    (
    -- * REST Resource
      ProjectsZonesClustersDeleteResource

    -- * Creating a Request
    , projectsZonesClustersDelete
    , ProjectsZonesClustersDelete

    -- * Request Lenses
    , pzcdXgafv
    , pzcdUploadProtocol
    , pzcdPp
    , pzcdAccessToken
    , pzcdUploadType
    , pzcdZone
    , pzcdBearerToken
    , pzcdClusterId
    , pzcdProjectId
    , pzcdCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.delete@ method which the
-- 'ProjectsZonesClustersDelete' request conforms to.
type ProjectsZonesClustersDeleteResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] Operation

-- | Deletes the cluster, including the Kubernetes endpoint and all worker
-- nodes. Firewalls and routes that were configured during cluster creation
-- are also deleted. Other Google Compute Engine resources that might be in
-- use by the cluster (e.g. load balancer resources) will not be deleted if
-- they weren\'t present at the initial create time.
--
-- /See:/ 'projectsZonesClustersDelete' smart constructor.
data ProjectsZonesClustersDelete = ProjectsZonesClustersDelete'
    { _pzcdXgafv          :: !(Maybe Text)
    , _pzcdUploadProtocol :: !(Maybe Text)
    , _pzcdPp             :: !Bool
    , _pzcdAccessToken    :: !(Maybe Text)
    , _pzcdUploadType     :: !(Maybe Text)
    , _pzcdZone           :: !Text
    , _pzcdBearerToken    :: !(Maybe Text)
    , _pzcdClusterId      :: !Text
    , _pzcdProjectId      :: !Text
    , _pzcdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcdXgafv'
--
-- * 'pzcdUploadProtocol'
--
-- * 'pzcdPp'
--
-- * 'pzcdAccessToken'
--
-- * 'pzcdUploadType'
--
-- * 'pzcdZone'
--
-- * 'pzcdBearerToken'
--
-- * 'pzcdClusterId'
--
-- * 'pzcdProjectId'
--
-- * 'pzcdCallback'
projectsZonesClustersDelete
    :: Text -- ^ 'pzcdZone'
    -> Text -- ^ 'pzcdClusterId'
    -> Text -- ^ 'pzcdProjectId'
    -> ProjectsZonesClustersDelete
projectsZonesClustersDelete pPzcdZone_ pPzcdClusterId_ pPzcdProjectId_ =
    ProjectsZonesClustersDelete'
    { _pzcdXgafv = Nothing
    , _pzcdUploadProtocol = Nothing
    , _pzcdPp = True
    , _pzcdAccessToken = Nothing
    , _pzcdUploadType = Nothing
    , _pzcdZone = pPzcdZone_
    , _pzcdBearerToken = Nothing
    , _pzcdClusterId = pPzcdClusterId_
    , _pzcdProjectId = pPzcdProjectId_
    , _pzcdCallback = Nothing
    }

-- | V1 error format.
pzcdXgafv :: Lens' ProjectsZonesClustersDelete (Maybe Text)
pzcdXgafv
  = lens _pzcdXgafv (\ s a -> s{_pzcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcdUploadProtocol :: Lens' ProjectsZonesClustersDelete (Maybe Text)
pzcdUploadProtocol
  = lens _pzcdUploadProtocol
      (\ s a -> s{_pzcdUploadProtocol = a})

-- | Pretty-print response.
pzcdPp :: Lens' ProjectsZonesClustersDelete Bool
pzcdPp = lens _pzcdPp (\ s a -> s{_pzcdPp = a})

-- | OAuth access token.
pzcdAccessToken :: Lens' ProjectsZonesClustersDelete (Maybe Text)
pzcdAccessToken
  = lens _pzcdAccessToken
      (\ s a -> s{_pzcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcdUploadType :: Lens' ProjectsZonesClustersDelete (Maybe Text)
pzcdUploadType
  = lens _pzcdUploadType
      (\ s a -> s{_pzcdUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
pzcdZone :: Lens' ProjectsZonesClustersDelete Text
pzcdZone = lens _pzcdZone (\ s a -> s{_pzcdZone = a})

-- | OAuth bearer token.
pzcdBearerToken :: Lens' ProjectsZonesClustersDelete (Maybe Text)
pzcdBearerToken
  = lens _pzcdBearerToken
      (\ s a -> s{_pzcdBearerToken = a})

-- | The name of the cluster to delete.
pzcdClusterId :: Lens' ProjectsZonesClustersDelete Text
pzcdClusterId
  = lens _pzcdClusterId
      (\ s a -> s{_pzcdClusterId = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840).
pzcdProjectId :: Lens' ProjectsZonesClustersDelete Text
pzcdProjectId
  = lens _pzcdProjectId
      (\ s a -> s{_pzcdProjectId = a})

-- | JSONP
pzcdCallback :: Lens' ProjectsZonesClustersDelete (Maybe Text)
pzcdCallback
  = lens _pzcdCallback (\ s a -> s{_pzcdCallback = a})

instance GoogleRequest ProjectsZonesClustersDelete
         where
        type Rs ProjectsZonesClustersDelete = Operation
        type Scopes ProjectsZonesClustersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersDelete'{..}
          = go _pzcdProjectId _pzcdZone _pzcdClusterId
              _pzcdXgafv
              _pzcdUploadProtocol
              (Just _pzcdPp)
              _pzcdAccessToken
              _pzcdUploadType
              _pzcdBearerToken
              _pzcdCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesClustersDeleteResource)
                      mempty
