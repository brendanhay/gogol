{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudPrivateCatalog
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable cloud users to discover enterprise catalogs and products in their organizations.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference>
module Gogol.CloudPrivateCatalog
  ( -- * Configuration
    cloudPrivateCatalogService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** cloudprivatecatalog.folders.catalogs.search
    CloudPrivateCatalogFoldersCatalogsSearchResource,
    CloudPrivateCatalogFoldersCatalogsSearch (..),
    newCloudPrivateCatalogFoldersCatalogsSearch,

    -- ** cloudprivatecatalog.folders.products.search
    CloudPrivateCatalogFoldersProductsSearchResource,
    CloudPrivateCatalogFoldersProductsSearch (..),
    newCloudPrivateCatalogFoldersProductsSearch,

    -- ** cloudprivatecatalog.folders.versions.search
    CloudPrivateCatalogFoldersVersionsSearchResource,
    CloudPrivateCatalogFoldersVersionsSearch (..),
    newCloudPrivateCatalogFoldersVersionsSearch,

    -- ** cloudprivatecatalog.organizations.catalogs.search
    CloudPrivateCatalogOrganizationsCatalogsSearchResource,
    CloudPrivateCatalogOrganizationsCatalogsSearch (..),
    newCloudPrivateCatalogOrganizationsCatalogsSearch,

    -- ** cloudprivatecatalog.organizations.products.search
    CloudPrivateCatalogOrganizationsProductsSearchResource,
    CloudPrivateCatalogOrganizationsProductsSearch (..),
    newCloudPrivateCatalogOrganizationsProductsSearch,

    -- ** cloudprivatecatalog.organizations.versions.search
    CloudPrivateCatalogOrganizationsVersionsSearchResource,
    CloudPrivateCatalogOrganizationsVersionsSearch (..),
    newCloudPrivateCatalogOrganizationsVersionsSearch,

    -- ** cloudprivatecatalog.projects.catalogs.search
    CloudPrivateCatalogProjectsCatalogsSearchResource,
    CloudPrivateCatalogProjectsCatalogsSearch (..),
    newCloudPrivateCatalogProjectsCatalogsSearch,

    -- ** cloudprivatecatalog.projects.products.search
    CloudPrivateCatalogProjectsProductsSearchResource,
    CloudPrivateCatalogProjectsProductsSearch (..),
    newCloudPrivateCatalogProjectsProductsSearch,

    -- ** cloudprivatecatalog.projects.versions.search
    CloudPrivateCatalogProjectsVersionsSearchResource,
    CloudPrivateCatalogProjectsVersionsSearch (..),
    newCloudPrivateCatalogProjectsVersionsSearch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GoogleCloudPrivatecatalogV1beta1Catalog
    GoogleCloudPrivatecatalogV1beta1Catalog (..),
    newGoogleCloudPrivatecatalogV1beta1Catalog,

    -- ** GoogleCloudPrivatecatalogV1beta1Product
    GoogleCloudPrivatecatalogV1beta1Product (..),
    newGoogleCloudPrivatecatalogV1beta1Product,

    -- ** GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
    GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata (..),
    newGoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata,

    -- ** GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse (..),
    newGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse,

    -- ** GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
    GoogleCloudPrivatecatalogV1beta1SearchProductsResponse (..),
    newGoogleCloudPrivatecatalogV1beta1SearchProductsResponse,

    -- ** GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
    GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse (..),
    newGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse,

    -- ** GoogleCloudPrivatecatalogV1beta1Version
    GoogleCloudPrivatecatalogV1beta1Version (..),
    newGoogleCloudPrivatecatalogV1beta1Version,

    -- ** GoogleCloudPrivatecatalogV1beta1Version_Asset
    GoogleCloudPrivatecatalogV1beta1Version_Asset (..),
    newGoogleCloudPrivatecatalogV1beta1Version_Asset,
  )
where

import Gogol.CloudPrivateCatalog.Folders.Catalogs.Search
import Gogol.CloudPrivateCatalog.Folders.Products.Search
import Gogol.CloudPrivateCatalog.Folders.Versions.Search
import Gogol.CloudPrivateCatalog.Organizations.Catalogs.Search
import Gogol.CloudPrivateCatalog.Organizations.Products.Search
import Gogol.CloudPrivateCatalog.Organizations.Versions.Search
import Gogol.CloudPrivateCatalog.Projects.Catalogs.Search
import Gogol.CloudPrivateCatalog.Projects.Products.Search
import Gogol.CloudPrivateCatalog.Projects.Versions.Search
import Gogol.CloudPrivateCatalog.Types
