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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.ResourceLabels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets labels on a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.resourceLabels@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.ResourceLabels
    (
    -- * REST Resource
      ProjectsZonesClustersResourceLabelsResource

    -- * Creating a Request
    , projectsZonesClustersResourceLabels
    , ProjectsZonesClustersResourceLabels

    -- * Request Lenses
    , pzcrlXgafv
    , pzcrlUploadProtocol
    , pzcrlAccessToken
    , pzcrlUploadType
    , pzcrlZone
    , pzcrlPayload
    , pzcrlClusterId
    , pzcrlProjectId
    , pzcrlCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.resourceLabels@ method which the
-- 'ProjectsZonesClustersResourceLabels' request conforms to.
type ProjectsZonesClustersResourceLabelsResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "resourceLabels" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] SetLabelsRequest :>
                                   Post '[JSON] Operation

-- | Sets labels on a cluster.
--
-- /See:/ 'projectsZonesClustersResourceLabels' smart constructor.
data ProjectsZonesClustersResourceLabels =
  ProjectsZonesClustersResourceLabels'
    { _pzcrlXgafv          :: !(Maybe Xgafv)
    , _pzcrlUploadProtocol :: !(Maybe Text)
    , _pzcrlAccessToken    :: !(Maybe Text)
    , _pzcrlUploadType     :: !(Maybe Text)
    , _pzcrlZone           :: !Text
    , _pzcrlPayload        :: !SetLabelsRequest
    , _pzcrlClusterId      :: !Text
    , _pzcrlProjectId      :: !Text
    , _pzcrlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersResourceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcrlXgafv'
--
-- * 'pzcrlUploadProtocol'
--
-- * 'pzcrlAccessToken'
--
-- * 'pzcrlUploadType'
--
-- * 'pzcrlZone'
--
-- * 'pzcrlPayload'
--
-- * 'pzcrlClusterId'
--
-- * 'pzcrlProjectId'
--
-- * 'pzcrlCallback'
projectsZonesClustersResourceLabels
    :: Text -- ^ 'pzcrlZone'
    -> SetLabelsRequest -- ^ 'pzcrlPayload'
    -> Text -- ^ 'pzcrlClusterId'
    -> Text -- ^ 'pzcrlProjectId'
    -> ProjectsZonesClustersResourceLabels
projectsZonesClustersResourceLabels pPzcrlZone_ pPzcrlPayload_ pPzcrlClusterId_ pPzcrlProjectId_ =
  ProjectsZonesClustersResourceLabels'
    { _pzcrlXgafv = Nothing
    , _pzcrlUploadProtocol = Nothing
    , _pzcrlAccessToken = Nothing
    , _pzcrlUploadType = Nothing
    , _pzcrlZone = pPzcrlZone_
    , _pzcrlPayload = pPzcrlPayload_
    , _pzcrlClusterId = pPzcrlClusterId_
    , _pzcrlProjectId = pPzcrlProjectId_
    , _pzcrlCallback = Nothing
    }


-- | V1 error format.
pzcrlXgafv :: Lens' ProjectsZonesClustersResourceLabels (Maybe Xgafv)
pzcrlXgafv
  = lens _pzcrlXgafv (\ s a -> s{_pzcrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcrlUploadProtocol :: Lens' ProjectsZonesClustersResourceLabels (Maybe Text)
pzcrlUploadProtocol
  = lens _pzcrlUploadProtocol
      (\ s a -> s{_pzcrlUploadProtocol = a})

-- | OAuth access token.
pzcrlAccessToken :: Lens' ProjectsZonesClustersResourceLabels (Maybe Text)
pzcrlAccessToken
  = lens _pzcrlAccessToken
      (\ s a -> s{_pzcrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcrlUploadType :: Lens' ProjectsZonesClustersResourceLabels (Maybe Text)
pzcrlUploadType
  = lens _pzcrlUploadType
      (\ s a -> s{_pzcrlUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzcrlZone :: Lens' ProjectsZonesClustersResourceLabels Text
pzcrlZone
  = lens _pzcrlZone (\ s a -> s{_pzcrlZone = a})

-- | Multipart request metadata.
pzcrlPayload :: Lens' ProjectsZonesClustersResourceLabels SetLabelsRequest
pzcrlPayload
  = lens _pzcrlPayload (\ s a -> s{_pzcrlPayload = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the name field.
pzcrlClusterId :: Lens' ProjectsZonesClustersResourceLabels Text
pzcrlClusterId
  = lens _pzcrlClusterId
      (\ s a -> s{_pzcrlClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the name field.
pzcrlProjectId :: Lens' ProjectsZonesClustersResourceLabels Text
pzcrlProjectId
  = lens _pzcrlProjectId
      (\ s a -> s{_pzcrlProjectId = a})

-- | JSONP
pzcrlCallback :: Lens' ProjectsZonesClustersResourceLabels (Maybe Text)
pzcrlCallback
  = lens _pzcrlCallback
      (\ s a -> s{_pzcrlCallback = a})

instance GoogleRequest
           ProjectsZonesClustersResourceLabels
         where
        type Rs ProjectsZonesClustersResourceLabels =
             Operation
        type Scopes ProjectsZonesClustersResourceLabels =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsZonesClustersResourceLabels'{..}
          = go _pzcrlProjectId _pzcrlZone _pzcrlClusterId
              _pzcrlXgafv
              _pzcrlUploadProtocol
              _pzcrlAccessToken
              _pzcrlUploadType
              _pzcrlCallback
              (Just AltJSON)
              _pzcrlPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersResourceLabelsResource)
                      mempty
