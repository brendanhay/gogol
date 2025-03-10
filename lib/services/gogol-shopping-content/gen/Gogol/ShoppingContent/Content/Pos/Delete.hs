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
-- Module      : Gogol.ShoppingContent.Content.Pos.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a store for the given merchant.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.delete@.
module Gogol.ShoppingContent.Content.Pos.Delete
  ( -- * Resource
    ContentPosDeleteResource,

    -- ** Constructing a Request
    ContentPosDelete (..),
    newContentPosDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.pos.delete@ method which the
-- 'ContentPosDelete' request conforms to.
type ContentPosDeleteResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "pos"
    Core.:> Core.Capture "targetMerchantId" Core.Word64
    Core.:> "store"
    Core.:> Core.Capture "storeCode" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a store for the given merchant.
--
-- /See:/ 'newContentPosDelete' smart constructor.
data ContentPosDelete = ContentPosDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the POS or inventory data provider.
    merchantId :: Core.Word64,
    -- | A store code that is unique per merchant.
    storeCode :: Core.Text,
    -- | The ID of the target merchant.
    targetMerchantId :: Core.Word64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentPosDelete' with the minimum fields required to make a request.
newContentPosDelete ::
  -- |  The ID of the POS or inventory data provider. See 'merchantId'.
  Core.Word64 ->
  -- |  A store code that is unique per merchant. See 'storeCode'.
  Core.Text ->
  -- |  The ID of the target merchant. See 'targetMerchantId'.
  Core.Word64 ->
  ContentPosDelete
newContentPosDelete merchantId storeCode targetMerchantId =
  ContentPosDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      storeCode = storeCode,
      targetMerchantId = targetMerchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentPosDelete where
  type Rs ContentPosDelete = ()
  type Scopes ContentPosDelete = '[Content'FullControl]
  requestClient ContentPosDelete {..} =
    go
      merchantId
      targetMerchantId
      storeCode
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
          (Core.Proxy :: Core.Proxy ContentPosDeleteResource)
          Core.mempty
