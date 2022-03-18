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
-- Module      : Gogol.ShoppingContent.Content.Accounttax.Custombatch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and updates tax settings of multiple accounts in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounttax.custombatch@.
module Gogol.ShoppingContent.Content.Accounttax.Custombatch
  ( -- * Resource
    ContentAccounttaxCustombatchResource,

    -- ** Constructing a Request
    newContentAccounttaxCustombatch,
    ContentAccounttaxCustombatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounttax.custombatch@ method which the
-- 'ContentAccounttaxCustombatch' request conforms to.
type ContentAccounttaxCustombatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> "accounttax"
    Core.:> "batch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              AccounttaxCustomBatchRequest
    Core.:> Core.Post '[Core.JSON] AccounttaxCustomBatchResponse

-- | Retrieves and updates tax settings of multiple accounts in a single request.
--
-- /See:/ 'newContentAccounttaxCustombatch' smart constructor.
data ContentAccounttaxCustombatch = ContentAccounttaxCustombatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AccounttaxCustomBatchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccounttaxCustombatch' with the minimum fields required to make a request.
newContentAccounttaxCustombatch ::
  -- |  Multipart request metadata. See 'payload'.
  AccounttaxCustomBatchRequest ->
  ContentAccounttaxCustombatch
newContentAccounttaxCustombatch payload =
  ContentAccounttaxCustombatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentAccounttaxCustombatch
  where
  type
    Rs ContentAccounttaxCustombatch =
      AccounttaxCustomBatchResponse
  type
    Scopes ContentAccounttaxCustombatch =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentAccounttaxCustombatch {..} =
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
              Core.Proxy ContentAccounttaxCustombatchResource
          )
          Core.mempty
