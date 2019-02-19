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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Logging
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the logging service for a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.logging@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Logging
    (
    -- * REST Resource
      ProjectsZonesClustersLoggingResource

    -- * Creating a Request
    , projectsZonesClustersLogging
    , ProjectsZonesClustersLogging

    -- * Request Lenses
    , pzclXgafv
    , pzclUploadProtocol
    , pzclAccessToken
    , pzclUploadType
    , pzclZone
    , pzclPayload
    , pzclClusterId
    , pzclProjectId
    , pzclCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.logging@ method which the
-- 'ProjectsZonesClustersLogging' request conforms to.
type ProjectsZonesClustersLoggingResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "logging" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] SetLoggingServiceRequest :>
                                   Post '[JSON] Operation

-- | Sets the logging service for a specific cluster.
--
-- /See:/ 'projectsZonesClustersLogging' smart constructor.
data ProjectsZonesClustersLogging =
  ProjectsZonesClustersLogging'
    { _pzclXgafv          :: !(Maybe Xgafv)
    , _pzclUploadProtocol :: !(Maybe Text)
    , _pzclAccessToken    :: !(Maybe Text)
    , _pzclUploadType     :: !(Maybe Text)
    , _pzclZone           :: !Text
    , _pzclPayload        :: !SetLoggingServiceRequest
    , _pzclClusterId      :: !Text
    , _pzclProjectId      :: !Text
    , _pzclCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsZonesClustersLogging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzclXgafv'
--
-- * 'pzclUploadProtocol'
--
-- * 'pzclAccessToken'
--
-- * 'pzclUploadType'
--
-- * 'pzclZone'
--
-- * 'pzclPayload'
--
-- * 'pzclClusterId'
--
-- * 'pzclProjectId'
--
-- * 'pzclCallback'
projectsZonesClustersLogging
    :: Text -- ^ 'pzclZone'
    -> SetLoggingServiceRequest -- ^ 'pzclPayload'
    -> Text -- ^ 'pzclClusterId'
    -> Text -- ^ 'pzclProjectId'
    -> ProjectsZonesClustersLogging
projectsZonesClustersLogging pPzclZone_ pPzclPayload_ pPzclClusterId_ pPzclProjectId_ =
  ProjectsZonesClustersLogging'
    { _pzclXgafv = Nothing
    , _pzclUploadProtocol = Nothing
    , _pzclAccessToken = Nothing
    , _pzclUploadType = Nothing
    , _pzclZone = pPzclZone_
    , _pzclPayload = pPzclPayload_
    , _pzclClusterId = pPzclClusterId_
    , _pzclProjectId = pPzclProjectId_
    , _pzclCallback = Nothing
    }

-- | V1 error format.
pzclXgafv :: Lens' ProjectsZonesClustersLogging (Maybe Xgafv)
pzclXgafv
  = lens _pzclXgafv (\ s a -> s{_pzclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzclUploadProtocol :: Lens' ProjectsZonesClustersLogging (Maybe Text)
pzclUploadProtocol
  = lens _pzclUploadProtocol
      (\ s a -> s{_pzclUploadProtocol = a})

-- | OAuth access token.
pzclAccessToken :: Lens' ProjectsZonesClustersLogging (Maybe Text)
pzclAccessToken
  = lens _pzclAccessToken
      (\ s a -> s{_pzclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzclUploadType :: Lens' ProjectsZonesClustersLogging (Maybe Text)
pzclUploadType
  = lens _pzclUploadType
      (\ s a -> s{_pzclUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzclZone :: Lens' ProjectsZonesClustersLogging Text
pzclZone = lens _pzclZone (\ s a -> s{_pzclZone = a})

-- | Multipart request metadata.
pzclPayload :: Lens' ProjectsZonesClustersLogging SetLoggingServiceRequest
pzclPayload
  = lens _pzclPayload (\ s a -> s{_pzclPayload = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
pzclClusterId :: Lens' ProjectsZonesClustersLogging Text
pzclClusterId
  = lens _pzclClusterId
      (\ s a -> s{_pzclClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzclProjectId :: Lens' ProjectsZonesClustersLogging Text
pzclProjectId
  = lens _pzclProjectId
      (\ s a -> s{_pzclProjectId = a})

-- | JSONP
pzclCallback :: Lens' ProjectsZonesClustersLogging (Maybe Text)
pzclCallback
  = lens _pzclCallback (\ s a -> s{_pzclCallback = a})

instance GoogleRequest ProjectsZonesClustersLogging
         where
        type Rs ProjectsZonesClustersLogging = Operation
        type Scopes ProjectsZonesClustersLogging =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersLogging'{..}
          = go _pzclProjectId _pzclZone _pzclClusterId
              _pzclXgafv
              _pzclUploadProtocol
              _pzclAccessToken
              _pzclUploadType
              _pzclCallback
              (Just AltJSON)
              _pzclPayload
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesClustersLoggingResource)
                      mempty
