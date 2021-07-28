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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.SetManagement
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the NodeManagement options for a node pool.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.setManagement@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.SetManagement
    (
    -- * REST Resource
      ProjectsZonesClustersNodePoolsSetManagementResource

    -- * Creating a Request
    , projectsZonesClustersNodePoolsSetManagement
    , ProjectsZonesClustersNodePoolsSetManagement

    -- * Request Lenses
    , pzcnpsmXgafv
    , pzcnpsmUploadProtocol
    , pzcnpsmAccessToken
    , pzcnpsmUploadType
    , pzcnpsmZone
    , pzcnpsmPayload
    , pzcnpsmNodePoolId
    , pzcnpsmClusterId
    , pzcnpsmProjectId
    , pzcnpsmCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.nodePools.setManagement@ method which the
-- 'ProjectsZonesClustersNodePoolsSetManagement' request conforms to.
type ProjectsZonesClustersNodePoolsSetManagementResource
     =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "nodePools" :>
                     Capture "nodePoolId" Text :>
                       "setManagement" :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON]
                                       SetNodePoolManagementRequest
                                       :> Post '[JSON] Operation

-- | Sets the NodeManagement options for a node pool.
--
-- /See:/ 'projectsZonesClustersNodePoolsSetManagement' smart constructor.
data ProjectsZonesClustersNodePoolsSetManagement =
  ProjectsZonesClustersNodePoolsSetManagement'
    { _pzcnpsmXgafv :: !(Maybe Xgafv)
    , _pzcnpsmUploadProtocol :: !(Maybe Text)
    , _pzcnpsmAccessToken :: !(Maybe Text)
    , _pzcnpsmUploadType :: !(Maybe Text)
    , _pzcnpsmZone :: !Text
    , _pzcnpsmPayload :: !SetNodePoolManagementRequest
    , _pzcnpsmNodePoolId :: !Text
    , _pzcnpsmClusterId :: !Text
    , _pzcnpsmProjectId :: !Text
    , _pzcnpsmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersNodePoolsSetManagement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcnpsmXgafv'
--
-- * 'pzcnpsmUploadProtocol'
--
-- * 'pzcnpsmAccessToken'
--
-- * 'pzcnpsmUploadType'
--
-- * 'pzcnpsmZone'
--
-- * 'pzcnpsmPayload'
--
-- * 'pzcnpsmNodePoolId'
--
-- * 'pzcnpsmClusterId'
--
-- * 'pzcnpsmProjectId'
--
-- * 'pzcnpsmCallback'
projectsZonesClustersNodePoolsSetManagement
    :: Text -- ^ 'pzcnpsmZone'
    -> SetNodePoolManagementRequest -- ^ 'pzcnpsmPayload'
    -> Text -- ^ 'pzcnpsmNodePoolId'
    -> Text -- ^ 'pzcnpsmClusterId'
    -> Text -- ^ 'pzcnpsmProjectId'
    -> ProjectsZonesClustersNodePoolsSetManagement
projectsZonesClustersNodePoolsSetManagement pPzcnpsmZone_ pPzcnpsmPayload_ pPzcnpsmNodePoolId_ pPzcnpsmClusterId_ pPzcnpsmProjectId_ =
  ProjectsZonesClustersNodePoolsSetManagement'
    { _pzcnpsmXgafv = Nothing
    , _pzcnpsmUploadProtocol = Nothing
    , _pzcnpsmAccessToken = Nothing
    , _pzcnpsmUploadType = Nothing
    , _pzcnpsmZone = pPzcnpsmZone_
    , _pzcnpsmPayload = pPzcnpsmPayload_
    , _pzcnpsmNodePoolId = pPzcnpsmNodePoolId_
    , _pzcnpsmClusterId = pPzcnpsmClusterId_
    , _pzcnpsmProjectId = pPzcnpsmProjectId_
    , _pzcnpsmCallback = Nothing
    }


-- | V1 error format.
pzcnpsmXgafv :: Lens' ProjectsZonesClustersNodePoolsSetManagement (Maybe Xgafv)
pzcnpsmXgafv
  = lens _pzcnpsmXgafv (\ s a -> s{_pzcnpsmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcnpsmUploadProtocol :: Lens' ProjectsZonesClustersNodePoolsSetManagement (Maybe Text)
pzcnpsmUploadProtocol
  = lens _pzcnpsmUploadProtocol
      (\ s a -> s{_pzcnpsmUploadProtocol = a})

-- | OAuth access token.
pzcnpsmAccessToken :: Lens' ProjectsZonesClustersNodePoolsSetManagement (Maybe Text)
pzcnpsmAccessToken
  = lens _pzcnpsmAccessToken
      (\ s a -> s{_pzcnpsmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcnpsmUploadType :: Lens' ProjectsZonesClustersNodePoolsSetManagement (Maybe Text)
pzcnpsmUploadType
  = lens _pzcnpsmUploadType
      (\ s a -> s{_pzcnpsmUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
pzcnpsmZone :: Lens' ProjectsZonesClustersNodePoolsSetManagement Text
pzcnpsmZone
  = lens _pzcnpsmZone (\ s a -> s{_pzcnpsmZone = a})

-- | Multipart request metadata.
pzcnpsmPayload :: Lens' ProjectsZonesClustersNodePoolsSetManagement SetNodePoolManagementRequest
pzcnpsmPayload
  = lens _pzcnpsmPayload
      (\ s a -> s{_pzcnpsmPayload = a})

-- | Deprecated. The name of the node pool to update. This field has been
-- deprecated and replaced by the name field.
pzcnpsmNodePoolId :: Lens' ProjectsZonesClustersNodePoolsSetManagement Text
pzcnpsmNodePoolId
  = lens _pzcnpsmNodePoolId
      (\ s a -> s{_pzcnpsmNodePoolId = a})

-- | Deprecated. The name of the cluster to update. This field has been
-- deprecated and replaced by the name field.
pzcnpsmClusterId :: Lens' ProjectsZonesClustersNodePoolsSetManagement Text
pzcnpsmClusterId
  = lens _pzcnpsmClusterId
      (\ s a -> s{_pzcnpsmClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzcnpsmProjectId :: Lens' ProjectsZonesClustersNodePoolsSetManagement Text
pzcnpsmProjectId
  = lens _pzcnpsmProjectId
      (\ s a -> s{_pzcnpsmProjectId = a})

-- | JSONP
pzcnpsmCallback :: Lens' ProjectsZonesClustersNodePoolsSetManagement (Maybe Text)
pzcnpsmCallback
  = lens _pzcnpsmCallback
      (\ s a -> s{_pzcnpsmCallback = a})

instance GoogleRequest
           ProjectsZonesClustersNodePoolsSetManagement
         where
        type Rs ProjectsZonesClustersNodePoolsSetManagement =
             Operation
        type Scopes
               ProjectsZonesClustersNodePoolsSetManagement
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsZonesClustersNodePoolsSetManagement'{..}
          = go _pzcnpsmProjectId _pzcnpsmZone _pzcnpsmClusterId
              _pzcnpsmNodePoolId
              _pzcnpsmXgafv
              _pzcnpsmUploadProtocol
              _pzcnpsmAccessToken
              _pzcnpsmUploadType
              _pzcnpsmCallback
              (Just AltJSON)
              _pzcnpsmPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsZonesClustersNodePoolsSetManagementResource)
                      mempty
