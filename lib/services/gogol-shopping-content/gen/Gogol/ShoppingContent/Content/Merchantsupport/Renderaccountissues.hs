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
-- Module      : Gogol.ShoppingContent.Content.Merchantsupport.Renderaccountissues
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provide a list of merchant\'s issues with a support content and available actions. This content and actions are meant to be rendered and shown in third-party applications.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.merchantsupport.renderaccountissues@.
module Gogol.ShoppingContent.Content.Merchantsupport.Renderaccountissues
  ( -- * Resource
    ContentMerchantsupportRenderaccountissuesResource,

    -- ** Constructing a Request
    ContentMerchantsupportRenderaccountissues (..),
    newContentMerchantsupportRenderaccountissues,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.merchantsupport.renderaccountissues@ method which the
-- 'ContentMerchantsupportRenderaccountissues' request conforms to.
type ContentMerchantsupportRenderaccountissuesResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "merchantsupport"
    Core.:> "renderaccountissues"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "timeZone" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RenderAccountIssuesRequestPayload
    Core.:> Core.Post '[Core.JSON] RenderAccountIssuesResponse

-- | Provide a list of merchant\'s issues with a support content and available actions. This content and actions are meant to be rendered and shown in third-party applications.
--
-- /See:/ 'newContentMerchantsupportRenderaccountissues' smart constructor.
data ContentMerchantsupportRenderaccountissues = ContentMerchantsupportRenderaccountissues
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The <https://tools.ietf.org/html/bcp47 IETF BCP-47> language code used to localize support content. If not set, the result will be in default language @en-US@.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account to fetch issues for.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: RenderAccountIssuesRequestPayload,
    -- | Optional. The <https://www.iana.org/time-zones IANA> timezone used to localize times in support content. For example \'America\/Los_Angeles\'. If not set, results will use as a default UTC.
    timeZone :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentMerchantsupportRenderaccountissues' with the minimum fields required to make a request.
newContentMerchantsupportRenderaccountissues ::
  -- |  Required. The ID of the account to fetch issues for. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  RenderAccountIssuesRequestPayload ->
  ContentMerchantsupportRenderaccountissues
newContentMerchantsupportRenderaccountissues merchantId payload =
  ContentMerchantsupportRenderaccountissues
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      timeZone = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentMerchantsupportRenderaccountissues
  where
  type
    Rs ContentMerchantsupportRenderaccountissues =
      RenderAccountIssuesResponse
  type
    Scopes ContentMerchantsupportRenderaccountissues =
      '[Content'FullControl]
  requestClient ContentMerchantsupportRenderaccountissues {..} =
    go
      merchantId
      xgafv
      accessToken
      callback
      languageCode
      timeZone
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentMerchantsupportRenderaccountissuesResource
          )
          Core.mempty
