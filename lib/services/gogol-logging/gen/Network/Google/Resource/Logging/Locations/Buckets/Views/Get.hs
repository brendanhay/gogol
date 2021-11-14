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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Views.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a view.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.views.get@.
module Network.Google.Resource.Logging.Locations.Buckets.Views.Get
    (
    -- * REST Resource
      LocationsBucketsViewsGetResource

    -- * Creating a Request
    , locationsBucketsViewsGet
    , LocationsBucketsViewsGet

    -- * Request Lenses
    , lbvgXgafv
    , lbvgUploadProtocol
    , lbvgAccessToken
    , lbvgUploadType
    , lbvgName
    , lbvgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.views.get@ method which the
-- 'LocationsBucketsViewsGet' request conforms to.
type LocationsBucketsViewsGetResource =
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
-- /See:/ 'locationsBucketsViewsGet' smart constructor.
data LocationsBucketsViewsGet =
  LocationsBucketsViewsGet'
    { _lbvgXgafv :: !(Maybe Xgafv)
    , _lbvgUploadProtocol :: !(Maybe Text)
    , _lbvgAccessToken :: !(Maybe Text)
    , _lbvgUploadType :: !(Maybe Text)
    , _lbvgName :: !Text
    , _lbvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsViewsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbvgXgafv'
--
-- * 'lbvgUploadProtocol'
--
-- * 'lbvgAccessToken'
--
-- * 'lbvgUploadType'
--
-- * 'lbvgName'
--
-- * 'lbvgCallback'
locationsBucketsViewsGet
    :: Text -- ^ 'lbvgName'
    -> LocationsBucketsViewsGet
locationsBucketsViewsGet pLbvgName_ =
  LocationsBucketsViewsGet'
    { _lbvgXgafv = Nothing
    , _lbvgUploadProtocol = Nothing
    , _lbvgAccessToken = Nothing
    , _lbvgUploadType = Nothing
    , _lbvgName = pLbvgName_
    , _lbvgCallback = Nothing
    }


-- | V1 error format.
lbvgXgafv :: Lens' LocationsBucketsViewsGet (Maybe Xgafv)
lbvgXgafv
  = lens _lbvgXgafv (\ s a -> s{_lbvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbvgUploadProtocol :: Lens' LocationsBucketsViewsGet (Maybe Text)
lbvgUploadProtocol
  = lens _lbvgUploadProtocol
      (\ s a -> s{_lbvgUploadProtocol = a})

-- | OAuth access token.
lbvgAccessToken :: Lens' LocationsBucketsViewsGet (Maybe Text)
lbvgAccessToken
  = lens _lbvgAccessToken
      (\ s a -> s{_lbvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbvgUploadType :: Lens' LocationsBucketsViewsGet (Maybe Text)
lbvgUploadType
  = lens _lbvgUploadType
      (\ s a -> s{_lbvgUploadType = a})

-- | Required. The resource name of the policy:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
lbvgName :: Lens' LocationsBucketsViewsGet Text
lbvgName = lens _lbvgName (\ s a -> s{_lbvgName = a})

-- | JSONP
lbvgCallback :: Lens' LocationsBucketsViewsGet (Maybe Text)
lbvgCallback
  = lens _lbvgCallback (\ s a -> s{_lbvgCallback = a})

instance GoogleRequest LocationsBucketsViewsGet where
        type Rs LocationsBucketsViewsGet = LogView
        type Scopes LocationsBucketsViewsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LocationsBucketsViewsGet'{..}
          = go _lbvgName _lbvgXgafv _lbvgUploadProtocol
              _lbvgAccessToken
              _lbvgUploadType
              _lbvgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsViewsGetResource)
                      mempty
