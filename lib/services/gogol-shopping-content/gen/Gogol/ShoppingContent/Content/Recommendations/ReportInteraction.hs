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
-- Module      : Gogol.ShoppingContent.Content.Recommendations.ReportInteraction
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reports an interaction on a recommendation for a merchant.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.recommendations.reportInteraction@.
module Gogol.ShoppingContent.Content.Recommendations.ReportInteraction
  ( -- * Resource
    ContentRecommendationsReportInteractionResource,

    -- ** Constructing a Request
    ContentRecommendationsReportInteraction (..),
    newContentRecommendationsReportInteraction,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.recommendations.reportInteraction@ method which the
-- 'ContentRecommendationsReportInteraction' request conforms to.
type ContentRecommendationsReportInteractionResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "recommendations"
    Core.:> "reportInteraction"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReportInteractionRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Reports an interaction on a recommendation for a merchant.
--
-- /See:/ 'newContentRecommendationsReportInteraction' smart constructor.
data ContentRecommendationsReportInteraction = ContentRecommendationsReportInteraction
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account that wants to report an interaction.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: ReportInteractionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRecommendationsReportInteraction' with the minimum fields required to make a request.
newContentRecommendationsReportInteraction ::
  -- |  Required. The ID of the account that wants to report an interaction. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  ReportInteractionRequest ->
  ContentRecommendationsReportInteraction
newContentRecommendationsReportInteraction merchantId payload =
  ContentRecommendationsReportInteraction
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentRecommendationsReportInteraction where
  type Rs ContentRecommendationsReportInteraction = ()
  type
    Scopes ContentRecommendationsReportInteraction =
      '[Content'FullControl]
  requestClient ContentRecommendationsReportInteraction {..} =
    go
      merchantId
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
              Core.Proxy ContentRecommendationsReportInteractionResource
          )
          Core.mempty
