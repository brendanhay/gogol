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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.SetNetworkPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables Network Policy for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.setNetworkPolicy@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.SetNetworkPolicy
    (
    -- * REST Resource
      ProjectsZonesClustersSetNetworkPolicyResource

    -- * Creating a Request
    , projectsZonesClustersSetNetworkPolicy
    , ProjectsZonesClustersSetNetworkPolicy

    -- * Request Lenses
    , pzcsnpXgafv
    , pzcsnpUploadProtocol
    , pzcsnpAccessToken
    , pzcsnpUploadType
    , pzcsnpZone
    , pzcsnpPayload
    , pzcsnpClusterId
    , pzcsnpProjectId
    , pzcsnpCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.setNetworkPolicy@ method which the
-- 'ProjectsZonesClustersSetNetworkPolicy' request conforms to.
type ProjectsZonesClustersSetNetworkPolicyResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 CaptureMode "clusterId" "setNetworkPolicy" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] SetNetworkPolicyRequest :>
                                 Post '[JSON] Operation

-- | Enables or disables Network Policy for a cluster.
--
-- /See:/ 'projectsZonesClustersSetNetworkPolicy' smart constructor.
data ProjectsZonesClustersSetNetworkPolicy =
  ProjectsZonesClustersSetNetworkPolicy'
    { _pzcsnpXgafv          :: !(Maybe Xgafv)
    , _pzcsnpUploadProtocol :: !(Maybe Text)
    , _pzcsnpAccessToken    :: !(Maybe Text)
    , _pzcsnpUploadType     :: !(Maybe Text)
    , _pzcsnpZone           :: !Text
    , _pzcsnpPayload        :: !SetNetworkPolicyRequest
    , _pzcsnpClusterId      :: !Text
    , _pzcsnpProjectId      :: !Text
    , _pzcsnpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersSetNetworkPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcsnpXgafv'
--
-- * 'pzcsnpUploadProtocol'
--
-- * 'pzcsnpAccessToken'
--
-- * 'pzcsnpUploadType'
--
-- * 'pzcsnpZone'
--
-- * 'pzcsnpPayload'
--
-- * 'pzcsnpClusterId'
--
-- * 'pzcsnpProjectId'
--
-- * 'pzcsnpCallback'
projectsZonesClustersSetNetworkPolicy
    :: Text -- ^ 'pzcsnpZone'
    -> SetNetworkPolicyRequest -- ^ 'pzcsnpPayload'
    -> Text -- ^ 'pzcsnpClusterId'
    -> Text -- ^ 'pzcsnpProjectId'
    -> ProjectsZonesClustersSetNetworkPolicy
projectsZonesClustersSetNetworkPolicy pPzcsnpZone_ pPzcsnpPayload_ pPzcsnpClusterId_ pPzcsnpProjectId_ =
  ProjectsZonesClustersSetNetworkPolicy'
    { _pzcsnpXgafv = Nothing
    , _pzcsnpUploadProtocol = Nothing
    , _pzcsnpAccessToken = Nothing
    , _pzcsnpUploadType = Nothing
    , _pzcsnpZone = pPzcsnpZone_
    , _pzcsnpPayload = pPzcsnpPayload_
    , _pzcsnpClusterId = pPzcsnpClusterId_
    , _pzcsnpProjectId = pPzcsnpProjectId_
    , _pzcsnpCallback = Nothing
    }


-- | V1 error format.
pzcsnpXgafv :: Lens' ProjectsZonesClustersSetNetworkPolicy (Maybe Xgafv)
pzcsnpXgafv
  = lens _pzcsnpXgafv (\ s a -> s{_pzcsnpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcsnpUploadProtocol :: Lens' ProjectsZonesClustersSetNetworkPolicy (Maybe Text)
pzcsnpUploadProtocol
  = lens _pzcsnpUploadProtocol
      (\ s a -> s{_pzcsnpUploadProtocol = a})

-- | OAuth access token.
pzcsnpAccessToken :: Lens' ProjectsZonesClustersSetNetworkPolicy (Maybe Text)
pzcsnpAccessToken
  = lens _pzcsnpAccessToken
      (\ s a -> s{_pzcsnpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcsnpUploadType :: Lens' ProjectsZonesClustersSetNetworkPolicy (Maybe Text)
pzcsnpUploadType
  = lens _pzcsnpUploadType
      (\ s a -> s{_pzcsnpUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzcsnpZone :: Lens' ProjectsZonesClustersSetNetworkPolicy Text
pzcsnpZone
  = lens _pzcsnpZone (\ s a -> s{_pzcsnpZone = a})

-- | Multipart request metadata.
pzcsnpPayload :: Lens' ProjectsZonesClustersSetNetworkPolicy SetNetworkPolicyRequest
pzcsnpPayload
  = lens _pzcsnpPayload
      (\ s a -> s{_pzcsnpPayload = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the name field.
pzcsnpClusterId :: Lens' ProjectsZonesClustersSetNetworkPolicy Text
pzcsnpClusterId
  = lens _pzcsnpClusterId
      (\ s a -> s{_pzcsnpClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the name field.
pzcsnpProjectId :: Lens' ProjectsZonesClustersSetNetworkPolicy Text
pzcsnpProjectId
  = lens _pzcsnpProjectId
      (\ s a -> s{_pzcsnpProjectId = a})

-- | JSONP
pzcsnpCallback :: Lens' ProjectsZonesClustersSetNetworkPolicy (Maybe Text)
pzcsnpCallback
  = lens _pzcsnpCallback
      (\ s a -> s{_pzcsnpCallback = a})

instance GoogleRequest
           ProjectsZonesClustersSetNetworkPolicy
         where
        type Rs ProjectsZonesClustersSetNetworkPolicy =
             Operation
        type Scopes ProjectsZonesClustersSetNetworkPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsZonesClustersSetNetworkPolicy'{..}
          = go _pzcsnpProjectId _pzcsnpZone _pzcsnpClusterId
              _pzcsnpXgafv
              _pzcsnpUploadProtocol
              _pzcsnpAccessToken
              _pzcsnpUploadType
              _pzcsnpCallback
              (Just AltJSON)
              _pzcsnpPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersSetNetworkPolicyResource)
                      mempty
