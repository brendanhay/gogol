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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a bucket that can be used to store log entries. Once a bucket
-- has been created, the region cannot be changed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.create@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Create
    (
    -- * REST Resource
      ProjectsLocationsBucketsCreateResource

    -- * Creating a Request
    , projectsLocationsBucketsCreate
    , ProjectsLocationsBucketsCreate

    -- * Request Lenses
    , plbcParent
    , plbcXgafv
    , plbcUploadProtocol
    , plbcAccessToken
    , plbcBucketId
    , plbcUploadType
    , plbcPayload
    , plbcCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.create@ method which the
-- 'ProjectsLocationsBucketsCreate' request conforms to.
type ProjectsLocationsBucketsCreateResource =
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
-- /See:/ 'projectsLocationsBucketsCreate' smart constructor.
data ProjectsLocationsBucketsCreate =
  ProjectsLocationsBucketsCreate'
    { _plbcParent :: !Text
    , _plbcXgafv :: !(Maybe Xgafv)
    , _plbcUploadProtocol :: !(Maybe Text)
    , _plbcAccessToken :: !(Maybe Text)
    , _plbcBucketId :: !(Maybe Text)
    , _plbcUploadType :: !(Maybe Text)
    , _plbcPayload :: !LogBucket
    , _plbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbcParent'
--
-- * 'plbcXgafv'
--
-- * 'plbcUploadProtocol'
--
-- * 'plbcAccessToken'
--
-- * 'plbcBucketId'
--
-- * 'plbcUploadType'
--
-- * 'plbcPayload'
--
-- * 'plbcCallback'
projectsLocationsBucketsCreate
    :: Text -- ^ 'plbcParent'
    -> LogBucket -- ^ 'plbcPayload'
    -> ProjectsLocationsBucketsCreate
projectsLocationsBucketsCreate pPlbcParent_ pPlbcPayload_ =
  ProjectsLocationsBucketsCreate'
    { _plbcParent = pPlbcParent_
    , _plbcXgafv = Nothing
    , _plbcUploadProtocol = Nothing
    , _plbcAccessToken = Nothing
    , _plbcBucketId = Nothing
    , _plbcUploadType = Nothing
    , _plbcPayload = pPlbcPayload_
    , _plbcCallback = Nothing
    }


-- | Required. The resource in which to create the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\" Example:
-- \"projects\/my-logging-project\/locations\/global\"
plbcParent :: Lens' ProjectsLocationsBucketsCreate Text
plbcParent
  = lens _plbcParent (\ s a -> s{_plbcParent = a})

-- | V1 error format.
plbcXgafv :: Lens' ProjectsLocationsBucketsCreate (Maybe Xgafv)
plbcXgafv
  = lens _plbcXgafv (\ s a -> s{_plbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbcUploadProtocol :: Lens' ProjectsLocationsBucketsCreate (Maybe Text)
plbcUploadProtocol
  = lens _plbcUploadProtocol
      (\ s a -> s{_plbcUploadProtocol = a})

-- | OAuth access token.
plbcAccessToken :: Lens' ProjectsLocationsBucketsCreate (Maybe Text)
plbcAccessToken
  = lens _plbcAccessToken
      (\ s a -> s{_plbcAccessToken = a})

-- | Required. A client-assigned identifier such as \"my-bucket\".
-- Identifiers are limited to 100 characters and can include only letters,
-- digits, underscores, hyphens, and periods.
plbcBucketId :: Lens' ProjectsLocationsBucketsCreate (Maybe Text)
plbcBucketId
  = lens _plbcBucketId (\ s a -> s{_plbcBucketId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbcUploadType :: Lens' ProjectsLocationsBucketsCreate (Maybe Text)
plbcUploadType
  = lens _plbcUploadType
      (\ s a -> s{_plbcUploadType = a})

-- | Multipart request metadata.
plbcPayload :: Lens' ProjectsLocationsBucketsCreate LogBucket
plbcPayload
  = lens _plbcPayload (\ s a -> s{_plbcPayload = a})

-- | JSONP
plbcCallback :: Lens' ProjectsLocationsBucketsCreate (Maybe Text)
plbcCallback
  = lens _plbcCallback (\ s a -> s{_plbcCallback = a})

instance GoogleRequest ProjectsLocationsBucketsCreate
         where
        type Rs ProjectsLocationsBucketsCreate = LogBucket
        type Scopes ProjectsLocationsBucketsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsLocationsBucketsCreate'{..}
          = go _plbcParent _plbcXgafv _plbcUploadProtocol
              _plbcAccessToken
              _plbcBucketId
              _plbcUploadType
              _plbcCallback
              (Just AltJSON)
              _plbcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBucketsCreateResource)
                      mempty
