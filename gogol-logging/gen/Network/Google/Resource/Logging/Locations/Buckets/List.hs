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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists buckets.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.list@.
module Network.Google.Resource.Logging.Locations.Buckets.List
    (
    -- * REST Resource
      LocationsBucketsListResource

    -- * Creating a Request
    , locationsBucketsList
    , LocationsBucketsList

    -- * Request Lenses
    , lblParent
    , lblXgafv
    , lblUploadProtocol
    , lblAccessToken
    , lblUploadType
    , lblPageToken
    , lblPageSize
    , lblCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.list@ method which the
-- 'LocationsBucketsList' request conforms to.
type LocationsBucketsListResource =
     "v2" :>
       Capture "parent" Text :>
         "buckets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListBucketsResponse

-- | Lists buckets.
--
-- /See:/ 'locationsBucketsList' smart constructor.
data LocationsBucketsList =
  LocationsBucketsList'
    { _lblParent :: !Text
    , _lblXgafv :: !(Maybe Xgafv)
    , _lblUploadProtocol :: !(Maybe Text)
    , _lblAccessToken :: !(Maybe Text)
    , _lblUploadType :: !(Maybe Text)
    , _lblPageToken :: !(Maybe Text)
    , _lblPageSize :: !(Maybe (Textual Int32))
    , _lblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lblParent'
--
-- * 'lblXgafv'
--
-- * 'lblUploadProtocol'
--
-- * 'lblAccessToken'
--
-- * 'lblUploadType'
--
-- * 'lblPageToken'
--
-- * 'lblPageSize'
--
-- * 'lblCallback'
locationsBucketsList
    :: Text -- ^ 'lblParent'
    -> LocationsBucketsList
locationsBucketsList pLblParent_ =
  LocationsBucketsList'
    { _lblParent = pLblParent_
    , _lblXgafv = Nothing
    , _lblUploadProtocol = Nothing
    , _lblAccessToken = Nothing
    , _lblUploadType = Nothing
    , _lblPageToken = Nothing
    , _lblPageSize = Nothing
    , _lblCallback = Nothing
    }


-- | Required. The parent resource whose buckets are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\" Note: The locations
-- portion of the resource must be specified, but supplying the character -
-- in place of LOCATION_ID will return all buckets.
lblParent :: Lens' LocationsBucketsList Text
lblParent
  = lens _lblParent (\ s a -> s{_lblParent = a})

-- | V1 error format.
lblXgafv :: Lens' LocationsBucketsList (Maybe Xgafv)
lblXgafv = lens _lblXgafv (\ s a -> s{_lblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lblUploadProtocol :: Lens' LocationsBucketsList (Maybe Text)
lblUploadProtocol
  = lens _lblUploadProtocol
      (\ s a -> s{_lblUploadProtocol = a})

-- | OAuth access token.
lblAccessToken :: Lens' LocationsBucketsList (Maybe Text)
lblAccessToken
  = lens _lblAccessToken
      (\ s a -> s{_lblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lblUploadType :: Lens' LocationsBucketsList (Maybe Text)
lblUploadType
  = lens _lblUploadType
      (\ s a -> s{_lblUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
lblPageToken :: Lens' LocationsBucketsList (Maybe Text)
lblPageToken
  = lens _lblPageToken (\ s a -> s{_lblPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
lblPageSize :: Lens' LocationsBucketsList (Maybe Int32)
lblPageSize
  = lens _lblPageSize (\ s a -> s{_lblPageSize = a}) .
      mapping _Coerce

-- | JSONP
lblCallback :: Lens' LocationsBucketsList (Maybe Text)
lblCallback
  = lens _lblCallback (\ s a -> s{_lblCallback = a})

instance GoogleRequest LocationsBucketsList where
        type Rs LocationsBucketsList = ListBucketsResponse
        type Scopes LocationsBucketsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LocationsBucketsList'{..}
          = go _lblParent _lblXgafv _lblUploadProtocol
              _lblAccessToken
              _lblUploadType
              _lblPageToken
              _lblPageSize
              _lblCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsListResource)
                      mempty
