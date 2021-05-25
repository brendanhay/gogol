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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Delete
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.delete@.
module Network.Google.Resource.Logging.Locations.Buckets.Delete
    (
    -- * REST Resource
      LocationsBucketsDeleteResource

    -- * Creating a Request
    , locationsBucketsDelete
    , LocationsBucketsDelete

    -- * Request Lenses
    , lbdXgafv
    , lbdUploadProtocol
    , lbdAccessToken
    , lbdUploadType
    , lbdName
    , lbdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.delete@ method which the
-- 'LocationsBucketsDelete' request conforms to.
type LocationsBucketsDeleteResource =
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
-- /See:/ 'locationsBucketsDelete' smart constructor.
data LocationsBucketsDelete =
  LocationsBucketsDelete'
    { _lbdXgafv :: !(Maybe Xgafv)
    , _lbdUploadProtocol :: !(Maybe Text)
    , _lbdAccessToken :: !(Maybe Text)
    , _lbdUploadType :: !(Maybe Text)
    , _lbdName :: !Text
    , _lbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbdXgafv'
--
-- * 'lbdUploadProtocol'
--
-- * 'lbdAccessToken'
--
-- * 'lbdUploadType'
--
-- * 'lbdName'
--
-- * 'lbdCallback'
locationsBucketsDelete
    :: Text -- ^ 'lbdName'
    -> LocationsBucketsDelete
locationsBucketsDelete pLbdName_ =
  LocationsBucketsDelete'
    { _lbdXgafv = Nothing
    , _lbdUploadProtocol = Nothing
    , _lbdAccessToken = Nothing
    , _lbdUploadType = Nothing
    , _lbdName = pLbdName_
    , _lbdCallback = Nothing
    }


-- | V1 error format.
lbdXgafv :: Lens' LocationsBucketsDelete (Maybe Xgafv)
lbdXgafv = lens _lbdXgafv (\ s a -> s{_lbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbdUploadProtocol :: Lens' LocationsBucketsDelete (Maybe Text)
lbdUploadProtocol
  = lens _lbdUploadProtocol
      (\ s a -> s{_lbdUploadProtocol = a})

-- | OAuth access token.
lbdAccessToken :: Lens' LocationsBucketsDelete (Maybe Text)
lbdAccessToken
  = lens _lbdAccessToken
      (\ s a -> s{_lbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbdUploadType :: Lens' LocationsBucketsDelete (Maybe Text)
lbdUploadType
  = lens _lbdUploadType
      (\ s a -> s{_lbdUploadType = a})

-- | Required. The full resource name of the bucket to delete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
lbdName :: Lens' LocationsBucketsDelete Text
lbdName = lens _lbdName (\ s a -> s{_lbdName = a})

-- | JSONP
lbdCallback :: Lens' LocationsBucketsDelete (Maybe Text)
lbdCallback
  = lens _lbdCallback (\ s a -> s{_lbdCallback = a})

instance GoogleRequest LocationsBucketsDelete where
        type Rs LocationsBucketsDelete = Empty
        type Scopes LocationsBucketsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LocationsBucketsDelete'{..}
          = go _lbdName _lbdXgafv _lbdUploadProtocol
              _lbdAccessToken
              _lbdUploadType
              _lbdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsDeleteResource)
                      mempty
