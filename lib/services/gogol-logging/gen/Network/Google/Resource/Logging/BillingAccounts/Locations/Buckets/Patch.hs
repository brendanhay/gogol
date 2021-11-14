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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a bucket. This method replaces the following fields in the
-- existing bucket with values from the new bucket: retention_periodIf the
-- retention period is decreased and the bucket is locked,
-- FAILED_PRECONDITION will be returned.If the bucket has a LifecycleState
-- of DELETE_REQUESTED, FAILED_PRECONDITION will be returned.A buckets
-- region may not be modified after it is created.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.patch@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Patch
    (
    -- * REST Resource
      BillingAccountsLocationsBucketsPatchResource

    -- * Creating a Request
    , billingAccountsLocationsBucketsPatch
    , BillingAccountsLocationsBucketsPatch

    -- * Request Lenses
    , balbpXgafv
    , balbpUploadProtocol
    , balbpUpdateMask
    , balbpAccessToken
    , balbpUploadType
    , balbpPayload
    , balbpName
    , balbpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.buckets.patch@ method which the
-- 'BillingAccountsLocationsBucketsPatch' request conforms to.
type BillingAccountsLocationsBucketsPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LogBucket :> Patch '[JSON] LogBucket

-- | Updates a bucket. This method replaces the following fields in the
-- existing bucket with values from the new bucket: retention_periodIf the
-- retention period is decreased and the bucket is locked,
-- FAILED_PRECONDITION will be returned.If the bucket has a LifecycleState
-- of DELETE_REQUESTED, FAILED_PRECONDITION will be returned.A buckets
-- region may not be modified after it is created.
--
-- /See:/ 'billingAccountsLocationsBucketsPatch' smart constructor.
data BillingAccountsLocationsBucketsPatch =
  BillingAccountsLocationsBucketsPatch'
    { _balbpXgafv :: !(Maybe Xgafv)
    , _balbpUploadProtocol :: !(Maybe Text)
    , _balbpUpdateMask :: !(Maybe GFieldMask)
    , _balbpAccessToken :: !(Maybe Text)
    , _balbpUploadType :: !(Maybe Text)
    , _balbpPayload :: !LogBucket
    , _balbpName :: !Text
    , _balbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsBucketsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balbpXgafv'
--
-- * 'balbpUploadProtocol'
--
-- * 'balbpUpdateMask'
--
-- * 'balbpAccessToken'
--
-- * 'balbpUploadType'
--
-- * 'balbpPayload'
--
-- * 'balbpName'
--
-- * 'balbpCallback'
billingAccountsLocationsBucketsPatch
    :: LogBucket -- ^ 'balbpPayload'
    -> Text -- ^ 'balbpName'
    -> BillingAccountsLocationsBucketsPatch
billingAccountsLocationsBucketsPatch pBalbpPayload_ pBalbpName_ =
  BillingAccountsLocationsBucketsPatch'
    { _balbpXgafv = Nothing
    , _balbpUploadProtocol = Nothing
    , _balbpUpdateMask = Nothing
    , _balbpAccessToken = Nothing
    , _balbpUploadType = Nothing
    , _balbpPayload = pBalbpPayload_
    , _balbpName = pBalbpName_
    , _balbpCallback = Nothing
    }


-- | V1 error format.
balbpXgafv :: Lens' BillingAccountsLocationsBucketsPatch (Maybe Xgafv)
balbpXgafv
  = lens _balbpXgafv (\ s a -> s{_balbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balbpUploadProtocol :: Lens' BillingAccountsLocationsBucketsPatch (Maybe Text)
balbpUploadProtocol
  = lens _balbpUploadProtocol
      (\ s a -> s{_balbpUploadProtocol = a})

-- | Required. Field mask that specifies the fields in bucket that need an
-- update. A bucket field will be overwritten if, and only if, it is in the
-- update mask. name and output only fields cannot be updated.For a
-- detailed FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=retention_days.
balbpUpdateMask :: Lens' BillingAccountsLocationsBucketsPatch (Maybe GFieldMask)
balbpUpdateMask
  = lens _balbpUpdateMask
      (\ s a -> s{_balbpUpdateMask = a})

-- | OAuth access token.
balbpAccessToken :: Lens' BillingAccountsLocationsBucketsPatch (Maybe Text)
balbpAccessToken
  = lens _balbpAccessToken
      (\ s a -> s{_balbpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balbpUploadType :: Lens' BillingAccountsLocationsBucketsPatch (Maybe Text)
balbpUploadType
  = lens _balbpUploadType
      (\ s a -> s{_balbpUploadType = a})

-- | Multipart request metadata.
balbpPayload :: Lens' BillingAccountsLocationsBucketsPatch LogBucket
balbpPayload
  = lens _balbpPayload (\ s a -> s{_balbpPayload = a})

-- | Required. The full resource name of the bucket to update.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
-- Also requires permission \"resourcemanager.projects.updateLiens\" to set
-- the locked property
balbpName :: Lens' BillingAccountsLocationsBucketsPatch Text
balbpName
  = lens _balbpName (\ s a -> s{_balbpName = a})

-- | JSONP
balbpCallback :: Lens' BillingAccountsLocationsBucketsPatch (Maybe Text)
balbpCallback
  = lens _balbpCallback
      (\ s a -> s{_balbpCallback = a})

instance GoogleRequest
           BillingAccountsLocationsBucketsPatch
         where
        type Rs BillingAccountsLocationsBucketsPatch =
             LogBucket
        type Scopes BillingAccountsLocationsBucketsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          BillingAccountsLocationsBucketsPatch'{..}
          = go _balbpName _balbpXgafv _balbpUploadProtocol
              _balbpUpdateMask
              _balbpAccessToken
              _balbpUploadType
              _balbpCallback
              (Just AltJSON)
              _balbpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BillingAccountsLocationsBucketsPatchResource)
                      mempty
