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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.get@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Get
    (
    -- * REST Resource
      FoldersLocationsBucketsGetResource

    -- * Creating a Request
    , foldersLocationsBucketsGet
    , FoldersLocationsBucketsGet

    -- * Request Lenses
    , flbgXgafv
    , flbgUploadProtocol
    , flbgAccessToken
    , flbgUploadType
    , flbgName
    , flbgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.get@ method which the
-- 'FoldersLocationsBucketsGet' request conforms to.
type FoldersLocationsBucketsGetResource =
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
-- /See:/ 'foldersLocationsBucketsGet' smart constructor.
data FoldersLocationsBucketsGet =
  FoldersLocationsBucketsGet'
    { _flbgXgafv :: !(Maybe Xgafv)
    , _flbgUploadProtocol :: !(Maybe Text)
    , _flbgAccessToken :: !(Maybe Text)
    , _flbgUploadType :: !(Maybe Text)
    , _flbgName :: !Text
    , _flbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbgXgafv'
--
-- * 'flbgUploadProtocol'
--
-- * 'flbgAccessToken'
--
-- * 'flbgUploadType'
--
-- * 'flbgName'
--
-- * 'flbgCallback'
foldersLocationsBucketsGet
    :: Text -- ^ 'flbgName'
    -> FoldersLocationsBucketsGet
foldersLocationsBucketsGet pFlbgName_ =
  FoldersLocationsBucketsGet'
    { _flbgXgafv = Nothing
    , _flbgUploadProtocol = Nothing
    , _flbgAccessToken = Nothing
    , _flbgUploadType = Nothing
    , _flbgName = pFlbgName_
    , _flbgCallback = Nothing
    }


-- | V1 error format.
flbgXgafv :: Lens' FoldersLocationsBucketsGet (Maybe Xgafv)
flbgXgafv
  = lens _flbgXgafv (\ s a -> s{_flbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbgUploadProtocol :: Lens' FoldersLocationsBucketsGet (Maybe Text)
flbgUploadProtocol
  = lens _flbgUploadProtocol
      (\ s a -> s{_flbgUploadProtocol = a})

-- | OAuth access token.
flbgAccessToken :: Lens' FoldersLocationsBucketsGet (Maybe Text)
flbgAccessToken
  = lens _flbgAccessToken
      (\ s a -> s{_flbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbgUploadType :: Lens' FoldersLocationsBucketsGet (Maybe Text)
flbgUploadType
  = lens _flbgUploadType
      (\ s a -> s{_flbgUploadType = a})

-- | Required. The resource name of the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
flbgName :: Lens' FoldersLocationsBucketsGet Text
flbgName = lens _flbgName (\ s a -> s{_flbgName = a})

-- | JSONP
flbgCallback :: Lens' FoldersLocationsBucketsGet (Maybe Text)
flbgCallback
  = lens _flbgCallback (\ s a -> s{_flbgCallback = a})

instance GoogleRequest FoldersLocationsBucketsGet
         where
        type Rs FoldersLocationsBucketsGet = LogBucket
        type Scopes FoldersLocationsBucketsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersLocationsBucketsGet'{..}
          = go _flbgName _flbgXgafv _flbgUploadProtocol
              _flbgAccessToken
              _flbgUploadType
              _flbgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersLocationsBucketsGetResource)
                      mempty
