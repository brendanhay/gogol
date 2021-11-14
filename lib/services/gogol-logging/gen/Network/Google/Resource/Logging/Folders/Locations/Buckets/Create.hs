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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a bucket that can be used to store log entries. Once a bucket
-- has been created, the region cannot be changed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.create@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Create
    (
    -- * REST Resource
      FoldersLocationsBucketsCreateResource

    -- * Creating a Request
    , foldersLocationsBucketsCreate
    , FoldersLocationsBucketsCreate

    -- * Request Lenses
    , flbcParent
    , flbcXgafv
    , flbcUploadProtocol
    , flbcAccessToken
    , flbcBucketId
    , flbcUploadType
    , flbcPayload
    , flbcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.create@ method which the
-- 'FoldersLocationsBucketsCreate' request conforms to.
type FoldersLocationsBucketsCreateResource =
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
-- /See:/ 'foldersLocationsBucketsCreate' smart constructor.
data FoldersLocationsBucketsCreate =
  FoldersLocationsBucketsCreate'
    { _flbcParent :: !Text
    , _flbcXgafv :: !(Maybe Xgafv)
    , _flbcUploadProtocol :: !(Maybe Text)
    , _flbcAccessToken :: !(Maybe Text)
    , _flbcBucketId :: !(Maybe Text)
    , _flbcUploadType :: !(Maybe Text)
    , _flbcPayload :: !LogBucket
    , _flbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbcParent'
--
-- * 'flbcXgafv'
--
-- * 'flbcUploadProtocol'
--
-- * 'flbcAccessToken'
--
-- * 'flbcBucketId'
--
-- * 'flbcUploadType'
--
-- * 'flbcPayload'
--
-- * 'flbcCallback'
foldersLocationsBucketsCreate
    :: Text -- ^ 'flbcParent'
    -> LogBucket -- ^ 'flbcPayload'
    -> FoldersLocationsBucketsCreate
foldersLocationsBucketsCreate pFlbcParent_ pFlbcPayload_ =
  FoldersLocationsBucketsCreate'
    { _flbcParent = pFlbcParent_
    , _flbcXgafv = Nothing
    , _flbcUploadProtocol = Nothing
    , _flbcAccessToken = Nothing
    , _flbcBucketId = Nothing
    , _flbcUploadType = Nothing
    , _flbcPayload = pFlbcPayload_
    , _flbcCallback = Nothing
    }


-- | Required. The resource in which to create the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\" Example:
-- \"projects\/my-logging-project\/locations\/global\"
flbcParent :: Lens' FoldersLocationsBucketsCreate Text
flbcParent
  = lens _flbcParent (\ s a -> s{_flbcParent = a})

-- | V1 error format.
flbcXgafv :: Lens' FoldersLocationsBucketsCreate (Maybe Xgafv)
flbcXgafv
  = lens _flbcXgafv (\ s a -> s{_flbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbcUploadProtocol :: Lens' FoldersLocationsBucketsCreate (Maybe Text)
flbcUploadProtocol
  = lens _flbcUploadProtocol
      (\ s a -> s{_flbcUploadProtocol = a})

-- | OAuth access token.
flbcAccessToken :: Lens' FoldersLocationsBucketsCreate (Maybe Text)
flbcAccessToken
  = lens _flbcAccessToken
      (\ s a -> s{_flbcAccessToken = a})

-- | Required. A client-assigned identifier such as \"my-bucket\".
-- Identifiers are limited to 100 characters and can include only letters,
-- digits, underscores, hyphens, and periods.
flbcBucketId :: Lens' FoldersLocationsBucketsCreate (Maybe Text)
flbcBucketId
  = lens _flbcBucketId (\ s a -> s{_flbcBucketId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbcUploadType :: Lens' FoldersLocationsBucketsCreate (Maybe Text)
flbcUploadType
  = lens _flbcUploadType
      (\ s a -> s{_flbcUploadType = a})

-- | Multipart request metadata.
flbcPayload :: Lens' FoldersLocationsBucketsCreate LogBucket
flbcPayload
  = lens _flbcPayload (\ s a -> s{_flbcPayload = a})

-- | JSONP
flbcCallback :: Lens' FoldersLocationsBucketsCreate (Maybe Text)
flbcCallback
  = lens _flbcCallback (\ s a -> s{_flbcCallback = a})

instance GoogleRequest FoldersLocationsBucketsCreate
         where
        type Rs FoldersLocationsBucketsCreate = LogBucket
        type Scopes FoldersLocationsBucketsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersLocationsBucketsCreate'{..}
          = go _flbcParent _flbcXgafv _flbcUploadProtocol
              _flbcAccessToken
              _flbcBucketId
              _flbcUploadType
              _flbcCallback
              (Just AltJSON)
              _flbcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsBucketsCreateResource)
                      mempty
