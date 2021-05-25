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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a bucket. A bucket that has been deleted may be undeleted
-- within the grace period of 7 days.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.undelete@.
module Network.Google.Resource.Logging.Locations.Buckets.Undelete
    (
    -- * REST Resource
      LocationsBucketsUndeleteResource

    -- * Creating a Request
    , locationsBucketsUndelete
    , LocationsBucketsUndelete

    -- * Request Lenses
    , lbuXgafv
    , lbuUploadProtocol
    , lbuAccessToken
    , lbuUploadType
    , lbuPayload
    , lbuName
    , lbuCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.undelete@ method which the
-- 'LocationsBucketsUndelete' request conforms to.
type LocationsBucketsUndeleteResource =
     "v2" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UndeleteBucketRequest :>
                       Post '[JSON] Empty

-- | Undeletes a bucket. A bucket that has been deleted may be undeleted
-- within the grace period of 7 days.
--
-- /See:/ 'locationsBucketsUndelete' smart constructor.
data LocationsBucketsUndelete =
  LocationsBucketsUndelete'
    { _lbuXgafv :: !(Maybe Xgafv)
    , _lbuUploadProtocol :: !(Maybe Text)
    , _lbuAccessToken :: !(Maybe Text)
    , _lbuUploadType :: !(Maybe Text)
    , _lbuPayload :: !UndeleteBucketRequest
    , _lbuName :: !Text
    , _lbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbuXgafv'
--
-- * 'lbuUploadProtocol'
--
-- * 'lbuAccessToken'
--
-- * 'lbuUploadType'
--
-- * 'lbuPayload'
--
-- * 'lbuName'
--
-- * 'lbuCallback'
locationsBucketsUndelete
    :: UndeleteBucketRequest -- ^ 'lbuPayload'
    -> Text -- ^ 'lbuName'
    -> LocationsBucketsUndelete
locationsBucketsUndelete pLbuPayload_ pLbuName_ =
  LocationsBucketsUndelete'
    { _lbuXgafv = Nothing
    , _lbuUploadProtocol = Nothing
    , _lbuAccessToken = Nothing
    , _lbuUploadType = Nothing
    , _lbuPayload = pLbuPayload_
    , _lbuName = pLbuName_
    , _lbuCallback = Nothing
    }


-- | V1 error format.
lbuXgafv :: Lens' LocationsBucketsUndelete (Maybe Xgafv)
lbuXgafv = lens _lbuXgafv (\ s a -> s{_lbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbuUploadProtocol :: Lens' LocationsBucketsUndelete (Maybe Text)
lbuUploadProtocol
  = lens _lbuUploadProtocol
      (\ s a -> s{_lbuUploadProtocol = a})

-- | OAuth access token.
lbuAccessToken :: Lens' LocationsBucketsUndelete (Maybe Text)
lbuAccessToken
  = lens _lbuAccessToken
      (\ s a -> s{_lbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbuUploadType :: Lens' LocationsBucketsUndelete (Maybe Text)
lbuUploadType
  = lens _lbuUploadType
      (\ s a -> s{_lbuUploadType = a})

-- | Multipart request metadata.
lbuPayload :: Lens' LocationsBucketsUndelete UndeleteBucketRequest
lbuPayload
  = lens _lbuPayload (\ s a -> s{_lbuPayload = a})

-- | Required. The full resource name of the bucket to undelete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
lbuName :: Lens' LocationsBucketsUndelete Text
lbuName = lens _lbuName (\ s a -> s{_lbuName = a})

-- | JSONP
lbuCallback :: Lens' LocationsBucketsUndelete (Maybe Text)
lbuCallback
  = lens _lbuCallback (\ s a -> s{_lbuCallback = a})

instance GoogleRequest LocationsBucketsUndelete where
        type Rs LocationsBucketsUndelete = Empty
        type Scopes LocationsBucketsUndelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LocationsBucketsUndelete'{..}
          = go _lbuName _lbuXgafv _lbuUploadProtocol
              _lbuAccessToken
              _lbuUploadType
              _lbuCallback
              (Just AltJSON)
              _lbuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsUndeleteResource)
                      mempty
