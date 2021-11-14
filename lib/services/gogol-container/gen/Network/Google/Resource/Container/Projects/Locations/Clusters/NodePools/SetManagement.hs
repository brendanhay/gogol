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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetManagement
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the NodeManagement options for a node pool.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.setManagement@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.SetManagement
    (
    -- * REST Resource
      ProjectsLocationsClustersNodePoolsSetManagementResource

    -- * Creating a Request
    , projectsLocationsClustersNodePoolsSetManagement
    , ProjectsLocationsClustersNodePoolsSetManagement

    -- * Request Lenses
    , plcnpsmXgafv
    , plcnpsmUploadProtocol
    , plcnpsmAccessToken
    , plcnpsmUploadType
    , plcnpsmPayload
    , plcnpsmName
    , plcnpsmCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.nodePools.setManagement@ method which the
-- 'ProjectsLocationsClustersNodePoolsSetManagement' request conforms to.
type ProjectsLocationsClustersNodePoolsSetManagementResource
     =
     "v1" :>
       CaptureMode "name" "setManagement" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetNodePoolManagementRequest :>
                       Post '[JSON] Operation

-- | Sets the NodeManagement options for a node pool.
--
-- /See:/ 'projectsLocationsClustersNodePoolsSetManagement' smart constructor.
data ProjectsLocationsClustersNodePoolsSetManagement =
  ProjectsLocationsClustersNodePoolsSetManagement'
    { _plcnpsmXgafv :: !(Maybe Xgafv)
    , _plcnpsmUploadProtocol :: !(Maybe Text)
    , _plcnpsmAccessToken :: !(Maybe Text)
    , _plcnpsmUploadType :: !(Maybe Text)
    , _plcnpsmPayload :: !SetNodePoolManagementRequest
    , _plcnpsmName :: !Text
    , _plcnpsmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersNodePoolsSetManagement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcnpsmXgafv'
--
-- * 'plcnpsmUploadProtocol'
--
-- * 'plcnpsmAccessToken'
--
-- * 'plcnpsmUploadType'
--
-- * 'plcnpsmPayload'
--
-- * 'plcnpsmName'
--
-- * 'plcnpsmCallback'
projectsLocationsClustersNodePoolsSetManagement
    :: SetNodePoolManagementRequest -- ^ 'plcnpsmPayload'
    -> Text -- ^ 'plcnpsmName'
    -> ProjectsLocationsClustersNodePoolsSetManagement
projectsLocationsClustersNodePoolsSetManagement pPlcnpsmPayload_ pPlcnpsmName_ =
  ProjectsLocationsClustersNodePoolsSetManagement'
    { _plcnpsmXgafv = Nothing
    , _plcnpsmUploadProtocol = Nothing
    , _plcnpsmAccessToken = Nothing
    , _plcnpsmUploadType = Nothing
    , _plcnpsmPayload = pPlcnpsmPayload_
    , _plcnpsmName = pPlcnpsmName_
    , _plcnpsmCallback = Nothing
    }


-- | V1 error format.
plcnpsmXgafv :: Lens' ProjectsLocationsClustersNodePoolsSetManagement (Maybe Xgafv)
plcnpsmXgafv
  = lens _plcnpsmXgafv (\ s a -> s{_plcnpsmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcnpsmUploadProtocol :: Lens' ProjectsLocationsClustersNodePoolsSetManagement (Maybe Text)
plcnpsmUploadProtocol
  = lens _plcnpsmUploadProtocol
      (\ s a -> s{_plcnpsmUploadProtocol = a})

-- | OAuth access token.
plcnpsmAccessToken :: Lens' ProjectsLocationsClustersNodePoolsSetManagement (Maybe Text)
plcnpsmAccessToken
  = lens _plcnpsmAccessToken
      (\ s a -> s{_plcnpsmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcnpsmUploadType :: Lens' ProjectsLocationsClustersNodePoolsSetManagement (Maybe Text)
plcnpsmUploadType
  = lens _plcnpsmUploadType
      (\ s a -> s{_plcnpsmUploadType = a})

-- | Multipart request metadata.
plcnpsmPayload :: Lens' ProjectsLocationsClustersNodePoolsSetManagement SetNodePoolManagementRequest
plcnpsmPayload
  = lens _plcnpsmPayload
      (\ s a -> s{_plcnpsmPayload = a})

-- | The name (project, location, cluster, node pool id) of the node pool to
-- set management properties. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
plcnpsmName :: Lens' ProjectsLocationsClustersNodePoolsSetManagement Text
plcnpsmName
  = lens _plcnpsmName (\ s a -> s{_plcnpsmName = a})

-- | JSONP
plcnpsmCallback :: Lens' ProjectsLocationsClustersNodePoolsSetManagement (Maybe Text)
plcnpsmCallback
  = lens _plcnpsmCallback
      (\ s a -> s{_plcnpsmCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersNodePoolsSetManagement
         where
        type Rs
               ProjectsLocationsClustersNodePoolsSetManagement
             = Operation
        type Scopes
               ProjectsLocationsClustersNodePoolsSetManagement
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersNodePoolsSetManagement'{..}
          = go _plcnpsmName _plcnpsmXgafv
              _plcnpsmUploadProtocol
              _plcnpsmAccessToken
              _plcnpsmUploadType
              _plcnpsmCallback
              (Just AltJSON)
              _plcnpsmPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersNodePoolsSetManagementResource)
                      mempty
