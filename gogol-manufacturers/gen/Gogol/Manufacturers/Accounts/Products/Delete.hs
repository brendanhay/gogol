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
-- Module      : Gogol.Manufacturers.Accounts.Products.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the product from a Manufacturer Center account.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.products.delete@.
module Gogol.Manufacturers.Accounts.Products.Delete
  ( -- * Resource
    ManufacturersAccountsProductsDeleteResource,

    -- ** Constructing a Request
    newManufacturersAccountsProductsDelete,
    ManufacturersAccountsProductsDelete,
  )
where

import Gogol.Manufacturers.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @manufacturers.accounts.products.delete@ method which the
-- 'ManufacturersAccountsProductsDelete' request conforms to.
type ManufacturersAccountsProductsDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the product from a Manufacturer Center account.
--
-- /See:/ 'newManufacturersAccountsProductsDelete' smart constructor.
data ManufacturersAccountsProductsDelete = ManufacturersAccountsProductsDelete
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
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManufacturersAccountsProductsDelete' with the minimum fields required to make a request.
newManufacturersAccountsProductsDelete ::
  -- |  Name in the format @{target_country}:{content_language}:{product_id}@. @target_country@ - The target country of the product as a CLDR territory code (for example, US). @content_language@ - The content language of the product as a two-letter ISO 639-1 language code (for example, en). @product_id@ - The ID of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#id. See 'name'.
  Core.Text ->
  -- |  Parent ID in the format @accounts\/{account_id}@. @account_id@ - The ID of the Manufacturer Center account. See 'parent'.
  Core.Text ->
  ManufacturersAccountsProductsDelete
newManufacturersAccountsProductsDelete name parent =
  ManufacturersAccountsProductsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ManufacturersAccountsProductsDelete
  where
  type Rs ManufacturersAccountsProductsDelete = Empty
  type
    Scopes ManufacturersAccountsProductsDelete =
      '["https://www.googleapis.com/auth/manufacturercenter"]
  requestClient ManufacturersAccountsProductsDelete {..} =
    go
      parent
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      manufacturersService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ManufacturersAccountsProductsDeleteResource
          )
          Core.mempty
