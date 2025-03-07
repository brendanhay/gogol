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
-- Module      : Gogol.ShoppingContent.Content.Freelistingsprogram.Checkoutsettings.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes @Checkout@ settings and unenrolls merchant from @Checkout@ program.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.freelistingsprogram.checkoutsettings.delete@.
module Gogol.ShoppingContent.Content.Freelistingsprogram.Checkoutsettings.Delete
  ( -- * Resource
    ContentFreelistingsprogramCheckoutsettingsDeleteResource,

    -- ** Constructing a Request
    ContentFreelistingsprogramCheckoutsettingsDelete (..),
    newContentFreelistingsprogramCheckoutsettingsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.freelistingsprogram.checkoutsettings.delete@ method which the
-- 'ContentFreelistingsprogramCheckoutsettingsDelete' request conforms to.
type ContentFreelistingsprogramCheckoutsettingsDeleteResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "freelistingsprogram"
    Core.:> "checkoutsettings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes @Checkout@ settings and unenrolls merchant from @Checkout@ program.
--
-- /See:/ 'newContentFreelistingsprogramCheckoutsettingsDelete' smart constructor.
data ContentFreelistingsprogramCheckoutsettingsDelete = ContentFreelistingsprogramCheckoutsettingsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account.
    merchantId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentFreelistingsprogramCheckoutsettingsDelete' with the minimum fields required to make a request.
newContentFreelistingsprogramCheckoutsettingsDelete ::
  -- |  Required. The ID of the account. See 'merchantId'.
  Core.Int64 ->
  ContentFreelistingsprogramCheckoutsettingsDelete
newContentFreelistingsprogramCheckoutsettingsDelete merchantId =
  ContentFreelistingsprogramCheckoutsettingsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentFreelistingsprogramCheckoutsettingsDelete
  where
  type Rs ContentFreelistingsprogramCheckoutsettingsDelete = ()
  type
    Scopes ContentFreelistingsprogramCheckoutsettingsDelete =
      '[Content'FullControl]
  requestClient ContentFreelistingsprogramCheckoutsettingsDelete {..} =
    go
      merchantId
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
          ( Core.Proxy ::
              Core.Proxy
                ContentFreelistingsprogramCheckoutsettingsDeleteResource
          )
          Core.mempty
