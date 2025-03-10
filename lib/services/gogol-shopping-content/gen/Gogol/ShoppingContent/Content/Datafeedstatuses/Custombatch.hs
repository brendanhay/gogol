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
-- Module      : Gogol.ShoppingContent.Content.Datafeedstatuses.Custombatch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets multiple Merchant Center datafeed statuses in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeedstatuses.custombatch@.
module Gogol.ShoppingContent.Content.Datafeedstatuses.Custombatch
  ( -- * Resource
    ContentDatafeedstatusesCustombatchResource,

    -- ** Constructing a Request
    ContentDatafeedstatusesCustombatch (..),
    newContentDatafeedstatusesCustombatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.custombatch@ method which the
-- 'ContentDatafeedstatusesCustombatch' request conforms to.
type ContentDatafeedstatusesCustombatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> "datafeedstatuses"
    Core.:> "batch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DatafeedstatusesCustomBatchRequest
    Core.:> Core.Post '[Core.JSON] DatafeedstatusesCustomBatchResponse

-- | Gets multiple Merchant Center datafeed statuses in a single request.
--
-- /See:/ 'newContentDatafeedstatusesCustombatch' smart constructor.
data ContentDatafeedstatusesCustombatch = ContentDatafeedstatusesCustombatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: DatafeedstatusesCustomBatchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentDatafeedstatusesCustombatch' with the minimum fields required to make a request.
newContentDatafeedstatusesCustombatch ::
  -- |  Multipart request metadata. See 'payload'.
  DatafeedstatusesCustomBatchRequest ->
  ContentDatafeedstatusesCustombatch
newContentDatafeedstatusesCustombatch payload =
  ContentDatafeedstatusesCustombatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentDatafeedstatusesCustombatch where
  type
    Rs ContentDatafeedstatusesCustombatch =
      DatafeedstatusesCustomBatchResponse
  type
    Scopes ContentDatafeedstatusesCustombatch =
      '[Content'FullControl]
  requestClient ContentDatafeedstatusesCustombatch {..} =
    go
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
              Core.Proxy ContentDatafeedstatusesCustombatchResource
          )
          Core.mempty
