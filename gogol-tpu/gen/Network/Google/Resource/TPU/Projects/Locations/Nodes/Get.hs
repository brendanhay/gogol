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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.Nodes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.get@.
module Network.Google.Resource.TPU.Projects.Locations.Nodes.Get
    (
    -- * REST Resource
      ProjectsLocationsNodesGetResource

    -- * Creating a Request
    , projectsLocationsNodesGet
    , ProjectsLocationsNodesGet

    -- * Request Lenses
    , plngXgafv
    , plngUploadProtocol
    , plngAccessToken
    , plngUploadType
    , plngName
    , plngCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.get@ method which the
-- 'ProjectsLocationsNodesGet' request conforms to.
type ProjectsLocationsNodesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Node

-- | Gets the details of a node.
--
-- /See:/ 'projectsLocationsNodesGet' smart constructor.
data ProjectsLocationsNodesGet =
  ProjectsLocationsNodesGet'
    { _plngXgafv          :: !(Maybe Xgafv)
    , _plngUploadProtocol :: !(Maybe Text)
    , _plngAccessToken    :: !(Maybe Text)
    , _plngUploadType     :: !(Maybe Text)
    , _plngName           :: !Text
    , _plngCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsNodesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plngXgafv'
--
-- * 'plngUploadProtocol'
--
-- * 'plngAccessToken'
--
-- * 'plngUploadType'
--
-- * 'plngName'
--
-- * 'plngCallback'
projectsLocationsNodesGet
    :: Text -- ^ 'plngName'
    -> ProjectsLocationsNodesGet
projectsLocationsNodesGet pPlngName_ =
  ProjectsLocationsNodesGet'
    { _plngXgafv = Nothing
    , _plngUploadProtocol = Nothing
    , _plngAccessToken = Nothing
    , _plngUploadType = Nothing
    , _plngName = pPlngName_
    , _plngCallback = Nothing
    }

-- | V1 error format.
plngXgafv :: Lens' ProjectsLocationsNodesGet (Maybe Xgafv)
plngXgafv
  = lens _plngXgafv (\ s a -> s{_plngXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plngUploadProtocol :: Lens' ProjectsLocationsNodesGet (Maybe Text)
plngUploadProtocol
  = lens _plngUploadProtocol
      (\ s a -> s{_plngUploadProtocol = a})

-- | OAuth access token.
plngAccessToken :: Lens' ProjectsLocationsNodesGet (Maybe Text)
plngAccessToken
  = lens _plngAccessToken
      (\ s a -> s{_plngAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plngUploadType :: Lens' ProjectsLocationsNodesGet (Maybe Text)
plngUploadType
  = lens _plngUploadType
      (\ s a -> s{_plngUploadType = a})

-- | The resource name.
plngName :: Lens' ProjectsLocationsNodesGet Text
plngName = lens _plngName (\ s a -> s{_plngName = a})

-- | JSONP
plngCallback :: Lens' ProjectsLocationsNodesGet (Maybe Text)
plngCallback
  = lens _plngCallback (\ s a -> s{_plngCallback = a})

instance GoogleRequest ProjectsLocationsNodesGet
         where
        type Rs ProjectsLocationsNodesGet = Node
        type Scopes ProjectsLocationsNodesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsNodesGet'{..}
          = go _plngName _plngXgafv _plngUploadProtocol
              _plngAccessToken
              _plngUploadType
              _plngCallback
              (Just AltJSON)
              tPUService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsNodesGetResource)
                      mempty
