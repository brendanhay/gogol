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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a bucket that can be used to store log entries. Once a bucket
-- has been created, the region cannot be changed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.create@.
module Network.Google.Resource.Logging.Locations.Buckets.Create
    (
    -- * REST Resource
      LocationsBucketsCreateResource

    -- * Creating a Request
    , locationsBucketsCreate
    , LocationsBucketsCreate

    -- * Request Lenses
    , lbcParent
    , lbcXgafv
    , lbcUploadProtocol
    , lbcAccessToken
    , lbcBucketId
    , lbcUploadType
    , lbcPayload
    , lbcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.create@ method which the
-- 'LocationsBucketsCreate' request conforms to.
type LocationsBucketsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "buckets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "bucketId" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LogBucket :> Post '[JSON] LogBucket

-- | Creates a bucket that can be used to store log entries. Once a bucket
-- has been created, the region cannot be changed.
--
-- /See:/ 'locationsBucketsCreate' smart constructor.
data LocationsBucketsCreate =
  LocationsBucketsCreate'
    { _lbcParent :: !Text
    , _lbcXgafv :: !(Maybe Xgafv)
    , _lbcUploadProtocol :: !(Maybe Text)
    , _lbcAccessToken :: !(Maybe Text)
    , _lbcBucketId :: !(Maybe Text)
    , _lbcUploadType :: !(Maybe Text)
    , _lbcPayload :: !LogBucket
    , _lbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbcParent'
--
-- * 'lbcXgafv'
--
-- * 'lbcUploadProtocol'
--
-- * 'lbcAccessToken'
--
-- * 'lbcBucketId'
--
-- * 'lbcUploadType'
--
-- * 'lbcPayload'
--
-- * 'lbcCallback'
locationsBucketsCreate
    :: Text -- ^ 'lbcParent'
    -> LogBucket -- ^ 'lbcPayload'
    -> LocationsBucketsCreate
locationsBucketsCreate pLbcParent_ pLbcPayload_ =
  LocationsBucketsCreate'
    { _lbcParent = pLbcParent_
    , _lbcXgafv = Nothing
    , _lbcUploadProtocol = Nothing
    , _lbcAccessToken = Nothing
    , _lbcBucketId = Nothing
    , _lbcUploadType = Nothing
    , _lbcPayload = pLbcPayload_
    , _lbcCallback = Nothing
    }


-- | Required. The resource in which to create the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\" Example:
-- \"projects\/my-logging-project\/locations\/global\"
lbcParent :: Lens' LocationsBucketsCreate Text
lbcParent
  = lens _lbcParent (\ s a -> s{_lbcParent = a})

-- | V1 error format.
lbcXgafv :: Lens' LocationsBucketsCreate (Maybe Xgafv)
lbcXgafv = lens _lbcXgafv (\ s a -> s{_lbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbcUploadProtocol :: Lens' LocationsBucketsCreate (Maybe Text)
lbcUploadProtocol
  = lens _lbcUploadProtocol
      (\ s a -> s{_lbcUploadProtocol = a})

-- | OAuth access token.
lbcAccessToken :: Lens' LocationsBucketsCreate (Maybe Text)
lbcAccessToken
  = lens _lbcAccessToken
      (\ s a -> s{_lbcAccessToken = a})

-- | Required. A client-assigned identifier such as \"my-bucket\".
-- Identifiers are limited to 100 characters and can include only letters,
-- digits, underscores, hyphens, and periods.
lbcBucketId :: Lens' LocationsBucketsCreate (Maybe Text)
lbcBucketId
  = lens _lbcBucketId (\ s a -> s{_lbcBucketId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbcUploadType :: Lens' LocationsBucketsCreate (Maybe Text)
lbcUploadType
  = lens _lbcUploadType
      (\ s a -> s{_lbcUploadType = a})

-- | Multipart request metadata.
lbcPayload :: Lens' LocationsBucketsCreate LogBucket
lbcPayload
  = lens _lbcPayload (\ s a -> s{_lbcPayload = a})

-- | JSONP
lbcCallback :: Lens' LocationsBucketsCreate (Maybe Text)
lbcCallback
  = lens _lbcCallback (\ s a -> s{_lbcCallback = a})

instance GoogleRequest LocationsBucketsCreate where
        type Rs LocationsBucketsCreate = LogBucket
        type Scopes LocationsBucketsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LocationsBucketsCreate'{..}
          = go _lbcParent _lbcXgafv _lbcUploadProtocol
              _lbcAccessToken
              _lbcBucketId
              _lbcUploadType
              _lbcCallback
              (Just AltJSON)
              _lbcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsCreateResource)
                      mempty
