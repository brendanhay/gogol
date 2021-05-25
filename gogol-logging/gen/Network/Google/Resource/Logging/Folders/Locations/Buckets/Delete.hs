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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After
-- 7 days, the bucket will be purged and all logs in the bucket will be
-- permanently deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.delete@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Delete
    (
    -- * REST Resource
      FoldersLocationsBucketsDeleteResource

    -- * Creating a Request
    , foldersLocationsBucketsDelete
    , FoldersLocationsBucketsDelete

    -- * Request Lenses
    , flbdXgafv
    , flbdUploadProtocol
    , flbdAccessToken
    , flbdUploadType
    , flbdName
    , flbdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.delete@ method which the
-- 'FoldersLocationsBucketsDelete' request conforms to.
type FoldersLocationsBucketsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After
-- 7 days, the bucket will be purged and all logs in the bucket will be
-- permanently deleted.
--
-- /See:/ 'foldersLocationsBucketsDelete' smart constructor.
data FoldersLocationsBucketsDelete =
  FoldersLocationsBucketsDelete'
    { _flbdXgafv :: !(Maybe Xgafv)
    , _flbdUploadProtocol :: !(Maybe Text)
    , _flbdAccessToken :: !(Maybe Text)
    , _flbdUploadType :: !(Maybe Text)
    , _flbdName :: !Text
    , _flbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbdXgafv'
--
-- * 'flbdUploadProtocol'
--
-- * 'flbdAccessToken'
--
-- * 'flbdUploadType'
--
-- * 'flbdName'
--
-- * 'flbdCallback'
foldersLocationsBucketsDelete
    :: Text -- ^ 'flbdName'
    -> FoldersLocationsBucketsDelete
foldersLocationsBucketsDelete pFlbdName_ =
  FoldersLocationsBucketsDelete'
    { _flbdXgafv = Nothing
    , _flbdUploadProtocol = Nothing
    , _flbdAccessToken = Nothing
    , _flbdUploadType = Nothing
    , _flbdName = pFlbdName_
    , _flbdCallback = Nothing
    }


-- | V1 error format.
flbdXgafv :: Lens' FoldersLocationsBucketsDelete (Maybe Xgafv)
flbdXgafv
  = lens _flbdXgafv (\ s a -> s{_flbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbdUploadProtocol :: Lens' FoldersLocationsBucketsDelete (Maybe Text)
flbdUploadProtocol
  = lens _flbdUploadProtocol
      (\ s a -> s{_flbdUploadProtocol = a})

-- | OAuth access token.
flbdAccessToken :: Lens' FoldersLocationsBucketsDelete (Maybe Text)
flbdAccessToken
  = lens _flbdAccessToken
      (\ s a -> s{_flbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbdUploadType :: Lens' FoldersLocationsBucketsDelete (Maybe Text)
flbdUploadType
  = lens _flbdUploadType
      (\ s a -> s{_flbdUploadType = a})

-- | Required. The full resource name of the bucket to delete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
flbdName :: Lens' FoldersLocationsBucketsDelete Text
flbdName = lens _flbdName (\ s a -> s{_flbdName = a})

-- | JSONP
flbdCallback :: Lens' FoldersLocationsBucketsDelete (Maybe Text)
flbdCallback
  = lens _flbdCallback (\ s a -> s{_flbdCallback = a})

instance GoogleRequest FoldersLocationsBucketsDelete
         where
        type Rs FoldersLocationsBucketsDelete = Empty
        type Scopes FoldersLocationsBucketsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersLocationsBucketsDelete'{..}
          = go _flbdName _flbdXgafv _flbdUploadProtocol
              _flbdAccessToken
              _flbdUploadType
              _flbdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsBucketsDeleteResource)
                      mempty
