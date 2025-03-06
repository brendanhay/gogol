{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.ShoppingContent.Content.Ordertrackingsignals.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new order tracking signal.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.ordertrackingsignals.create@.
module Gogol.ShoppingContent.Content.Ordertrackingsignals.Create
  ( -- * Resource
    ContentOrdertrackingsignalsCreateResource,

    -- ** Constructing a Request
    ContentOrdertrackingsignalsCreate (..),
    newContentOrdertrackingsignalsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.ordertrackingsignals.create@ method which the
-- 'ContentOrdertrackingsignalsCreate' request conforms to.
type ContentOrdertrackingsignalsCreateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "ordertrackingsignals"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] OrderTrackingSignal
    Core.:> Core.Post '[Core.JSON] OrderTrackingSignal

-- | Creates new order tracking signal.
--
-- /See:/ 'newContentOrdertrackingsignalsCreate' smart constructor.
data ContentOrdertrackingsignalsCreate = ContentOrdertrackingsignalsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the merchant for which the order signal is created.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: OrderTrackingSignal,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdertrackingsignalsCreate' with the minimum fields required to make a request.
newContentOrdertrackingsignalsCreate ::
  -- |  The ID of the merchant for which the order signal is created. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  OrderTrackingSignal ->
  ContentOrdertrackingsignalsCreate
newContentOrdertrackingsignalsCreate merchantId payload =
  ContentOrdertrackingsignalsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentOrdertrackingsignalsCreate where
  type Rs ContentOrdertrackingsignalsCreate = OrderTrackingSignal
  type
    Scopes ContentOrdertrackingsignalsCreate =
      '[Content'FullControl]
  requestClient ContentOrdertrackingsignalsCreate {..} =
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
          ( Core.Proxy ::
              Core.Proxy ContentOrdertrackingsignalsCreateResource
          )
          Core.mempty
