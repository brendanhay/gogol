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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the version and\/or image type for the specified node pool.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.update@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Update
    (
    -- * REST Resource
      ProjectsLocationsClustersNodePoolsUpdateResource

    -- * Creating a Request
    , projectsLocationsClustersNodePoolsUpdate
    , ProjectsLocationsClustersNodePoolsUpdate

    -- * Request Lenses
    , plcnpuXgafv
    , plcnpuUploadProtocol
    , plcnpuAccessToken
    , plcnpuUploadType
    , plcnpuPayload
    , plcnpuName
    , plcnpuCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.nodePools.update@ method which the
-- 'ProjectsLocationsClustersNodePoolsUpdate' request conforms to.
type ProjectsLocationsClustersNodePoolsUpdateResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateNodePoolRequest :>
                       Put '[JSON] Operation

-- | Updates the version and\/or image type for the specified node pool.
--
-- /See:/ 'projectsLocationsClustersNodePoolsUpdate' smart constructor.
data ProjectsLocationsClustersNodePoolsUpdate =
  ProjectsLocationsClustersNodePoolsUpdate'
    { _plcnpuXgafv :: !(Maybe Xgafv)
    , _plcnpuUploadProtocol :: !(Maybe Text)
    , _plcnpuAccessToken :: !(Maybe Text)
    , _plcnpuUploadType :: !(Maybe Text)
    , _plcnpuPayload :: !UpdateNodePoolRequest
    , _plcnpuName :: !Text
    , _plcnpuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersNodePoolsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcnpuXgafv'
--
-- * 'plcnpuUploadProtocol'
--
-- * 'plcnpuAccessToken'
--
-- * 'plcnpuUploadType'
--
-- * 'plcnpuPayload'
--
-- * 'plcnpuName'
--
-- * 'plcnpuCallback'
projectsLocationsClustersNodePoolsUpdate
    :: UpdateNodePoolRequest -- ^ 'plcnpuPayload'
    -> Text -- ^ 'plcnpuName'
    -> ProjectsLocationsClustersNodePoolsUpdate
projectsLocationsClustersNodePoolsUpdate pPlcnpuPayload_ pPlcnpuName_ =
  ProjectsLocationsClustersNodePoolsUpdate'
    { _plcnpuXgafv = Nothing
    , _plcnpuUploadProtocol = Nothing
    , _plcnpuAccessToken = Nothing
    , _plcnpuUploadType = Nothing
    , _plcnpuPayload = pPlcnpuPayload_
    , _plcnpuName = pPlcnpuName_
    , _plcnpuCallback = Nothing
    }


-- | V1 error format.
plcnpuXgafv :: Lens' ProjectsLocationsClustersNodePoolsUpdate (Maybe Xgafv)
plcnpuXgafv
  = lens _plcnpuXgafv (\ s a -> s{_plcnpuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcnpuUploadProtocol :: Lens' ProjectsLocationsClustersNodePoolsUpdate (Maybe Text)
plcnpuUploadProtocol
  = lens _plcnpuUploadProtocol
      (\ s a -> s{_plcnpuUploadProtocol = a})

-- | OAuth access token.
plcnpuAccessToken :: Lens' ProjectsLocationsClustersNodePoolsUpdate (Maybe Text)
plcnpuAccessToken
  = lens _plcnpuAccessToken
      (\ s a -> s{_plcnpuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcnpuUploadType :: Lens' ProjectsLocationsClustersNodePoolsUpdate (Maybe Text)
plcnpuUploadType
  = lens _plcnpuUploadType
      (\ s a -> s{_plcnpuUploadType = a})

-- | Multipart request metadata.
plcnpuPayload :: Lens' ProjectsLocationsClustersNodePoolsUpdate UpdateNodePoolRequest
plcnpuPayload
  = lens _plcnpuPayload
      (\ s a -> s{_plcnpuPayload = a})

-- | The name (project, location, cluster, node pool) of the node pool to
-- update. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
plcnpuName :: Lens' ProjectsLocationsClustersNodePoolsUpdate Text
plcnpuName
  = lens _plcnpuName (\ s a -> s{_plcnpuName = a})

-- | JSONP
plcnpuCallback :: Lens' ProjectsLocationsClustersNodePoolsUpdate (Maybe Text)
plcnpuCallback
  = lens _plcnpuCallback
      (\ s a -> s{_plcnpuCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersNodePoolsUpdate
         where
        type Rs ProjectsLocationsClustersNodePoolsUpdate =
             Operation
        type Scopes ProjectsLocationsClustersNodePoolsUpdate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersNodePoolsUpdate'{..}
          = go _plcnpuName _plcnpuXgafv _plcnpuUploadProtocol
              _plcnpuAccessToken
              _plcnpuUploadType
              _plcnpuCallback
              (Just AltJSON)
              _plcnpuPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersNodePoolsUpdateResource)
                      mempty
