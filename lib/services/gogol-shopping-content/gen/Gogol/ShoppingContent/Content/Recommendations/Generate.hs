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
-- Module      : Gogol.ShoppingContent.Content.Recommendations.Generate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates recommendations for a merchant.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.recommendations.generate@.
module Gogol.ShoppingContent.Content.Recommendations.Generate
  ( -- * Resource
    ContentRecommendationsGenerateResource,

    -- ** Constructing a Request
    ContentRecommendationsGenerate (..),
    newContentRecommendationsGenerate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.recommendations.generate@ method which the
-- 'ContentRecommendationsGenerate' request conforms to.
type ContentRecommendationsGenerateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "recommendations"
    Core.:> "generate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "allowedTag" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GenerateRecommendationsResponse

-- | Generates recommendations for a merchant.
--
-- /See:/ 'newContentRecommendationsGenerate' smart constructor.
data ContentRecommendationsGenerate = ContentRecommendationsGenerate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. List of allowed tags. Tags are a set of predefined strings that describe the category that individual recommendation types. User can specify zero or more tags in this field to indicate what group of recommendations they want to receive. Current list of supported tags: - TREND
    allowedTag :: (Core.Maybe [Core.Text]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Language code of the client. If not set, the result will be in default language (English). This language code affects all fields prefixed with \"localized\". This should be set to ISO 639-1 country code. List of currently verified supported language code: en, fr, cs, da, de, es, it, nl, no, pl, pt, pt, fi, sv, vi, tr, th, ko, zh-CN, zh-TW, ja, id, hi
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account to fetch recommendations for.
    merchantId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRecommendationsGenerate' with the minimum fields required to make a request.
newContentRecommendationsGenerate ::
  -- |  Required. The ID of the account to fetch recommendations for. See 'merchantId'.
  Core.Int64 ->
  ContentRecommendationsGenerate
newContentRecommendationsGenerate merchantId =
  ContentRecommendationsGenerate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowedTag = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentRecommendationsGenerate
  where
  type
    Rs ContentRecommendationsGenerate =
      GenerateRecommendationsResponse
  type
    Scopes ContentRecommendationsGenerate =
      '[Content'FullControl]
  requestClient ContentRecommendationsGenerate {..} =
    go
      merchantId
      xgafv
      accessToken
      (allowedTag Core.^. Core._Default)
      callback
      languageCode
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentRecommendationsGenerateResource
          )
          Core.mempty
