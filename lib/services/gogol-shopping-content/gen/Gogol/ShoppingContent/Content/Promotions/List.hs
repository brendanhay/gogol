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
-- Module      : Gogol.ShoppingContent.Content.Promotions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all promotions from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.promotions.list@.
module Gogol.ShoppingContent.Content.Promotions.List
  ( -- * Resource
    ContentPromotionsListResource,

    -- ** Constructing a Request
    ContentPromotionsList (..),
    newContentPromotionsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.promotions.list@ method which the
-- 'ContentPromotionsList' request conforms to.
type ContentPromotionsListResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "promotions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "countryCode" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListPromotionResponse

-- | List all promotions from your Merchant Center account.
--
-- /See:/ 'newContentPromotionsList' smart constructor.
data ContentPromotionsList = ContentPromotionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | <http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml CLDR country code> (for example, \"US\"), used as a filter on promotions target country.
    countryCode :: (Core.Maybe Core.Text),
    -- | The two-letter ISO 639-1 language code associated with the promotions, used as a filter.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account that contains the collection.
    merchantId :: Core.Int64,
    -- | The maximum number of promotions to return. The service may return fewer than this value. If unspecified, at most 50 labels will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListPromotion@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListPromotion@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentPromotionsList' with the minimum fields required to make a request.
newContentPromotionsList ::
  -- |  Required. The ID of the account that contains the collection. See 'merchantId'.
  Core.Int64 ->
  ContentPromotionsList
newContentPromotionsList merchantId =
  ContentPromotionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      countryCode = Core.Nothing,
      languageCode = Core.Nothing,
      merchantId = merchantId,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentPromotionsList where
  type Rs ContentPromotionsList = ListPromotionResponse
  type Scopes ContentPromotionsList = '[Content'FullControl]
  requestClient ContentPromotionsList {..} =
    go
      merchantId
      xgafv
      accessToken
      callback
      countryCode
      languageCode
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ContentPromotionsListResource)
          Core.mempty
