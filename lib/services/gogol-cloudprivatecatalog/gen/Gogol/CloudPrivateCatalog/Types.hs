{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.CloudPrivateCatalog.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudPrivateCatalog.Types
  ( -- * Configuration
    cloudPrivateCatalogService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

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

import Gogol.CloudPrivateCatalog.Internal.Product
import Gogol.CloudPrivateCatalog.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1beta1@ of the Cloud Private Catalog API. This contains the host and root path used as a starting point for constructing service requests.
cloudPrivateCatalogService :: Core.ServiceConfig
cloudPrivateCatalogService =
  Core.defaultService
    (Core.ServiceId "cloudprivatecatalog:v1beta1")
    "cloudprivatecatalog.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
