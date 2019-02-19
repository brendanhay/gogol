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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.SetMaintenancePolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the maintenance policy for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.setMaintenancePolicy@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.SetMaintenancePolicy
    (
    -- * REST Resource
      ProjectsZonesClustersSetMaintenancePolicyResource

    -- * Creating a Request
    , projectsZonesClustersSetMaintenancePolicy
    , ProjectsZonesClustersSetMaintenancePolicy

    -- * Request Lenses
    , pzcsmpXgafv
    , pzcsmpUploadProtocol
    , pzcsmpAccessToken
    , pzcsmpUploadType
    , pzcsmpZone
    , pzcsmpPayload
    , pzcsmpClusterId
    , pzcsmpProjectId
    , pzcsmpCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.setMaintenancePolicy@ method which the
-- 'ProjectsZonesClustersSetMaintenancePolicy' request conforms to.
type ProjectsZonesClustersSetMaintenancePolicyResource
     =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 CaptureMode "clusterId" "setMaintenancePolicy" Text
                   :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] SetMaintenancePolicyRequest :>
                                 Post '[JSON] Operation

-- | Sets the maintenance policy for a cluster.
--
-- /See:/ 'projectsZonesClustersSetMaintenancePolicy' smart constructor.
data ProjectsZonesClustersSetMaintenancePolicy =
  ProjectsZonesClustersSetMaintenancePolicy'
    { _pzcsmpXgafv          :: !(Maybe Xgafv)
    , _pzcsmpUploadProtocol :: !(Maybe Text)
    , _pzcsmpAccessToken    :: !(Maybe Text)
    , _pzcsmpUploadType     :: !(Maybe Text)
    , _pzcsmpZone           :: !Text
    , _pzcsmpPayload        :: !SetMaintenancePolicyRequest
    , _pzcsmpClusterId      :: !Text
    , _pzcsmpProjectId      :: !Text
    , _pzcsmpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsZonesClustersSetMaintenancePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcsmpXgafv'
--
-- * 'pzcsmpUploadProtocol'
--
-- * 'pzcsmpAccessToken'
--
-- * 'pzcsmpUploadType'
--
-- * 'pzcsmpZone'
--
-- * 'pzcsmpPayload'
--
-- * 'pzcsmpClusterId'
--
-- * 'pzcsmpProjectId'
--
-- * 'pzcsmpCallback'
projectsZonesClustersSetMaintenancePolicy
    :: Text -- ^ 'pzcsmpZone'
    -> SetMaintenancePolicyRequest -- ^ 'pzcsmpPayload'
    -> Text -- ^ 'pzcsmpClusterId'
    -> Text -- ^ 'pzcsmpProjectId'
    -> ProjectsZonesClustersSetMaintenancePolicy
projectsZonesClustersSetMaintenancePolicy pPzcsmpZone_ pPzcsmpPayload_ pPzcsmpClusterId_ pPzcsmpProjectId_ =
  ProjectsZonesClustersSetMaintenancePolicy'
    { _pzcsmpXgafv = Nothing
    , _pzcsmpUploadProtocol = Nothing
    , _pzcsmpAccessToken = Nothing
    , _pzcsmpUploadType = Nothing
    , _pzcsmpZone = pPzcsmpZone_
    , _pzcsmpPayload = pPzcsmpPayload_
    , _pzcsmpClusterId = pPzcsmpClusterId_
    , _pzcsmpProjectId = pPzcsmpProjectId_
    , _pzcsmpCallback = Nothing
    }

-- | V1 error format.
pzcsmpXgafv :: Lens' ProjectsZonesClustersSetMaintenancePolicy (Maybe Xgafv)
pzcsmpXgafv
  = lens _pzcsmpXgafv (\ s a -> s{_pzcsmpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcsmpUploadProtocol :: Lens' ProjectsZonesClustersSetMaintenancePolicy (Maybe Text)
pzcsmpUploadProtocol
  = lens _pzcsmpUploadProtocol
      (\ s a -> s{_pzcsmpUploadProtocol = a})

-- | OAuth access token.
pzcsmpAccessToken :: Lens' ProjectsZonesClustersSetMaintenancePolicy (Maybe Text)
pzcsmpAccessToken
  = lens _pzcsmpAccessToken
      (\ s a -> s{_pzcsmpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcsmpUploadType :: Lens' ProjectsZonesClustersSetMaintenancePolicy (Maybe Text)
pzcsmpUploadType
  = lens _pzcsmpUploadType
      (\ s a -> s{_pzcsmpUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
pzcsmpZone :: Lens' ProjectsZonesClustersSetMaintenancePolicy Text
pzcsmpZone
  = lens _pzcsmpZone (\ s a -> s{_pzcsmpZone = a})

-- | Multipart request metadata.
pzcsmpPayload :: Lens' ProjectsZonesClustersSetMaintenancePolicy SetMaintenancePolicyRequest
pzcsmpPayload
  = lens _pzcsmpPayload
      (\ s a -> s{_pzcsmpPayload = a})

-- | The name of the cluster to update.
pzcsmpClusterId :: Lens' ProjectsZonesClustersSetMaintenancePolicy Text
pzcsmpClusterId
  = lens _pzcsmpClusterId
      (\ s a -> s{_pzcsmpClusterId = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840).
pzcsmpProjectId :: Lens' ProjectsZonesClustersSetMaintenancePolicy Text
pzcsmpProjectId
  = lens _pzcsmpProjectId
      (\ s a -> s{_pzcsmpProjectId = a})

-- | JSONP
pzcsmpCallback :: Lens' ProjectsZonesClustersSetMaintenancePolicy (Maybe Text)
pzcsmpCallback
  = lens _pzcsmpCallback
      (\ s a -> s{_pzcsmpCallback = a})

instance GoogleRequest
           ProjectsZonesClustersSetMaintenancePolicy
         where
        type Rs ProjectsZonesClustersSetMaintenancePolicy =
             Operation
        type Scopes ProjectsZonesClustersSetMaintenancePolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsZonesClustersSetMaintenancePolicy'{..}
          = go _pzcsmpProjectId _pzcsmpZone _pzcsmpClusterId
              _pzcsmpXgafv
              _pzcsmpUploadProtocol
              _pzcsmpAccessToken
              _pzcsmpUploadType
              _pzcsmpCallback
              (Just AltJSON)
              _pzcsmpPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsZonesClustersSetMaintenancePolicyResource)
                      mempty
