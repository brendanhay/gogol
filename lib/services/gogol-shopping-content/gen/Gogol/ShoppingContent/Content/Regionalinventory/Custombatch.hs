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
-- Module      : Gogol.ShoppingContent.Content.Regionalinventory.Custombatch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates regional inventory for multiple products or regions in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regionalinventory.custombatch@.
module Gogol.ShoppingContent.Content.Regionalinventory.Custombatch
  ( -- * Resource
    ContentRegionalinventoryCustombatchResource,

    -- ** Constructing a Request
    newContentRegionalinventoryCustombatch,
    ContentRegionalinventoryCustombatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.regionalinventory.custombatch@ method which the
-- 'ContentRegionalinventoryCustombatch' request conforms to.
type ContentRegionalinventoryCustombatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> "regionalinventory"
    Core.:> "batch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RegionalinventoryCustomBatchRequest
    Core.:> Core.Post
              '[Core.JSON]
              RegionalinventoryCustomBatchResponse

-- | Updates regional inventory for multiple products or regions in a single request.
--
-- /See:/ 'newContentRegionalinventoryCustombatch' smart constructor.
data ContentRegionalinventoryCustombatch = ContentRegionalinventoryCustombatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RegionalinventoryCustomBatchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRegionalinventoryCustombatch' with the minimum fields required to make a request.
newContentRegionalinventoryCustombatch ::
  -- |  Multipart request metadata. See 'payload'.
  RegionalinventoryCustomBatchRequest ->
  ContentRegionalinventoryCustombatch
newContentRegionalinventoryCustombatch payload =
  ContentRegionalinventoryCustombatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentRegionalinventoryCustombatch
  where
  type
    Rs ContentRegionalinventoryCustombatch =
      RegionalinventoryCustomBatchResponse
  type
    Scopes ContentRegionalinventoryCustombatch =
      '[Content'FullControl]
  requestClient ContentRegionalinventoryCustombatch {..} =
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
              Core.Proxy
                ContentRegionalinventoryCustombatchResource
          )
          Core.mempty
