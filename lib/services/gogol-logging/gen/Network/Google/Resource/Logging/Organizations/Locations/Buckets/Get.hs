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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.get@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Get
    (
    -- * REST Resource
      OrganizationsLocationsBucketsGetResource

    -- * Creating a Request
    , organizationsLocationsBucketsGet
    , OrganizationsLocationsBucketsGet

    -- * Request Lenses
    , olbgXgafv
    , olbgUploadProtocol
    , olbgAccessToken
    , olbgUploadType
    , olbgName
    , olbgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.get@ method which the
-- 'OrganizationsLocationsBucketsGet' request conforms to.
type OrganizationsLocationsBucketsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogBucket

-- | Gets a bucket.
--
-- /See:/ 'organizationsLocationsBucketsGet' smart constructor.
data OrganizationsLocationsBucketsGet =
  OrganizationsLocationsBucketsGet'
    { _olbgXgafv :: !(Maybe Xgafv)
    , _olbgUploadProtocol :: !(Maybe Text)
    , _olbgAccessToken :: !(Maybe Text)
    , _olbgUploadType :: !(Maybe Text)
    , _olbgName :: !Text
    , _olbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbgXgafv'
--
-- * 'olbgUploadProtocol'
--
-- * 'olbgAccessToken'
--
-- * 'olbgUploadType'
--
-- * 'olbgName'
--
-- * 'olbgCallback'
organizationsLocationsBucketsGet
    :: Text -- ^ 'olbgName'
    -> OrganizationsLocationsBucketsGet
organizationsLocationsBucketsGet pOlbgName_ =
  OrganizationsLocationsBucketsGet'
    { _olbgXgafv = Nothing
    , _olbgUploadProtocol = Nothing
    , _olbgAccessToken = Nothing
    , _olbgUploadType = Nothing
    , _olbgName = pOlbgName_
    , _olbgCallback = Nothing
    }


-- | V1 error format.
olbgXgafv :: Lens' OrganizationsLocationsBucketsGet (Maybe Xgafv)
olbgXgafv
  = lens _olbgXgafv (\ s a -> s{_olbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbgUploadProtocol :: Lens' OrganizationsLocationsBucketsGet (Maybe Text)
olbgUploadProtocol
  = lens _olbgUploadProtocol
      (\ s a -> s{_olbgUploadProtocol = a})

-- | OAuth access token.
olbgAccessToken :: Lens' OrganizationsLocationsBucketsGet (Maybe Text)
olbgAccessToken
  = lens _olbgAccessToken
      (\ s a -> s{_olbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbgUploadType :: Lens' OrganizationsLocationsBucketsGet (Maybe Text)
olbgUploadType
  = lens _olbgUploadType
      (\ s a -> s{_olbgUploadType = a})

-- | Required. The resource name of the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
olbgName :: Lens' OrganizationsLocationsBucketsGet Text
olbgName = lens _olbgName (\ s a -> s{_olbgName = a})

-- | JSONP
olbgCallback :: Lens' OrganizationsLocationsBucketsGet (Maybe Text)
olbgCallback
  = lens _olbgCallback (\ s a -> s{_olbgCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsGet
         where
        type Rs OrganizationsLocationsBucketsGet = LogBucket
        type Scopes OrganizationsLocationsBucketsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsLocationsBucketsGet'{..}
          = go _olbgName _olbgXgafv _olbgUploadProtocol
              _olbgAccessToken
              _olbgUploadType
              _olbgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsBucketsGetResource)
                      mempty
