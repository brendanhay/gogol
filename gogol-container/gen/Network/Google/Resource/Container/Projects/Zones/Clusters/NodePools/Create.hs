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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a node pool for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.create@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Create
    (
    -- * REST Resource
      ProjectsZonesClustersNodePoolsCreateResource

    -- * Creating a Request
    , projectsZonesClustersNodePoolsCreate
    , ProjectsZonesClustersNodePoolsCreate

    -- * Request Lenses
    , pzcnpcXgafv
    , pzcnpcUploadProtocol
    , pzcnpcAccessToken
    , pzcnpcUploadType
    , pzcnpcZone
    , pzcnpcPayload
    , pzcnpcClusterId
    , pzcnpcProjectId
    , pzcnpcCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.nodePools.create@ method which the
-- 'ProjectsZonesClustersNodePoolsCreate' request conforms to.
type ProjectsZonesClustersNodePoolsCreateResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "nodePools" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] CreateNodePoolRequest :>
                                   Post '[JSON] Operation

-- | Creates a node pool for a cluster.
--
-- /See:/ 'projectsZonesClustersNodePoolsCreate' smart constructor.
data ProjectsZonesClustersNodePoolsCreate =
  ProjectsZonesClustersNodePoolsCreate'
    { _pzcnpcXgafv          :: !(Maybe Xgafv)
    , _pzcnpcUploadProtocol :: !(Maybe Text)
    , _pzcnpcAccessToken    :: !(Maybe Text)
    , _pzcnpcUploadType     :: !(Maybe Text)
    , _pzcnpcZone           :: !Text
    , _pzcnpcPayload        :: !CreateNodePoolRequest
    , _pzcnpcClusterId      :: !Text
    , _pzcnpcProjectId      :: !Text
    , _pzcnpcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsZonesClustersNodePoolsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcnpcXgafv'
--
-- * 'pzcnpcUploadProtocol'
--
-- * 'pzcnpcAccessToken'
--
-- * 'pzcnpcUploadType'
--
-- * 'pzcnpcZone'
--
-- * 'pzcnpcPayload'
--
-- * 'pzcnpcClusterId'
--
-- * 'pzcnpcProjectId'
--
-- * 'pzcnpcCallback'
projectsZonesClustersNodePoolsCreate
    :: Text -- ^ 'pzcnpcZone'
    -> CreateNodePoolRequest -- ^ 'pzcnpcPayload'
    -> Text -- ^ 'pzcnpcClusterId'
    -> Text -- ^ 'pzcnpcProjectId'
    -> ProjectsZonesClustersNodePoolsCreate
projectsZonesClustersNodePoolsCreate pPzcnpcZone_ pPzcnpcPayload_ pPzcnpcClusterId_ pPzcnpcProjectId_ =
  ProjectsZonesClustersNodePoolsCreate'
    { _pzcnpcXgafv = Nothing
    , _pzcnpcUploadProtocol = Nothing
    , _pzcnpcAccessToken = Nothing
    , _pzcnpcUploadType = Nothing
    , _pzcnpcZone = pPzcnpcZone_
    , _pzcnpcPayload = pPzcnpcPayload_
    , _pzcnpcClusterId = pPzcnpcClusterId_
    , _pzcnpcProjectId = pPzcnpcProjectId_
    , _pzcnpcCallback = Nothing
    }

-- | V1 error format.
pzcnpcXgafv :: Lens' ProjectsZonesClustersNodePoolsCreate (Maybe Xgafv)
pzcnpcXgafv
  = lens _pzcnpcXgafv (\ s a -> s{_pzcnpcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcnpcUploadProtocol :: Lens' ProjectsZonesClustersNodePoolsCreate (Maybe Text)
pzcnpcUploadProtocol
  = lens _pzcnpcUploadProtocol
      (\ s a -> s{_pzcnpcUploadProtocol = a})

-- | OAuth access token.
pzcnpcAccessToken :: Lens' ProjectsZonesClustersNodePoolsCreate (Maybe Text)
pzcnpcAccessToken
  = lens _pzcnpcAccessToken
      (\ s a -> s{_pzcnpcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcnpcUploadType :: Lens' ProjectsZonesClustersNodePoolsCreate (Maybe Text)
pzcnpcUploadType
  = lens _pzcnpcUploadType
      (\ s a -> s{_pzcnpcUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the parent field.
pzcnpcZone :: Lens' ProjectsZonesClustersNodePoolsCreate Text
pzcnpcZone
  = lens _pzcnpcZone (\ s a -> s{_pzcnpcZone = a})

-- | Multipart request metadata.
pzcnpcPayload :: Lens' ProjectsZonesClustersNodePoolsCreate CreateNodePoolRequest
pzcnpcPayload
  = lens _pzcnpcPayload
      (\ s a -> s{_pzcnpcPayload = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the parent field.
pzcnpcClusterId :: Lens' ProjectsZonesClustersNodePoolsCreate Text
pzcnpcClusterId
  = lens _pzcnpcClusterId
      (\ s a -> s{_pzcnpcClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the parent field.
pzcnpcProjectId :: Lens' ProjectsZonesClustersNodePoolsCreate Text
pzcnpcProjectId
  = lens _pzcnpcProjectId
      (\ s a -> s{_pzcnpcProjectId = a})

-- | JSONP
pzcnpcCallback :: Lens' ProjectsZonesClustersNodePoolsCreate (Maybe Text)
pzcnpcCallback
  = lens _pzcnpcCallback
      (\ s a -> s{_pzcnpcCallback = a})

instance GoogleRequest
           ProjectsZonesClustersNodePoolsCreate
         where
        type Rs ProjectsZonesClustersNodePoolsCreate =
             Operation
        type Scopes ProjectsZonesClustersNodePoolsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsZonesClustersNodePoolsCreate'{..}
          = go _pzcnpcProjectId _pzcnpcZone _pzcnpcClusterId
              _pzcnpcXgafv
              _pzcnpcUploadProtocol
              _pzcnpcAccessToken
              _pzcnpcUploadType
              _pzcnpcCallback
              (Just AltJSON)
              _pzcnpcPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersNodePoolsCreateResource)
                      mempty
