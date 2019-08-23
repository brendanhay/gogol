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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Autoscaling
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the autoscaling settings for the specified node pool.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.autoscaling@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Autoscaling
    (
    -- * REST Resource
      ProjectsZonesClustersNodePoolsAutoscalingResource

    -- * Creating a Request
    , projectsZonesClustersNodePoolsAutoscaling
    , ProjectsZonesClustersNodePoolsAutoscaling

    -- * Request Lenses
    , pzcnpaXgafv
    , pzcnpaUploadProtocol
    , pzcnpaAccessToken
    , pzcnpaUploadType
    , pzcnpaZone
    , pzcnpaPayload
    , pzcnpaNodePoolId
    , pzcnpaClusterId
    , pzcnpaProjectId
    , pzcnpaCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.nodePools.autoscaling@ method which the
-- 'ProjectsZonesClustersNodePoolsAutoscaling' request conforms to.
type ProjectsZonesClustersNodePoolsAutoscalingResource
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
                       "autoscaling" :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON]
                                       SetNodePoolAutoscalingRequest
                                       :> Post '[JSON] Operation

-- | Sets the autoscaling settings for the specified node pool.
--
-- /See:/ 'projectsZonesClustersNodePoolsAutoscaling' smart constructor.
data ProjectsZonesClustersNodePoolsAutoscaling =
  ProjectsZonesClustersNodePoolsAutoscaling'
    { _pzcnpaXgafv          :: !(Maybe Xgafv)
    , _pzcnpaUploadProtocol :: !(Maybe Text)
    , _pzcnpaAccessToken    :: !(Maybe Text)
    , _pzcnpaUploadType     :: !(Maybe Text)
    , _pzcnpaZone           :: !Text
    , _pzcnpaPayload        :: !SetNodePoolAutoscalingRequest
    , _pzcnpaNodePoolId     :: !Text
    , _pzcnpaClusterId      :: !Text
    , _pzcnpaProjectId      :: !Text
    , _pzcnpaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersNodePoolsAutoscaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcnpaXgafv'
--
-- * 'pzcnpaUploadProtocol'
--
-- * 'pzcnpaAccessToken'
--
-- * 'pzcnpaUploadType'
--
-- * 'pzcnpaZone'
--
-- * 'pzcnpaPayload'
--
-- * 'pzcnpaNodePoolId'
--
-- * 'pzcnpaClusterId'
--
-- * 'pzcnpaProjectId'
--
-- * 'pzcnpaCallback'
projectsZonesClustersNodePoolsAutoscaling
    :: Text -- ^ 'pzcnpaZone'
    -> SetNodePoolAutoscalingRequest -- ^ 'pzcnpaPayload'
    -> Text -- ^ 'pzcnpaNodePoolId'
    -> Text -- ^ 'pzcnpaClusterId'
    -> Text -- ^ 'pzcnpaProjectId'
    -> ProjectsZonesClustersNodePoolsAutoscaling
projectsZonesClustersNodePoolsAutoscaling pPzcnpaZone_ pPzcnpaPayload_ pPzcnpaNodePoolId_ pPzcnpaClusterId_ pPzcnpaProjectId_ =
  ProjectsZonesClustersNodePoolsAutoscaling'
    { _pzcnpaXgafv = Nothing
    , _pzcnpaUploadProtocol = Nothing
    , _pzcnpaAccessToken = Nothing
    , _pzcnpaUploadType = Nothing
    , _pzcnpaZone = pPzcnpaZone_
    , _pzcnpaPayload = pPzcnpaPayload_
    , _pzcnpaNodePoolId = pPzcnpaNodePoolId_
    , _pzcnpaClusterId = pPzcnpaClusterId_
    , _pzcnpaProjectId = pPzcnpaProjectId_
    , _pzcnpaCallback = Nothing
    }


-- | V1 error format.
pzcnpaXgafv :: Lens' ProjectsZonesClustersNodePoolsAutoscaling (Maybe Xgafv)
pzcnpaXgafv
  = lens _pzcnpaXgafv (\ s a -> s{_pzcnpaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcnpaUploadProtocol :: Lens' ProjectsZonesClustersNodePoolsAutoscaling (Maybe Text)
pzcnpaUploadProtocol
  = lens _pzcnpaUploadProtocol
      (\ s a -> s{_pzcnpaUploadProtocol = a})

-- | OAuth access token.
pzcnpaAccessToken :: Lens' ProjectsZonesClustersNodePoolsAutoscaling (Maybe Text)
pzcnpaAccessToken
  = lens _pzcnpaAccessToken
      (\ s a -> s{_pzcnpaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcnpaUploadType :: Lens' ProjectsZonesClustersNodePoolsAutoscaling (Maybe Text)
pzcnpaUploadType
  = lens _pzcnpaUploadType
      (\ s a -> s{_pzcnpaUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzcnpaZone :: Lens' ProjectsZonesClustersNodePoolsAutoscaling Text
pzcnpaZone
  = lens _pzcnpaZone (\ s a -> s{_pzcnpaZone = a})

-- | Multipart request metadata.
pzcnpaPayload :: Lens' ProjectsZonesClustersNodePoolsAutoscaling SetNodePoolAutoscalingRequest
pzcnpaPayload
  = lens _pzcnpaPayload
      (\ s a -> s{_pzcnpaPayload = a})

-- | Deprecated. The name of the node pool to upgrade. This field has been
-- deprecated and replaced by the name field.
pzcnpaNodePoolId :: Lens' ProjectsZonesClustersNodePoolsAutoscaling Text
pzcnpaNodePoolId
  = lens _pzcnpaNodePoolId
      (\ s a -> s{_pzcnpaNodePoolId = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
pzcnpaClusterId :: Lens' ProjectsZonesClustersNodePoolsAutoscaling Text
pzcnpaClusterId
  = lens _pzcnpaClusterId
      (\ s a -> s{_pzcnpaClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzcnpaProjectId :: Lens' ProjectsZonesClustersNodePoolsAutoscaling Text
pzcnpaProjectId
  = lens _pzcnpaProjectId
      (\ s a -> s{_pzcnpaProjectId = a})

-- | JSONP
pzcnpaCallback :: Lens' ProjectsZonesClustersNodePoolsAutoscaling (Maybe Text)
pzcnpaCallback
  = lens _pzcnpaCallback
      (\ s a -> s{_pzcnpaCallback = a})

instance GoogleRequest
           ProjectsZonesClustersNodePoolsAutoscaling
         where
        type Rs ProjectsZonesClustersNodePoolsAutoscaling =
             Operation
        type Scopes ProjectsZonesClustersNodePoolsAutoscaling
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsZonesClustersNodePoolsAutoscaling'{..}
          = go _pzcnpaProjectId _pzcnpaZone _pzcnpaClusterId
              _pzcnpaNodePoolId
              _pzcnpaXgafv
              _pzcnpaUploadProtocol
              _pzcnpaAccessToken
              _pzcnpaUploadType
              _pzcnpaCallback
              (Just AltJSON)
              _pzcnpaPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsZonesClustersNodePoolsAutoscalingResource)
                      mempty
