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
-- Module      : Gogol.ShoppingContent.Content.Productdeliverytime.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets @productDeliveryTime@ by @productId@.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.productdeliverytime.get@.
module Gogol.ShoppingContent.Content.Productdeliverytime.Get
  ( -- * Resource
    ContentProductdeliverytimeGetResource,

    -- ** Constructing a Request
    ContentProductdeliverytimeGet (..),
    newContentProductdeliverytimeGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.productdeliverytime.get@ method which the
-- 'ContentProductdeliverytimeGet' request conforms to.
type ContentProductdeliverytimeGetResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "productdeliverytime"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ProductDeliveryTime

-- | Gets @productDeliveryTime@ by @productId@.
--
-- /See:/ 'newContentProductdeliverytimeGet' smart constructor.
data ContentProductdeliverytimeGet = ContentProductdeliverytimeGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The Google merchant ID of the account that contains the product. This account cannot be a multi-client account.
    merchantId :: Core.Int64,
    -- | Required. The Content API ID of the product, in the form @channel:contentLanguage:targetCountry:offerId@.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentProductdeliverytimeGet' with the minimum fields required to make a request.
newContentProductdeliverytimeGet ::
  -- |  Required. The Google merchant ID of the account that contains the product. This account cannot be a multi-client account. See 'merchantId'.
  Core.Int64 ->
  -- |  Required. The Content API ID of the product, in the form @channel:contentLanguage:targetCountry:offerId@. See 'productId'.
  Core.Text ->
  ContentProductdeliverytimeGet
newContentProductdeliverytimeGet merchantId productId =
  ContentProductdeliverytimeGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      productId = productId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentProductdeliverytimeGet where
  type Rs ContentProductdeliverytimeGet = ProductDeliveryTime
  type Scopes ContentProductdeliverytimeGet = '[Content'FullControl]
  requestClient ContentProductdeliverytimeGet {..} =
    go
      merchantId
      productId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ContentProductdeliverytimeGetResource)
          Core.mempty
