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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Version instance under a given Product.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.create@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Create
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsProductsVersionsCreateResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsProductsVersionsCreate (..),
    newCloudPrivateCatalogProducerCatalogsProductsVersionsCreate,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.create@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsVersionsCreate' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsVersionsCreateResource =
  "v1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "versions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Version
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates a Version instance under a given Product.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsVersionsCreate' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsVersionsCreate = CloudPrivateCatalogProducerCatalogsProductsVersionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The product name of the new version\'s parent.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudPrivatecatalogproducerV1beta1Version,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsVersionsCreate' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsVersionsCreate ::
  -- |  The product name of the new version\'s parent. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudPrivatecatalogproducerV1beta1Version ->
  CloudPrivateCatalogProducerCatalogsProductsVersionsCreate
newCloudPrivateCatalogProducerCatalogsProductsVersionsCreate
  parent
  payload =
    CloudPrivateCatalogProducerCatalogsProductsVersionsCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsProductsVersionsCreate
  where
  type
    Rs CloudPrivateCatalogProducerCatalogsProductsVersionsCreate =
      GoogleLongrunningOperation
  type
    Scopes
      CloudPrivateCatalogProducerCatalogsProductsVersionsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    CloudPrivateCatalogProducerCatalogsProductsVersionsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudPrivateCatalogProducerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudPrivateCatalogProducerCatalogsProductsVersionsCreateResource
            )
            Core.mempty
