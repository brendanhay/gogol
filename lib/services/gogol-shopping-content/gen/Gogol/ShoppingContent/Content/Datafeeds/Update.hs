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
-- Module      : Gogol.ShoppingContent.Content.Datafeeds.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a datafeed configuration of your Merchant Center account. Any fields that are not provided are deleted from the resource.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.update@.
module Gogol.ShoppingContent.Content.Datafeeds.Update
  ( -- * Resource
    ContentDatafeedsUpdateResource,

    -- ** Constructing a Request
    ContentDatafeedsUpdate (..),
    newContentDatafeedsUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.update@ method which the
-- 'ContentDatafeedsUpdate' request conforms to.
type ContentDatafeedsUpdateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "datafeeds"
    Core.:> Core.Capture "datafeedId" Core.Word64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Datafeed
    Core.:> Core.Put '[Core.JSON] Datafeed

-- | Updates a datafeed configuration of your Merchant Center account. Any fields that are not provided are deleted from the resource.
--
-- /See:/ 'newContentDatafeedsUpdate' smart constructor.
data ContentDatafeedsUpdate = ContentDatafeedsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the datafeed.
    datafeedId :: Core.Word64,
    -- | The ID of the account that manages the datafeed. This account cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | Multipart request metadata.
    payload :: Datafeed,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentDatafeedsUpdate' with the minimum fields required to make a request.
newContentDatafeedsUpdate ::
  -- |  The ID of the datafeed. See 'datafeedId'.
  Core.Word64 ->
  -- |  The ID of the account that manages the datafeed. This account cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  -- |  Multipart request metadata. See 'payload'.
  Datafeed ->
  ContentDatafeedsUpdate
newContentDatafeedsUpdate datafeedId merchantId payload =
  ContentDatafeedsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      datafeedId = datafeedId,
      merchantId = merchantId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentDatafeedsUpdate where
  type Rs ContentDatafeedsUpdate = Datafeed
  type Scopes ContentDatafeedsUpdate = '[Content'FullControl]
  requestClient ContentDatafeedsUpdate {..} =
    go
      merchantId
      datafeedId
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
          (Core.Proxy :: Core.Proxy ContentDatafeedsUpdateResource)
          Core.mempty
