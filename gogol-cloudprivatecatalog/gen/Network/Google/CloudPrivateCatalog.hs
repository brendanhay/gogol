{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.CloudPrivateCatalog
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable cloud users to discover enterprise catalogs and products in their organizations.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference>
module Network.Google.CloudPrivateCatalog
  ( -- * Configuration
    cloudPrivateCatalogService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** cloudprivatecatalog.folders.catalogs.search
    CloudPrivateCatalogFoldersCatalogsSearchResource,
    newCloudPrivateCatalogFoldersCatalogsSearch,
    CloudPrivateCatalogFoldersCatalogsSearch,

    -- ** cloudprivatecatalog.folders.products.search
    CloudPrivateCatalogFoldersProductsSearchResource,
    newCloudPrivateCatalogFoldersProductsSearch,
    CloudPrivateCatalogFoldersProductsSearch,

    -- ** cloudprivatecatalog.folders.versions.search
    CloudPrivateCatalogFoldersVersionsSearchResource,
    newCloudPrivateCatalogFoldersVersionsSearch,
    CloudPrivateCatalogFoldersVersionsSearch,

    -- ** cloudprivatecatalog.organizations.catalogs.search
    CloudPrivateCatalogOrganizationsCatalogsSearchResource,
    newCloudPrivateCatalogOrganizationsCatalogsSearch,
    CloudPrivateCatalogOrganizationsCatalogsSearch,

    -- ** cloudprivatecatalog.organizations.products.search
    CloudPrivateCatalogOrganizationsProductsSearchResource,
    newCloudPrivateCatalogOrganizationsProductsSearch,
    CloudPrivateCatalogOrganizationsProductsSearch,

    -- ** cloudprivatecatalog.organizations.versions.search
    CloudPrivateCatalogOrganizationsVersionsSearchResource,
    newCloudPrivateCatalogOrganizationsVersionsSearch,
    CloudPrivateCatalogOrganizationsVersionsSearch,

    -- ** cloudprivatecatalog.projects.catalogs.search
    CloudPrivateCatalogProjectsCatalogsSearchResource,
    newCloudPrivateCatalogProjectsCatalogsSearch,
    CloudPrivateCatalogProjectsCatalogsSearch,

    -- ** cloudprivatecatalog.projects.products.search
    CloudPrivateCatalogProjectsProductsSearchResource,
    newCloudPrivateCatalogProjectsProductsSearch,
    CloudPrivateCatalogProjectsProductsSearch,

    -- ** cloudprivatecatalog.projects.versions.search
    CloudPrivateCatalogProjectsVersionsSearchResource,
    newCloudPrivateCatalogProjectsVersionsSearch,
    CloudPrivateCatalogProjectsVersionsSearch,

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

import Network.Google.CloudPrivateCatalog.Folders.Catalogs.Search
import Network.Google.CloudPrivateCatalog.Folders.Products.Search
import Network.Google.CloudPrivateCatalog.Folders.Versions.Search
import Network.Google.CloudPrivateCatalog.Organizations.Catalogs.Search
import Network.Google.CloudPrivateCatalog.Organizations.Products.Search
import Network.Google.CloudPrivateCatalog.Organizations.Versions.Search
import Network.Google.CloudPrivateCatalog.Projects.Catalogs.Search
import Network.Google.CloudPrivateCatalog.Projects.Products.Search
import Network.Google.CloudPrivateCatalog.Projects.Versions.Search
import Network.Google.CloudPrivateCatalog.Types
