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
-- Module      : Network.Google.Resource.CloudPrivateCatalog.Organizations.Catalogs.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Catalog resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.organizations.catalogs.search@.
module Network.Google.Resource.CloudPrivateCatalog.Organizations.Catalogs.Search
    (
    -- * REST Resource
      OrganizationsCatalogsSearchResource

    -- * Creating a Request
    , organizationsCatalogsSearch
    , OrganizationsCatalogsSearch

    -- * Request Lenses
    , ocsXgafv
    , ocsUploadProtocol
    , ocsAccessToken
    , ocsUploadType
    , ocsResource
    , ocsQuery
    , ocsPageToken
    , ocsPageSize
    , ocsCallback
    ) where

import Network.Google.CloudPrivateCatalog.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalog.organizations.catalogs.search@ method which the
-- 'OrganizationsCatalogsSearch' request conforms to.
type OrganizationsCatalogsSearchResource =
     "v1beta1" :>
       Capture "resource" Text :>
         "catalogs:search" :>
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
                               GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse

-- | Search Catalog resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ 'organizationsCatalogsSearch' smart constructor.
data OrganizationsCatalogsSearch =
  OrganizationsCatalogsSearch'
    { _ocsXgafv :: !(Maybe Xgafv)
    , _ocsUploadProtocol :: !(Maybe Text)
    , _ocsAccessToken :: !(Maybe Text)
    , _ocsUploadType :: !(Maybe Text)
    , _ocsResource :: !Text
    , _ocsQuery :: !(Maybe Text)
    , _ocsPageToken :: !(Maybe Text)
    , _ocsPageSize :: !(Maybe (Textual Int32))
    , _ocsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsCatalogsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocsXgafv'
--
-- * 'ocsUploadProtocol'
--
-- * 'ocsAccessToken'
--
-- * 'ocsUploadType'
--
-- * 'ocsResource'
--
-- * 'ocsQuery'
--
-- * 'ocsPageToken'
--
-- * 'ocsPageSize'
--
-- * 'ocsCallback'
organizationsCatalogsSearch
    :: Text -- ^ 'ocsResource'
    -> OrganizationsCatalogsSearch
organizationsCatalogsSearch pOcsResource_ =
  OrganizationsCatalogsSearch'
    { _ocsXgafv = Nothing
    , _ocsUploadProtocol = Nothing
    , _ocsAccessToken = Nothing
    , _ocsUploadType = Nothing
    , _ocsResource = pOcsResource_
    , _ocsQuery = Nothing
    , _ocsPageToken = Nothing
    , _ocsPageSize = Nothing
    , _ocsCallback = Nothing
    }


-- | V1 error format.
ocsXgafv :: Lens' OrganizationsCatalogsSearch (Maybe Xgafv)
ocsXgafv = lens _ocsXgafv (\ s a -> s{_ocsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ocsUploadProtocol :: Lens' OrganizationsCatalogsSearch (Maybe Text)
ocsUploadProtocol
  = lens _ocsUploadProtocol
      (\ s a -> s{_ocsUploadProtocol = a})

-- | OAuth access token.
ocsAccessToken :: Lens' OrganizationsCatalogsSearch (Maybe Text)
ocsAccessToken
  = lens _ocsAccessToken
      (\ s a -> s{_ocsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ocsUploadType :: Lens' OrganizationsCatalogsSearch (Maybe Text)
ocsUploadType
  = lens _ocsUploadType
      (\ s a -> s{_ocsUploadType = a})

-- | Required. The name of the resource context. It can be in following
-- formats: * \`projects\/{project_id}\` * \`folders\/{folder_id}\` *
-- \`organizations\/{organization_id}\`
ocsResource :: Lens' OrganizationsCatalogsSearch Text
ocsResource
  = lens _ocsResource (\ s a -> s{_ocsResource = a})

-- | The query to filter the catalogs. The supported queries are: * Get a
-- single catalog: \`name=catalogs\/{catalog_id}\`
ocsQuery :: Lens' OrganizationsCatalogsSearch (Maybe Text)
ocsQuery = lens _ocsQuery (\ s a -> s{_ocsQuery = a})

-- | A pagination token returned from a previous call to SearchCatalogs that
-- indicates where this listing should continue from. This field is
-- optional.
ocsPageToken :: Lens' OrganizationsCatalogsSearch (Maybe Text)
ocsPageToken
  = lens _ocsPageToken (\ s a -> s{_ocsPageToken = a})

-- | The maximum number of entries that are requested.
ocsPageSize :: Lens' OrganizationsCatalogsSearch (Maybe Int32)
ocsPageSize
  = lens _ocsPageSize (\ s a -> s{_ocsPageSize = a}) .
      mapping _Coerce

-- | JSONP
ocsCallback :: Lens' OrganizationsCatalogsSearch (Maybe Text)
ocsCallback
  = lens _ocsCallback (\ s a -> s{_ocsCallback = a})

instance GoogleRequest OrganizationsCatalogsSearch
         where
        type Rs OrganizationsCatalogsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
        type Scopes OrganizationsCatalogsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsCatalogsSearch'{..}
          = go _ocsResource _ocsXgafv _ocsUploadProtocol
              _ocsAccessToken
              _ocsUploadType
              _ocsQuery
              _ocsPageToken
              _ocsPageSize
              _ocsCallback
              (Just AltJSON)
              cloudPrivateCatalogService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsCatalogsSearchResource)
                      mempty
