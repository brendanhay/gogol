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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Patch
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.patch@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Patch
    (
    -- * REST Resource
      FoldersLocationsBucketsPatchResource

    -- * Creating a Request
    , foldersLocationsBucketsPatch
    , FoldersLocationsBucketsPatch

    -- * Request Lenses
    , flbpXgafv
    , flbpUploadProtocol
    , flbpUpdateMask
    , flbpAccessToken
    , flbpUploadType
    , flbpPayload
    , flbpName
    , flbpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.patch@ method which the
-- 'FoldersLocationsBucketsPatch' request conforms to.
type FoldersLocationsBucketsPatchResource =
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
-- /See:/ 'foldersLocationsBucketsPatch' smart constructor.
data FoldersLocationsBucketsPatch =
  FoldersLocationsBucketsPatch'
    { _flbpXgafv :: !(Maybe Xgafv)
    , _flbpUploadProtocol :: !(Maybe Text)
    , _flbpUpdateMask :: !(Maybe GFieldMask)
    , _flbpAccessToken :: !(Maybe Text)
    , _flbpUploadType :: !(Maybe Text)
    , _flbpPayload :: !LogBucket
    , _flbpName :: !Text
    , _flbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbpXgafv'
--
-- * 'flbpUploadProtocol'
--
-- * 'flbpUpdateMask'
--
-- * 'flbpAccessToken'
--
-- * 'flbpUploadType'
--
-- * 'flbpPayload'
--
-- * 'flbpName'
--
-- * 'flbpCallback'
foldersLocationsBucketsPatch
    :: LogBucket -- ^ 'flbpPayload'
    -> Text -- ^ 'flbpName'
    -> FoldersLocationsBucketsPatch
foldersLocationsBucketsPatch pFlbpPayload_ pFlbpName_ =
  FoldersLocationsBucketsPatch'
    { _flbpXgafv = Nothing
    , _flbpUploadProtocol = Nothing
    , _flbpUpdateMask = Nothing
    , _flbpAccessToken = Nothing
    , _flbpUploadType = Nothing
    , _flbpPayload = pFlbpPayload_
    , _flbpName = pFlbpName_
    , _flbpCallback = Nothing
    }


-- | V1 error format.
flbpXgafv :: Lens' FoldersLocationsBucketsPatch (Maybe Xgafv)
flbpXgafv
  = lens _flbpXgafv (\ s a -> s{_flbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbpUploadProtocol :: Lens' FoldersLocationsBucketsPatch (Maybe Text)
flbpUploadProtocol
  = lens _flbpUploadProtocol
      (\ s a -> s{_flbpUploadProtocol = a})

-- | Required. Field mask that specifies the fields in bucket that need an
-- update. A bucket field will be overwritten if, and only if, it is in the
-- update mask. name and output only fields cannot be updated.For a
-- detailed FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=retention_days.
flbpUpdateMask :: Lens' FoldersLocationsBucketsPatch (Maybe GFieldMask)
flbpUpdateMask
  = lens _flbpUpdateMask
      (\ s a -> s{_flbpUpdateMask = a})

-- | OAuth access token.
flbpAccessToken :: Lens' FoldersLocationsBucketsPatch (Maybe Text)
flbpAccessToken
  = lens _flbpAccessToken
      (\ s a -> s{_flbpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbpUploadType :: Lens' FoldersLocationsBucketsPatch (Maybe Text)
flbpUploadType
  = lens _flbpUploadType
      (\ s a -> s{_flbpUploadType = a})

-- | Multipart request metadata.
flbpPayload :: Lens' FoldersLocationsBucketsPatch LogBucket
flbpPayload
  = lens _flbpPayload (\ s a -> s{_flbpPayload = a})

-- | Required. The full resource name of the bucket to update.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
-- Also requires permission \"resourcemanager.projects.updateLiens\" to set
-- the locked property
flbpName :: Lens' FoldersLocationsBucketsPatch Text
flbpName = lens _flbpName (\ s a -> s{_flbpName = a})

-- | JSONP
flbpCallback :: Lens' FoldersLocationsBucketsPatch (Maybe Text)
flbpCallback
  = lens _flbpCallback (\ s a -> s{_flbpCallback = a})

instance GoogleRequest FoldersLocationsBucketsPatch
         where
        type Rs FoldersLocationsBucketsPatch = LogBucket
        type Scopes FoldersLocationsBucketsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersLocationsBucketsPatch'{..}
          = go _flbpName _flbpXgafv _flbpUploadProtocol
              _flbpUpdateMask
              _flbpAccessToken
              _flbpUploadType
              _flbpCallback
              (Just AltJSON)
              _flbpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersLocationsBucketsPatchResource)
                      mempty
