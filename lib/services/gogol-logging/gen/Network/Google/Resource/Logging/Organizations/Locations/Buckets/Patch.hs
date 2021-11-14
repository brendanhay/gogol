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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Patch
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.patch@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Patch
    (
    -- * REST Resource
      OrganizationsLocationsBucketsPatchResource

    -- * Creating a Request
    , organizationsLocationsBucketsPatch
    , OrganizationsLocationsBucketsPatch

    -- * Request Lenses
    , olbpXgafv
    , olbpUploadProtocol
    , olbpUpdateMask
    , olbpAccessToken
    , olbpUploadType
    , olbpPayload
    , olbpName
    , olbpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.patch@ method which the
-- 'OrganizationsLocationsBucketsPatch' request conforms to.
type OrganizationsLocationsBucketsPatchResource =
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
-- /See:/ 'organizationsLocationsBucketsPatch' smart constructor.
data OrganizationsLocationsBucketsPatch =
  OrganizationsLocationsBucketsPatch'
    { _olbpXgafv :: !(Maybe Xgafv)
    , _olbpUploadProtocol :: !(Maybe Text)
    , _olbpUpdateMask :: !(Maybe GFieldMask)
    , _olbpAccessToken :: !(Maybe Text)
    , _olbpUploadType :: !(Maybe Text)
    , _olbpPayload :: !LogBucket
    , _olbpName :: !Text
    , _olbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbpXgafv'
--
-- * 'olbpUploadProtocol'
--
-- * 'olbpUpdateMask'
--
-- * 'olbpAccessToken'
--
-- * 'olbpUploadType'
--
-- * 'olbpPayload'
--
-- * 'olbpName'
--
-- * 'olbpCallback'
organizationsLocationsBucketsPatch
    :: LogBucket -- ^ 'olbpPayload'
    -> Text -- ^ 'olbpName'
    -> OrganizationsLocationsBucketsPatch
organizationsLocationsBucketsPatch pOlbpPayload_ pOlbpName_ =
  OrganizationsLocationsBucketsPatch'
    { _olbpXgafv = Nothing
    , _olbpUploadProtocol = Nothing
    , _olbpUpdateMask = Nothing
    , _olbpAccessToken = Nothing
    , _olbpUploadType = Nothing
    , _olbpPayload = pOlbpPayload_
    , _olbpName = pOlbpName_
    , _olbpCallback = Nothing
    }


-- | V1 error format.
olbpXgafv :: Lens' OrganizationsLocationsBucketsPatch (Maybe Xgafv)
olbpXgafv
  = lens _olbpXgafv (\ s a -> s{_olbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbpUploadProtocol :: Lens' OrganizationsLocationsBucketsPatch (Maybe Text)
olbpUploadProtocol
  = lens _olbpUploadProtocol
      (\ s a -> s{_olbpUploadProtocol = a})

-- | Required. Field mask that specifies the fields in bucket that need an
-- update. A bucket field will be overwritten if, and only if, it is in the
-- update mask. name and output only fields cannot be updated.For a
-- detailed FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=retention_days.
olbpUpdateMask :: Lens' OrganizationsLocationsBucketsPatch (Maybe GFieldMask)
olbpUpdateMask
  = lens _olbpUpdateMask
      (\ s a -> s{_olbpUpdateMask = a})

-- | OAuth access token.
olbpAccessToken :: Lens' OrganizationsLocationsBucketsPatch (Maybe Text)
olbpAccessToken
  = lens _olbpAccessToken
      (\ s a -> s{_olbpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbpUploadType :: Lens' OrganizationsLocationsBucketsPatch (Maybe Text)
olbpUploadType
  = lens _olbpUploadType
      (\ s a -> s{_olbpUploadType = a})

-- | Multipart request metadata.
olbpPayload :: Lens' OrganizationsLocationsBucketsPatch LogBucket
olbpPayload
  = lens _olbpPayload (\ s a -> s{_olbpPayload = a})

-- | Required. The full resource name of the bucket to update.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
-- Also requires permission \"resourcemanager.projects.updateLiens\" to set
-- the locked property
olbpName :: Lens' OrganizationsLocationsBucketsPatch Text
olbpName = lens _olbpName (\ s a -> s{_olbpName = a})

-- | JSONP
olbpCallback :: Lens' OrganizationsLocationsBucketsPatch (Maybe Text)
olbpCallback
  = lens _olbpCallback (\ s a -> s{_olbpCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsPatch
         where
        type Rs OrganizationsLocationsBucketsPatch =
             LogBucket
        type Scopes OrganizationsLocationsBucketsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient OrganizationsLocationsBucketsPatch'{..}
          = go _olbpName _olbpXgafv _olbpUploadProtocol
              _olbpUpdateMask
              _olbpAccessToken
              _olbpUploadType
              _olbpCallback
              (Just AltJSON)
              _olbpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsBucketsPatchResource)
                      mempty
