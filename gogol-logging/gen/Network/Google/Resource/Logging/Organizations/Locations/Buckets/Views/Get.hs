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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a view.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.views.get@.
module Network.Google.Resource.Logging.Organizations.Locations.Buckets.Views.Get
    (
    -- * REST Resource
      OrganizationsLocationsBucketsViewsGetResource

    -- * Creating a Request
    , organizationsLocationsBucketsViewsGet
    , OrganizationsLocationsBucketsViewsGet

    -- * Request Lenses
    , olbvgXgafv
    , olbvgUploadProtocol
    , olbvgAccessToken
    , olbvgUploadType
    , olbvgName
    , olbvgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.buckets.views.get@ method which the
-- 'OrganizationsLocationsBucketsViewsGet' request conforms to.
type OrganizationsLocationsBucketsViewsGetResource =
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
-- /See:/ 'organizationsLocationsBucketsViewsGet' smart constructor.
data OrganizationsLocationsBucketsViewsGet =
  OrganizationsLocationsBucketsViewsGet'
    { _olbvgXgafv :: !(Maybe Xgafv)
    , _olbvgUploadProtocol :: !(Maybe Text)
    , _olbvgAccessToken :: !(Maybe Text)
    , _olbvgUploadType :: !(Maybe Text)
    , _olbvgName :: !Text
    , _olbvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsBucketsViewsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olbvgXgafv'
--
-- * 'olbvgUploadProtocol'
--
-- * 'olbvgAccessToken'
--
-- * 'olbvgUploadType'
--
-- * 'olbvgName'
--
-- * 'olbvgCallback'
organizationsLocationsBucketsViewsGet
    :: Text -- ^ 'olbvgName'
    -> OrganizationsLocationsBucketsViewsGet
organizationsLocationsBucketsViewsGet pOlbvgName_ =
  OrganizationsLocationsBucketsViewsGet'
    { _olbvgXgafv = Nothing
    , _olbvgUploadProtocol = Nothing
    , _olbvgAccessToken = Nothing
    , _olbvgUploadType = Nothing
    , _olbvgName = pOlbvgName_
    , _olbvgCallback = Nothing
    }


-- | V1 error format.
olbvgXgafv :: Lens' OrganizationsLocationsBucketsViewsGet (Maybe Xgafv)
olbvgXgafv
  = lens _olbvgXgafv (\ s a -> s{_olbvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olbvgUploadProtocol :: Lens' OrganizationsLocationsBucketsViewsGet (Maybe Text)
olbvgUploadProtocol
  = lens _olbvgUploadProtocol
      (\ s a -> s{_olbvgUploadProtocol = a})

-- | OAuth access token.
olbvgAccessToken :: Lens' OrganizationsLocationsBucketsViewsGet (Maybe Text)
olbvgAccessToken
  = lens _olbvgAccessToken
      (\ s a -> s{_olbvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olbvgUploadType :: Lens' OrganizationsLocationsBucketsViewsGet (Maybe Text)
olbvgUploadType
  = lens _olbvgUploadType
      (\ s a -> s{_olbvgUploadType = a})

-- | Required. The resource name of the policy:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\/views\/my-view-id\".
olbvgName :: Lens' OrganizationsLocationsBucketsViewsGet Text
olbvgName
  = lens _olbvgName (\ s a -> s{_olbvgName = a})

-- | JSONP
olbvgCallback :: Lens' OrganizationsLocationsBucketsViewsGet (Maybe Text)
olbvgCallback
  = lens _olbvgCallback
      (\ s a -> s{_olbvgCallback = a})

instance GoogleRequest
           OrganizationsLocationsBucketsViewsGet
         where
        type Rs OrganizationsLocationsBucketsViewsGet =
             LogView
        type Scopes OrganizationsLocationsBucketsViewsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient
          OrganizationsLocationsBucketsViewsGet'{..}
          = go _olbvgName _olbvgXgafv _olbvgUploadProtocol
              _olbvgAccessToken
              _olbvgUploadType
              _olbvgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsBucketsViewsGetResource)
                      mempty
