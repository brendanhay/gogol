{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudPrivateCatalog.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudPrivateCatalog.Types
    (
    -- * Service Configuration
      cloudPrivateCatalogService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    , GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    , googleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    , gcpvscrNextPageToken
    , gcpvscrCatalogs

    -- * GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata
    , GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata
    , googleCloudPrivatecatalogV1beta1ProductDisplayMetadata
    , gcpvpdmAddtional

    -- * GoogleCloudPrivatecatalogV1beta1Catalog
    , GoogleCloudPrivatecatalogV1beta1Catalog
    , googleCloudPrivatecatalogV1beta1Catalog
    , gcpvcUpdateTime
    , gcpvcName
    , gcpvcDisplayName
    , gcpvcDescription
    , gcpvcCreateTime

    -- * GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
    , GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
    , googleCloudPrivatecatalogV1beta1SearchProductsResponse
    , gcpvsprNextPageToken
    , gcpvsprProducts

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleCloudPrivatecatalogV1beta1VersionAsset
    , GoogleCloudPrivatecatalogV1beta1VersionAsset
    , googleCloudPrivatecatalogV1beta1VersionAsset
    , gcpvvaAddtional

    -- * GoogleCloudPrivatecatalogV1beta1Version
    , GoogleCloudPrivatecatalogV1beta1Version
    , googleCloudPrivatecatalogV1beta1Version
    , gcpvvAsset
    , gcpvvUpdateTime
    , gcpvvName
    , gcpvvDescription
    , gcpvvCreateTime

    -- * GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
    , GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
    , googleCloudPrivatecatalogV1beta1SearchVersionsResponse
    , gcpvsvrNextPageToken
    , gcpvsvrVersions

    -- * GoogleCloudPrivatecatalogV1beta1Product
    , GoogleCloudPrivatecatalogV1beta1Product
    , googleCloudPrivatecatalogV1beta1Product
    , gcpvpIconURI
    , gcpvpUpdateTime
    , gcpvpDisplayMetadata
    , gcpvpName
    , gcpvpAssetType
    , gcpvpCreateTime
    ) where

import           Network.Google.CloudPrivateCatalog.Types.Product
import           Network.Google.CloudPrivateCatalog.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Cloud Private Catalog API. This contains the host and root path used as a starting point for constructing service requests.
cloudPrivateCatalogService :: ServiceConfig
cloudPrivateCatalogService
  = defaultService
      (ServiceId "cloudprivatecatalog:v1beta1")
      "cloudprivatecatalog.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
