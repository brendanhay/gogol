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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a view from a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.views.delete@.
module Network.Google.Resource.Logging.Folders.Locations.Buckets.Views.Delete
    (
    -- * REST Resource
      FoldersLocationsBucketsViewsDeleteResource

    -- * Creating a Request
    , foldersLocationsBucketsViewsDelete
    , FoldersLocationsBucketsViewsDelete

    -- * Request Lenses
    , flbvdXgafv
    , flbvdUploadProtocol
    , flbvdAccessToken
    , flbvdUploadType
    , flbvdName
    , flbvdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.buckets.views.delete@ method which the
-- 'FoldersLocationsBucketsViewsDelete' request conforms to.
type FoldersLocationsBucketsViewsDeleteResource =
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
-- /See:/ 'foldersLocationsBucketsViewsDelete' smart constructor.
data FoldersLocationsBucketsViewsDelete =
  FoldersLocationsBucketsViewsDelete'
    { _flbvdXgafv :: !(Maybe Xgafv)
    , _flbvdUploadProtocol :: !(Maybe Text)
    , _flbvdAccessToken :: !(Maybe Text)
    , _flbvdUploadType :: !(Maybe Text)
    , _flbvdName :: !Text
    , _flbvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsBucketsViewsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flbvdXgafv'
--
-- * 'flbvdUploadProtocol'
--
-- * 'flbvdAccessToken'
--
-- * 'flbvdUploadType'
--
-- * 'flbvdName'
--
-- * 'flbvdCallback'
foldersLocationsBucketsViewsDelete
    :: Text -- ^ 'flbvdName'
    -> FoldersLocationsBucketsViewsDelete
foldersLocationsBucketsViewsDelete pFlbvdName_ =
  FoldersLocationsBucketsViewsDelete'
    { _flbvdXgafv = Nothing
    , _flbvdUploadProtocol = Nothing
    , _flbvdAccessToken = Nothing
    , _flbvdUploadType = Nothing
    , _flbvdName = pFlbvdName_
    , _flbvdCallback = Nothing
    }


-- | V1 error format.
flbvdXgafv :: Lens' FoldersLocationsBucketsViewsDelete (Maybe Xgafv)
flbvdXgafv
  = lens _flbvdXgafv (\ s a -> s{_flbvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flbvdUploadProtocol :: Lens' FoldersLocationsBucketsViewsDelete (Maybe Text)
flbvdUploadProtocol
  = lens _flbvdUploadProtocol
      (\ s a -> s{_flbvdUploadProtocol = a})

-- | OAuth access token.
flbvdAccessToken :: Lens' FoldersLocationsBucketsViewsDelete (Maybe Text)
flbvdAccessToken
  = lens _flbvdAccessToken
      (\ s a -> s{_flbvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flbvdUploadType :: Lens' FoldersLocationsBucketsViewsDelete (Maybe Text)
flbvdUploadType
  = lens _flbvdUploadType
      (\ s a -> s{_flbvdUploadType = a})

-- | Required. The full resource name of the view to delete:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
flbvdName :: Lens' FoldersLocationsBucketsViewsDelete Text
flbvdName
  = lens _flbvdName (\ s a -> s{_flbvdName = a})

-- | JSONP
flbvdCallback :: Lens' FoldersLocationsBucketsViewsDelete (Maybe Text)
flbvdCallback
  = lens _flbvdCallback
      (\ s a -> s{_flbvdCallback = a})

instance GoogleRequest
           FoldersLocationsBucketsViewsDelete
         where
        type Rs FoldersLocationsBucketsViewsDelete = Empty
        type Scopes FoldersLocationsBucketsViewsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersLocationsBucketsViewsDelete'{..}
          = go _flbvdName _flbvdXgafv _flbvdUploadProtocol
              _flbvdAccessToken
              _flbvdUploadType
              _flbvdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsBucketsViewsDeleteResource)
                      mempty
