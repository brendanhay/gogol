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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.get@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Get
    (
    -- * REST Resource
      ProjectsLocationsBucketsGetResource

    -- * Creating a Request
    , projectsLocationsBucketsGet
    , ProjectsLocationsBucketsGet

    -- * Request Lenses
    , plbgXgafv
    , plbgUploadProtocol
    , plbgAccessToken
    , plbgUploadType
    , plbgName
    , plbgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.get@ method which the
-- 'ProjectsLocationsBucketsGet' request conforms to.
type ProjectsLocationsBucketsGetResource =
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
-- /See:/ 'projectsLocationsBucketsGet' smart constructor.
data ProjectsLocationsBucketsGet =
  ProjectsLocationsBucketsGet'
    { _plbgXgafv :: !(Maybe Xgafv)
    , _plbgUploadProtocol :: !(Maybe Text)
    , _plbgAccessToken :: !(Maybe Text)
    , _plbgUploadType :: !(Maybe Text)
    , _plbgName :: !Text
    , _plbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbgXgafv'
--
-- * 'plbgUploadProtocol'
--
-- * 'plbgAccessToken'
--
-- * 'plbgUploadType'
--
-- * 'plbgName'
--
-- * 'plbgCallback'
projectsLocationsBucketsGet
    :: Text -- ^ 'plbgName'
    -> ProjectsLocationsBucketsGet
projectsLocationsBucketsGet pPlbgName_ =
  ProjectsLocationsBucketsGet'
    { _plbgXgafv = Nothing
    , _plbgUploadProtocol = Nothing
    , _plbgAccessToken = Nothing
    , _plbgUploadType = Nothing
    , _plbgName = pPlbgName_
    , _plbgCallback = Nothing
    }


-- | V1 error format.
plbgXgafv :: Lens' ProjectsLocationsBucketsGet (Maybe Xgafv)
plbgXgafv
  = lens _plbgXgafv (\ s a -> s{_plbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbgUploadProtocol :: Lens' ProjectsLocationsBucketsGet (Maybe Text)
plbgUploadProtocol
  = lens _plbgUploadProtocol
      (\ s a -> s{_plbgUploadProtocol = a})

-- | OAuth access token.
plbgAccessToken :: Lens' ProjectsLocationsBucketsGet (Maybe Text)
plbgAccessToken
  = lens _plbgAccessToken
      (\ s a -> s{_plbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbgUploadType :: Lens' ProjectsLocationsBucketsGet (Maybe Text)
plbgUploadType
  = lens _plbgUploadType
      (\ s a -> s{_plbgUploadType = a})

-- | Required. The resource name of the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
plbgName :: Lens' ProjectsLocationsBucketsGet Text
plbgName = lens _plbgName (\ s a -> s{_plbgName = a})

-- | JSONP
plbgCallback :: Lens' ProjectsLocationsBucketsGet (Maybe Text)
plbgCallback
  = lens _plbgCallback (\ s a -> s{_plbgCallback = a})

instance GoogleRequest ProjectsLocationsBucketsGet
         where
        type Rs ProjectsLocationsBucketsGet = LogBucket
        type Scopes ProjectsLocationsBucketsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsLocationsBucketsGet'{..}
          = go _plbgName _plbgXgafv _plbgUploadProtocol
              _plbgAccessToken
              _plbgUploadType
              _plbgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsBucketsGetResource)
                      mempty
