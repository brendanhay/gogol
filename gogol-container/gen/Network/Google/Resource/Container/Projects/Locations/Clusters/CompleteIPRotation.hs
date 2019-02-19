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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.CompleteIPRotation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes master IP rotation.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.completeIpRotation@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.CompleteIPRotation
    (
    -- * REST Resource
      ProjectsLocationsClustersCompleteIPRotationResource

    -- * Creating a Request
    , projectsLocationsClustersCompleteIPRotation
    , ProjectsLocationsClustersCompleteIPRotation

    -- * Request Lenses
    , plccirXgafv
    , plccirUploadProtocol
    , plccirAccessToken
    , plccirUploadType
    , plccirPayload
    , plccirName
    , plccirCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.completeIpRotation@ method which the
-- 'ProjectsLocationsClustersCompleteIPRotation' request conforms to.
type ProjectsLocationsClustersCompleteIPRotationResource
     =
     "v1" :>
       CaptureMode "name" "completeIpRotation" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CompleteIPRotationRequest :>
                       Post '[JSON] Operation

-- | Completes master IP rotation.
--
-- /See:/ 'projectsLocationsClustersCompleteIPRotation' smart constructor.
data ProjectsLocationsClustersCompleteIPRotation =
  ProjectsLocationsClustersCompleteIPRotation'
    { _plccirXgafv          :: !(Maybe Xgafv)
    , _plccirUploadProtocol :: !(Maybe Text)
    , _plccirAccessToken    :: !(Maybe Text)
    , _plccirUploadType     :: !(Maybe Text)
    , _plccirPayload        :: !CompleteIPRotationRequest
    , _plccirName           :: !Text
    , _plccirCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsClustersCompleteIPRotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plccirXgafv'
--
-- * 'plccirUploadProtocol'
--
-- * 'plccirAccessToken'
--
-- * 'plccirUploadType'
--
-- * 'plccirPayload'
--
-- * 'plccirName'
--
-- * 'plccirCallback'
projectsLocationsClustersCompleteIPRotation
    :: CompleteIPRotationRequest -- ^ 'plccirPayload'
    -> Text -- ^ 'plccirName'
    -> ProjectsLocationsClustersCompleteIPRotation
projectsLocationsClustersCompleteIPRotation pPlccirPayload_ pPlccirName_ =
  ProjectsLocationsClustersCompleteIPRotation'
    { _plccirXgafv = Nothing
    , _plccirUploadProtocol = Nothing
    , _plccirAccessToken = Nothing
    , _plccirUploadType = Nothing
    , _plccirPayload = pPlccirPayload_
    , _plccirName = pPlccirName_
    , _plccirCallback = Nothing
    }

-- | V1 error format.
plccirXgafv :: Lens' ProjectsLocationsClustersCompleteIPRotation (Maybe Xgafv)
plccirXgafv
  = lens _plccirXgafv (\ s a -> s{_plccirXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plccirUploadProtocol :: Lens' ProjectsLocationsClustersCompleteIPRotation (Maybe Text)
plccirUploadProtocol
  = lens _plccirUploadProtocol
      (\ s a -> s{_plccirUploadProtocol = a})

-- | OAuth access token.
plccirAccessToken :: Lens' ProjectsLocationsClustersCompleteIPRotation (Maybe Text)
plccirAccessToken
  = lens _plccirAccessToken
      (\ s a -> s{_plccirAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plccirUploadType :: Lens' ProjectsLocationsClustersCompleteIPRotation (Maybe Text)
plccirUploadType
  = lens _plccirUploadType
      (\ s a -> s{_plccirUploadType = a})

-- | Multipart request metadata.
plccirPayload :: Lens' ProjectsLocationsClustersCompleteIPRotation CompleteIPRotationRequest
plccirPayload
  = lens _plccirPayload
      (\ s a -> s{_plccirPayload = a})

-- | The name (project, location, cluster id) of the cluster to complete IP
-- rotation. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
plccirName :: Lens' ProjectsLocationsClustersCompleteIPRotation Text
plccirName
  = lens _plccirName (\ s a -> s{_plccirName = a})

-- | JSONP
plccirCallback :: Lens' ProjectsLocationsClustersCompleteIPRotation (Maybe Text)
plccirCallback
  = lens _plccirCallback
      (\ s a -> s{_plccirCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersCompleteIPRotation
         where
        type Rs ProjectsLocationsClustersCompleteIPRotation =
             Operation
        type Scopes
               ProjectsLocationsClustersCompleteIPRotation
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersCompleteIPRotation'{..}
          = go _plccirName _plccirXgafv _plccirUploadProtocol
              _plccirAccessToken
              _plccirUploadType
              _plccirCallback
              (Just AltJSON)
              _plccirPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersCompleteIPRotationResource)
                      mempty
