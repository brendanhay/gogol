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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetSize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the size for a specific node pool. The new size will be used for
-- all replicas, including future replicas created by modifying
-- NodePool.locations.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.setSize@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetSize
    (
    -- * REST Resource
      ProjectsLocationsClustersNodePoolsSetSizeResource

    -- * Creating a Request
    , projectsLocationsClustersNodePoolsSetSize
    , ProjectsLocationsClustersNodePoolsSetSize

    -- * Request Lenses
    , plcnpssXgafv
    , plcnpssUploadProtocol
    , plcnpssAccessToken
    , plcnpssUploadType
    , plcnpssPayload
    , plcnpssName
    , plcnpssCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.nodePools.setSize@ method which the
-- 'ProjectsLocationsClustersNodePoolsSetSize' request conforms to.
type ProjectsLocationsClustersNodePoolsSetSizeResource
     =
     "v1" :>
       CaptureMode "name" "setSize" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetNodePoolSizeRequest :>
                       Post '[JSON] Operation

-- | Sets the size for a specific node pool. The new size will be used for
-- all replicas, including future replicas created by modifying
-- NodePool.locations.
--
-- /See:/ 'projectsLocationsClustersNodePoolsSetSize' smart constructor.
data ProjectsLocationsClustersNodePoolsSetSize =
  ProjectsLocationsClustersNodePoolsSetSize'
    { _plcnpssXgafv :: !(Maybe Xgafv)
    , _plcnpssUploadProtocol :: !(Maybe Text)
    , _plcnpssAccessToken :: !(Maybe Text)
    , _plcnpssUploadType :: !(Maybe Text)
    , _plcnpssPayload :: !SetNodePoolSizeRequest
    , _plcnpssName :: !Text
    , _plcnpssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersNodePoolsSetSize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcnpssXgafv'
--
-- * 'plcnpssUploadProtocol'
--
-- * 'plcnpssAccessToken'
--
-- * 'plcnpssUploadType'
--
-- * 'plcnpssPayload'
--
-- * 'plcnpssName'
--
-- * 'plcnpssCallback'
projectsLocationsClustersNodePoolsSetSize
    :: SetNodePoolSizeRequest -- ^ 'plcnpssPayload'
    -> Text -- ^ 'plcnpssName'
    -> ProjectsLocationsClustersNodePoolsSetSize
projectsLocationsClustersNodePoolsSetSize pPlcnpssPayload_ pPlcnpssName_ =
  ProjectsLocationsClustersNodePoolsSetSize'
    { _plcnpssXgafv = Nothing
    , _plcnpssUploadProtocol = Nothing
    , _plcnpssAccessToken = Nothing
    , _plcnpssUploadType = Nothing
    , _plcnpssPayload = pPlcnpssPayload_
    , _plcnpssName = pPlcnpssName_
    , _plcnpssCallback = Nothing
    }


-- | V1 error format.
plcnpssXgafv :: Lens' ProjectsLocationsClustersNodePoolsSetSize (Maybe Xgafv)
plcnpssXgafv
  = lens _plcnpssXgafv (\ s a -> s{_plcnpssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcnpssUploadProtocol :: Lens' ProjectsLocationsClustersNodePoolsSetSize (Maybe Text)
plcnpssUploadProtocol
  = lens _plcnpssUploadProtocol
      (\ s a -> s{_plcnpssUploadProtocol = a})

-- | OAuth access token.
plcnpssAccessToken :: Lens' ProjectsLocationsClustersNodePoolsSetSize (Maybe Text)
plcnpssAccessToken
  = lens _plcnpssAccessToken
      (\ s a -> s{_plcnpssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcnpssUploadType :: Lens' ProjectsLocationsClustersNodePoolsSetSize (Maybe Text)
plcnpssUploadType
  = lens _plcnpssUploadType
      (\ s a -> s{_plcnpssUploadType = a})

-- | Multipart request metadata.
plcnpssPayload :: Lens' ProjectsLocationsClustersNodePoolsSetSize SetNodePoolSizeRequest
plcnpssPayload
  = lens _plcnpssPayload
      (\ s a -> s{_plcnpssPayload = a})

-- | The name (project, location, cluster, node pool id) of the node pool to
-- set size. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
plcnpssName :: Lens' ProjectsLocationsClustersNodePoolsSetSize Text
plcnpssName
  = lens _plcnpssName (\ s a -> s{_plcnpssName = a})

-- | JSONP
plcnpssCallback :: Lens' ProjectsLocationsClustersNodePoolsSetSize (Maybe Text)
plcnpssCallback
  = lens _plcnpssCallback
      (\ s a -> s{_plcnpssCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersNodePoolsSetSize
         where
        type Rs ProjectsLocationsClustersNodePoolsSetSize =
             Operation
        type Scopes ProjectsLocationsClustersNodePoolsSetSize
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersNodePoolsSetSize'{..}
          = go _plcnpssName _plcnpssXgafv
              _plcnpssUploadProtocol
              _plcnpssAccessToken
              _plcnpssUploadType
              _plcnpssCallback
              (Just AltJSON)
              _plcnpssPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersNodePoolsSetSizeResource)
                      mempty
