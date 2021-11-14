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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Undelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a bucket. A bucket that has been deleted may be undeleted
-- within the grace period of 7 days.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.undelete@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Undelete
    (
    -- * REST Resource
      ProjectsLocationsBucketsUndeleteResource

    -- * Creating a Request
    , projectsLocationsBucketsUndelete
    , ProjectsLocationsBucketsUndelete

    -- * Request Lenses
    , plbuXgafv
    , plbuUploadProtocol
    , plbuAccessToken
    , plbuUploadType
    , plbuPayload
    , plbuName
    , plbuCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.undelete@ method which the
-- 'ProjectsLocationsBucketsUndelete' request conforms to.
type ProjectsLocationsBucketsUndeleteResource =
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
-- /See:/ 'projectsLocationsBucketsUndelete' smart constructor.
data ProjectsLocationsBucketsUndelete =
  ProjectsLocationsBucketsUndelete'
    { _plbuXgafv :: !(Maybe Xgafv)
    , _plbuUploadProtocol :: !(Maybe Text)
    , _plbuAccessToken :: !(Maybe Text)
    , _plbuUploadType :: !(Maybe Text)
    , _plbuPayload :: !UndeleteBucketRequest
    , _plbuName :: !Text
    , _plbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbuXgafv'
--
-- * 'plbuUploadProtocol'
--
-- * 'plbuAccessToken'
--
-- * 'plbuUploadType'
--
-- * 'plbuPayload'
--
-- * 'plbuName'
--
-- * 'plbuCallback'
projectsLocationsBucketsUndelete
    :: UndeleteBucketRequest -- ^ 'plbuPayload'
    -> Text -- ^ 'plbuName'
    -> ProjectsLocationsBucketsUndelete
projectsLocationsBucketsUndelete pPlbuPayload_ pPlbuName_ =
  ProjectsLocationsBucketsUndelete'
    { _plbuXgafv = Nothing
    , _plbuUploadProtocol = Nothing
    , _plbuAccessToken = Nothing
    , _plbuUploadType = Nothing
    , _plbuPayload = pPlbuPayload_
    , _plbuName = pPlbuName_
    , _plbuCallback = Nothing
    }


-- | V1 error format.
plbuXgafv :: Lens' ProjectsLocationsBucketsUndelete (Maybe Xgafv)
plbuXgafv
  = lens _plbuXgafv (\ s a -> s{_plbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbuUploadProtocol :: Lens' ProjectsLocationsBucketsUndelete (Maybe Text)
plbuUploadProtocol
  = lens _plbuUploadProtocol
      (\ s a -> s{_plbuUploadProtocol = a})

-- | OAuth access token.
plbuAccessToken :: Lens' ProjectsLocationsBucketsUndelete (Maybe Text)
plbuAccessToken
  = lens _plbuAccessToken
      (\ s a -> s{_plbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbuUploadType :: Lens' ProjectsLocationsBucketsUndelete (Maybe Text)
plbuUploadType
  = lens _plbuUploadType
      (\ s a -> s{_plbuUploadType = a})

-- | Multipart request metadata.
plbuPayload :: Lens' ProjectsLocationsBucketsUndelete UndeleteBucketRequest
plbuPayload
  = lens _plbuPayload (\ s a -> s{_plbuPayload = a})

-- | Required. The full resource name of the bucket to undelete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
plbuName :: Lens' ProjectsLocationsBucketsUndelete Text
plbuName = lens _plbuName (\ s a -> s{_plbuName = a})

-- | JSONP
plbuCallback :: Lens' ProjectsLocationsBucketsUndelete (Maybe Text)
plbuCallback
  = lens _plbuCallback (\ s a -> s{_plbuCallback = a})

instance GoogleRequest
           ProjectsLocationsBucketsUndelete
         where
        type Rs ProjectsLocationsBucketsUndelete = Empty
        type Scopes ProjectsLocationsBucketsUndelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsLocationsBucketsUndelete'{..}
          = go _plbuName _plbuXgafv _plbuUploadProtocol
              _plbuAccessToken
              _plbuUploadType
              _plbuCallback
              (Just AltJSON)
              _plbuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBucketsUndeleteResource)
                      mempty
