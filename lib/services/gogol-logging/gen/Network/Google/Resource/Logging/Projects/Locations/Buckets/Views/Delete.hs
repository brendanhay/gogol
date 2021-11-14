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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a view from a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.views.delete@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Delete
    (
    -- * REST Resource
      ProjectsLocationsBucketsViewsDeleteResource

    -- * Creating a Request
    , projectsLocationsBucketsViewsDelete
    , ProjectsLocationsBucketsViewsDelete

    -- * Request Lenses
    , plbvdXgafv
    , plbvdUploadProtocol
    , plbvdAccessToken
    , plbvdUploadType
    , plbvdName
    , plbvdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.views.delete@ method which the
-- 'ProjectsLocationsBucketsViewsDelete' request conforms to.
type ProjectsLocationsBucketsViewsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a view from a bucket.
--
-- /See:/ 'projectsLocationsBucketsViewsDelete' smart constructor.
data ProjectsLocationsBucketsViewsDelete =
  ProjectsLocationsBucketsViewsDelete'
    { _plbvdXgafv :: !(Maybe Xgafv)
    , _plbvdUploadProtocol :: !(Maybe Text)
    , _plbvdAccessToken :: !(Maybe Text)
    , _plbvdUploadType :: !(Maybe Text)
    , _plbvdName :: !Text
    , _plbvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsViewsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbvdXgafv'
--
-- * 'plbvdUploadProtocol'
--
-- * 'plbvdAccessToken'
--
-- * 'plbvdUploadType'
--
-- * 'plbvdName'
--
-- * 'plbvdCallback'
projectsLocationsBucketsViewsDelete
    :: Text -- ^ 'plbvdName'
    -> ProjectsLocationsBucketsViewsDelete
projectsLocationsBucketsViewsDelete pPlbvdName_ =
  ProjectsLocationsBucketsViewsDelete'
    { _plbvdXgafv = Nothing
    , _plbvdUploadProtocol = Nothing
    , _plbvdAccessToken = Nothing
    , _plbvdUploadType = Nothing
    , _plbvdName = pPlbvdName_
    , _plbvdCallback = Nothing
    }


-- | V1 error format.
plbvdXgafv :: Lens' ProjectsLocationsBucketsViewsDelete (Maybe Xgafv)
plbvdXgafv
  = lens _plbvdXgafv (\ s a -> s{_plbvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbvdUploadProtocol :: Lens' ProjectsLocationsBucketsViewsDelete (Maybe Text)
plbvdUploadProtocol
  = lens _plbvdUploadProtocol
      (\ s a -> s{_plbvdUploadProtocol = a})

-- | OAuth access token.
plbvdAccessToken :: Lens' ProjectsLocationsBucketsViewsDelete (Maybe Text)
plbvdAccessToken
  = lens _plbvdAccessToken
      (\ s a -> s{_plbvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbvdUploadType :: Lens' ProjectsLocationsBucketsViewsDelete (Maybe Text)
plbvdUploadType
  = lens _plbvdUploadType
      (\ s a -> s{_plbvdUploadType = a})

-- | Required. The full resource name of the view to delete:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
plbvdName :: Lens' ProjectsLocationsBucketsViewsDelete Text
plbvdName
  = lens _plbvdName (\ s a -> s{_plbvdName = a})

-- | JSONP
plbvdCallback :: Lens' ProjectsLocationsBucketsViewsDelete (Maybe Text)
plbvdCallback
  = lens _plbvdCallback
      (\ s a -> s{_plbvdCallback = a})

instance GoogleRequest
           ProjectsLocationsBucketsViewsDelete
         where
        type Rs ProjectsLocationsBucketsViewsDelete = Empty
        type Scopes ProjectsLocationsBucketsViewsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          ProjectsLocationsBucketsViewsDelete'{..}
          = go _plbvdName _plbvdXgafv _plbvdUploadProtocol
              _plbvdAccessToken
              _plbvdUploadType
              _plbvdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBucketsViewsDeleteResource)
                      mempty
