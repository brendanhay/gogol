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
-- Module      : Gogol.ShoppingContent.Content.Datafeedstatuses.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeedstatuses.get@.
module Gogol.ShoppingContent.Content.Datafeedstatuses.Get
  ( -- * Resource
    ContentDatafeedstatusesGetResource,

    -- ** Constructing a Request
    ContentDatafeedstatusesGet (..),
    newContentDatafeedstatusesGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.get@ method which the
-- 'ContentDatafeedstatusesGet' request conforms to.
type ContentDatafeedstatusesGetResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "datafeedstatuses"
    Core.:> Core.Capture "datafeedId" Core.Word64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "country" Core.Text
    Core.:> Core.QueryParam "feedLabel" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DatafeedStatus

-- | Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ 'newContentDatafeedstatusesGet' smart constructor.
data ContentDatafeedstatusesGet = ContentDatafeedstatusesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. Use @feedLabel@ instead. The country to get the datafeed status for. If this parameter is provided then @language@ must also be provided. Note that this parameter is required for feeds targeting multiple countries and languages, since a feed may have a different status for each target.
    country :: (Core.Maybe Core.Text),
    -- | The ID of the datafeed.
    datafeedId :: Core.Word64,
    -- | The feed label to get the datafeed status for. If this parameter is provided then @language@ must also be provided. Note that this parameter is required for feeds targeting multiple countries and languages, since a feed may have a different status for each target.
    feedLabel :: (Core.Maybe Core.Text),
    -- | The language to get the datafeed status for. If this parameter is provided then @country@ must also be provided. Note that this parameter is required for feeds targeting multiple countries and languages, since a feed may have a different status for each target.
    language :: (Core.Maybe Core.Text),
    -- | The ID of the account that manages the datafeed. This account cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentDatafeedstatusesGet' with the minimum fields required to make a request.
newContentDatafeedstatusesGet ::
  -- |  The ID of the datafeed. See 'datafeedId'.
  Core.Word64 ->
  -- |  The ID of the account that manages the datafeed. This account cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentDatafeedstatusesGet
newContentDatafeedstatusesGet datafeedId merchantId =
  ContentDatafeedstatusesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      country = Core.Nothing,
      datafeedId = datafeedId,
      feedLabel = Core.Nothing,
      language = Core.Nothing,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentDatafeedstatusesGet where
  type Rs ContentDatafeedstatusesGet = DatafeedStatus
  type Scopes ContentDatafeedstatusesGet = '[Content'FullControl]
  requestClient ContentDatafeedstatusesGet {..} =
    go
      merchantId
      datafeedId
      xgafv
      accessToken
      callback
      country
      feedLabel
      language
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ContentDatafeedstatusesGetResource)
          Core.mempty
