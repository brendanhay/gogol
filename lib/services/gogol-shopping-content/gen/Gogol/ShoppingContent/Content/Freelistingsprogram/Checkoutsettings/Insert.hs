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
-- Module      : Gogol.ShoppingContent.Content.Freelistingsprogram.Checkoutsettings.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enrolls merchant in @Checkout@ program.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.freelistingsprogram.checkoutsettings.insert@.
module Gogol.ShoppingContent.Content.Freelistingsprogram.Checkoutsettings.Insert
  ( -- * Resource
    ContentFreelistingsprogramCheckoutsettingsInsertResource,

    -- ** Constructing a Request
    ContentFreelistingsprogramCheckoutsettingsInsert (..),
    newContentFreelistingsprogramCheckoutsettingsInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.freelistingsprogram.checkoutsettings.insert@ method which the
-- 'ContentFreelistingsprogramCheckoutsettingsInsert' request conforms to.
type ContentFreelistingsprogramCheckoutsettingsInsertResource =
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
    Core.:> Core.ReqBody '[Core.JSON] InsertCheckoutSettingsRequest
    Core.:> Core.Post '[Core.JSON] CheckoutSettings

-- | Enrolls merchant in @Checkout@ program.
--
-- /See:/ 'newContentFreelistingsprogramCheckoutsettingsInsert' smart constructor.
data ContentFreelistingsprogramCheckoutsettingsInsert = ContentFreelistingsprogramCheckoutsettingsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: InsertCheckoutSettingsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentFreelistingsprogramCheckoutsettingsInsert' with the minimum fields required to make a request.
newContentFreelistingsprogramCheckoutsettingsInsert ::
  -- |  Required. The ID of the account. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  InsertCheckoutSettingsRequest ->
  ContentFreelistingsprogramCheckoutsettingsInsert
newContentFreelistingsprogramCheckoutsettingsInsert
  merchantId
  payload =
    ContentFreelistingsprogramCheckoutsettingsInsert
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        merchantId = merchantId,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ContentFreelistingsprogramCheckoutsettingsInsert
  where
  type
    Rs ContentFreelistingsprogramCheckoutsettingsInsert =
      CheckoutSettings
  type
    Scopes ContentFreelistingsprogramCheckoutsettingsInsert =
      '[Content'FullControl]
  requestClient ContentFreelistingsprogramCheckoutsettingsInsert {..} =
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
              Core.Proxy
                ContentFreelistingsprogramCheckoutsettingsInsertResource
          )
          Core.mempty
