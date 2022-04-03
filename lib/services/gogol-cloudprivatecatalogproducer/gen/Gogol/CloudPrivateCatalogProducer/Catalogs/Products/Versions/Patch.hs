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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific Version resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.patch@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Patch
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsProductsVersionsPatchResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsProductsVersionsPatch (..),
    newCloudPrivateCatalogProducerCatalogsProductsVersionsPatch,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.patch@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsVersionsPatch' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsVersionsPatchResource =
  "v1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Version
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Version

-- | Updates a specific Version resource.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsVersionsPatch' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsVersionsPatch = CloudPrivateCatalogProducerCatalogsProductsVersionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the version, in the format \`catalogs\/{catalog/id}\/products\/{product/id}\/versions\/a-z*[a-z0-9]\'.
    --
    -- A unique identifier for the version under a product, which can\'t be changed after the version is created. The final segment of the name must between 1 and 63 characters in length.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudPrivatecatalogproducerV1beta1Version,
    -- | Field mask that controls which fields of the version should be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsVersionsPatch' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsVersionsPatch ::
  -- |  Required. The resource name of the version, in the format \`catalogs\/{catalog/id}\/products\/{product/id}\/versions\/a-z*[a-z0-9]\'.
  --
  -- A unique identifier for the version under a product, which can\'t be changed after the version is created. The final segment of the name must between 1 and 63 characters in length. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudPrivatecatalogproducerV1beta1Version ->
  CloudPrivateCatalogProducerCatalogsProductsVersionsPatch
newCloudPrivateCatalogProducerCatalogsProductsVersionsPatch name payload =
  CloudPrivateCatalogProducerCatalogsProductsVersionsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsProductsVersionsPatch
  where
  type
    Rs
      CloudPrivateCatalogProducerCatalogsProductsVersionsPatch =
      GoogleCloudPrivatecatalogproducerV1beta1Version
  type
    Scopes
      CloudPrivateCatalogProducerCatalogsProductsVersionsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    CloudPrivateCatalogProducerCatalogsProductsVersionsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  CloudPrivateCatalogProducerCatalogsProductsVersionsPatchResource
            )
            Core.mempty
