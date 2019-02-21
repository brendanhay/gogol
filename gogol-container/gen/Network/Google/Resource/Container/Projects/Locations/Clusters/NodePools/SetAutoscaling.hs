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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetAutoscaling
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the autoscaling settings for a specific node pool.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.setAutoscaling@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetAutoscaling
    (
    -- * REST Resource
      ProjectsLocationsClustersNodePoolsSetAutoscalingResource

    -- * Creating a Request
    , projectsLocationsClustersNodePoolsSetAutoscaling
    , ProjectsLocationsClustersNodePoolsSetAutoscaling

    -- * Request Lenses
    , plcnpsaXgafv
    , plcnpsaUploadProtocol
    , plcnpsaAccessToken
    , plcnpsaUploadType
    , plcnpsaPayload
    , plcnpsaName
    , plcnpsaCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.nodePools.setAutoscaling@ method which the
-- 'ProjectsLocationsClustersNodePoolsSetAutoscaling' request conforms to.
type ProjectsLocationsClustersNodePoolsSetAutoscalingResource
     =
     "v1" :>
       CaptureMode "name" "setAutoscaling" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetNodePoolAutoscalingRequest :>
                       Post '[JSON] Operation

-- | Sets the autoscaling settings for a specific node pool.
--
-- /See:/ 'projectsLocationsClustersNodePoolsSetAutoscaling' smart constructor.
data ProjectsLocationsClustersNodePoolsSetAutoscaling =
  ProjectsLocationsClustersNodePoolsSetAutoscaling'
    { _plcnpsaXgafv          :: !(Maybe Xgafv)
    , _plcnpsaUploadProtocol :: !(Maybe Text)
    , _plcnpsaAccessToken    :: !(Maybe Text)
    , _plcnpsaUploadType     :: !(Maybe Text)
    , _plcnpsaPayload        :: !SetNodePoolAutoscalingRequest
    , _plcnpsaName           :: !Text
    , _plcnpsaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersNodePoolsSetAutoscaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcnpsaXgafv'
--
-- * 'plcnpsaUploadProtocol'
--
-- * 'plcnpsaAccessToken'
--
-- * 'plcnpsaUploadType'
--
-- * 'plcnpsaPayload'
--
-- * 'plcnpsaName'
--
-- * 'plcnpsaCallback'
projectsLocationsClustersNodePoolsSetAutoscaling
    :: SetNodePoolAutoscalingRequest -- ^ 'plcnpsaPayload'
    -> Text -- ^ 'plcnpsaName'
    -> ProjectsLocationsClustersNodePoolsSetAutoscaling
projectsLocationsClustersNodePoolsSetAutoscaling pPlcnpsaPayload_ pPlcnpsaName_ =
  ProjectsLocationsClustersNodePoolsSetAutoscaling'
    { _plcnpsaXgafv = Nothing
    , _plcnpsaUploadProtocol = Nothing
    , _plcnpsaAccessToken = Nothing
    , _plcnpsaUploadType = Nothing
    , _plcnpsaPayload = pPlcnpsaPayload_
    , _plcnpsaName = pPlcnpsaName_
    , _plcnpsaCallback = Nothing
    }


-- | V1 error format.
plcnpsaXgafv :: Lens' ProjectsLocationsClustersNodePoolsSetAutoscaling (Maybe Xgafv)
plcnpsaXgafv
  = lens _plcnpsaXgafv (\ s a -> s{_plcnpsaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcnpsaUploadProtocol :: Lens' ProjectsLocationsClustersNodePoolsSetAutoscaling (Maybe Text)
plcnpsaUploadProtocol
  = lens _plcnpsaUploadProtocol
      (\ s a -> s{_plcnpsaUploadProtocol = a})

-- | OAuth access token.
plcnpsaAccessToken :: Lens' ProjectsLocationsClustersNodePoolsSetAutoscaling (Maybe Text)
plcnpsaAccessToken
  = lens _plcnpsaAccessToken
      (\ s a -> s{_plcnpsaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcnpsaUploadType :: Lens' ProjectsLocationsClustersNodePoolsSetAutoscaling (Maybe Text)
plcnpsaUploadType
  = lens _plcnpsaUploadType
      (\ s a -> s{_plcnpsaUploadType = a})

-- | Multipart request metadata.
plcnpsaPayload :: Lens' ProjectsLocationsClustersNodePoolsSetAutoscaling SetNodePoolAutoscalingRequest
plcnpsaPayload
  = lens _plcnpsaPayload
      (\ s a -> s{_plcnpsaPayload = a})

-- | The name (project, location, cluster, node pool) of the node pool to set
-- autoscaler settings. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\'.
plcnpsaName :: Lens' ProjectsLocationsClustersNodePoolsSetAutoscaling Text
plcnpsaName
  = lens _plcnpsaName (\ s a -> s{_plcnpsaName = a})

-- | JSONP
plcnpsaCallback :: Lens' ProjectsLocationsClustersNodePoolsSetAutoscaling (Maybe Text)
plcnpsaCallback
  = lens _plcnpsaCallback
      (\ s a -> s{_plcnpsaCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersNodePoolsSetAutoscaling
         where
        type Rs
               ProjectsLocationsClustersNodePoolsSetAutoscaling
             = Operation
        type Scopes
               ProjectsLocationsClustersNodePoolsSetAutoscaling
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersNodePoolsSetAutoscaling'{..}
          = go _plcnpsaName _plcnpsaXgafv
              _plcnpsaUploadProtocol
              _plcnpsaAccessToken
              _plcnpsaUploadType
              _plcnpsaCallback
              (Just AltJSON)
              _plcnpsaPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersNodePoolsSetAutoscalingResource)
                      mempty
