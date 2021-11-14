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
-- Module      : Network.Google.Resource.Logging.Locations.Buckets.Views.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a view from a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.views.delete@.
module Network.Google.Resource.Logging.Locations.Buckets.Views.Delete
    (
    -- * REST Resource
      LocationsBucketsViewsDeleteResource

    -- * Creating a Request
    , locationsBucketsViewsDelete
    , LocationsBucketsViewsDelete

    -- * Request Lenses
    , lbvdXgafv
    , lbvdUploadProtocol
    , lbvdAccessToken
    , lbvdUploadType
    , lbvdName
    , lbvdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.buckets.views.delete@ method which the
-- 'LocationsBucketsViewsDelete' request conforms to.
type LocationsBucketsViewsDeleteResource =
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
-- /See:/ 'locationsBucketsViewsDelete' smart constructor.
data LocationsBucketsViewsDelete =
  LocationsBucketsViewsDelete'
    { _lbvdXgafv :: !(Maybe Xgafv)
    , _lbvdUploadProtocol :: !(Maybe Text)
    , _lbvdAccessToken :: !(Maybe Text)
    , _lbvdUploadType :: !(Maybe Text)
    , _lbvdName :: !Text
    , _lbvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsBucketsViewsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbvdXgafv'
--
-- * 'lbvdUploadProtocol'
--
-- * 'lbvdAccessToken'
--
-- * 'lbvdUploadType'
--
-- * 'lbvdName'
--
-- * 'lbvdCallback'
locationsBucketsViewsDelete
    :: Text -- ^ 'lbvdName'
    -> LocationsBucketsViewsDelete
locationsBucketsViewsDelete pLbvdName_ =
  LocationsBucketsViewsDelete'
    { _lbvdXgafv = Nothing
    , _lbvdUploadProtocol = Nothing
    , _lbvdAccessToken = Nothing
    , _lbvdUploadType = Nothing
    , _lbvdName = pLbvdName_
    , _lbvdCallback = Nothing
    }


-- | V1 error format.
lbvdXgafv :: Lens' LocationsBucketsViewsDelete (Maybe Xgafv)
lbvdXgafv
  = lens _lbvdXgafv (\ s a -> s{_lbvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lbvdUploadProtocol :: Lens' LocationsBucketsViewsDelete (Maybe Text)
lbvdUploadProtocol
  = lens _lbvdUploadProtocol
      (\ s a -> s{_lbvdUploadProtocol = a})

-- | OAuth access token.
lbvdAccessToken :: Lens' LocationsBucketsViewsDelete (Maybe Text)
lbvdAccessToken
  = lens _lbvdAccessToken
      (\ s a -> s{_lbvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lbvdUploadType :: Lens' LocationsBucketsViewsDelete (Maybe Text)
lbvdUploadType
  = lens _lbvdUploadType
      (\ s a -> s{_lbvdUploadType = a})

-- | Required. The full resource name of the view to delete:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
lbvdName :: Lens' LocationsBucketsViewsDelete Text
lbvdName = lens _lbvdName (\ s a -> s{_lbvdName = a})

-- | JSONP
lbvdCallback :: Lens' LocationsBucketsViewsDelete (Maybe Text)
lbvdCallback
  = lens _lbvdCallback (\ s a -> s{_lbvdCallback = a})

instance GoogleRequest LocationsBucketsViewsDelete
         where
        type Rs LocationsBucketsViewsDelete = Empty
        type Scopes LocationsBucketsViewsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LocationsBucketsViewsDelete'{..}
          = go _lbvdName _lbvdXgafv _lbvdUploadProtocol
              _lbvdAccessToken
              _lbvdUploadType
              _lbvdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsBucketsViewsDeleteResource)
                      mempty
