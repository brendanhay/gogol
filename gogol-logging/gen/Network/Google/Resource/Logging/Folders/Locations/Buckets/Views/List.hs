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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists views on a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.views.list@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.List
    (
    -- * REST Resource
      FoldersLocationsBucketsViewsListResource

    -- * Creating a Request
    , foldersLocationsBucketsViewsList
    , FoldersLocationsBucketsViewsList

    -- * Request Lenses
    , flbvlParent
    , flbvlXgafv
    , flbvlUploadProtocol
    , flbvlAccessToken
    , flbvlUploadType
    , flbvlPageToken
    , flbvlPageSize
    , flbvlCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.views.list@ method which the
-- 'FoldersLocationsBucketsViewsList' request conforms to.
type FoldersLocationsBucketsViewsListResource =
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
-- /See:/ 'foldersLocationsBucketsViewsList' smart constructor.
data FoldersLocationsBucketsViewsList =
  FoldersLocationsBucketsViewsList'
    { _flbvlParent :: !Text
    , _flbvlXgafv :: !(Maybe Xgafv)
    , _flbvlUploadProtocol :: !(Maybe Text)
    , _flbvlAccessToken :: !(Maybe Text)
    , _flbvlUploadType :: !(Maybe Text)
    , _flbvlPageToken :: !(Maybe Text)
    , _flbvlPageSize :: !(Maybe (Textual Int32))
    , _flbvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsViewsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbvlParent'
--
-- * 'flbvlXgafv'
--
-- * 'flbvlUploadProtocol'
--
-- * 'flbvlAccessToken'
--
-- * 'flbvlUploadType'
--
-- * 'flbvlPageToken'
--
-- * 'flbvlPageSize'
--
-- * 'flbvlCallback'
foldersLocationsBucketsViewsList
    :: Text -- ^ 'flbvlParent'
    -> FoldersLocationsBucketsViewsList
foldersLocationsBucketsViewsList pFlbvlParent_ =
  FoldersLocationsBucketsViewsList'
    { _flbvlParent = pFlbvlParent_
    , _flbvlXgafv = Nothing
    , _flbvlUploadProtocol = Nothing
    , _flbvlAccessToken = Nothing
    , _flbvlUploadType = Nothing
    , _flbvlPageToken = Nothing
    , _flbvlPageSize = Nothing
    , _flbvlCallback = Nothing
    }


-- | Required. The bucket whose views are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
flbvlParent :: Lens' FoldersLocationsBucketsViewsList Text
flbvlParent
  = lens _flbvlParent (\ s a -> s{_flbvlParent = a})

-- | V1 error format.
flbvlXgafv :: Lens' FoldersLocationsBucketsViewsList (Maybe Xgafv)
flbvlXgafv
  = lens _flbvlXgafv (\ s a -> s{_flbvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbvlUploadProtocol :: Lens' FoldersLocationsBucketsViewsList (Maybe Text)
flbvlUploadProtocol
  = lens _flbvlUploadProtocol
      (\ s a -> s{_flbvlUploadProtocol = a})

-- | OAuth access token.
flbvlAccessToken :: Lens' FoldersLocationsBucketsViewsList (Maybe Text)
flbvlAccessToken
  = lens _flbvlAccessToken
      (\ s a -> s{_flbvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbvlUploadType :: Lens' FoldersLocationsBucketsViewsList (Maybe Text)
flbvlUploadType
  = lens _flbvlUploadType
      (\ s a -> s{_flbvlUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
flbvlPageToken :: Lens' FoldersLocationsBucketsViewsList (Maybe Text)
flbvlPageToken
  = lens _flbvlPageToken
      (\ s a -> s{_flbvlPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
flbvlPageSize :: Lens' FoldersLocationsBucketsViewsList (Maybe Int32)
flbvlPageSize
  = lens _flbvlPageSize
      (\ s a -> s{_flbvlPageSize = a})
      . mapping _Coerce

-- | JSONP
flbvlCallback :: Lens' FoldersLocationsBucketsViewsList (Maybe Text)
flbvlCallback
  = lens _flbvlCallback
      (\ s a -> s{_flbvlCallback = a})

instance GoogleRequest
           FoldersLocationsBucketsViewsList
         where
        type Rs FoldersLocationsBucketsViewsList =
             ListViewsResponse
        type Scopes FoldersLocationsBucketsViewsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersLocationsBucketsViewsList'{..}
          = go _flbvlParent _flbvlXgafv _flbvlUploadProtocol
              _flbvlAccessToken
              _flbvlUploadType
              _flbvlPageToken
              _flbvlPageSize
              _flbvlCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsBucketsViewsListResource)
                      mempty
