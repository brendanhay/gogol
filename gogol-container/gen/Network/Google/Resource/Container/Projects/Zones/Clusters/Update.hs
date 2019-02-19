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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.update@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Update
    (
    -- * REST Resource
      ProjectsZonesClustersUpdateResource

    -- * Creating a Request
    , projectsZonesClustersUpdate
    , ProjectsZonesClustersUpdate

    -- * Request Lenses
    , pzcuXgafv
    , pzcuUploadProtocol
    , pzcuAccessToken
    , pzcuUploadType
    , pzcuZone
    , pzcuPayload
    , pzcuClusterId
    , pzcuProjectId
    , pzcuCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.update@ method which the
-- 'ProjectsZonesClustersUpdate' request conforms to.
type ProjectsZonesClustersUpdateResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] UpdateClusterRequest :>
                                 Put '[JSON] Operation

-- | Updates the settings of a specific cluster.
--
-- /See:/ 'projectsZonesClustersUpdate' smart constructor.
data ProjectsZonesClustersUpdate =
  ProjectsZonesClustersUpdate'
    { _pzcuXgafv          :: !(Maybe Xgafv)
    , _pzcuUploadProtocol :: !(Maybe Text)
    , _pzcuAccessToken    :: !(Maybe Text)
    , _pzcuUploadType     :: !(Maybe Text)
    , _pzcuZone           :: !Text
    , _pzcuPayload        :: !UpdateClusterRequest
    , _pzcuClusterId      :: !Text
    , _pzcuProjectId      :: !Text
    , _pzcuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcuXgafv'
--
-- * 'pzcuUploadProtocol'
--
-- * 'pzcuAccessToken'
--
-- * 'pzcuUploadType'
--
-- * 'pzcuZone'
--
-- * 'pzcuPayload'
--
-- * 'pzcuClusterId'
--
-- * 'pzcuProjectId'
--
-- * 'pzcuCallback'
projectsZonesClustersUpdate
    :: Text -- ^ 'pzcuZone'
    -> UpdateClusterRequest -- ^ 'pzcuPayload'
    -> Text -- ^ 'pzcuClusterId'
    -> Text -- ^ 'pzcuProjectId'
    -> ProjectsZonesClustersUpdate
projectsZonesClustersUpdate pPzcuZone_ pPzcuPayload_ pPzcuClusterId_ pPzcuProjectId_ =
  ProjectsZonesClustersUpdate'
    { _pzcuXgafv = Nothing
    , _pzcuUploadProtocol = Nothing
    , _pzcuAccessToken = Nothing
    , _pzcuUploadType = Nothing
    , _pzcuZone = pPzcuZone_
    , _pzcuPayload = pPzcuPayload_
    , _pzcuClusterId = pPzcuClusterId_
    , _pzcuProjectId = pPzcuProjectId_
    , _pzcuCallback = Nothing
    }


-- | V1 error format.
pzcuXgafv :: Lens' ProjectsZonesClustersUpdate (Maybe Xgafv)
pzcuXgafv
  = lens _pzcuXgafv (\ s a -> s{_pzcuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcuUploadProtocol :: Lens' ProjectsZonesClustersUpdate (Maybe Text)
pzcuUploadProtocol
  = lens _pzcuUploadProtocol
      (\ s a -> s{_pzcuUploadProtocol = a})

-- | OAuth access token.
pzcuAccessToken :: Lens' ProjectsZonesClustersUpdate (Maybe Text)
pzcuAccessToken
  = lens _pzcuAccessToken
      (\ s a -> s{_pzcuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcuUploadType :: Lens' ProjectsZonesClustersUpdate (Maybe Text)
pzcuUploadType
  = lens _pzcuUploadType
      (\ s a -> s{_pzcuUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzcuZone :: Lens' ProjectsZonesClustersUpdate Text
pzcuZone = lens _pzcuZone (\ s a -> s{_pzcuZone = a})

-- | Multipart request metadata.
pzcuPayload :: Lens' ProjectsZonesClustersUpdate UpdateClusterRequest
pzcuPayload
  = lens _pzcuPayload (\ s a -> s{_pzcuPayload = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
pzcuClusterId :: Lens' ProjectsZonesClustersUpdate Text
pzcuClusterId
  = lens _pzcuClusterId
      (\ s a -> s{_pzcuClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzcuProjectId :: Lens' ProjectsZonesClustersUpdate Text
pzcuProjectId
  = lens _pzcuProjectId
      (\ s a -> s{_pzcuProjectId = a})

-- | JSONP
pzcuCallback :: Lens' ProjectsZonesClustersUpdate (Maybe Text)
pzcuCallback
  = lens _pzcuCallback (\ s a -> s{_pzcuCallback = a})

instance GoogleRequest ProjectsZonesClustersUpdate
         where
        type Rs ProjectsZonesClustersUpdate = Operation
        type Scopes ProjectsZonesClustersUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersUpdate'{..}
          = go _pzcuProjectId _pzcuZone _pzcuClusterId
              _pzcuXgafv
              _pzcuUploadProtocol
              _pzcuAccessToken
              _pzcuUploadType
              _pzcuCallback
              (Just AltJSON)
              _pzcuPayload
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesClustersUpdateResource)
                      mempty
