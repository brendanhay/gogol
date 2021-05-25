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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists buckets.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.list@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.List
    (
    -- * REST Resource
      OrganizationsLocationsBucketsListResource

    -- * Creating a Request
    , organizationsLocationsBucketsList
    , OrganizationsLocationsBucketsList

    -- * Request Lenses
    , olblParent
    , olblXgafv
    , olblUploadProtocol
    , olblAccessToken
    , olblUploadType
    , olblPageToken
    , olblPageSize
    , olblCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.list@ method which the
-- 'OrganizationsLocationsBucketsList' request conforms to.
type OrganizationsLocationsBucketsListResource =
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
-- /See:/ 'organizationsLocationsBucketsList' smart constructor.
data OrganizationsLocationsBucketsList =
  OrganizationsLocationsBucketsList'
    { _olblParent :: !Text
    , _olblXgafv :: !(Maybe Xgafv)
    , _olblUploadProtocol :: !(Maybe Text)
    , _olblAccessToken :: !(Maybe Text)
    , _olblUploadType :: !(Maybe Text)
    , _olblPageToken :: !(Maybe Text)
    , _olblPageSize :: !(Maybe (Textual Int32))
    , _olblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olblParent'
--
-- * 'olblXgafv'
--
-- * 'olblUploadProtocol'
--
-- * 'olblAccessToken'
--
-- * 'olblUploadType'
--
-- * 'olblPageToken'
--
-- * 'olblPageSize'
--
-- * 'olblCallback'
organizationsLocationsBucketsList
    :: Text -- ^ 'olblParent'
    -> OrganizationsLocationsBucketsList
organizationsLocationsBucketsList pOlblParent_ =
  OrganizationsLocationsBucketsList'
    { _olblParent = pOlblParent_
    , _olblXgafv = Nothing
    , _olblUploadProtocol = Nothing
    , _olblAccessToken = Nothing
    , _olblUploadType = Nothing
    , _olblPageToken = Nothing
    , _olblPageSize = Nothing
    , _olblCallback = Nothing
    }


-- | Required. The parent resource whose buckets are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\" Note: The locations
-- portion of the resource must be specified, but supplying the character -
-- in place of LOCATION_ID will return all buckets.
olblParent :: Lens' OrganizationsLocationsBucketsList Text
olblParent
  = lens _olblParent (\ s a -> s{_olblParent = a})

-- | V1 error format.
olblXgafv :: Lens' OrganizationsLocationsBucketsList (Maybe Xgafv)
olblXgafv
  = lens _olblXgafv (\ s a -> s{_olblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olblUploadProtocol :: Lens' OrganizationsLocationsBucketsList (Maybe Text)
olblUploadProtocol
  = lens _olblUploadProtocol
      (\ s a -> s{_olblUploadProtocol = a})

-- | OAuth access token.
olblAccessToken :: Lens' OrganizationsLocationsBucketsList (Maybe Text)
olblAccessToken
  = lens _olblAccessToken
      (\ s a -> s{_olblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olblUploadType :: Lens' OrganizationsLocationsBucketsList (Maybe Text)
olblUploadType
  = lens _olblUploadType
      (\ s a -> s{_olblUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
olblPageToken :: Lens' OrganizationsLocationsBucketsList (Maybe Text)
olblPageToken
  = lens _olblPageToken
      (\ s a -> s{_olblPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
olblPageSize :: Lens' OrganizationsLocationsBucketsList (Maybe Int32)
olblPageSize
  = lens _olblPageSize (\ s a -> s{_olblPageSize = a})
      . mapping _Coerce

-- | JSONP
olblCallback :: Lens' OrganizationsLocationsBucketsList (Maybe Text)
olblCallback
  = lens _olblCallback (\ s a -> s{_olblCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsList
         where
        type Rs OrganizationsLocationsBucketsList =
             ListBucketsResponse
        type Scopes OrganizationsLocationsBucketsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsLocationsBucketsList'{..}
          = go _olblParent _olblXgafv _olblUploadProtocol
              _olblAccessToken
              _olblUploadType
              _olblPageToken
              _olblPageSize
              _olblCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsBucketsListResource)
                      mempty
