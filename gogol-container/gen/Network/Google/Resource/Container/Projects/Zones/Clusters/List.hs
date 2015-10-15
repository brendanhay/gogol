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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all clusters owned by a project in either the specified zone or
-- all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @ContainerProjectsZonesClustersList@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.List
    (
    -- * REST Resource
      ProjectsZonesClustersListResource

    -- * Creating a Request
    , projectsZonesClustersList'
    , ProjectsZonesClustersList'

    -- * Request Lenses
    , pzclXgafv
    , pzclUploadProtocol
    , pzclPp
    , pzclAccessToken
    , pzclUploadType
    , pzclZone
    , pzclBearerToken
    , pzclProjectId
    , pzclCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesClustersList@ method which the
-- 'ProjectsZonesClustersList'' request conforms to.
type ProjectsZonesClustersListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListClustersResponse

-- | Lists all clusters owned by a project in either the specified zone or
-- all zones.
--
-- /See:/ 'projectsZonesClustersList'' smart constructor.
data ProjectsZonesClustersList' = ProjectsZonesClustersList'
    { _pzclXgafv          :: !(Maybe Text)
    , _pzclUploadProtocol :: !(Maybe Text)
    , _pzclPp             :: !Bool
    , _pzclAccessToken    :: !(Maybe Text)
    , _pzclUploadType     :: !(Maybe Text)
    , _pzclZone           :: !Text
    , _pzclBearerToken    :: !(Maybe Text)
    , _pzclProjectId      :: !Text
    , _pzclCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzclXgafv'
--
-- * 'pzclUploadProtocol'
--
-- * 'pzclPp'
--
-- * 'pzclAccessToken'
--
-- * 'pzclUploadType'
--
-- * 'pzclZone'
--
-- * 'pzclBearerToken'
--
-- * 'pzclProjectId'
--
-- * 'pzclCallback'
projectsZonesClustersList'
    :: Text -- ^ 'zone'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersList'
projectsZonesClustersList' pPzclZone_ pPzclProjectId_ =
    ProjectsZonesClustersList'
    { _pzclXgafv = Nothing
    , _pzclUploadProtocol = Nothing
    , _pzclPp = True
    , _pzclAccessToken = Nothing
    , _pzclUploadType = Nothing
    , _pzclZone = pPzclZone_
    , _pzclBearerToken = Nothing
    , _pzclProjectId = pPzclProjectId_
    , _pzclCallback = Nothing
    }

-- | V1 error format.
pzclXgafv :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclXgafv
  = lens _pzclXgafv (\ s a -> s{_pzclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzclUploadProtocol :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclUploadProtocol
  = lens _pzclUploadProtocol
      (\ s a -> s{_pzclUploadProtocol = a})

-- | Pretty-print response.
pzclPp :: Lens' ProjectsZonesClustersList' Bool
pzclPp = lens _pzclPp (\ s a -> s{_pzclPp = a})

-- | OAuth access token.
pzclAccessToken :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclAccessToken
  = lens _pzclAccessToken
      (\ s a -> s{_pzclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzclUploadType :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclUploadType
  = lens _pzclUploadType
      (\ s a -> s{_pzclUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides,
-- or \"-\" for all zones.
pzclZone :: Lens' ProjectsZonesClustersList' Text
pzclZone = lens _pzclZone (\ s a -> s{_pzclZone = a})

-- | OAuth bearer token.
pzclBearerToken :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclBearerToken
  = lens _pzclBearerToken
      (\ s a -> s{_pzclBearerToken = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
pzclProjectId :: Lens' ProjectsZonesClustersList' Text
pzclProjectId
  = lens _pzclProjectId
      (\ s a -> s{_pzclProjectId = a})

-- | JSONP
pzclCallback :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclCallback
  = lens _pzclCallback (\ s a -> s{_pzclCallback = a})

instance GoogleRequest ProjectsZonesClustersList'
         where
        type Rs ProjectsZonesClustersList' =
             ListClustersResponse
        requestClient ProjectsZonesClustersList'{..}
          = go _pzclProjectId _pzclZone _pzclXgafv
              _pzclUploadProtocol
              (Just _pzclPp)
              _pzclAccessToken
              _pzclUploadType
              _pzclBearerToken
              _pzclCallback
              (Just AltJSON)
              container
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesClustersListResource)
                      mempty
