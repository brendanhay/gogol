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
-- Module      : Gogol.ShoppingContent.Content.Productdeliverytime.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the delivery time of a product.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.productdeliverytime.create@.
module Gogol.ShoppingContent.Content.Productdeliverytime.Create
  ( -- * Resource
    ContentProductdeliverytimeCreateResource,

    -- ** Constructing a Request
    ContentProductdeliverytimeCreate (..),
    newContentProductdeliverytimeCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.productdeliverytime.create@ method which the
-- 'ContentProductdeliverytimeCreate' request conforms to.
type ContentProductdeliverytimeCreateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "productdeliverytime"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ProductDeliveryTime
    Core.:> Core.Post '[Core.JSON] ProductDeliveryTime

-- | Creates or updates the delivery time of a product.
--
-- /See:/ 'newContentProductdeliverytimeCreate' smart constructor.
data ContentProductdeliverytimeCreate = ContentProductdeliverytimeCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The Google merchant ID of the account that contains the product. This account cannot be a multi-client account.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: ProductDeliveryTime,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentProductdeliverytimeCreate' with the minimum fields required to make a request.
newContentProductdeliverytimeCreate ::
  -- |  The Google merchant ID of the account that contains the product. This account cannot be a multi-client account. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  ProductDeliveryTime ->
  ContentProductdeliverytimeCreate
newContentProductdeliverytimeCreate merchantId payload =
  ContentProductdeliverytimeCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentProductdeliverytimeCreate where
  type Rs ContentProductdeliverytimeCreate = ProductDeliveryTime
  type
    Scopes ContentProductdeliverytimeCreate =
      '[Content'FullControl]
  requestClient ContentProductdeliverytimeCreate {..} =
    go
      merchantId
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
          (Core.Proxy :: Core.Proxy ContentProductdeliverytimeCreateResource)
          Core.mempty
