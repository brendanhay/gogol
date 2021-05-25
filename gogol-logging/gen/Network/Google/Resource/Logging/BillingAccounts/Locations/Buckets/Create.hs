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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a bucket that can be used to store log entries. Once a bucket
-- has been created, the region cannot be changed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.create@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Create
    (
    -- * REST Resource
      BillingAccountsLocationsBucketsCreateResource

    -- * Creating a Request
    , billingAccountsLocationsBucketsCreate
    , BillingAccountsLocationsBucketsCreate

    -- * Request Lenses
    , balbcParent
    , balbcXgafv
    , balbcUploadProtocol
    , balbcAccessToken
    , balbcBucketId
    , balbcUploadType
    , balbcPayload
    , balbcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.buckets.create@ method which the
-- 'BillingAccountsLocationsBucketsCreate' request conforms to.
type BillingAccountsLocationsBucketsCreateResource =
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
-- /See:/ 'billingAccountsLocationsBucketsCreate' smart constructor.
data BillingAccountsLocationsBucketsCreate =
  BillingAccountsLocationsBucketsCreate'
    { _balbcParent :: !Text
    , _balbcXgafv :: !(Maybe Xgafv)
    , _balbcUploadProtocol :: !(Maybe Text)
    , _balbcAccessToken :: !(Maybe Text)
    , _balbcBucketId :: !(Maybe Text)
    , _balbcUploadType :: !(Maybe Text)
    , _balbcPayload :: !LogBucket
    , _balbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsBucketsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balbcParent'
--
-- * 'balbcXgafv'
--
-- * 'balbcUploadProtocol'
--
-- * 'balbcAccessToken'
--
-- * 'balbcBucketId'
--
-- * 'balbcUploadType'
--
-- * 'balbcPayload'
--
-- * 'balbcCallback'
billingAccountsLocationsBucketsCreate
    :: Text -- ^ 'balbcParent'
    -> LogBucket -- ^ 'balbcPayload'
    -> BillingAccountsLocationsBucketsCreate
billingAccountsLocationsBucketsCreate pBalbcParent_ pBalbcPayload_ =
  BillingAccountsLocationsBucketsCreate'
    { _balbcParent = pBalbcParent_
    , _balbcXgafv = Nothing
    , _balbcUploadProtocol = Nothing
    , _balbcAccessToken = Nothing
    , _balbcBucketId = Nothing
    , _balbcUploadType = Nothing
    , _balbcPayload = pBalbcPayload_
    , _balbcCallback = Nothing
    }


-- | Required. The resource in which to create the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\" Example:
-- \"projects\/my-logging-project\/locations\/global\"
balbcParent :: Lens' BillingAccountsLocationsBucketsCreate Text
balbcParent
  = lens _balbcParent (\ s a -> s{_balbcParent = a})

-- | V1 error format.
balbcXgafv :: Lens' BillingAccountsLocationsBucketsCreate (Maybe Xgafv)
balbcXgafv
  = lens _balbcXgafv (\ s a -> s{_balbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balbcUploadProtocol :: Lens' BillingAccountsLocationsBucketsCreate (Maybe Text)
balbcUploadProtocol
  = lens _balbcUploadProtocol
      (\ s a -> s{_balbcUploadProtocol = a})

-- | OAuth access token.
balbcAccessToken :: Lens' BillingAccountsLocationsBucketsCreate (Maybe Text)
balbcAccessToken
  = lens _balbcAccessToken
      (\ s a -> s{_balbcAccessToken = a})

-- | Required. A client-assigned identifier such as \"my-bucket\".
-- Identifiers are limited to 100 characters and can include only letters,
-- digits, underscores, hyphens, and periods.
balbcBucketId :: Lens' BillingAccountsLocationsBucketsCreate (Maybe Text)
balbcBucketId
  = lens _balbcBucketId
      (\ s a -> s{_balbcBucketId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balbcUploadType :: Lens' BillingAccountsLocationsBucketsCreate (Maybe Text)
balbcUploadType
  = lens _balbcUploadType
      (\ s a -> s{_balbcUploadType = a})

-- | Multipart request metadata.
balbcPayload :: Lens' BillingAccountsLocationsBucketsCreate LogBucket
balbcPayload
  = lens _balbcPayload (\ s a -> s{_balbcPayload = a})

-- | JSONP
balbcCallback :: Lens' BillingAccountsLocationsBucketsCreate (Maybe Text)
balbcCallback
  = lens _balbcCallback
      (\ s a -> s{_balbcCallback = a})

instance GoogleRequest
           BillingAccountsLocationsBucketsCreate
         where
        type Rs BillingAccountsLocationsBucketsCreate =
             LogBucket
        type Scopes BillingAccountsLocationsBucketsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          BillingAccountsLocationsBucketsCreate'{..}
          = go _balbcParent _balbcXgafv _balbcUploadProtocol
              _balbcAccessToken
              _balbcBucketId
              _balbcUploadType
              _balbcCallback
              (Just AltJSON)
              _balbcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BillingAccountsLocationsBucketsCreateResource)
                      mempty
