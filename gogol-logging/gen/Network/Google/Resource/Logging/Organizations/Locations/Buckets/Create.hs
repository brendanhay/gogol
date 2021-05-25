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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a bucket that can be used to store log entries. Once a bucket
-- has been created, the region cannot be changed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.create@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Create
    (
    -- * REST Resource
      OrganizationsLocationsBucketsCreateResource

    -- * Creating a Request
    , organizationsLocationsBucketsCreate
    , OrganizationsLocationsBucketsCreate

    -- * Request Lenses
    , olbcParent
    , olbcXgafv
    , olbcUploadProtocol
    , olbcAccessToken
    , olbcBucketId
    , olbcUploadType
    , olbcPayload
    , olbcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.create@ method which the
-- 'OrganizationsLocationsBucketsCreate' request conforms to.
type OrganizationsLocationsBucketsCreateResource =
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
-- /See:/ 'organizationsLocationsBucketsCreate' smart constructor.
data OrganizationsLocationsBucketsCreate =
  OrganizationsLocationsBucketsCreate'
    { _olbcParent :: !Text
    , _olbcXgafv :: !(Maybe Xgafv)
    , _olbcUploadProtocol :: !(Maybe Text)
    , _olbcAccessToken :: !(Maybe Text)
    , _olbcBucketId :: !(Maybe Text)
    , _olbcUploadType :: !(Maybe Text)
    , _olbcPayload :: !LogBucket
    , _olbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbcParent'
--
-- * 'olbcXgafv'
--
-- * 'olbcUploadProtocol'
--
-- * 'olbcAccessToken'
--
-- * 'olbcBucketId'
--
-- * 'olbcUploadType'
--
-- * 'olbcPayload'
--
-- * 'olbcCallback'
organizationsLocationsBucketsCreate
    :: Text -- ^ 'olbcParent'
    -> LogBucket -- ^ 'olbcPayload'
    -> OrganizationsLocationsBucketsCreate
organizationsLocationsBucketsCreate pOlbcParent_ pOlbcPayload_ =
  OrganizationsLocationsBucketsCreate'
    { _olbcParent = pOlbcParent_
    , _olbcXgafv = Nothing
    , _olbcUploadProtocol = Nothing
    , _olbcAccessToken = Nothing
    , _olbcBucketId = Nothing
    , _olbcUploadType = Nothing
    , _olbcPayload = pOlbcPayload_
    , _olbcCallback = Nothing
    }


-- | Required. The resource in which to create the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\" Example:
-- \"projects\/my-logging-project\/locations\/global\"
olbcParent :: Lens' OrganizationsLocationsBucketsCreate Text
olbcParent
  = lens _olbcParent (\ s a -> s{_olbcParent = a})

-- | V1 error format.
olbcXgafv :: Lens' OrganizationsLocationsBucketsCreate (Maybe Xgafv)
olbcXgafv
  = lens _olbcXgafv (\ s a -> s{_olbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbcUploadProtocol :: Lens' OrganizationsLocationsBucketsCreate (Maybe Text)
olbcUploadProtocol
  = lens _olbcUploadProtocol
      (\ s a -> s{_olbcUploadProtocol = a})

-- | OAuth access token.
olbcAccessToken :: Lens' OrganizationsLocationsBucketsCreate (Maybe Text)
olbcAccessToken
  = lens _olbcAccessToken
      (\ s a -> s{_olbcAccessToken = a})

-- | Required. A client-assigned identifier such as \"my-bucket\".
-- Identifiers are limited to 100 characters and can include only letters,
-- digits, underscores, hyphens, and periods.
olbcBucketId :: Lens' OrganizationsLocationsBucketsCreate (Maybe Text)
olbcBucketId
  = lens _olbcBucketId (\ s a -> s{_olbcBucketId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbcUploadType :: Lens' OrganizationsLocationsBucketsCreate (Maybe Text)
olbcUploadType
  = lens _olbcUploadType
      (\ s a -> s{_olbcUploadType = a})

-- | Multipart request metadata.
olbcPayload :: Lens' OrganizationsLocationsBucketsCreate LogBucket
olbcPayload
  = lens _olbcPayload (\ s a -> s{_olbcPayload = a})

-- | JSONP
olbcCallback :: Lens' OrganizationsLocationsBucketsCreate (Maybe Text)
olbcCallback
  = lens _olbcCallback (\ s a -> s{_olbcCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsCreate
         where
        type Rs OrganizationsLocationsBucketsCreate =
             LogBucket
        type Scopes OrganizationsLocationsBucketsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          OrganizationsLocationsBucketsCreate'{..}
          = go _olbcParent _olbcXgafv _olbcUploadProtocol
              _olbcAccessToken
              _olbcBucketId
              _olbcUploadType
              _olbcCallback
              (Just AltJSON)
              _olbcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsBucketsCreateResource)
                      mempty
