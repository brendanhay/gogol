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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.TensorflowVersions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List TensorFlow versions supported by this API.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.tensorflowVersions.list@.
module Network.Google.Resource.TPU.Projects.Locations.TensorflowVersions.List
    (
    -- * REST Resource
      ProjectsLocationsTensorflowVersionsListResource

    -- * Creating a Request
    , projectsLocationsTensorflowVersionsList
    , ProjectsLocationsTensorflowVersionsList

    -- * Request Lenses
    , pltvlParent
    , pltvlXgafv
    , pltvlUploadProtocol
    , pltvlOrderBy
    , pltvlAccessToken
    , pltvlUploadType
    , pltvlFilter
    , pltvlPageToken
    , pltvlPageSize
    , pltvlCallback
    ) where

import Network.Google.Prelude
import Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.tensorflowVersions.list@ method which the
-- 'ProjectsLocationsTensorflowVersionsList' request conforms to.
type ProjectsLocationsTensorflowVersionsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "tensorflowVersions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListTensorFlowVersionsResponse

-- | List TensorFlow versions supported by this API.
--
-- /See:/ 'projectsLocationsTensorflowVersionsList' smart constructor.
data ProjectsLocationsTensorflowVersionsList =
  ProjectsLocationsTensorflowVersionsList'
    { _pltvlParent :: !Text
    , _pltvlXgafv :: !(Maybe Xgafv)
    , _pltvlUploadProtocol :: !(Maybe Text)
    , _pltvlOrderBy :: !(Maybe Text)
    , _pltvlAccessToken :: !(Maybe Text)
    , _pltvlUploadType :: !(Maybe Text)
    , _pltvlFilter :: !(Maybe Text)
    , _pltvlPageToken :: !(Maybe Text)
    , _pltvlPageSize :: !(Maybe (Textual Int32))
    , _pltvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTensorflowVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltvlParent'
--
-- * 'pltvlXgafv'
--
-- * 'pltvlUploadProtocol'
--
-- * 'pltvlOrderBy'
--
-- * 'pltvlAccessToken'
--
-- * 'pltvlUploadType'
--
-- * 'pltvlFilter'
--
-- * 'pltvlPageToken'
--
-- * 'pltvlPageSize'
--
-- * 'pltvlCallback'
projectsLocationsTensorflowVersionsList
    :: Text -- ^ 'pltvlParent'
    -> ProjectsLocationsTensorflowVersionsList
projectsLocationsTensorflowVersionsList pPltvlParent_ =
  ProjectsLocationsTensorflowVersionsList'
    { _pltvlParent = pPltvlParent_
    , _pltvlXgafv = Nothing
    , _pltvlUploadProtocol = Nothing
    , _pltvlOrderBy = Nothing
    , _pltvlAccessToken = Nothing
    , _pltvlUploadType = Nothing
    , _pltvlFilter = Nothing
    , _pltvlPageToken = Nothing
    , _pltvlPageSize = Nothing
    , _pltvlCallback = Nothing
    }


-- | Required. The parent resource name.
pltvlParent :: Lens' ProjectsLocationsTensorflowVersionsList Text
pltvlParent
  = lens _pltvlParent (\ s a -> s{_pltvlParent = a})

-- | V1 error format.
pltvlXgafv :: Lens' ProjectsLocationsTensorflowVersionsList (Maybe Xgafv)
pltvlXgafv
  = lens _pltvlXgafv (\ s a -> s{_pltvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltvlUploadProtocol :: Lens' ProjectsLocationsTensorflowVersionsList (Maybe Text)
pltvlUploadProtocol
  = lens _pltvlUploadProtocol
      (\ s a -> s{_pltvlUploadProtocol = a})

-- | Sort results.
pltvlOrderBy :: Lens' ProjectsLocationsTensorflowVersionsList (Maybe Text)
pltvlOrderBy
  = lens _pltvlOrderBy (\ s a -> s{_pltvlOrderBy = a})

-- | OAuth access token.
pltvlAccessToken :: Lens' ProjectsLocationsTensorflowVersionsList (Maybe Text)
pltvlAccessToken
  = lens _pltvlAccessToken
      (\ s a -> s{_pltvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltvlUploadType :: Lens' ProjectsLocationsTensorflowVersionsList (Maybe Text)
pltvlUploadType
  = lens _pltvlUploadType
      (\ s a -> s{_pltvlUploadType = a})

-- | List filter.
pltvlFilter :: Lens' ProjectsLocationsTensorflowVersionsList (Maybe Text)
pltvlFilter
  = lens _pltvlFilter (\ s a -> s{_pltvlFilter = a})

-- | The next_page_token value returned from a previous List request, if any.
pltvlPageToken :: Lens' ProjectsLocationsTensorflowVersionsList (Maybe Text)
pltvlPageToken
  = lens _pltvlPageToken
      (\ s a -> s{_pltvlPageToken = a})

-- | The maximum number of items to return.
pltvlPageSize :: Lens' ProjectsLocationsTensorflowVersionsList (Maybe Int32)
pltvlPageSize
  = lens _pltvlPageSize
      (\ s a -> s{_pltvlPageSize = a})
      . mapping _Coerce

-- | JSONP
pltvlCallback :: Lens' ProjectsLocationsTensorflowVersionsList (Maybe Text)
pltvlCallback
  = lens _pltvlCallback
      (\ s a -> s{_pltvlCallback = a})

instance GoogleRequest
           ProjectsLocationsTensorflowVersionsList
         where
        type Rs ProjectsLocationsTensorflowVersionsList =
             ListTensorFlowVersionsResponse
        type Scopes ProjectsLocationsTensorflowVersionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsTensorflowVersionsList'{..}
          = go _pltvlParent _pltvlXgafv _pltvlUploadProtocol
              _pltvlOrderBy
              _pltvlAccessToken
              _pltvlUploadType
              _pltvlFilter
              _pltvlPageToken
              _pltvlPageSize
              _pltvlCallback
              (Just AltJSON)
              tPUService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsTensorflowVersionsListResource)
                      mempty
