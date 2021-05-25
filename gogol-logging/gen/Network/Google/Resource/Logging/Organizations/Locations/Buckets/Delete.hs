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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After
-- 7 days, the bucket will be purged and all logs in the bucket will be
-- permanently deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.delete@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Delete
    (
    -- * REST Resource
      OrganizationsLocationsBucketsDeleteResource

    -- * Creating a Request
    , organizationsLocationsBucketsDelete
    , OrganizationsLocationsBucketsDelete

    -- * Request Lenses
    , olbdXgafv
    , olbdUploadProtocol
    , olbdAccessToken
    , olbdUploadType
    , olbdName
    , olbdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.delete@ method which the
-- 'OrganizationsLocationsBucketsDelete' request conforms to.
type OrganizationsLocationsBucketsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After
-- 7 days, the bucket will be purged and all logs in the bucket will be
-- permanently deleted.
--
-- /See:/ 'organizationsLocationsBucketsDelete' smart constructor.
data OrganizationsLocationsBucketsDelete =
  OrganizationsLocationsBucketsDelete'
    { _olbdXgafv :: !(Maybe Xgafv)
    , _olbdUploadProtocol :: !(Maybe Text)
    , _olbdAccessToken :: !(Maybe Text)
    , _olbdUploadType :: !(Maybe Text)
    , _olbdName :: !Text
    , _olbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbdXgafv'
--
-- * 'olbdUploadProtocol'
--
-- * 'olbdAccessToken'
--
-- * 'olbdUploadType'
--
-- * 'olbdName'
--
-- * 'olbdCallback'
organizationsLocationsBucketsDelete
    :: Text -- ^ 'olbdName'
    -> OrganizationsLocationsBucketsDelete
organizationsLocationsBucketsDelete pOlbdName_ =
  OrganizationsLocationsBucketsDelete'
    { _olbdXgafv = Nothing
    , _olbdUploadProtocol = Nothing
    , _olbdAccessToken = Nothing
    , _olbdUploadType = Nothing
    , _olbdName = pOlbdName_
    , _olbdCallback = Nothing
    }


-- | V1 error format.
olbdXgafv :: Lens' OrganizationsLocationsBucketsDelete (Maybe Xgafv)
olbdXgafv
  = lens _olbdXgafv (\ s a -> s{_olbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbdUploadProtocol :: Lens' OrganizationsLocationsBucketsDelete (Maybe Text)
olbdUploadProtocol
  = lens _olbdUploadProtocol
      (\ s a -> s{_olbdUploadProtocol = a})

-- | OAuth access token.
olbdAccessToken :: Lens' OrganizationsLocationsBucketsDelete (Maybe Text)
olbdAccessToken
  = lens _olbdAccessToken
      (\ s a -> s{_olbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbdUploadType :: Lens' OrganizationsLocationsBucketsDelete (Maybe Text)
olbdUploadType
  = lens _olbdUploadType
      (\ s a -> s{_olbdUploadType = a})

-- | Required. The full resource name of the bucket to delete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
olbdName :: Lens' OrganizationsLocationsBucketsDelete Text
olbdName = lens _olbdName (\ s a -> s{_olbdName = a})

-- | JSONP
olbdCallback :: Lens' OrganizationsLocationsBucketsDelete (Maybe Text)
olbdCallback
  = lens _olbdCallback (\ s a -> s{_olbdCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsDelete
         where
        type Rs OrganizationsLocationsBucketsDelete = Empty
        type Scopes OrganizationsLocationsBucketsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          OrganizationsLocationsBucketsDelete'{..}
          = go _olbdName _olbdXgafv _olbdUploadProtocol
              _olbdAccessToken
              _olbdUploadType
              _olbdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsBucketsDeleteResource)
                      mempty
