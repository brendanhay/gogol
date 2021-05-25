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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Delete
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.delete@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Delete
    (
    -- * REST Resource
      ProjectsLocationsBucketsDeleteResource

    -- * Creating a Request
    , projectsLocationsBucketsDelete
    , ProjectsLocationsBucketsDelete

    -- * Request Lenses
    , plbdXgafv
    , plbdUploadProtocol
    , plbdAccessToken
    , plbdUploadType
    , plbdName
    , plbdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.delete@ method which the
-- 'ProjectsLocationsBucketsDelete' request conforms to.
type ProjectsLocationsBucketsDeleteResource =
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
-- /See:/ 'projectsLocationsBucketsDelete' smart constructor.
data ProjectsLocationsBucketsDelete =
  ProjectsLocationsBucketsDelete'
    { _plbdXgafv :: !(Maybe Xgafv)
    , _plbdUploadProtocol :: !(Maybe Text)
    , _plbdAccessToken :: !(Maybe Text)
    , _plbdUploadType :: !(Maybe Text)
    , _plbdName :: !Text
    , _plbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbdXgafv'
--
-- * 'plbdUploadProtocol'
--
-- * 'plbdAccessToken'
--
-- * 'plbdUploadType'
--
-- * 'plbdName'
--
-- * 'plbdCallback'
projectsLocationsBucketsDelete
    :: Text -- ^ 'plbdName'
    -> ProjectsLocationsBucketsDelete
projectsLocationsBucketsDelete pPlbdName_ =
  ProjectsLocationsBucketsDelete'
    { _plbdXgafv = Nothing
    , _plbdUploadProtocol = Nothing
    , _plbdAccessToken = Nothing
    , _plbdUploadType = Nothing
    , _plbdName = pPlbdName_
    , _plbdCallback = Nothing
    }


-- | V1 error format.
plbdXgafv :: Lens' ProjectsLocationsBucketsDelete (Maybe Xgafv)
plbdXgafv
  = lens _plbdXgafv (\ s a -> s{_plbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbdUploadProtocol :: Lens' ProjectsLocationsBucketsDelete (Maybe Text)
plbdUploadProtocol
  = lens _plbdUploadProtocol
      (\ s a -> s{_plbdUploadProtocol = a})

-- | OAuth access token.
plbdAccessToken :: Lens' ProjectsLocationsBucketsDelete (Maybe Text)
plbdAccessToken
  = lens _plbdAccessToken
      (\ s a -> s{_plbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbdUploadType :: Lens' ProjectsLocationsBucketsDelete (Maybe Text)
plbdUploadType
  = lens _plbdUploadType
      (\ s a -> s{_plbdUploadType = a})

-- | Required. The full resource name of the bucket to delete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
plbdName :: Lens' ProjectsLocationsBucketsDelete Text
plbdName = lens _plbdName (\ s a -> s{_plbdName = a})

-- | JSONP
plbdCallback :: Lens' ProjectsLocationsBucketsDelete (Maybe Text)
plbdCallback
  = lens _plbdCallback (\ s a -> s{_plbdCallback = a})

instance GoogleRequest ProjectsLocationsBucketsDelete
         where
        type Rs ProjectsLocationsBucketsDelete = Empty
        type Scopes ProjectsLocationsBucketsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsLocationsBucketsDelete'{..}
          = go _plbdName _plbdXgafv _plbdUploadProtocol
              _plbdAccessToken
              _plbdUploadType
              _plbdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBucketsDeleteResource)
                      mempty
