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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a bucket. A bucket that has been deleted may be undeleted
-- within the grace period of 7 days.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.undelete@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Undelete
    (
    -- * REST Resource
      FoldersLocationsBucketsUndeleteResource

    -- * Creating a Request
    , foldersLocationsBucketsUndelete
    , FoldersLocationsBucketsUndelete

    -- * Request Lenses
    , flbuXgafv
    , flbuUploadProtocol
    , flbuAccessToken
    , flbuUploadType
    , flbuPayload
    , flbuName
    , flbuCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.undelete@ method which the
-- 'FoldersLocationsBucketsUndelete' request conforms to.
type FoldersLocationsBucketsUndeleteResource =
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
-- /See:/ 'foldersLocationsBucketsUndelete' smart constructor.
data FoldersLocationsBucketsUndelete =
  FoldersLocationsBucketsUndelete'
    { _flbuXgafv :: !(Maybe Xgafv)
    , _flbuUploadProtocol :: !(Maybe Text)
    , _flbuAccessToken :: !(Maybe Text)
    , _flbuUploadType :: !(Maybe Text)
    , _flbuPayload :: !UndeleteBucketRequest
    , _flbuName :: !Text
    , _flbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbuXgafv'
--
-- * 'flbuUploadProtocol'
--
-- * 'flbuAccessToken'
--
-- * 'flbuUploadType'
--
-- * 'flbuPayload'
--
-- * 'flbuName'
--
-- * 'flbuCallback'
foldersLocationsBucketsUndelete
    :: UndeleteBucketRequest -- ^ 'flbuPayload'
    -> Text -- ^ 'flbuName'
    -> FoldersLocationsBucketsUndelete
foldersLocationsBucketsUndelete pFlbuPayload_ pFlbuName_ =
  FoldersLocationsBucketsUndelete'
    { _flbuXgafv = Nothing
    , _flbuUploadProtocol = Nothing
    , _flbuAccessToken = Nothing
    , _flbuUploadType = Nothing
    , _flbuPayload = pFlbuPayload_
    , _flbuName = pFlbuName_
    , _flbuCallback = Nothing
    }


-- | V1 error format.
flbuXgafv :: Lens' FoldersLocationsBucketsUndelete (Maybe Xgafv)
flbuXgafv
  = lens _flbuXgafv (\ s a -> s{_flbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbuUploadProtocol :: Lens' FoldersLocationsBucketsUndelete (Maybe Text)
flbuUploadProtocol
  = lens _flbuUploadProtocol
      (\ s a -> s{_flbuUploadProtocol = a})

-- | OAuth access token.
flbuAccessToken :: Lens' FoldersLocationsBucketsUndelete (Maybe Text)
flbuAccessToken
  = lens _flbuAccessToken
      (\ s a -> s{_flbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbuUploadType :: Lens' FoldersLocationsBucketsUndelete (Maybe Text)
flbuUploadType
  = lens _flbuUploadType
      (\ s a -> s{_flbuUploadType = a})

-- | Multipart request metadata.
flbuPayload :: Lens' FoldersLocationsBucketsUndelete UndeleteBucketRequest
flbuPayload
  = lens _flbuPayload (\ s a -> s{_flbuPayload = a})

-- | Required. The full resource name of the bucket to undelete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
flbuName :: Lens' FoldersLocationsBucketsUndelete Text
flbuName = lens _flbuName (\ s a -> s{_flbuName = a})

-- | JSONP
flbuCallback :: Lens' FoldersLocationsBucketsUndelete (Maybe Text)
flbuCallback
  = lens _flbuCallback (\ s a -> s{_flbuCallback = a})

instance GoogleRequest
           FoldersLocationsBucketsUndelete
         where
        type Rs FoldersLocationsBucketsUndelete = Empty
        type Scopes FoldersLocationsBucketsUndelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersLocationsBucketsUndelete'{..}
          = go _flbuName _flbuXgafv _flbuUploadProtocol
              _flbuAccessToken
              _flbuUploadType
              _flbuCallback
              (Just AltJSON)
              _flbuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsBucketsUndeleteResource)
                      mempty
