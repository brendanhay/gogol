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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.LegacyAbac
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables the ABAC authorization mechanism on a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.legacyAbac@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.LegacyAbac
    (
    -- * REST Resource
      ProjectsZonesClustersLegacyAbacResource

    -- * Creating a Request
    , projectsZonesClustersLegacyAbac
    , ProjectsZonesClustersLegacyAbac

    -- * Request Lenses
    , pzclaXgafv
    , pzclaUploadProtocol
    , pzclaAccessToken
    , pzclaUploadType
    , pzclaZone
    , pzclaPayload
    , pzclaClusterId
    , pzclaProjectId
    , pzclaCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.legacyAbac@ method which the
-- 'ProjectsZonesClustersLegacyAbac' request conforms to.
type ProjectsZonesClustersLegacyAbacResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "legacyAbac" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] SetLegacyAbacRequest :>
                                   Post '[JSON] Operation

-- | Enables or disables the ABAC authorization mechanism on a cluster.
--
-- /See:/ 'projectsZonesClustersLegacyAbac' smart constructor.
data ProjectsZonesClustersLegacyAbac = ProjectsZonesClustersLegacyAbac'
    { _pzclaXgafv          :: !(Maybe Xgafv)
    , _pzclaUploadProtocol :: !(Maybe Text)
    , _pzclaAccessToken    :: !(Maybe Text)
    , _pzclaUploadType     :: !(Maybe Text)
    , _pzclaZone           :: !Text
    , _pzclaPayload        :: !SetLegacyAbacRequest
    , _pzclaClusterId      :: !Text
    , _pzclaProjectId      :: !Text
    , _pzclaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersLegacyAbac' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzclaXgafv'
--
-- * 'pzclaUploadProtocol'
--
-- * 'pzclaAccessToken'
--
-- * 'pzclaUploadType'
--
-- * 'pzclaZone'
--
-- * 'pzclaPayload'
--
-- * 'pzclaClusterId'
--
-- * 'pzclaProjectId'
--
-- * 'pzclaCallback'
projectsZonesClustersLegacyAbac
    :: Text -- ^ 'pzclaZone'
    -> SetLegacyAbacRequest -- ^ 'pzclaPayload'
    -> Text -- ^ 'pzclaClusterId'
    -> Text -- ^ 'pzclaProjectId'
    -> ProjectsZonesClustersLegacyAbac
projectsZonesClustersLegacyAbac pPzclaZone_ pPzclaPayload_ pPzclaClusterId_ pPzclaProjectId_ =
    ProjectsZonesClustersLegacyAbac'
    { _pzclaXgafv = Nothing
    , _pzclaUploadProtocol = Nothing
    , _pzclaAccessToken = Nothing
    , _pzclaUploadType = Nothing
    , _pzclaZone = pPzclaZone_
    , _pzclaPayload = pPzclaPayload_
    , _pzclaClusterId = pPzclaClusterId_
    , _pzclaProjectId = pPzclaProjectId_
    , _pzclaCallback = Nothing
    }

-- | V1 error format.
pzclaXgafv :: Lens' ProjectsZonesClustersLegacyAbac (Maybe Xgafv)
pzclaXgafv
  = lens _pzclaXgafv (\ s a -> s{_pzclaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzclaUploadProtocol :: Lens' ProjectsZonesClustersLegacyAbac (Maybe Text)
pzclaUploadProtocol
  = lens _pzclaUploadProtocol
      (\ s a -> s{_pzclaUploadProtocol = a})

-- | OAuth access token.
pzclaAccessToken :: Lens' ProjectsZonesClustersLegacyAbac (Maybe Text)
pzclaAccessToken
  = lens _pzclaAccessToken
      (\ s a -> s{_pzclaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzclaUploadType :: Lens' ProjectsZonesClustersLegacyAbac (Maybe Text)
pzclaUploadType
  = lens _pzclaUploadType
      (\ s a -> s{_pzclaUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzclaZone :: Lens' ProjectsZonesClustersLegacyAbac Text
pzclaZone
  = lens _pzclaZone (\ s a -> s{_pzclaZone = a})

-- | Multipart request metadata.
pzclaPayload :: Lens' ProjectsZonesClustersLegacyAbac SetLegacyAbacRequest
pzclaPayload
  = lens _pzclaPayload (\ s a -> s{_pzclaPayload = a})

-- | Deprecated. The name of the cluster to update. This field has been
-- deprecated and replaced by the name field.
pzclaClusterId :: Lens' ProjectsZonesClustersLegacyAbac Text
pzclaClusterId
  = lens _pzclaClusterId
      (\ s a -> s{_pzclaClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzclaProjectId :: Lens' ProjectsZonesClustersLegacyAbac Text
pzclaProjectId
  = lens _pzclaProjectId
      (\ s a -> s{_pzclaProjectId = a})

-- | JSONP
pzclaCallback :: Lens' ProjectsZonesClustersLegacyAbac (Maybe Text)
pzclaCallback
  = lens _pzclaCallback
      (\ s a -> s{_pzclaCallback = a})

instance GoogleRequest
         ProjectsZonesClustersLegacyAbac where
        type Rs ProjectsZonesClustersLegacyAbac = Operation
        type Scopes ProjectsZonesClustersLegacyAbac =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersLegacyAbac'{..}
          = go _pzclaProjectId _pzclaZone _pzclaClusterId
              _pzclaXgafv
              _pzclaUploadProtocol
              _pzclaAccessToken
              _pzclaUploadType
              _pzclaCallback
              (Just AltJSON)
              _pzclaPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersLegacyAbacResource)
                      mempty
