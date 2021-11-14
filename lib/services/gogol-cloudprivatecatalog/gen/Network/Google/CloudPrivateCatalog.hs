{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudPrivateCatalog
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable cloud users to discover enterprise catalogs and products in their
-- organizations.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference>
module Network.Google.CloudPrivateCatalog
    (
    -- * Service Configuration
      cloudPrivateCatalogService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudPrivateCatalogAPI

    -- * Resources

    -- ** cloudprivatecatalog.folders.catalogs.search
    , module Network.Google.Resource.CloudPrivateCatalog.Folders.Catalogs.Search

    -- ** cloudprivatecatalog.folders.products.search
    , module Network.Google.Resource.CloudPrivateCatalog.Folders.Products.Search

    -- ** cloudprivatecatalog.folders.versions.search
    , module Network.Google.Resource.CloudPrivateCatalog.Folders.Versions.Search

    -- ** cloudprivatecatalog.organizations.catalogs.search
    , module Network.Google.Resource.CloudPrivateCatalog.Organizations.Catalogs.Search

    -- ** cloudprivatecatalog.organizations.products.search
    , module Network.Google.Resource.CloudPrivateCatalog.Organizations.Products.Search

    -- ** cloudprivatecatalog.organizations.versions.search
    , module Network.Google.Resource.CloudPrivateCatalog.Organizations.Versions.Search

    -- ** cloudprivatecatalog.projects.catalogs.search
    , module Network.Google.Resource.CloudPrivateCatalog.Projects.Catalogs.Search

    -- ** cloudprivatecatalog.projects.products.search
    , module Network.Google.Resource.CloudPrivateCatalog.Projects.Products.Search

    -- ** cloudprivatecatalog.projects.versions.search
    , module Network.Google.Resource.CloudPrivateCatalog.Projects.Versions.Search

    -- * Types

    -- ** GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    , GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    , googleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    , gcpvscrNextPageToken
    , gcpvscrCatalogs

    -- ** GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata
    , GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata
    , googleCloudPrivatecatalogV1beta1ProductDisplayMetadata
    , gcpvpdmAddtional

    -- ** GoogleCloudPrivatecatalogV1beta1Catalog
    , GoogleCloudPrivatecatalogV1beta1Catalog
    , googleCloudPrivatecatalogV1beta1Catalog
    , gcpvcUpdateTime
    , gcpvcName
    , gcpvcDisplayName
    , gcpvcDescription
    , gcpvcCreateTime

    -- ** GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
    , GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
    , googleCloudPrivatecatalogV1beta1SearchProductsResponse
    , gcpvsprNextPageToken
    , gcpvsprProducts

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleCloudPrivatecatalogV1beta1VersionAsset
    , GoogleCloudPrivatecatalogV1beta1VersionAsset
    , googleCloudPrivatecatalogV1beta1VersionAsset
    , gcpvvaAddtional

    -- ** GoogleCloudPrivatecatalogV1beta1Version
    , GoogleCloudPrivatecatalogV1beta1Version
    , googleCloudPrivatecatalogV1beta1Version
    , gcpvvAsset
    , gcpvvUpdateTime
    , gcpvvName
    , gcpvvDescription
    , gcpvvCreateTime

    -- ** GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
    , GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
    , googleCloudPrivatecatalogV1beta1SearchVersionsResponse
    , gcpvsvrNextPageToken
    , gcpvsvrVersions

    -- ** GoogleCloudPrivatecatalogV1beta1Product
    , GoogleCloudPrivatecatalogV1beta1Product
    , googleCloudPrivatecatalogV1beta1Product
    , gcpvpIconURI
    , gcpvpUpdateTime
    , gcpvpDisplayMetadata
    , gcpvpName
    , gcpvpAssetType
    , gcpvpCreateTime
    ) where

import Network.Google.Prelude
import Network.Google.CloudPrivateCatalog.Types
import Network.Google.Resource.CloudPrivateCatalog.Folders.Catalogs.Search
import Network.Google.Resource.CloudPrivateCatalog.Folders.Products.Search
import Network.Google.Resource.CloudPrivateCatalog.Folders.Versions.Search
import Network.Google.Resource.CloudPrivateCatalog.Organizations.Catalogs.Search
import Network.Google.Resource.CloudPrivateCatalog.Organizations.Products.Search
import Network.Google.Resource.CloudPrivateCatalog.Organizations.Versions.Search
import Network.Google.Resource.CloudPrivateCatalog.Projects.Catalogs.Search
import Network.Google.Resource.CloudPrivateCatalog.Projects.Products.Search
import Network.Google.Resource.CloudPrivateCatalog.Projects.Versions.Search

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Private Catalog API service.
type CloudPrivateCatalogAPI =
     FoldersCatalogsSearchResource :<|>
       FoldersVersionsSearchResource
       :<|> FoldersProductsSearchResource
       :<|> OrganizationsCatalogsSearchResource
       :<|> OrganizationsVersionsSearchResource
       :<|> OrganizationsProductsSearchResource
       :<|> ProjectsCatalogsSearchResource
       :<|> ProjectsVersionsSearchResource
       :<|> ProjectsProductsSearchResource
