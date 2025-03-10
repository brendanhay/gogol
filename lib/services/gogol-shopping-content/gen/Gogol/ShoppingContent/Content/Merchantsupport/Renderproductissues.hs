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
-- Module      : Gogol.ShoppingContent.Content.Merchantsupport.Renderproductissues
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provide a list of issues for merchant\'s product with a support content and available actions. This content and actions are meant to be rendered and shown in third-party applications.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.merchantsupport.renderproductissues@.
module Gogol.ShoppingContent.Content.Merchantsupport.Renderproductissues
  ( -- * Resource
    ContentMerchantsupportRenderproductissuesResource,

    -- ** Constructing a Request
    ContentMerchantsupportRenderproductissues (..),
    newContentMerchantsupportRenderproductissues,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.merchantsupport.renderproductissues@ method which the
-- 'ContentMerchantsupportRenderproductissues' request conforms to.
type ContentMerchantsupportRenderproductissuesResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "merchantsupport"
    Core.:> "renderproductissues"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "timeZone" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RenderProductIssuesRequestPayload
    Core.:> Core.Post '[Core.JSON] RenderProductIssuesResponse

-- | Provide a list of issues for merchant\'s product with a support content and available actions. This content and actions are meant to be rendered and shown in third-party applications.
--
-- /See:/ 'newContentMerchantsupportRenderproductissues' smart constructor.
data ContentMerchantsupportRenderproductissues = ContentMerchantsupportRenderproductissues
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The <https://tools.ietf.org/html/bcp47 IETF BCP-47> language code used to localize support content. If not set, the result will be in default language @en-US@.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account that contains the product.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: RenderProductIssuesRequestPayload,
    -- | Required. The <https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.id REST_ID> of the product to fetch issues for.
    productId :: Core.Text,
    -- | Optional. The <https://www.iana.org/time-zones IANA> timezone used to localize times in support content. For example \'America\/Los_Angeles\'. If not set, results will use as a default UTC.
    timeZone :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentMerchantsupportRenderproductissues' with the minimum fields required to make a request.
newContentMerchantsupportRenderproductissues ::
  -- |  Required. The ID of the account that contains the product. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  RenderProductIssuesRequestPayload ->
  -- |  Required. The <https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.id REST_ID> of the product to fetch issues for. See 'productId'.
  Core.Text ->
  ContentMerchantsupportRenderproductissues
newContentMerchantsupportRenderproductissues
  merchantId
  payload
  productId =
    ContentMerchantsupportRenderproductissues
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        languageCode = Core.Nothing,
        merchantId = merchantId,
        payload = payload,
        productId = productId,
        timeZone = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ContentMerchantsupportRenderproductissues
  where
  type
    Rs ContentMerchantsupportRenderproductissues =
      RenderProductIssuesResponse
  type
    Scopes ContentMerchantsupportRenderproductissues =
      '[Content'FullControl]
  requestClient ContentMerchantsupportRenderproductissues {..} =
    go
      merchantId
      productId
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
              Core.Proxy ContentMerchantsupportRenderproductissuesResource
          )
          Core.mempty
