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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.patch@.
module Network.Google.Resource.Logging.Locations.Buckets.Patch
    (
    -- * REST Resource
      LocationsBucketsPatchResource

    -- * Creating a Request
    , locationsBucketsPatch
    , LocationsBucketsPatch

    -- * Request Lenses
    , lbpXgafv
    , lbpUploadProtocol
    , lbpUpdateMask
    , lbpAccessToken
    , lbpUploadType
    , lbpPayload
    , lbpName
    , lbpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.patch@ method which the
-- 'LocationsBucketsPatch' request conforms to.
type LocationsBucketsPatchResource =
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
-- /See:/ 'locationsBucketsPatch' smart constructor.
data LocationsBucketsPatch =
  LocationsBucketsPatch'
    { _lbpXgafv :: !(Maybe Xgafv)
    , _lbpUploadProtocol :: !(Maybe Text)
    , _lbpUpdateMask :: !(Maybe GFieldMask)
    , _lbpAccessToken :: !(Maybe Text)
    , _lbpUploadType :: !(Maybe Text)
    , _lbpPayload :: !LogBucket
    , _lbpName :: !Text
    , _lbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbpXgafv'
--
-- * 'lbpUploadProtocol'
--
-- * 'lbpUpdateMask'
--
-- * 'lbpAccessToken'
--
-- * 'lbpUploadType'
--
-- * 'lbpPayload'
--
-- * 'lbpName'
--
-- * 'lbpCallback'
locationsBucketsPatch
    :: LogBucket -- ^ 'lbpPayload'
    -> Text -- ^ 'lbpName'
    -> LocationsBucketsPatch
locationsBucketsPatch pLbpPayload_ pLbpName_ =
  LocationsBucketsPatch'
    { _lbpXgafv = Nothing
    , _lbpUploadProtocol = Nothing
    , _lbpUpdateMask = Nothing
    , _lbpAccessToken = Nothing
    , _lbpUploadType = Nothing
    , _lbpPayload = pLbpPayload_
    , _lbpName = pLbpName_
    , _lbpCallback = Nothing
    }


-- | V1 error format.
lbpXgafv :: Lens' LocationsBucketsPatch (Maybe Xgafv)
lbpXgafv = lens _lbpXgafv (\ s a -> s{_lbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbpUploadProtocol :: Lens' LocationsBucketsPatch (Maybe Text)
lbpUploadProtocol
  = lens _lbpUploadProtocol
      (\ s a -> s{_lbpUploadProtocol = a})

-- | Required. Field mask that specifies the fields in bucket that need an
-- update. A bucket field will be overwritten if, and only if, it is in the
-- update mask. name and output only fields cannot be updated.For a
-- detailed FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=retention_days.
lbpUpdateMask :: Lens' LocationsBucketsPatch (Maybe GFieldMask)
lbpUpdateMask
  = lens _lbpUpdateMask
      (\ s a -> s{_lbpUpdateMask = a})

-- | OAuth access token.
lbpAccessToken :: Lens' LocationsBucketsPatch (Maybe Text)
lbpAccessToken
  = lens _lbpAccessToken
      (\ s a -> s{_lbpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbpUploadType :: Lens' LocationsBucketsPatch (Maybe Text)
lbpUploadType
  = lens _lbpUploadType
      (\ s a -> s{_lbpUploadType = a})

-- | Multipart request metadata.
lbpPayload :: Lens' LocationsBucketsPatch LogBucket
lbpPayload
  = lens _lbpPayload (\ s a -> s{_lbpPayload = a})

-- | Required. The full resource name of the bucket to update.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
-- Also requires permission \"resourcemanager.projects.updateLiens\" to set
-- the locked property
lbpName :: Lens' LocationsBucketsPatch Text
lbpName = lens _lbpName (\ s a -> s{_lbpName = a})

-- | JSONP
lbpCallback :: Lens' LocationsBucketsPatch (Maybe Text)
lbpCallback
  = lens _lbpCallback (\ s a -> s{_lbpCallback = a})

instance GoogleRequest LocationsBucketsPatch where
        type Rs LocationsBucketsPatch = LogBucket
        type Scopes LocationsBucketsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LocationsBucketsPatch'{..}
          = go _lbpName _lbpXgafv _lbpUploadProtocol
              _lbpUpdateMask
              _lbpAccessToken
              _lbpUploadType
              _lbpCallback
              (Just AltJSON)
              _lbpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsPatchResource)
                      mempty
