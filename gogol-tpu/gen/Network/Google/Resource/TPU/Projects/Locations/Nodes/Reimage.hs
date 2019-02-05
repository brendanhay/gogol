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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.Nodes.Reimage
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reimages a node\'s OS.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.reimage@.
module Network.Google.Resource.TPU.Projects.Locations.Nodes.Reimage
    (
    -- * REST Resource
      ProjectsLocationsNodesReimageResource

    -- * Creating a Request
    , projectsLocationsNodesReimage
    , ProjectsLocationsNodesReimage

    -- * Request Lenses
    , plnrXgafv
    , plnrUploadProtocol
    , plnrAccessToken
    , plnrUploadType
    , plnrPayload
    , plnrName
    , plnrCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.reimage@ method which the
-- 'ProjectsLocationsNodesReimage' request conforms to.
type ProjectsLocationsNodesReimageResource =
     "v1" :>
       CaptureMode "name" "reimage" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ReimageNodeRequest :>
                       Post '[JSON] Operation

-- | Reimages a node\'s OS.
--
-- /See:/ 'projectsLocationsNodesReimage' smart constructor.
data ProjectsLocationsNodesReimage = ProjectsLocationsNodesReimage'
    { _plnrXgafv          :: !(Maybe Xgafv)
    , _plnrUploadProtocol :: !(Maybe Text)
    , _plnrAccessToken    :: !(Maybe Text)
    , _plnrUploadType     :: !(Maybe Text)
    , _plnrPayload        :: !ReimageNodeRequest
    , _plnrName           :: !Text
    , _plnrCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsNodesReimage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plnrXgafv'
--
-- * 'plnrUploadProtocol'
--
-- * 'plnrAccessToken'
--
-- * 'plnrUploadType'
--
-- * 'plnrPayload'
--
-- * 'plnrName'
--
-- * 'plnrCallback'
projectsLocationsNodesReimage
    :: ReimageNodeRequest -- ^ 'plnrPayload'
    -> Text -- ^ 'plnrName'
    -> ProjectsLocationsNodesReimage
projectsLocationsNodesReimage pPlnrPayload_ pPlnrName_ =
    ProjectsLocationsNodesReimage'
    { _plnrXgafv = Nothing
    , _plnrUploadProtocol = Nothing
    , _plnrAccessToken = Nothing
    , _plnrUploadType = Nothing
    , _plnrPayload = pPlnrPayload_
    , _plnrName = pPlnrName_
    , _plnrCallback = Nothing
    }

-- | V1 error format.
plnrXgafv :: Lens' ProjectsLocationsNodesReimage (Maybe Xgafv)
plnrXgafv
  = lens _plnrXgafv (\ s a -> s{_plnrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plnrUploadProtocol :: Lens' ProjectsLocationsNodesReimage (Maybe Text)
plnrUploadProtocol
  = lens _plnrUploadProtocol
      (\ s a -> s{_plnrUploadProtocol = a})

-- | OAuth access token.
plnrAccessToken :: Lens' ProjectsLocationsNodesReimage (Maybe Text)
plnrAccessToken
  = lens _plnrAccessToken
      (\ s a -> s{_plnrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plnrUploadType :: Lens' ProjectsLocationsNodesReimage (Maybe Text)
plnrUploadType
  = lens _plnrUploadType
      (\ s a -> s{_plnrUploadType = a})

-- | Multipart request metadata.
plnrPayload :: Lens' ProjectsLocationsNodesReimage ReimageNodeRequest
plnrPayload
  = lens _plnrPayload (\ s a -> s{_plnrPayload = a})

-- | The resource name.
plnrName :: Lens' ProjectsLocationsNodesReimage Text
plnrName = lens _plnrName (\ s a -> s{_plnrName = a})

-- | JSONP
plnrCallback :: Lens' ProjectsLocationsNodesReimage (Maybe Text)
plnrCallback
  = lens _plnrCallback (\ s a -> s{_plnrCallback = a})

instance GoogleRequest ProjectsLocationsNodesReimage
         where
        type Rs ProjectsLocationsNodesReimage = Operation
        type Scopes ProjectsLocationsNodesReimage =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsNodesReimage'{..}
          = go _plnrName _plnrXgafv _plnrUploadProtocol
              _plnrAccessToken
              _plnrUploadType
              _plnrCallback
              (Just AltJSON)
              _plnrPayload
              tPUService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsNodesReimageResource)
                      mempty
