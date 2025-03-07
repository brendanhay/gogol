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
-- Module      : Gogol.ShoppingContent.Content.Liasettings.Custombatch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and\/or updates the LIA settings of multiple accounts in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.custombatch@.
module Gogol.ShoppingContent.Content.Liasettings.Custombatch
  ( -- * Resource
    ContentLiasettingsCustombatchResource,

    -- ** Constructing a Request
    ContentLiasettingsCustombatch (..),
    newContentLiasettingsCustombatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.liasettings.custombatch@ method which the
-- 'ContentLiasettingsCustombatch' request conforms to.
type ContentLiasettingsCustombatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> "liasettings"
    Core.:> "batch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LiasettingsCustomBatchRequest
    Core.:> Core.Post '[Core.JSON] LiasettingsCustomBatchResponse

-- | Retrieves and\/or updates the LIA settings of multiple accounts in a single request.
--
-- /See:/ 'newContentLiasettingsCustombatch' smart constructor.
data ContentLiasettingsCustombatch = ContentLiasettingsCustombatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LiasettingsCustomBatchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentLiasettingsCustombatch' with the minimum fields required to make a request.
newContentLiasettingsCustombatch ::
  -- |  Multipart request metadata. See 'payload'.
  LiasettingsCustomBatchRequest ->
  ContentLiasettingsCustombatch
newContentLiasettingsCustombatch payload =
  ContentLiasettingsCustombatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentLiasettingsCustombatch where
  type
    Rs ContentLiasettingsCustombatch =
      LiasettingsCustomBatchResponse
  type Scopes ContentLiasettingsCustombatch = '[Content'FullControl]
  requestClient ContentLiasettingsCustombatch {..} =
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
          (Core.Proxy :: Core.Proxy ContentLiasettingsCustombatchResource)
          Core.mempty
