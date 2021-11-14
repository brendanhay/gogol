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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a view.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.views.get@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Get
    (
    -- * REST Resource
      FoldersLocationsBucketsViewsGetResource

    -- * Creating a Request
    , foldersLocationsBucketsViewsGet
    , FoldersLocationsBucketsViewsGet

    -- * Request Lenses
    , flbvgXgafv
    , flbvgUploadProtocol
    , flbvgAccessToken
    , flbvgUploadType
    , flbvgName
    , flbvgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.views.get@ method which the
-- 'FoldersLocationsBucketsViewsGet' request conforms to.
type FoldersLocationsBucketsViewsGetResource =
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
-- /See:/ 'foldersLocationsBucketsViewsGet' smart constructor.
data FoldersLocationsBucketsViewsGet =
  FoldersLocationsBucketsViewsGet'
    { _flbvgXgafv :: !(Maybe Xgafv)
    , _flbvgUploadProtocol :: !(Maybe Text)
    , _flbvgAccessToken :: !(Maybe Text)
    , _flbvgUploadType :: !(Maybe Text)
    , _flbvgName :: !Text
    , _flbvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsViewsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbvgXgafv'
--
-- * 'flbvgUploadProtocol'
--
-- * 'flbvgAccessToken'
--
-- * 'flbvgUploadType'
--
-- * 'flbvgName'
--
-- * 'flbvgCallback'
foldersLocationsBucketsViewsGet
    :: Text -- ^ 'flbvgName'
    -> FoldersLocationsBucketsViewsGet
foldersLocationsBucketsViewsGet pFlbvgName_ =
  FoldersLocationsBucketsViewsGet'
    { _flbvgXgafv = Nothing
    , _flbvgUploadProtocol = Nothing
    , _flbvgAccessToken = Nothing
    , _flbvgUploadType = Nothing
    , _flbvgName = pFlbvgName_
    , _flbvgCallback = Nothing
    }


-- | V1 error format.
flbvgXgafv :: Lens' FoldersLocationsBucketsViewsGet (Maybe Xgafv)
flbvgXgafv
  = lens _flbvgXgafv (\ s a -> s{_flbvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbvgUploadProtocol :: Lens' FoldersLocationsBucketsViewsGet (Maybe Text)
flbvgUploadProtocol
  = lens _flbvgUploadProtocol
      (\ s a -> s{_flbvgUploadProtocol = a})

-- | OAuth access token.
flbvgAccessToken :: Lens' FoldersLocationsBucketsViewsGet (Maybe Text)
flbvgAccessToken
  = lens _flbvgAccessToken
      (\ s a -> s{_flbvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbvgUploadType :: Lens' FoldersLocationsBucketsViewsGet (Maybe Text)
flbvgUploadType
  = lens _flbvgUploadType
      (\ s a -> s{_flbvgUploadType = a})

-- | Required. The resource name of the policy:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
flbvgName :: Lens' FoldersLocationsBucketsViewsGet Text
flbvgName
  = lens _flbvgName (\ s a -> s{_flbvgName = a})

-- | JSONP
flbvgCallback :: Lens' FoldersLocationsBucketsViewsGet (Maybe Text)
flbvgCallback
  = lens _flbvgCallback
      (\ s a -> s{_flbvgCallback = a})

instance GoogleRequest
           FoldersLocationsBucketsViewsGet
         where
        type Rs FoldersLocationsBucketsViewsGet = LogView
        type Scopes FoldersLocationsBucketsViewsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersLocationsBucketsViewsGet'{..}
          = go _flbvgName _flbvgXgafv _flbvgUploadProtocol
              _flbvgAccessToken
              _flbvgUploadType
              _flbvgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsBucketsViewsGetResource)
                      mempty
