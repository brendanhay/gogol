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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.Nodes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.delete@.
module Network.Google.Resource.TPU.Projects.Locations.Nodes.Delete
    (
    -- * REST Resource
      ProjectsLocationsNodesDeleteResource

    -- * Creating a Request
    , projectsLocationsNodesDelete
    , ProjectsLocationsNodesDelete

    -- * Request Lenses
    , plndXgafv
    , plndUploadProtocol
    , plndAccessToken
    , plndUploadType
    , plndName
    , plndCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.delete@ method which the
-- 'ProjectsLocationsNodesDelete' request conforms to.
type ProjectsLocationsNodesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a node.
--
-- /See:/ 'projectsLocationsNodesDelete' smart constructor.
data ProjectsLocationsNodesDelete = ProjectsLocationsNodesDelete'
    { _plndXgafv          :: !(Maybe Xgafv)
    , _plndUploadProtocol :: !(Maybe Text)
    , _plndAccessToken    :: !(Maybe Text)
    , _plndUploadType     :: !(Maybe Text)
    , _plndName           :: !Text
    , _plndCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsNodesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plndXgafv'
--
-- * 'plndUploadProtocol'
--
-- * 'plndAccessToken'
--
-- * 'plndUploadType'
--
-- * 'plndName'
--
-- * 'plndCallback'
projectsLocationsNodesDelete
    :: Text -- ^ 'plndName'
    -> ProjectsLocationsNodesDelete
projectsLocationsNodesDelete pPlndName_ =
    ProjectsLocationsNodesDelete'
    { _plndXgafv = Nothing
    , _plndUploadProtocol = Nothing
    , _plndAccessToken = Nothing
    , _plndUploadType = Nothing
    , _plndName = pPlndName_
    , _plndCallback = Nothing
    }

-- | V1 error format.
plndXgafv :: Lens' ProjectsLocationsNodesDelete (Maybe Xgafv)
plndXgafv
  = lens _plndXgafv (\ s a -> s{_plndXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plndUploadProtocol :: Lens' ProjectsLocationsNodesDelete (Maybe Text)
plndUploadProtocol
  = lens _plndUploadProtocol
      (\ s a -> s{_plndUploadProtocol = a})

-- | OAuth access token.
plndAccessToken :: Lens' ProjectsLocationsNodesDelete (Maybe Text)
plndAccessToken
  = lens _plndAccessToken
      (\ s a -> s{_plndAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plndUploadType :: Lens' ProjectsLocationsNodesDelete (Maybe Text)
plndUploadType
  = lens _plndUploadType
      (\ s a -> s{_plndUploadType = a})

-- | The resource name.
plndName :: Lens' ProjectsLocationsNodesDelete Text
plndName = lens _plndName (\ s a -> s{_plndName = a})

-- | JSONP
plndCallback :: Lens' ProjectsLocationsNodesDelete (Maybe Text)
plndCallback
  = lens _plndCallback (\ s a -> s{_plndCallback = a})

instance GoogleRequest ProjectsLocationsNodesDelete
         where
        type Rs ProjectsLocationsNodesDelete = Operation
        type Scopes ProjectsLocationsNodesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsNodesDelete'{..}
          = go _plndName _plndXgafv _plndUploadProtocol
              _plndAccessToken
              _plndUploadType
              _plndCallback
              (Just AltJSON)
              tPUService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsNodesDeleteResource)
                      mempty
