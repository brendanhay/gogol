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
-- Module      : Gogol.ShoppingContent.Content.Localinventory.Custombatch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates local inventory for multiple products or stores in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.localinventory.custombatch@.
module Gogol.ShoppingContent.Content.Localinventory.Custombatch
  ( -- * Resource
    ContentLocalinventoryCustombatchResource,

    -- ** Constructing a Request
    ContentLocalinventoryCustombatch (..),
    newContentLocalinventoryCustombatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.localinventory.custombatch@ method which the
-- 'ContentLocalinventoryCustombatch' request conforms to.
type ContentLocalinventoryCustombatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> "localinventory"
    Core.:> "batch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LocalinventoryCustomBatchRequest
    Core.:> Core.Post '[Core.JSON] LocalinventoryCustomBatchResponse

-- | Updates local inventory for multiple products or stores in a single request.
--
-- /See:/ 'newContentLocalinventoryCustombatch' smart constructor.
data ContentLocalinventoryCustombatch = ContentLocalinventoryCustombatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LocalinventoryCustomBatchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentLocalinventoryCustombatch' with the minimum fields required to make a request.
newContentLocalinventoryCustombatch ::
  -- |  Multipart request metadata. See 'payload'.
  LocalinventoryCustomBatchRequest ->
  ContentLocalinventoryCustombatch
newContentLocalinventoryCustombatch payload =
  ContentLocalinventoryCustombatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentLocalinventoryCustombatch where
  type
    Rs ContentLocalinventoryCustombatch =
      LocalinventoryCustomBatchResponse
  type
    Scopes ContentLocalinventoryCustombatch =
      '[Content'FullControl]
  requestClient ContentLocalinventoryCustombatch {..} =
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
          (Core.Proxy :: Core.Proxy ContentLocalinventoryCustombatchResource)
          Core.mempty
