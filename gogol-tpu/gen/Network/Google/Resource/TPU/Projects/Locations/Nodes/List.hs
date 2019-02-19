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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.Nodes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists nodes.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.list@.
module Network.Google.Resource.TPU.Projects.Locations.Nodes.List
    (
    -- * REST Resource
      ProjectsLocationsNodesListResource

    -- * Creating a Request
    , projectsLocationsNodesList
    , ProjectsLocationsNodesList

    -- * Request Lenses
    , plnlParent
    , plnlXgafv
    , plnlUploadProtocol
    , plnlAccessToken
    , plnlUploadType
    , plnlPageToken
    , plnlPageSize
    , plnlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.list@ method which the
-- 'ProjectsLocationsNodesList' request conforms to.
type ProjectsLocationsNodesListResource =
     "v1" :>
       Capture "parent" Text :>
         "nodes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListNodesResponse

-- | Lists nodes.
--
-- /See:/ 'projectsLocationsNodesList' smart constructor.
data ProjectsLocationsNodesList =
  ProjectsLocationsNodesList'
    { _plnlParent         :: !Text
    , _plnlXgafv          :: !(Maybe Xgafv)
    , _plnlUploadProtocol :: !(Maybe Text)
    , _plnlAccessToken    :: !(Maybe Text)
    , _plnlUploadType     :: !(Maybe Text)
    , _plnlPageToken      :: !(Maybe Text)
    , _plnlPageSize       :: !(Maybe (Textual Int32))
    , _plnlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsNodesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plnlParent'
--
-- * 'plnlXgafv'
--
-- * 'plnlUploadProtocol'
--
-- * 'plnlAccessToken'
--
-- * 'plnlUploadType'
--
-- * 'plnlPageToken'
--
-- * 'plnlPageSize'
--
-- * 'plnlCallback'
projectsLocationsNodesList
    :: Text -- ^ 'plnlParent'
    -> ProjectsLocationsNodesList
projectsLocationsNodesList pPlnlParent_ =
  ProjectsLocationsNodesList'
    { _plnlParent = pPlnlParent_
    , _plnlXgafv = Nothing
    , _plnlUploadProtocol = Nothing
    , _plnlAccessToken = Nothing
    , _plnlUploadType = Nothing
    , _plnlPageToken = Nothing
    , _plnlPageSize = Nothing
    , _plnlCallback = Nothing
    }


-- | The parent resource name.
plnlParent :: Lens' ProjectsLocationsNodesList Text
plnlParent
  = lens _plnlParent (\ s a -> s{_plnlParent = a})

-- | V1 error format.
plnlXgafv :: Lens' ProjectsLocationsNodesList (Maybe Xgafv)
plnlXgafv
  = lens _plnlXgafv (\ s a -> s{_plnlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plnlUploadProtocol :: Lens' ProjectsLocationsNodesList (Maybe Text)
plnlUploadProtocol
  = lens _plnlUploadProtocol
      (\ s a -> s{_plnlUploadProtocol = a})

-- | OAuth access token.
plnlAccessToken :: Lens' ProjectsLocationsNodesList (Maybe Text)
plnlAccessToken
  = lens _plnlAccessToken
      (\ s a -> s{_plnlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plnlUploadType :: Lens' ProjectsLocationsNodesList (Maybe Text)
plnlUploadType
  = lens _plnlUploadType
      (\ s a -> s{_plnlUploadType = a})

-- | The next_page_token value returned from a previous List request, if any.
plnlPageToken :: Lens' ProjectsLocationsNodesList (Maybe Text)
plnlPageToken
  = lens _plnlPageToken
      (\ s a -> s{_plnlPageToken = a})

-- | The maximum number of items to return.
plnlPageSize :: Lens' ProjectsLocationsNodesList (Maybe Int32)
plnlPageSize
  = lens _plnlPageSize (\ s a -> s{_plnlPageSize = a})
      . mapping _Coerce

-- | JSONP
plnlCallback :: Lens' ProjectsLocationsNodesList (Maybe Text)
plnlCallback
  = lens _plnlCallback (\ s a -> s{_plnlCallback = a})

instance GoogleRequest ProjectsLocationsNodesList
         where
        type Rs ProjectsLocationsNodesList =
             ListNodesResponse
        type Scopes ProjectsLocationsNodesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsNodesList'{..}
          = go _plnlParent _plnlXgafv _plnlUploadProtocol
              _plnlAccessToken
              _plnlUploadType
              _plnlPageToken
              _plnlPageSize
              _plnlCallback
              (Just AltJSON)
              tPUService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsNodesListResource)
                      mempty
