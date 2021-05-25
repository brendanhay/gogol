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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.get@.
module Network.Google.Resource.Logging.Locations.Buckets.Get
    (
    -- * REST Resource
      LocationsBucketsGetResource

    -- * Creating a Request
    , locationsBucketsGet
    , LocationsBucketsGet

    -- * Request Lenses
    , lbgXgafv
    , lbgUploadProtocol
    , lbgAccessToken
    , lbgUploadType
    , lbgName
    , lbgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.get@ method which the
-- 'LocationsBucketsGet' request conforms to.
type LocationsBucketsGetResource =
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
-- /See:/ 'locationsBucketsGet' smart constructor.
data LocationsBucketsGet =
  LocationsBucketsGet'
    { _lbgXgafv :: !(Maybe Xgafv)
    , _lbgUploadProtocol :: !(Maybe Text)
    , _lbgAccessToken :: !(Maybe Text)
    , _lbgUploadType :: !(Maybe Text)
    , _lbgName :: !Text
    , _lbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbgXgafv'
--
-- * 'lbgUploadProtocol'
--
-- * 'lbgAccessToken'
--
-- * 'lbgUploadType'
--
-- * 'lbgName'
--
-- * 'lbgCallback'
locationsBucketsGet
    :: Text -- ^ 'lbgName'
    -> LocationsBucketsGet
locationsBucketsGet pLbgName_ =
  LocationsBucketsGet'
    { _lbgXgafv = Nothing
    , _lbgUploadProtocol = Nothing
    , _lbgAccessToken = Nothing
    , _lbgUploadType = Nothing
    , _lbgName = pLbgName_
    , _lbgCallback = Nothing
    }


-- | V1 error format.
lbgXgafv :: Lens' LocationsBucketsGet (Maybe Xgafv)
lbgXgafv = lens _lbgXgafv (\ s a -> s{_lbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbgUploadProtocol :: Lens' LocationsBucketsGet (Maybe Text)
lbgUploadProtocol
  = lens _lbgUploadProtocol
      (\ s a -> s{_lbgUploadProtocol = a})

-- | OAuth access token.
lbgAccessToken :: Lens' LocationsBucketsGet (Maybe Text)
lbgAccessToken
  = lens _lbgAccessToken
      (\ s a -> s{_lbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbgUploadType :: Lens' LocationsBucketsGet (Maybe Text)
lbgUploadType
  = lens _lbgUploadType
      (\ s a -> s{_lbgUploadType = a})

-- | Required. The resource name of the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
lbgName :: Lens' LocationsBucketsGet Text
lbgName = lens _lbgName (\ s a -> s{_lbgName = a})

-- | JSONP
lbgCallback :: Lens' LocationsBucketsGet (Maybe Text)
lbgCallback
  = lens _lbgCallback (\ s a -> s{_lbgCallback = a})

instance GoogleRequest LocationsBucketsGet where
        type Rs LocationsBucketsGet = LogBucket
        type Scopes LocationsBucketsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LocationsBucketsGet'{..}
          = go _lbgName _lbgXgafv _lbgUploadProtocol
              _lbgAccessToken
              _lbgUploadType
              _lbgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsGetResource)
                      mempty
