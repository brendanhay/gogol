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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update settings of a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @ContainerProjectsZonesClustersUpdate@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Update
    (
    -- * REST Resource
      ProjectsZonesClustersUpdateResource

    -- * Creating a Request
    , projectsZonesClustersUpdate'
    , ProjectsZonesClustersUpdate'

    -- * Request Lenses
    , pzcuXgafv
    , pzcuUploadProtocol
    , pzcuPp
    , pzcuAccessToken
    , pzcuUploadType
    , pzcuZone
    , pzcuPayload
    , pzcuBearerToken
    , pzcuClusterId
    , pzcuProjectId
    , pzcuCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesClustersUpdate@ method which the
-- 'ProjectsZonesClustersUpdate'' request conforms to.
type ProjectsZonesClustersUpdateResource =
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
                                   ReqBody '[JSON] UpdateClusterRequest :>
                                     Put '[JSON] Operation

-- | Update settings of a specific cluster.
--
-- /See:/ 'projectsZonesClustersUpdate'' smart constructor.
data ProjectsZonesClustersUpdate' = ProjectsZonesClustersUpdate'
    { _pzcuXgafv          :: !(Maybe Text)
    , _pzcuUploadProtocol :: !(Maybe Text)
    , _pzcuPp             :: !Bool
    , _pzcuAccessToken    :: !(Maybe Text)
    , _pzcuUploadType     :: !(Maybe Text)
    , _pzcuZone           :: !Text
    , _pzcuPayload        :: !UpdateClusterRequest
    , _pzcuBearerToken    :: !(Maybe Text)
    , _pzcuClusterId      :: !Text
    , _pzcuProjectId      :: !Text
    , _pzcuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcuXgafv'
--
-- * 'pzcuUploadProtocol'
--
-- * 'pzcuPp'
--
-- * 'pzcuAccessToken'
--
-- * 'pzcuUploadType'
--
-- * 'pzcuZone'
--
-- * 'pzcuPayload'
--
-- * 'pzcuBearerToken'
--
-- * 'pzcuClusterId'
--
-- * 'pzcuProjectId'
--
-- * 'pzcuCallback'
projectsZonesClustersUpdate'
    :: Text -- ^ 'zone'
    -> UpdateClusterRequest -- ^ 'payload'
    -> Text -- ^ 'clusterId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersUpdate'
projectsZonesClustersUpdate' pPzcuZone_ pPzcuPayload_ pPzcuClusterId_ pPzcuProjectId_ =
    ProjectsZonesClustersUpdate'
    { _pzcuXgafv = Nothing
    , _pzcuUploadProtocol = Nothing
    , _pzcuPp = True
    , _pzcuAccessToken = Nothing
    , _pzcuUploadType = Nothing
    , _pzcuZone = pPzcuZone_
    , _pzcuPayload = pPzcuPayload_
    , _pzcuBearerToken = Nothing
    , _pzcuClusterId = pPzcuClusterId_
    , _pzcuProjectId = pPzcuProjectId_
    , _pzcuCallback = Nothing
    }

-- | V1 error format.
pzcuXgafv :: Lens' ProjectsZonesClustersUpdate' (Maybe Text)
pzcuXgafv
  = lens _pzcuXgafv (\ s a -> s{_pzcuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcuUploadProtocol :: Lens' ProjectsZonesClustersUpdate' (Maybe Text)
pzcuUploadProtocol
  = lens _pzcuUploadProtocol
      (\ s a -> s{_pzcuUploadProtocol = a})

-- | Pretty-print response.
pzcuPp :: Lens' ProjectsZonesClustersUpdate' Bool
pzcuPp = lens _pzcuPp (\ s a -> s{_pzcuPp = a})

-- | OAuth access token.
pzcuAccessToken :: Lens' ProjectsZonesClustersUpdate' (Maybe Text)
pzcuAccessToken
  = lens _pzcuAccessToken
      (\ s a -> s{_pzcuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcuUploadType :: Lens' ProjectsZonesClustersUpdate' (Maybe Text)
pzcuUploadType
  = lens _pzcuUploadType
      (\ s a -> s{_pzcuUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
pzcuZone :: Lens' ProjectsZonesClustersUpdate' Text
pzcuZone = lens _pzcuZone (\ s a -> s{_pzcuZone = a})

-- | Multipart request metadata.
pzcuPayload :: Lens' ProjectsZonesClustersUpdate' UpdateClusterRequest
pzcuPayload
  = lens _pzcuPayload (\ s a -> s{_pzcuPayload = a})

-- | OAuth bearer token.
pzcuBearerToken :: Lens' ProjectsZonesClustersUpdate' (Maybe Text)
pzcuBearerToken
  = lens _pzcuBearerToken
      (\ s a -> s{_pzcuBearerToken = a})

-- | The name of the cluster to upgrade.
pzcuClusterId :: Lens' ProjectsZonesClustersUpdate' Text
pzcuClusterId
  = lens _pzcuClusterId
      (\ s a -> s{_pzcuClusterId = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
pzcuProjectId :: Lens' ProjectsZonesClustersUpdate' Text
pzcuProjectId
  = lens _pzcuProjectId
      (\ s a -> s{_pzcuProjectId = a})

-- | JSONP
pzcuCallback :: Lens' ProjectsZonesClustersUpdate' (Maybe Text)
pzcuCallback
  = lens _pzcuCallback (\ s a -> s{_pzcuCallback = a})

instance GoogleRequest ProjectsZonesClustersUpdate'
         where
        type Rs ProjectsZonesClustersUpdate' = Operation
        requestClient ProjectsZonesClustersUpdate'{..}
          = go _pzcuProjectId _pzcuZone _pzcuClusterId
              _pzcuXgafv
              _pzcuUploadProtocol
              (Just _pzcuPp)
              _pzcuAccessToken
              _pzcuUploadType
              _pzcuBearerToken
              _pzcuCallback
              (Just AltJSON)
              _pzcuPayload
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesClustersUpdateResource)
                      mempty
