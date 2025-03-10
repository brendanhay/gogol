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
-- Module      : Gogol.ShoppingContent.Content.Returnpolicy.Custombatch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batches multiple return policy related calls in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicy.custombatch@.
module Gogol.ShoppingContent.Content.Returnpolicy.Custombatch
  ( -- * Resource
    ContentReturnpolicyCustombatchResource,

    -- ** Constructing a Request
    ContentReturnpolicyCustombatch (..),
    newContentReturnpolicyCustombatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.returnpolicy.custombatch@ method which the
-- 'ContentReturnpolicyCustombatch' request conforms to.
type ContentReturnpolicyCustombatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> "returnpolicy"
    Core.:> "batch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReturnpolicyCustomBatchRequest
    Core.:> Core.Post '[Core.JSON] ReturnpolicyCustomBatchResponse

-- | Batches multiple return policy related calls in a single request.
--
-- /See:/ 'newContentReturnpolicyCustombatch' smart constructor.
data ContentReturnpolicyCustombatch = ContentReturnpolicyCustombatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ReturnpolicyCustomBatchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentReturnpolicyCustombatch' with the minimum fields required to make a request.
newContentReturnpolicyCustombatch ::
  -- |  Multipart request metadata. See 'payload'.
  ReturnpolicyCustomBatchRequest ->
  ContentReturnpolicyCustombatch
newContentReturnpolicyCustombatch payload =
  ContentReturnpolicyCustombatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentReturnpolicyCustombatch where
  type
    Rs ContentReturnpolicyCustombatch =
      ReturnpolicyCustomBatchResponse
  type Scopes ContentReturnpolicyCustombatch = '[Content'FullControl]
  requestClient ContentReturnpolicyCustombatch {..} =
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
          (Core.Proxy :: Core.Proxy ContentReturnpolicyCustombatchResource)
          Core.mempty
