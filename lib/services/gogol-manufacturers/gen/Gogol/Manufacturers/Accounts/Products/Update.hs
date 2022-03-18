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
-- Module      : Gogol.Manufacturers.Accounts.Products.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts or updates the attributes of the product in a Manufacturer Center account. Creates a product with the provided attributes. If the product already exists, then all attributes are replaced with the new ones. The checks at upload time are minimal. All required attributes need to be present for a product to be valid. Issues may show up later after the API has accepted a new upload for a product and it is possible to overwrite an existing valid product with an invalid product. To detect this, you should retrieve the product and check it for issues once the new version is available. Uploaded attributes first need to be processed before they can be retrieved. Until then, new products will be unavailable, and retrieval of previously uploaded products will return the original state of the product.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.products.update@.
module Gogol.Manufacturers.Accounts.Products.Update
  ( -- * Resource
    ManufacturersAccountsProductsUpdateResource,

    -- ** Constructing a Request
    newManufacturersAccountsProductsUpdate,
    ManufacturersAccountsProductsUpdate,
  )
where

import Gogol.Manufacturers.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @manufacturers.accounts.products.update@ method which the
-- 'ManufacturersAccountsProductsUpdate' request conforms to.
type ManufacturersAccountsProductsUpdateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "products"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Attributes
    Core.:> Core.Put '[Core.JSON] Empty

-- | Inserts or updates the attributes of the product in a Manufacturer Center account. Creates a product with the provided attributes. If the product already exists, then all attributes are replaced with the new ones. The checks at upload time are minimal. All required attributes need to be present for a product to be valid. Issues may show up later after the API has accepted a new upload for a product and it is possible to overwrite an existing valid product with an invalid product. To detect this, you should retrieve the product and check it for issues once the new version is available. Uploaded attributes first need to be processed before they can be retrieved. Until then, new products will be unavailable, and retrieval of previously uploaded products will return the original state of the product.
--
-- /See:/ 'newManufacturersAccountsProductsUpdate' smart constructor.
data ManufacturersAccountsProductsUpdate = ManufacturersAccountsProductsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name in the format @{target_country}:{content_language}:{product_id}@. @target_country@ - The target country of the product as a CLDR territory code (for example, US). @content_language@ - The content language of the product as a two-letter ISO 639-1 language code (for example, en). @product_id@ - The ID of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#id.
    name :: Core.Text,
    -- | Parent ID in the format @accounts\/{account_id}@. @account_id@ - The ID of the Manufacturer Center account.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Attributes,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManufacturersAccountsProductsUpdate' with the minimum fields required to make a request.
newManufacturersAccountsProductsUpdate ::
  -- |  Name in the format @{target_country}:{content_language}:{product_id}@. @target_country@ - The target country of the product as a CLDR territory code (for example, US). @content_language@ - The content language of the product as a two-letter ISO 639-1 language code (for example, en). @product_id@ - The ID of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#id. See 'name'.
  Core.Text ->
  -- |  Parent ID in the format @accounts\/{account_id}@. @account_id@ - The ID of the Manufacturer Center account. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Attributes ->
  ManufacturersAccountsProductsUpdate
newManufacturersAccountsProductsUpdate name parent payload =
  ManufacturersAccountsProductsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ManufacturersAccountsProductsUpdate
  where
  type Rs ManufacturersAccountsProductsUpdate = Empty
  type
    Scopes ManufacturersAccountsProductsUpdate =
      '["https://www.googleapis.com/auth/manufacturercenter"]
  requestClient ManufacturersAccountsProductsUpdate {..} =
    go
      parent
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      manufacturersService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ManufacturersAccountsProductsUpdateResource
          )
          Core.mempty
