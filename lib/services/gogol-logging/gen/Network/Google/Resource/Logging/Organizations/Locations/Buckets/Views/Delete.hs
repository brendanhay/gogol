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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a view from a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.views.delete@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Delete
    (
    -- * REST Resource
      OrganizationsLocationsBucketsViewsDeleteResource

    -- * Creating a Request
    , organizationsLocationsBucketsViewsDelete
    , OrganizationsLocationsBucketsViewsDelete

    -- * Request Lenses
    , olbvdXgafv
    , olbvdUploadProtocol
    , olbvdAccessToken
    , olbvdUploadType
    , olbvdName
    , olbvdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.views.delete@ method which the
-- 'OrganizationsLocationsBucketsViewsDelete' request conforms to.
type OrganizationsLocationsBucketsViewsDeleteResource
     =
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
-- /See:/ 'organizationsLocationsBucketsViewsDelete' smart constructor.
data OrganizationsLocationsBucketsViewsDelete =
  OrganizationsLocationsBucketsViewsDelete'
    { _olbvdXgafv :: !(Maybe Xgafv)
    , _olbvdUploadProtocol :: !(Maybe Text)
    , _olbvdAccessToken :: !(Maybe Text)
    , _olbvdUploadType :: !(Maybe Text)
    , _olbvdName :: !Text
    , _olbvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsViewsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbvdXgafv'
--
-- * 'olbvdUploadProtocol'
--
-- * 'olbvdAccessToken'
--
-- * 'olbvdUploadType'
--
-- * 'olbvdName'
--
-- * 'olbvdCallback'
organizationsLocationsBucketsViewsDelete
    :: Text -- ^ 'olbvdName'
    -> OrganizationsLocationsBucketsViewsDelete
organizationsLocationsBucketsViewsDelete pOlbvdName_ =
  OrganizationsLocationsBucketsViewsDelete'
    { _olbvdXgafv = Nothing
    , _olbvdUploadProtocol = Nothing
    , _olbvdAccessToken = Nothing
    , _olbvdUploadType = Nothing
    , _olbvdName = pOlbvdName_
    , _olbvdCallback = Nothing
    }


-- | V1 error format.
olbvdXgafv :: Lens' OrganizationsLocationsBucketsViewsDelete (Maybe Xgafv)
olbvdXgafv
  = lens _olbvdXgafv (\ s a -> s{_olbvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbvdUploadProtocol :: Lens' OrganizationsLocationsBucketsViewsDelete (Maybe Text)
olbvdUploadProtocol
  = lens _olbvdUploadProtocol
      (\ s a -> s{_olbvdUploadProtocol = a})

-- | OAuth access token.
olbvdAccessToken :: Lens' OrganizationsLocationsBucketsViewsDelete (Maybe Text)
olbvdAccessToken
  = lens _olbvdAccessToken
      (\ s a -> s{_olbvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbvdUploadType :: Lens' OrganizationsLocationsBucketsViewsDelete (Maybe Text)
olbvdUploadType
  = lens _olbvdUploadType
      (\ s a -> s{_olbvdUploadType = a})

-- | Required. The full resource name of the view to delete:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
olbvdName :: Lens' OrganizationsLocationsBucketsViewsDelete Text
olbvdName
  = lens _olbvdName (\ s a -> s{_olbvdName = a})

-- | JSONP
olbvdCallback :: Lens' OrganizationsLocationsBucketsViewsDelete (Maybe Text)
olbvdCallback
  = lens _olbvdCallback
      (\ s a -> s{_olbvdCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsViewsDelete
         where
        type Rs OrganizationsLocationsBucketsViewsDelete =
             Empty
        type Scopes OrganizationsLocationsBucketsViewsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          OrganizationsLocationsBucketsViewsDelete'{..}
          = go _olbvdName _olbvdXgafv _olbvdUploadProtocol
              _olbvdAccessToken
              _olbvdUploadType
              _olbvdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsBucketsViewsDeleteResource)
                      mempty
