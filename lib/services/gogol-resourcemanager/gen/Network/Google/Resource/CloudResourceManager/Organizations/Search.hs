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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.Search
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches organization resources that are visible to the user and satisfy
-- the specified filter. This method returns organizations in an
-- unspecified order. New organizations do not necessarily appear at the
-- end of the results, and may take a small amount of time to appear.
-- Search will only return organizations on which the user has the
-- permission \`resourcemanager.organizations.get\`
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.search@.
module Network.Google.Resource.CloudResourceManager.Organizations.Search
    (
    -- * REST Resource
      OrganizationsSearchResource

    -- * Creating a Request
    , organizationsSearch
    , OrganizationsSearch

    -- * Request Lenses
    , osXgafv
    , osUploadProtocol
    , osAccessToken
    , osUploadType
    , osQuery
    , osPageToken
    , osPageSize
    , osCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.search@ method which the
-- 'OrganizationsSearch' request conforms to.
type OrganizationsSearchResource =
     "v3" :>
       "organizations:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "query" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SearchOrganizationsResponse

-- | Searches organization resources that are visible to the user and satisfy
-- the specified filter. This method returns organizations in an
-- unspecified order. New organizations do not necessarily appear at the
-- end of the results, and may take a small amount of time to appear.
-- Search will only return organizations on which the user has the
-- permission \`resourcemanager.organizations.get\`
--
-- /See:/ 'organizationsSearch' smart constructor.
data OrganizationsSearch =
  OrganizationsSearch'
    { _osXgafv :: !(Maybe Xgafv)
    , _osUploadProtocol :: !(Maybe Text)
    , _osAccessToken :: !(Maybe Text)
    , _osUploadType :: !(Maybe Text)
    , _osQuery :: !(Maybe Text)
    , _osPageToken :: !(Maybe Text)
    , _osPageSize :: !(Maybe (Textual Int32))
    , _osCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osXgafv'
--
-- * 'osUploadProtocol'
--
-- * 'osAccessToken'
--
-- * 'osUploadType'
--
-- * 'osQuery'
--
-- * 'osPageToken'
--
-- * 'osPageSize'
--
-- * 'osCallback'
organizationsSearch
    :: OrganizationsSearch
organizationsSearch =
  OrganizationsSearch'
    { _osXgafv = Nothing
    , _osUploadProtocol = Nothing
    , _osAccessToken = Nothing
    , _osUploadType = Nothing
    , _osQuery = Nothing
    , _osPageToken = Nothing
    , _osPageSize = Nothing
    , _osCallback = Nothing
    }


-- | V1 error format.
osXgafv :: Lens' OrganizationsSearch (Maybe Xgafv)
osXgafv = lens _osXgafv (\ s a -> s{_osXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osUploadProtocol :: Lens' OrganizationsSearch (Maybe Text)
osUploadProtocol
  = lens _osUploadProtocol
      (\ s a -> s{_osUploadProtocol = a})

-- | OAuth access token.
osAccessToken :: Lens' OrganizationsSearch (Maybe Text)
osAccessToken
  = lens _osAccessToken
      (\ s a -> s{_osAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osUploadType :: Lens' OrganizationsSearch (Maybe Text)
osUploadType
  = lens _osUploadType (\ s a -> s{_osUploadType = a})

-- | Optional. An optional query string used to filter the Organizations to
-- return in the response. Query rules are case-insensitive. | Field |
-- Description |
-- |------------------|--------------------------------------------| |
-- directoryCustomerId, owner.directoryCustomerId | Filters by directory
-- customer id. | | domain | Filters by domain. | Organizations may be
-- queried by \`directoryCustomerId\` or by \`domain\`, where the domain is
-- a G Suite domain, for example: * Query \`directorycustomerid:123456789\`
-- returns Organization resources with \`owner.directory_customer_id\`
-- equal to \`123456789\`. * Query \`domain:google.com\` returns
-- Organization resources corresponding to the domain \`google.com\`.
osQuery :: Lens' OrganizationsSearch (Maybe Text)
osQuery = lens _osQuery (\ s a -> s{_osQuery = a})

-- | Optional. A pagination token returned from a previous call to
-- \`SearchOrganizations\` that indicates from where listing should
-- continue.
osPageToken :: Lens' OrganizationsSearch (Maybe Text)
osPageToken
  = lens _osPageToken (\ s a -> s{_osPageToken = a})

-- | Optional. The maximum number of organizations to return in the response.
-- If unspecified, server picks an appropriate default.
osPageSize :: Lens' OrganizationsSearch (Maybe Int32)
osPageSize
  = lens _osPageSize (\ s a -> s{_osPageSize = a}) .
      mapping _Coerce

-- | JSONP
osCallback :: Lens' OrganizationsSearch (Maybe Text)
osCallback
  = lens _osCallback (\ s a -> s{_osCallback = a})

instance GoogleRequest OrganizationsSearch where
        type Rs OrganizationsSearch =
             SearchOrganizationsResponse
        type Scopes OrganizationsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient OrganizationsSearch'{..}
          = go _osXgafv _osUploadProtocol _osAccessToken
              _osUploadType
              _osQuery
              _osPageToken
              _osPageSize
              _osCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSearchResource)
                      mempty
