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
-- Module      : Gogol.ShoppingContent.Content.Freelistingsprogram.Checkoutsettings.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets Checkout settings for the given merchant. This includes information about review state, enrollment state and URL settings.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.freelistingsprogram.checkoutsettings.get@.
module Gogol.ShoppingContent.Content.Freelistingsprogram.Checkoutsettings.Get
  ( -- * Resource
    ContentFreelistingsprogramCheckoutsettingsGetResource,

    -- ** Constructing a Request
    ContentFreelistingsprogramCheckoutsettingsGet (..),
    newContentFreelistingsprogramCheckoutsettingsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.freelistingsprogram.checkoutsettings.get@ method which the
-- 'ContentFreelistingsprogramCheckoutsettingsGet' request conforms to.
type ContentFreelistingsprogramCheckoutsettingsGetResource =
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
    Core.:> Core.Get '[Core.JSON] CheckoutSettings

-- | Gets Checkout settings for the given merchant. This includes information about review state, enrollment state and URL settings.
--
-- /See:/ 'newContentFreelistingsprogramCheckoutsettingsGet' smart constructor.
data ContentFreelistingsprogramCheckoutsettingsGet = ContentFreelistingsprogramCheckoutsettingsGet
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

-- | Creates a value of 'ContentFreelistingsprogramCheckoutsettingsGet' with the minimum fields required to make a request.
newContentFreelistingsprogramCheckoutsettingsGet ::
  -- |  Required. The ID of the account. See 'merchantId'.
  Core.Int64 ->
  ContentFreelistingsprogramCheckoutsettingsGet
newContentFreelistingsprogramCheckoutsettingsGet merchantId =
  ContentFreelistingsprogramCheckoutsettingsGet
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
    ContentFreelistingsprogramCheckoutsettingsGet
  where
  type
    Rs ContentFreelistingsprogramCheckoutsettingsGet =
      CheckoutSettings
  type
    Scopes ContentFreelistingsprogramCheckoutsettingsGet =
      '[Content'FullControl]
  requestClient ContentFreelistingsprogramCheckoutsettingsGet {..} =
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
              Core.Proxy ContentFreelistingsprogramCheckoutsettingsGetResource
          )
          Core.mempty
