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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific Product resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.patch@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Patch
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsProductsPatchResource,

    -- ** Constructing a Request
    newCloudPrivateCatalogProducerCatalogsProductsPatch,
    CloudPrivateCatalogProducerCatalogsProductsPatch,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.patch@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsPatch' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsPatchResource =
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
              GoogleCloudPrivatecatalogproducerV1beta1Product
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Product

-- | Updates a specific Product resource.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsPatch' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsPatch = CloudPrivateCatalogProducerCatalogsProductsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the product in the format \`catalogs\/{catalog_id}\/products\/a-z*[a-z0-9]\'.
    --
    -- A unique identifier for the product under a catalog, which cannot be changed after the product is created. The final segment of the name must between 1 and 256 characters in length.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudPrivatecatalogproducerV1beta1Product,
    -- | Field mask that controls which fields of the product should be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsPatch' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsPatch ::
  -- |  Required. The resource name of the product in the format \`catalogs\/{catalog_id}\/products\/a-z*[a-z0-9]\'.
  --
  -- A unique identifier for the product under a catalog, which cannot be changed after the product is created. The final segment of the name must between 1 and 256 characters in length. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudPrivatecatalogproducerV1beta1Product ->
  CloudPrivateCatalogProducerCatalogsProductsPatch
newCloudPrivateCatalogProducerCatalogsProductsPatch name payload =
  CloudPrivateCatalogProducerCatalogsProductsPatch
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
    CloudPrivateCatalogProducerCatalogsProductsPatch
  where
  type
    Rs
      CloudPrivateCatalogProducerCatalogsProductsPatch =
      GoogleCloudPrivatecatalogproducerV1beta1Product
  type
    Scopes
      CloudPrivateCatalogProducerCatalogsProductsPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudPrivateCatalogProducerCatalogsProductsPatch {..} =
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
                  CloudPrivateCatalogProducerCatalogsProductsPatchResource
            )
            Core.mempty
