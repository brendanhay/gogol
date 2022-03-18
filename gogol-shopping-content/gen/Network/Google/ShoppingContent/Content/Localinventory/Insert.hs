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
-- Module      : Network.Google.ShoppingContent.Content.Localinventory.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the local inventory of a product in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.localinventory.insert@.
module Network.Google.ShoppingContent.Content.Localinventory.Insert
  ( -- * Resource
    ContentLocalinventoryInsertResource,

    -- ** Constructing a Request
    newContentLocalinventoryInsert,
    ContentLocalinventoryInsert,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.localinventory.insert@ method which the
-- 'ContentLocalinventoryInsert' request conforms to.
type ContentLocalinventoryInsertResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "localinventory"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LocalInventory
    Core.:> Core.Post '[Core.JSON] LocalInventory

-- | Updates the local inventory of a product in your Merchant Center account.
--
-- /See:/ 'newContentLocalinventoryInsert' smart constructor.
data ContentLocalinventoryInsert = ContentLocalinventoryInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the account that contains the product. This account cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | Multipart request metadata.
    payload :: LocalInventory,
    -- | The REST ID of the product for which to update local inventory.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentLocalinventoryInsert' with the minimum fields required to make a request.
newContentLocalinventoryInsert ::
  -- |  The ID of the account that contains the product. This account cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  -- |  Multipart request metadata. See 'payload'.
  LocalInventory ->
  -- |  The REST ID of the product for which to update local inventory. See 'productId'.
  Core.Text ->
  ContentLocalinventoryInsert
newContentLocalinventoryInsert merchantId payload productId =
  ContentLocalinventoryInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      productId = productId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentLocalinventoryInsert
  where
  type Rs ContentLocalinventoryInsert = LocalInventory
  type
    Scopes ContentLocalinventoryInsert =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentLocalinventoryInsert {..} =
    go
      merchantId
      productId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentLocalinventoryInsertResource
          )
          Core.mempty
