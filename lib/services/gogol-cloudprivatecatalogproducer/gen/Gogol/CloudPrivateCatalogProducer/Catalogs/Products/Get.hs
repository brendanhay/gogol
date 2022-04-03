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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the requested Product resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.get@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Get
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsProductsGetResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsProductsGet (..),
    newCloudPrivateCatalogProducerCatalogsProductsGet,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.get@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsGet' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsGetResource =
  "v1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Product

-- | Returns the requested Product resource.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsGet' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsGet = CloudPrivateCatalogProducerCatalogsProductsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the product.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsGet' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsGet ::
  -- |  The resource name of the product. See 'name'.
  Core.Text ->
  CloudPrivateCatalogProducerCatalogsProductsGet
newCloudPrivateCatalogProducerCatalogsProductsGet name =
  CloudPrivateCatalogProducerCatalogsProductsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsProductsGet
  where
  type
    Rs
      CloudPrivateCatalogProducerCatalogsProductsGet =
      GoogleCloudPrivatecatalogproducerV1beta1Product
  type
    Scopes
      CloudPrivateCatalogProducerCatalogsProductsGet =
      '[CloudPlatform'FullControl]
  requestClient
    CloudPrivateCatalogProducerCatalogsProductsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudPrivateCatalogProducerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudPrivateCatalogProducerCatalogsProductsGetResource
            )
            Core.mempty
