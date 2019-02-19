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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Locations
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the locations for a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.locations@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Locations
    (
    -- * REST Resource
      ProjectsZonesClustersLocationsResource

    -- * Creating a Request
    , projectsZonesClustersLocations
    , ProjectsZonesClustersLocations

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pZone
    , pPayload
    , pClusterId
    , pProjectId
    , pCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.locations@ method which the
-- 'ProjectsZonesClustersLocations' request conforms to.
type ProjectsZonesClustersLocationsResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "locations" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] SetLocationsRequest :>
                                   Post '[JSON] Operation

-- | Sets the locations for a specific cluster.
--
-- /See:/ 'projectsZonesClustersLocations' smart constructor.
data ProjectsZonesClustersLocations =
  ProjectsZonesClustersLocations'
    { _pXgafv          :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pZone           :: !Text
    , _pPayload        :: !SetLocationsRequest
    , _pClusterId      :: !Text
    , _pProjectId      :: !Text
    , _pCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersLocations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pZone'
--
-- * 'pPayload'
--
-- * 'pClusterId'
--
-- * 'pProjectId'
--
-- * 'pCallback'
projectsZonesClustersLocations
    :: Text -- ^ 'pZone'
    -> SetLocationsRequest -- ^ 'pPayload'
    -> Text -- ^ 'pClusterId'
    -> Text -- ^ 'pProjectId'
    -> ProjectsZonesClustersLocations
projectsZonesClustersLocations pPZone_ pPPayload_ pPClusterId_ pPProjectId_ =
  ProjectsZonesClustersLocations'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pZone = pPZone_
    , _pPayload = pPPayload_
    , _pClusterId = pPClusterId_
    , _pProjectId = pPProjectId_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsZonesClustersLocations (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsZonesClustersLocations (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsZonesClustersLocations (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsZonesClustersLocations (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pZone :: Lens' ProjectsZonesClustersLocations Text
pZone = lens _pZone (\ s a -> s{_pZone = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsZonesClustersLocations SetLocationsRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
pClusterId :: Lens' ProjectsZonesClustersLocations Text
pClusterId
  = lens _pClusterId (\ s a -> s{_pClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pProjectId :: Lens' ProjectsZonesClustersLocations Text
pProjectId
  = lens _pProjectId (\ s a -> s{_pProjectId = a})

-- | JSONP
pCallback :: Lens' ProjectsZonesClustersLocations (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsZonesClustersLocations
         where
        type Rs ProjectsZonesClustersLocations = Operation
        type Scopes ProjectsZonesClustersLocations =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersLocations'{..}
          = go _pProjectId _pZone _pClusterId _pXgafv
              _pUploadProtocol
              _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersLocationsResource)
                      mempty
