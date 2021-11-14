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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists buckets.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.list@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.List
    (
    -- * REST Resource
      FoldersLocationsBucketsListResource

    -- * Creating a Request
    , foldersLocationsBucketsList
    , FoldersLocationsBucketsList

    -- * Request Lenses
    , flblParent
    , flblXgafv
    , flblUploadProtocol
    , flblAccessToken
    , flblUploadType
    , flblPageToken
    , flblPageSize
    , flblCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.list@ method which the
-- 'FoldersLocationsBucketsList' request conforms to.
type FoldersLocationsBucketsListResource =
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
-- /See:/ 'foldersLocationsBucketsList' smart constructor.
data FoldersLocationsBucketsList =
  FoldersLocationsBucketsList'
    { _flblParent :: !Text
    , _flblXgafv :: !(Maybe Xgafv)
    , _flblUploadProtocol :: !(Maybe Text)
    , _flblAccessToken :: !(Maybe Text)
    , _flblUploadType :: !(Maybe Text)
    , _flblPageToken :: !(Maybe Text)
    , _flblPageSize :: !(Maybe (Textual Int32))
    , _flblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flblParent'
--
-- * 'flblXgafv'
--
-- * 'flblUploadProtocol'
--
-- * 'flblAccessToken'
--
-- * 'flblUploadType'
--
-- * 'flblPageToken'
--
-- * 'flblPageSize'
--
-- * 'flblCallback'
foldersLocationsBucketsList
    :: Text -- ^ 'flblParent'
    -> FoldersLocationsBucketsList
foldersLocationsBucketsList pFlblParent_ =
  FoldersLocationsBucketsList'
    { _flblParent = pFlblParent_
    , _flblXgafv = Nothing
    , _flblUploadProtocol = Nothing
    , _flblAccessToken = Nothing
    , _flblUploadType = Nothing
    , _flblPageToken = Nothing
    , _flblPageSize = Nothing
    , _flblCallback = Nothing
    }


-- | Required. The parent resource whose buckets are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\" Note: The locations
-- portion of the resource must be specified, but supplying the character -
-- in place of LOCATION_ID will return all buckets.
flblParent :: Lens' FoldersLocationsBucketsList Text
flblParent
  = lens _flblParent (\ s a -> s{_flblParent = a})

-- | V1 error format.
flblXgafv :: Lens' FoldersLocationsBucketsList (Maybe Xgafv)
flblXgafv
  = lens _flblXgafv (\ s a -> s{_flblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flblUploadProtocol :: Lens' FoldersLocationsBucketsList (Maybe Text)
flblUploadProtocol
  = lens _flblUploadProtocol
      (\ s a -> s{_flblUploadProtocol = a})

-- | OAuth access token.
flblAccessToken :: Lens' FoldersLocationsBucketsList (Maybe Text)
flblAccessToken
  = lens _flblAccessToken
      (\ s a -> s{_flblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flblUploadType :: Lens' FoldersLocationsBucketsList (Maybe Text)
flblUploadType
  = lens _flblUploadType
      (\ s a -> s{_flblUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
flblPageToken :: Lens' FoldersLocationsBucketsList (Maybe Text)
flblPageToken
  = lens _flblPageToken
      (\ s a -> s{_flblPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
flblPageSize :: Lens' FoldersLocationsBucketsList (Maybe Int32)
flblPageSize
  = lens _flblPageSize (\ s a -> s{_flblPageSize = a})
      . mapping _Coerce

-- | JSONP
flblCallback :: Lens' FoldersLocationsBucketsList (Maybe Text)
flblCallback
  = lens _flblCallback (\ s a -> s{_flblCallback = a})

instance GoogleRequest FoldersLocationsBucketsList
         where
        type Rs FoldersLocationsBucketsList =
             ListBucketsResponse
        type Scopes FoldersLocationsBucketsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersLocationsBucketsList'{..}
          = go _flblParent _flblXgafv _flblUploadProtocol
              _flblAccessToken
              _flblUploadType
              _flblPageToken
              _flblPageSize
              _flblCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersLocationsBucketsListResource)
                      mempty
