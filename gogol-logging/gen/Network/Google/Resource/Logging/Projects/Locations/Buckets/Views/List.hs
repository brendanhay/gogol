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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists views on a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.views.list@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.List
    (
    -- * REST Resource
      ProjectsLocationsBucketsViewsListResource

    -- * Creating a Request
    , projectsLocationsBucketsViewsList
    , ProjectsLocationsBucketsViewsList

    -- * Request Lenses
    , plbvlParent
    , plbvlXgafv
    , plbvlUploadProtocol
    , plbvlAccessToken
    , plbvlUploadType
    , plbvlPageToken
    , plbvlPageSize
    , plbvlCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.views.list@ method which the
-- 'ProjectsLocationsBucketsViewsList' request conforms to.
type ProjectsLocationsBucketsViewsListResource =
     "v2" :>
       Capture "parent" Text :>
         "views" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListViewsResponse

-- | Lists views on a bucket.
--
-- /See:/ 'projectsLocationsBucketsViewsList' smart constructor.
data ProjectsLocationsBucketsViewsList =
  ProjectsLocationsBucketsViewsList'
    { _plbvlParent :: !Text
    , _plbvlXgafv :: !(Maybe Xgafv)
    , _plbvlUploadProtocol :: !(Maybe Text)
    , _plbvlAccessToken :: !(Maybe Text)
    , _plbvlUploadType :: !(Maybe Text)
    , _plbvlPageToken :: !(Maybe Text)
    , _plbvlPageSize :: !(Maybe (Textual Int32))
    , _plbvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsViewsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbvlParent'
--
-- * 'plbvlXgafv'
--
-- * 'plbvlUploadProtocol'
--
-- * 'plbvlAccessToken'
--
-- * 'plbvlUploadType'
--
-- * 'plbvlPageToken'
--
-- * 'plbvlPageSize'
--
-- * 'plbvlCallback'
projectsLocationsBucketsViewsList
    :: Text -- ^ 'plbvlParent'
    -> ProjectsLocationsBucketsViewsList
projectsLocationsBucketsViewsList pPlbvlParent_ =
  ProjectsLocationsBucketsViewsList'
    { _plbvlParent = pPlbvlParent_
    , _plbvlXgafv = Nothing
    , _plbvlUploadProtocol = Nothing
    , _plbvlAccessToken = Nothing
    , _plbvlUploadType = Nothing
    , _plbvlPageToken = Nothing
    , _plbvlPageSize = Nothing
    , _plbvlCallback = Nothing
    }


-- | Required. The bucket whose views are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
plbvlParent :: Lens' ProjectsLocationsBucketsViewsList Text
plbvlParent
  = lens _plbvlParent (\ s a -> s{_plbvlParent = a})

-- | V1 error format.
plbvlXgafv :: Lens' ProjectsLocationsBucketsViewsList (Maybe Xgafv)
plbvlXgafv
  = lens _plbvlXgafv (\ s a -> s{_plbvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbvlUploadProtocol :: Lens' ProjectsLocationsBucketsViewsList (Maybe Text)
plbvlUploadProtocol
  = lens _plbvlUploadProtocol
      (\ s a -> s{_plbvlUploadProtocol = a})

-- | OAuth access token.
plbvlAccessToken :: Lens' ProjectsLocationsBucketsViewsList (Maybe Text)
plbvlAccessToken
  = lens _plbvlAccessToken
      (\ s a -> s{_plbvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbvlUploadType :: Lens' ProjectsLocationsBucketsViewsList (Maybe Text)
plbvlUploadType
  = lens _plbvlUploadType
      (\ s a -> s{_plbvlUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
plbvlPageToken :: Lens' ProjectsLocationsBucketsViewsList (Maybe Text)
plbvlPageToken
  = lens _plbvlPageToken
      (\ s a -> s{_plbvlPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
plbvlPageSize :: Lens' ProjectsLocationsBucketsViewsList (Maybe Int32)
plbvlPageSize
  = lens _plbvlPageSize
      (\ s a -> s{_plbvlPageSize = a})
      . mapping _Coerce

-- | JSONP
plbvlCallback :: Lens' ProjectsLocationsBucketsViewsList (Maybe Text)
plbvlCallback
  = lens _plbvlCallback
      (\ s a -> s{_plbvlCallback = a})

instance GoogleRequest
           ProjectsLocationsBucketsViewsList
         where
        type Rs ProjectsLocationsBucketsViewsList =
             ListViewsResponse
        type Scopes ProjectsLocationsBucketsViewsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsLocationsBucketsViewsList'{..}
          = go _plbvlParent _plbvlXgafv _plbvlUploadProtocol
              _plbvlAccessToken
              _plbvlUploadType
              _plbvlPageToken
              _plbvlPageSize
              _plbvlCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBucketsViewsListResource)
                      mempty
