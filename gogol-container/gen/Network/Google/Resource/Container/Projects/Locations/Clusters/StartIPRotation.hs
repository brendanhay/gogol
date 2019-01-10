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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.StartIPRotation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start master IP rotation.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.startIpRotation@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.StartIPRotation
    (
    -- * REST Resource
      ProjectsLocationsClustersStartIPRotationResource

    -- * Creating a Request
    , projectsLocationsClustersStartIPRotation
    , ProjectsLocationsClustersStartIPRotation

    -- * Request Lenses
    , plcsirXgafv
    , plcsirUploadProtocol
    , plcsirAccessToken
    , plcsirUploadType
    , plcsirPayload
    , plcsirName
    , plcsirCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.startIpRotation@ method which the
-- 'ProjectsLocationsClustersStartIPRotation' request conforms to.
type ProjectsLocationsClustersStartIPRotationResource
     =
     "v1" :>
       CaptureMode "name" "startIpRotation" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] StartIPRotationRequest :>
                       Post '[JSON] Operation

-- | Start master IP rotation.
--
-- /See:/ 'projectsLocationsClustersStartIPRotation' smart constructor.
data ProjectsLocationsClustersStartIPRotation = ProjectsLocationsClustersStartIPRotation'
    { _plcsirXgafv          :: !(Maybe Xgafv)
    , _plcsirUploadProtocol :: !(Maybe Text)
    , _plcsirAccessToken    :: !(Maybe Text)
    , _plcsirUploadType     :: !(Maybe Text)
    , _plcsirPayload        :: !StartIPRotationRequest
    , _plcsirName           :: !Text
    , _plcsirCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsClustersStartIPRotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcsirXgafv'
--
-- * 'plcsirUploadProtocol'
--
-- * 'plcsirAccessToken'
--
-- * 'plcsirUploadType'
--
-- * 'plcsirPayload'
--
-- * 'plcsirName'
--
-- * 'plcsirCallback'
projectsLocationsClustersStartIPRotation
    :: StartIPRotationRequest -- ^ 'plcsirPayload'
    -> Text -- ^ 'plcsirName'
    -> ProjectsLocationsClustersStartIPRotation
projectsLocationsClustersStartIPRotation pPlcsirPayload_ pPlcsirName_ =
    ProjectsLocationsClustersStartIPRotation'
    { _plcsirXgafv = Nothing
    , _plcsirUploadProtocol = Nothing
    , _plcsirAccessToken = Nothing
    , _plcsirUploadType = Nothing
    , _plcsirPayload = pPlcsirPayload_
    , _plcsirName = pPlcsirName_
    , _plcsirCallback = Nothing
    }

-- | V1 error format.
plcsirXgafv :: Lens' ProjectsLocationsClustersStartIPRotation (Maybe Xgafv)
plcsirXgafv
  = lens _plcsirXgafv (\ s a -> s{_plcsirXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcsirUploadProtocol :: Lens' ProjectsLocationsClustersStartIPRotation (Maybe Text)
plcsirUploadProtocol
  = lens _plcsirUploadProtocol
      (\ s a -> s{_plcsirUploadProtocol = a})

-- | OAuth access token.
plcsirAccessToken :: Lens' ProjectsLocationsClustersStartIPRotation (Maybe Text)
plcsirAccessToken
  = lens _plcsirAccessToken
      (\ s a -> s{_plcsirAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcsirUploadType :: Lens' ProjectsLocationsClustersStartIPRotation (Maybe Text)
plcsirUploadType
  = lens _plcsirUploadType
      (\ s a -> s{_plcsirUploadType = a})

-- | Multipart request metadata.
plcsirPayload :: Lens' ProjectsLocationsClustersStartIPRotation StartIPRotationRequest
plcsirPayload
  = lens _plcsirPayload
      (\ s a -> s{_plcsirPayload = a})

-- | The name (project, location, cluster id) of the cluster to start IP
-- rotation. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
plcsirName :: Lens' ProjectsLocationsClustersStartIPRotation Text
plcsirName
  = lens _plcsirName (\ s a -> s{_plcsirName = a})

-- | JSONP
plcsirCallback :: Lens' ProjectsLocationsClustersStartIPRotation (Maybe Text)
plcsirCallback
  = lens _plcsirCallback
      (\ s a -> s{_plcsirCallback = a})

instance GoogleRequest
         ProjectsLocationsClustersStartIPRotation where
        type Rs ProjectsLocationsClustersStartIPRotation =
             Operation
        type Scopes ProjectsLocationsClustersStartIPRotation
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersStartIPRotation'{..}
          = go _plcsirName _plcsirXgafv _plcsirUploadProtocol
              _plcsirAccessToken
              _plcsirUploadType
              _plcsirCallback
              (Just AltJSON)
              _plcsirPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersStartIPRotationResource)
                      mempty
