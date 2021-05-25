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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists views on a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.views.list@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.List
    (
    -- * REST Resource
      OrganizationsLocationsBucketsViewsListResource

    -- * Creating a Request
    , organizationsLocationsBucketsViewsList
    , OrganizationsLocationsBucketsViewsList

    -- * Request Lenses
    , olbvlParent
    , olbvlXgafv
    , olbvlUploadProtocol
    , olbvlAccessToken
    , olbvlUploadType
    , olbvlPageToken
    , olbvlPageSize
    , olbvlCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.views.list@ method which the
-- 'OrganizationsLocationsBucketsViewsList' request conforms to.
type OrganizationsLocationsBucketsViewsListResource =
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
-- /See:/ 'organizationsLocationsBucketsViewsList' smart constructor.
data OrganizationsLocationsBucketsViewsList =
  OrganizationsLocationsBucketsViewsList'
    { _olbvlParent :: !Text
    , _olbvlXgafv :: !(Maybe Xgafv)
    , _olbvlUploadProtocol :: !(Maybe Text)
    , _olbvlAccessToken :: !(Maybe Text)
    , _olbvlUploadType :: !(Maybe Text)
    , _olbvlPageToken :: !(Maybe Text)
    , _olbvlPageSize :: !(Maybe (Textual Int32))
    , _olbvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsViewsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbvlParent'
--
-- * 'olbvlXgafv'
--
-- * 'olbvlUploadProtocol'
--
-- * 'olbvlAccessToken'
--
-- * 'olbvlUploadType'
--
-- * 'olbvlPageToken'
--
-- * 'olbvlPageSize'
--
-- * 'olbvlCallback'
organizationsLocationsBucketsViewsList
    :: Text -- ^ 'olbvlParent'
    -> OrganizationsLocationsBucketsViewsList
organizationsLocationsBucketsViewsList pOlbvlParent_ =
  OrganizationsLocationsBucketsViewsList'
    { _olbvlParent = pOlbvlParent_
    , _olbvlXgafv = Nothing
    , _olbvlUploadProtocol = Nothing
    , _olbvlAccessToken = Nothing
    , _olbvlUploadType = Nothing
    , _olbvlPageToken = Nothing
    , _olbvlPageSize = Nothing
    , _olbvlCallback = Nothing
    }


-- | Required. The bucket whose views are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
olbvlParent :: Lens' OrganizationsLocationsBucketsViewsList Text
olbvlParent
  = lens _olbvlParent (\ s a -> s{_olbvlParent = a})

-- | V1 error format.
olbvlXgafv :: Lens' OrganizationsLocationsBucketsViewsList (Maybe Xgafv)
olbvlXgafv
  = lens _olbvlXgafv (\ s a -> s{_olbvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbvlUploadProtocol :: Lens' OrganizationsLocationsBucketsViewsList (Maybe Text)
olbvlUploadProtocol
  = lens _olbvlUploadProtocol
      (\ s a -> s{_olbvlUploadProtocol = a})

-- | OAuth access token.
olbvlAccessToken :: Lens' OrganizationsLocationsBucketsViewsList (Maybe Text)
olbvlAccessToken
  = lens _olbvlAccessToken
      (\ s a -> s{_olbvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbvlUploadType :: Lens' OrganizationsLocationsBucketsViewsList (Maybe Text)
olbvlUploadType
  = lens _olbvlUploadType
      (\ s a -> s{_olbvlUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
olbvlPageToken :: Lens' OrganizationsLocationsBucketsViewsList (Maybe Text)
olbvlPageToken
  = lens _olbvlPageToken
      (\ s a -> s{_olbvlPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
olbvlPageSize :: Lens' OrganizationsLocationsBucketsViewsList (Maybe Int32)
olbvlPageSize
  = lens _olbvlPageSize
      (\ s a -> s{_olbvlPageSize = a})
      . mapping _Coerce

-- | JSONP
olbvlCallback :: Lens' OrganizationsLocationsBucketsViewsList (Maybe Text)
olbvlCallback
  = lens _olbvlCallback
      (\ s a -> s{_olbvlCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsViewsList
         where
        type Rs OrganizationsLocationsBucketsViewsList =
             ListViewsResponse
        type Scopes OrganizationsLocationsBucketsViewsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient
          OrganizationsLocationsBucketsViewsList'{..}
          = go _olbvlParent _olbvlXgafv _olbvlUploadProtocol
              _olbvlAccessToken
              _olbvlUploadType
              _olbvlPageToken
              _olbvlPageSize
              _olbvlCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsBucketsViewsListResource)
                      mempty
