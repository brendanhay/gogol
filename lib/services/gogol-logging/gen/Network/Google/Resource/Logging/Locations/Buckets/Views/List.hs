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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Views.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists views on a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.views.list@.
module Network.Google.Resource.Logging.Locations.Buckets.Views.List
    (
    -- * REST Resource
      LocationsBucketsViewsListResource

    -- * Creating a Request
    , locationsBucketsViewsList
    , LocationsBucketsViewsList

    -- * Request Lenses
    , lbvlParent
    , lbvlXgafv
    , lbvlUploadProtocol
    , lbvlAccessToken
    , lbvlUploadType
    , lbvlPageToken
    , lbvlPageSize
    , lbvlCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.views.list@ method which the
-- 'LocationsBucketsViewsList' request conforms to.
type LocationsBucketsViewsListResource =
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
-- /See:/ 'locationsBucketsViewsList' smart constructor.
data LocationsBucketsViewsList =
  LocationsBucketsViewsList'
    { _lbvlParent :: !Text
    , _lbvlXgafv :: !(Maybe Xgafv)
    , _lbvlUploadProtocol :: !(Maybe Text)
    , _lbvlAccessToken :: !(Maybe Text)
    , _lbvlUploadType :: !(Maybe Text)
    , _lbvlPageToken :: !(Maybe Text)
    , _lbvlPageSize :: !(Maybe (Textual Int32))
    , _lbvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsViewsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbvlParent'
--
-- * 'lbvlXgafv'
--
-- * 'lbvlUploadProtocol'
--
-- * 'lbvlAccessToken'
--
-- * 'lbvlUploadType'
--
-- * 'lbvlPageToken'
--
-- * 'lbvlPageSize'
--
-- * 'lbvlCallback'
locationsBucketsViewsList
    :: Text -- ^ 'lbvlParent'
    -> LocationsBucketsViewsList
locationsBucketsViewsList pLbvlParent_ =
  LocationsBucketsViewsList'
    { _lbvlParent = pLbvlParent_
    , _lbvlXgafv = Nothing
    , _lbvlUploadProtocol = Nothing
    , _lbvlAccessToken = Nothing
    , _lbvlUploadType = Nothing
    , _lbvlPageToken = Nothing
    , _lbvlPageSize = Nothing
    , _lbvlCallback = Nothing
    }


-- | Required. The bucket whose views are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
lbvlParent :: Lens' LocationsBucketsViewsList Text
lbvlParent
  = lens _lbvlParent (\ s a -> s{_lbvlParent = a})

-- | V1 error format.
lbvlXgafv :: Lens' LocationsBucketsViewsList (Maybe Xgafv)
lbvlXgafv
  = lens _lbvlXgafv (\ s a -> s{_lbvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbvlUploadProtocol :: Lens' LocationsBucketsViewsList (Maybe Text)
lbvlUploadProtocol
  = lens _lbvlUploadProtocol
      (\ s a -> s{_lbvlUploadProtocol = a})

-- | OAuth access token.
lbvlAccessToken :: Lens' LocationsBucketsViewsList (Maybe Text)
lbvlAccessToken
  = lens _lbvlAccessToken
      (\ s a -> s{_lbvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbvlUploadType :: Lens' LocationsBucketsViewsList (Maybe Text)
lbvlUploadType
  = lens _lbvlUploadType
      (\ s a -> s{_lbvlUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
lbvlPageToken :: Lens' LocationsBucketsViewsList (Maybe Text)
lbvlPageToken
  = lens _lbvlPageToken
      (\ s a -> s{_lbvlPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
lbvlPageSize :: Lens' LocationsBucketsViewsList (Maybe Int32)
lbvlPageSize
  = lens _lbvlPageSize (\ s a -> s{_lbvlPageSize = a})
      . mapping _Coerce

-- | JSONP
lbvlCallback :: Lens' LocationsBucketsViewsList (Maybe Text)
lbvlCallback
  = lens _lbvlCallback (\ s a -> s{_lbvlCallback = a})

instance GoogleRequest LocationsBucketsViewsList
         where
        type Rs LocationsBucketsViewsList = ListViewsResponse
        type Scopes LocationsBucketsViewsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LocationsBucketsViewsList'{..}
          = go _lbvlParent _lbvlXgafv _lbvlUploadProtocol
              _lbvlAccessToken
              _lbvlUploadType
              _lbvlPageToken
              _lbvlPageSize
              _lbvlCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsViewsListResource)
                      mempty
