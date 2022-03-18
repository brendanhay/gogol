{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudPrivateCatalog.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudPrivateCatalog.Types
    (
    -- * Configuration
      cloudPrivateCatalogService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleCloudPrivatecatalogV1beta1Catalog
    , GoogleCloudPrivatecatalogV1beta1Catalog (..)
    , newGoogleCloudPrivatecatalogV1beta1Catalog

    -- ** GoogleCloudPrivatecatalogV1beta1Product
    , GoogleCloudPrivatecatalogV1beta1Product (..)
    , newGoogleCloudPrivatecatalogV1beta1Product

    -- ** GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
    , GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata (..)
    , newGoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata

    -- ** GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    , GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse (..)
    , newGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse

    -- ** GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
    , GoogleCloudPrivatecatalogV1beta1SearchProductsResponse (..)
    , newGoogleCloudPrivatecatalogV1beta1SearchProductsResponse

    -- ** GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
    , GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse (..)
    , newGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse

    -- ** GoogleCloudPrivatecatalogV1beta1Version
    , GoogleCloudPrivatecatalogV1beta1Version (..)
    , newGoogleCloudPrivatecatalogV1beta1Version

    -- ** GoogleCloudPrivatecatalogV1beta1Version_Asset
    , GoogleCloudPrivatecatalogV1beta1Version_Asset (..)
    , newGoogleCloudPrivatecatalogV1beta1Version_Asset
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalog.Internal.Product
import Gogol.CloudPrivateCatalog.Internal.Sum

-- | Default request referring to version @v1beta1@ of the Cloud Private Catalog API. This contains the host and root path used as a starting point for constructing service requests.
cloudPrivateCatalogService :: Core.ServiceConfig
cloudPrivateCatalogService
  = Core.defaultService
      (Core.ServiceId "cloudprivatecatalog:v1beta1")
      "cloudprivatecatalog.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
