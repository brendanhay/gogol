{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Content.Datafeeds.Custombatch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes, fetches, gets, inserts and updates multiple datafeeds in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.custombatch@.
module Gogol.ShoppingContent.Content.Datafeeds.Custombatch
  ( -- * Resource
    ContentDatafeedsCustombatchResource,

    -- ** Constructing a Request
    ContentDatafeedsCustombatch (..),
    newContentDatafeedsCustombatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.custombatch@ method which the
-- 'ContentDatafeedsCustombatch' request conforms to.
type ContentDatafeedsCustombatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> "datafeeds"
    Core.:> "batch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DatafeedsCustomBatchRequest
    Core.:> Core.Post '[Core.JSON] DatafeedsCustomBatchResponse

-- | Deletes, fetches, gets, inserts and updates multiple datafeeds in a single request.
--
-- /See:/ 'newContentDatafeedsCustombatch' smart constructor.
data ContentDatafeedsCustombatch = ContentDatafeedsCustombatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: DatafeedsCustomBatchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentDatafeedsCustombatch' with the minimum fields required to make a request.
newContentDatafeedsCustombatch ::
  -- |  Multipart request metadata. See 'payload'.
  DatafeedsCustomBatchRequest ->
  ContentDatafeedsCustombatch
newContentDatafeedsCustombatch payload =
  ContentDatafeedsCustombatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentDatafeedsCustombatch
  where
  type
    Rs ContentDatafeedsCustombatch =
      DatafeedsCustomBatchResponse
  type
    Scopes ContentDatafeedsCustombatch =
      '[Content'FullControl]
  requestClient ContentDatafeedsCustombatch {..} =
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
              Core.Proxy ContentDatafeedsCustombatchResource
          )
          Core.mempty
