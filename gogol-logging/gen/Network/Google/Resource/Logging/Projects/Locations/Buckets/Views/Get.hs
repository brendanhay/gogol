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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a view.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.views.get@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.Views.Get
    (
    -- * REST Resource
      ProjectsLocationsBucketsViewsGetResource

    -- * Creating a Request
    , projectsLocationsBucketsViewsGet
    , ProjectsLocationsBucketsViewsGet

    -- * Request Lenses
    , plbvgXgafv
    , plbvgUploadProtocol
    , plbvgAccessToken
    , plbvgUploadType
    , plbvgName
    , plbvgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.views.get@ method which the
-- 'ProjectsLocationsBucketsViewsGet' request conforms to.
type ProjectsLocationsBucketsViewsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogView

-- | Gets a view.
--
-- /See:/ 'projectsLocationsBucketsViewsGet' smart constructor.
data ProjectsLocationsBucketsViewsGet =
  ProjectsLocationsBucketsViewsGet'
    { _plbvgXgafv :: !(Maybe Xgafv)
    , _plbvgUploadProtocol :: !(Maybe Text)
    , _plbvgAccessToken :: !(Maybe Text)
    , _plbvgUploadType :: !(Maybe Text)
    , _plbvgName :: !Text
    , _plbvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsViewsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbvgXgafv'
--
-- * 'plbvgUploadProtocol'
--
-- * 'plbvgAccessToken'
--
-- * 'plbvgUploadType'
--
-- * 'plbvgName'
--
-- * 'plbvgCallback'
projectsLocationsBucketsViewsGet
    :: Text -- ^ 'plbvgName'
    -> ProjectsLocationsBucketsViewsGet
projectsLocationsBucketsViewsGet pPlbvgName_ =
  ProjectsLocationsBucketsViewsGet'
    { _plbvgXgafv = Nothing
    , _plbvgUploadProtocol = Nothing
    , _plbvgAccessToken = Nothing
    , _plbvgUploadType = Nothing
    , _plbvgName = pPlbvgName_
    , _plbvgCallback = Nothing
    }


-- | V1 error format.
plbvgXgafv :: Lens' ProjectsLocationsBucketsViewsGet (Maybe Xgafv)
plbvgXgafv
  = lens _plbvgXgafv (\ s a -> s{_plbvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbvgUploadProtocol :: Lens' ProjectsLocationsBucketsViewsGet (Maybe Text)
plbvgUploadProtocol
  = lens _plbvgUploadProtocol
      (\ s a -> s{_plbvgUploadProtocol = a})

-- | OAuth access token.
plbvgAccessToken :: Lens' ProjectsLocationsBucketsViewsGet (Maybe Text)
plbvgAccessToken
  = lens _plbvgAccessToken
      (\ s a -> s{_plbvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbvgUploadType :: Lens' ProjectsLocationsBucketsViewsGet (Maybe Text)
plbvgUploadType
  = lens _plbvgUploadType
      (\ s a -> s{_plbvgUploadType = a})

-- | Required. The resource name of the policy:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
plbvgName :: Lens' ProjectsLocationsBucketsViewsGet Text
plbvgName
  = lens _plbvgName (\ s a -> s{_plbvgName = a})

-- | JSONP
plbvgCallback :: Lens' ProjectsLocationsBucketsViewsGet (Maybe Text)
plbvgCallback
  = lens _plbvgCallback
      (\ s a -> s{_plbvgCallback = a})

instance GoogleRequest
           ProjectsLocationsBucketsViewsGet
         where
        type Rs ProjectsLocationsBucketsViewsGet = LogView
        type Scopes ProjectsLocationsBucketsViewsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsLocationsBucketsViewsGet'{..}
          = go _plbvgName _plbvgXgafv _plbvgUploadProtocol
              _plbvgAccessToken
              _plbvgUploadType
              _plbvgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBucketsViewsGetResource)
                      mempty
