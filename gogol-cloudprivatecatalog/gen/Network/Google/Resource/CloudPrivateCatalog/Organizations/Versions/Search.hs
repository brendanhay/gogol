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
-- Module      : Network.Google.Resource.CloudPrivateCatalog.Organizations.Versions.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Version resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.organizations.versions.search@.
module Network.Google.Resource.CloudPrivateCatalog.Organizations.Versions.Search
    (
    -- * REST Resource
      OrganizationsVersionsSearchResource

    -- * Creating a Request
    , organizationsVersionsSearch
    , OrganizationsVersionsSearch

    -- * Request Lenses
    , ovsXgafv
    , ovsUploadProtocol
    , ovsAccessToken
    , ovsUploadType
    , ovsResource
    , ovsQuery
    , ovsPageToken
    , ovsPageSize
    , ovsCallback
    ) where

import Network.Google.CloudPrivateCatalog.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalog.organizations.versions.search@ method which the
-- 'OrganizationsVersionsSearch' request conforms to.
type OrganizationsVersionsSearchResource =
     "v1beta1" :>
       Capture "resource" Text :>
         "versions:search" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "query" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse

-- | Search Version resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ 'organizationsVersionsSearch' smart constructor.
data OrganizationsVersionsSearch =
  OrganizationsVersionsSearch'
    { _ovsXgafv :: !(Maybe Xgafv)
    , _ovsUploadProtocol :: !(Maybe Text)
    , _ovsAccessToken :: !(Maybe Text)
    , _ovsUploadType :: !(Maybe Text)
    , _ovsResource :: !Text
    , _ovsQuery :: !(Maybe Text)
    , _ovsPageToken :: !(Maybe Text)
    , _ovsPageSize :: !(Maybe (Textual Int32))
    , _ovsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsVersionsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ovsXgafv'
--
-- * 'ovsUploadProtocol'
--
-- * 'ovsAccessToken'
--
-- * 'ovsUploadType'
--
-- * 'ovsResource'
--
-- * 'ovsQuery'
--
-- * 'ovsPageToken'
--
-- * 'ovsPageSize'
--
-- * 'ovsCallback'
organizationsVersionsSearch
    :: Text -- ^ 'ovsResource'
    -> OrganizationsVersionsSearch
organizationsVersionsSearch pOvsResource_ =
  OrganizationsVersionsSearch'
    { _ovsXgafv = Nothing
    , _ovsUploadProtocol = Nothing
    , _ovsAccessToken = Nothing
    , _ovsUploadType = Nothing
    , _ovsResource = pOvsResource_
    , _ovsQuery = Nothing
    , _ovsPageToken = Nothing
    , _ovsPageSize = Nothing
    , _ovsCallback = Nothing
    }


-- | V1 error format.
ovsXgafv :: Lens' OrganizationsVersionsSearch (Maybe Xgafv)
ovsXgafv = lens _ovsXgafv (\ s a -> s{_ovsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ovsUploadProtocol :: Lens' OrganizationsVersionsSearch (Maybe Text)
ovsUploadProtocol
  = lens _ovsUploadProtocol
      (\ s a -> s{_ovsUploadProtocol = a})

-- | OAuth access token.
ovsAccessToken :: Lens' OrganizationsVersionsSearch (Maybe Text)
ovsAccessToken
  = lens _ovsAccessToken
      (\ s a -> s{_ovsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ovsUploadType :: Lens' OrganizationsVersionsSearch (Maybe Text)
ovsUploadType
  = lens _ovsUploadType
      (\ s a -> s{_ovsUploadType = a})

-- | Required. The name of the resource context. See
-- SearchCatalogsRequest.resource for details.
ovsResource :: Lens' OrganizationsVersionsSearch Text
ovsResource
  = lens _ovsResource (\ s a -> s{_ovsResource = a})

-- | The query to filter the versions. Required. The supported queries are: *
-- List versions under a product:
-- \`parent=catalogs\/{catalog_id}\/products\/{product_id}\` * Get a
-- version by name:
-- \`name=catalogs\/{catalog_id}\/products\/{product_id}\/versions\/{version_id}\`
ovsQuery :: Lens' OrganizationsVersionsSearch (Maybe Text)
ovsQuery = lens _ovsQuery (\ s a -> s{_ovsQuery = a})

-- | A pagination token returned from a previous call to SearchVersions that
-- indicates where this listing should continue from. This field is
-- optional.
ovsPageToken :: Lens' OrganizationsVersionsSearch (Maybe Text)
ovsPageToken
  = lens _ovsPageToken (\ s a -> s{_ovsPageToken = a})

-- | The maximum number of entries that are requested.
ovsPageSize :: Lens' OrganizationsVersionsSearch (Maybe Int32)
ovsPageSize
  = lens _ovsPageSize (\ s a -> s{_ovsPageSize = a}) .
      mapping _Coerce

-- | JSONP
ovsCallback :: Lens' OrganizationsVersionsSearch (Maybe Text)
ovsCallback
  = lens _ovsCallback (\ s a -> s{_ovsCallback = a})

instance GoogleRequest OrganizationsVersionsSearch
         where
        type Rs OrganizationsVersionsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
        type Scopes OrganizationsVersionsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsVersionsSearch'{..}
          = go _ovsResource _ovsXgafv _ovsUploadProtocol
              _ovsAccessToken
              _ovsUploadType
              _ovsQuery
              _ovsPageToken
              _ovsPageSize
              _ovsCallback
              (Just AltJSON)
              cloudPrivateCatalogService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsVersionsSearchResource)
                      mempty
