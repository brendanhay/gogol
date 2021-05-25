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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Patch
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.patch@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Patch
    (
    -- * REST Resource
      ProjectsLocationsBucketsPatchResource

    -- * Creating a Request
    , projectsLocationsBucketsPatch
    , ProjectsLocationsBucketsPatch

    -- * Request Lenses
    , plbpXgafv
    , plbpUploadProtocol
    , plbpUpdateMask
    , plbpAccessToken
    , plbpUploadType
    , plbpPayload
    , plbpName
    , plbpCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.patch@ method which the
-- 'ProjectsLocationsBucketsPatch' request conforms to.
type ProjectsLocationsBucketsPatchResource =
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
-- /See:/ 'projectsLocationsBucketsPatch' smart constructor.
data ProjectsLocationsBucketsPatch =
  ProjectsLocationsBucketsPatch'
    { _plbpXgafv :: !(Maybe Xgafv)
    , _plbpUploadProtocol :: !(Maybe Text)
    , _plbpUpdateMask :: !(Maybe GFieldMask)
    , _plbpAccessToken :: !(Maybe Text)
    , _plbpUploadType :: !(Maybe Text)
    , _plbpPayload :: !LogBucket
    , _plbpName :: !Text
    , _plbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbpXgafv'
--
-- * 'plbpUploadProtocol'
--
-- * 'plbpUpdateMask'
--
-- * 'plbpAccessToken'
--
-- * 'plbpUploadType'
--
-- * 'plbpPayload'
--
-- * 'plbpName'
--
-- * 'plbpCallback'
projectsLocationsBucketsPatch
    :: LogBucket -- ^ 'plbpPayload'
    -> Text -- ^ 'plbpName'
    -> ProjectsLocationsBucketsPatch
projectsLocationsBucketsPatch pPlbpPayload_ pPlbpName_ =
  ProjectsLocationsBucketsPatch'
    { _plbpXgafv = Nothing
    , _plbpUploadProtocol = Nothing
    , _plbpUpdateMask = Nothing
    , _plbpAccessToken = Nothing
    , _plbpUploadType = Nothing
    , _plbpPayload = pPlbpPayload_
    , _plbpName = pPlbpName_
    , _plbpCallback = Nothing
    }


-- | V1 error format.
plbpXgafv :: Lens' ProjectsLocationsBucketsPatch (Maybe Xgafv)
plbpXgafv
  = lens _plbpXgafv (\ s a -> s{_plbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbpUploadProtocol :: Lens' ProjectsLocationsBucketsPatch (Maybe Text)
plbpUploadProtocol
  = lens _plbpUploadProtocol
      (\ s a -> s{_plbpUploadProtocol = a})

-- | Required. Field mask that specifies the fields in bucket that need an
-- update. A bucket field will be overwritten if, and only if, it is in the
-- update mask. name and output only fields cannot be updated.For a
-- detailed FieldMask definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=retention_days.
plbpUpdateMask :: Lens' ProjectsLocationsBucketsPatch (Maybe GFieldMask)
plbpUpdateMask
  = lens _plbpUpdateMask
      (\ s a -> s{_plbpUpdateMask = a})

-- | OAuth access token.
plbpAccessToken :: Lens' ProjectsLocationsBucketsPatch (Maybe Text)
plbpAccessToken
  = lens _plbpAccessToken
      (\ s a -> s{_plbpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbpUploadType :: Lens' ProjectsLocationsBucketsPatch (Maybe Text)
plbpUploadType
  = lens _plbpUploadType
      (\ s a -> s{_plbpUploadType = a})

-- | Multipart request metadata.
plbpPayload :: Lens' ProjectsLocationsBucketsPatch LogBucket
plbpPayload
  = lens _plbpPayload (\ s a -> s{_plbpPayload = a})

-- | Required. The full resource name of the bucket to update.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
-- Also requires permission \"resourcemanager.projects.updateLiens\" to set
-- the locked property
plbpName :: Lens' ProjectsLocationsBucketsPatch Text
plbpName = lens _plbpName (\ s a -> s{_plbpName = a})

-- | JSONP
plbpCallback :: Lens' ProjectsLocationsBucketsPatch (Maybe Text)
plbpCallback
  = lens _plbpCallback (\ s a -> s{_plbpCallback = a})

instance GoogleRequest ProjectsLocationsBucketsPatch
         where
        type Rs ProjectsLocationsBucketsPatch = LogBucket
        type Scopes ProjectsLocationsBucketsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsLocationsBucketsPatch'{..}
          = go _plbpName _plbpXgafv _plbpUploadProtocol
              _plbpUpdateMask
              _plbpAccessToken
              _plbpUploadType
              _plbpCallback
              (Just AltJSON)
              _plbpPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBucketsPatchResource)
                      mempty
