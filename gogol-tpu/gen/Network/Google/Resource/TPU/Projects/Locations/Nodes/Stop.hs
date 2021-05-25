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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.Nodes.Stop
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.stop@.
module Network.Google.Resource.TPU.Projects.Locations.Nodes.Stop
    (
    -- * REST Resource
      ProjectsLocationsNodesStopResource

    -- * Creating a Request
    , projectsLocationsNodesStop
    , ProjectsLocationsNodesStop

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pName
    , pCallback
    ) where

import Network.Google.Prelude
import Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.stop@ method which the
-- 'ProjectsLocationsNodesStop' request conforms to.
type ProjectsLocationsNodesStopResource =
     "v1" :>
       CaptureMode "name" "stop" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] StopNodeRequest :>
                       Post '[JSON] Operation

-- | Stops a node.
--
-- /See:/ 'projectsLocationsNodesStop' smart constructor.
data ProjectsLocationsNodesStop =
  ProjectsLocationsNodesStop'
    { _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pPayload :: !StopNodeRequest
    , _pName :: !Text
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsNodesStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pName'
--
-- * 'pCallback'
projectsLocationsNodesStop
    :: StopNodeRequest -- ^ 'pPayload'
    -> Text -- ^ 'pName'
    -> ProjectsLocationsNodesStop
projectsLocationsNodesStop pPPayload_ pPName_ =
  ProjectsLocationsNodesStop'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pName = pPName_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsLocationsNodesStop (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLocationsNodesStop (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLocationsNodesStop (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLocationsNodesStop (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsLocationsNodesStop StopNodeRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | The resource name.
pName :: Lens' ProjectsLocationsNodesStop Text
pName = lens _pName (\ s a -> s{_pName = a})

-- | JSONP
pCallback :: Lens' ProjectsLocationsNodesStop (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsLocationsNodesStop
         where
        type Rs ProjectsLocationsNodesStop = Operation
        type Scopes ProjectsLocationsNodesStop =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsNodesStop'{..}
          = go _pName _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              tPUService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsNodesStopResource)
                      mempty
