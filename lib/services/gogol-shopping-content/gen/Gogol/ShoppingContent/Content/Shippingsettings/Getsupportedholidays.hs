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
-- Module      : Gogol.ShoppingContent.Content.Shippingsettings.Getsupportedholidays
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves supported holidays for an account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shippingsettings.getsupportedholidays@.
module Gogol.ShoppingContent.Content.Shippingsettings.Getsupportedholidays
  ( -- * Resource
    ContentShippingsettingsGetsupportedholidaysResource,

    -- ** Constructing a Request
    ContentShippingsettingsGetsupportedholidays (..),
    newContentShippingsettingsGetsupportedholidays,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.getsupportedholidays@ method which the
-- 'ContentShippingsettingsGetsupportedholidays' request conforms to.
type ContentShippingsettingsGetsupportedholidaysResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "supportedHolidays"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ShippingsettingsGetSupportedHolidaysResponse

-- | Retrieves supported holidays for an account.
--
-- /See:/ 'newContentShippingsettingsGetsupportedholidays' smart constructor.
data ContentShippingsettingsGetsupportedholidays = ContentShippingsettingsGetsupportedholidays
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the account for which to retrieve the supported holidays.
    merchantId :: Core.Word64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentShippingsettingsGetsupportedholidays' with the minimum fields required to make a request.
newContentShippingsettingsGetsupportedholidays ::
  -- |  The ID of the account for which to retrieve the supported holidays. See 'merchantId'.
  Core.Word64 ->
  ContentShippingsettingsGetsupportedholidays
newContentShippingsettingsGetsupportedholidays merchantId =
  ContentShippingsettingsGetsupportedholidays
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentShippingsettingsGetsupportedholidays
  where
  type
    Rs ContentShippingsettingsGetsupportedholidays =
      ShippingsettingsGetSupportedHolidaysResponse
  type
    Scopes ContentShippingsettingsGetsupportedholidays =
      '[Content'FullControl]
  requestClient ContentShippingsettingsGetsupportedholidays {..} =
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
              Core.Proxy ContentShippingsettingsGetsupportedholidaysResource
          )
          Core.mempty
