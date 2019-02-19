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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.Nodes.Start
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.start@.
module Network.Google.Resource.TPU.Projects.Locations.Nodes.Start
    (
    -- * REST Resource
      ProjectsLocationsNodesStartResource

    -- * Creating a Request
    , projectsLocationsNodesStart
    , ProjectsLocationsNodesStart

    -- * Request Lenses
    , plnsXgafv
    , plnsUploadProtocol
    , plnsAccessToken
    , plnsUploadType
    , plnsPayload
    , plnsName
    , plnsCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.start@ method which the
-- 'ProjectsLocationsNodesStart' request conforms to.
type ProjectsLocationsNodesStartResource =
     "v1" :>
       CaptureMode "name" "start" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] StartNodeRequest :>
                       Post '[JSON] Operation

-- | Starts a node.
--
-- /See:/ 'projectsLocationsNodesStart' smart constructor.
data ProjectsLocationsNodesStart =
  ProjectsLocationsNodesStart'
    { _plnsXgafv          :: !(Maybe Xgafv)
    , _plnsUploadProtocol :: !(Maybe Text)
    , _plnsAccessToken    :: !(Maybe Text)
    , _plnsUploadType     :: !(Maybe Text)
    , _plnsPayload        :: !StartNodeRequest
    , _plnsName           :: !Text
    , _plnsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsNodesStart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plnsXgafv'
--
-- * 'plnsUploadProtocol'
--
-- * 'plnsAccessToken'
--
-- * 'plnsUploadType'
--
-- * 'plnsPayload'
--
-- * 'plnsName'
--
-- * 'plnsCallback'
projectsLocationsNodesStart
    :: StartNodeRequest -- ^ 'plnsPayload'
    -> Text -- ^ 'plnsName'
    -> ProjectsLocationsNodesStart
projectsLocationsNodesStart pPlnsPayload_ pPlnsName_ =
  ProjectsLocationsNodesStart'
    { _plnsXgafv = Nothing
    , _plnsUploadProtocol = Nothing
    , _plnsAccessToken = Nothing
    , _plnsUploadType = Nothing
    , _plnsPayload = pPlnsPayload_
    , _plnsName = pPlnsName_
    , _plnsCallback = Nothing
    }

-- | V1 error format.
plnsXgafv :: Lens' ProjectsLocationsNodesStart (Maybe Xgafv)
plnsXgafv
  = lens _plnsXgafv (\ s a -> s{_plnsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plnsUploadProtocol :: Lens' ProjectsLocationsNodesStart (Maybe Text)
plnsUploadProtocol
  = lens _plnsUploadProtocol
      (\ s a -> s{_plnsUploadProtocol = a})

-- | OAuth access token.
plnsAccessToken :: Lens' ProjectsLocationsNodesStart (Maybe Text)
plnsAccessToken
  = lens _plnsAccessToken
      (\ s a -> s{_plnsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plnsUploadType :: Lens' ProjectsLocationsNodesStart (Maybe Text)
plnsUploadType
  = lens _plnsUploadType
      (\ s a -> s{_plnsUploadType = a})

-- | Multipart request metadata.
plnsPayload :: Lens' ProjectsLocationsNodesStart StartNodeRequest
plnsPayload
  = lens _plnsPayload (\ s a -> s{_plnsPayload = a})

-- | The resource name.
plnsName :: Lens' ProjectsLocationsNodesStart Text
plnsName = lens _plnsName (\ s a -> s{_plnsName = a})

-- | JSONP
plnsCallback :: Lens' ProjectsLocationsNodesStart (Maybe Text)
plnsCallback
  = lens _plnsCallback (\ s a -> s{_plnsCallback = a})

instance GoogleRequest ProjectsLocationsNodesStart
         where
        type Rs ProjectsLocationsNodesStart = Operation
        type Scopes ProjectsLocationsNodesStart =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsNodesStart'{..}
          = go _plnsName _plnsXgafv _plnsUploadProtocol
              _plnsAccessToken
              _plnsUploadType
              _plnsCallback
              (Just AltJSON)
              _plnsPayload
              tPUService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsNodesStartResource)
                      mempty
