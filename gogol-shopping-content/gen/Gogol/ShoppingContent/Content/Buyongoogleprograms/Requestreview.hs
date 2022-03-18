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
-- Module      : Gogol.ShoppingContent.Content.Buyongoogleprograms.Requestreview
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests review and then activates the BoG program in your Merchant Center account for the first time. Moves the program to the REVIEW_PENDING state. Important: This method is only whitelisted for selected merchants.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.buyongoogleprograms.requestreview@.
module Gogol.ShoppingContent.Content.Buyongoogleprograms.Requestreview
  ( -- * Resource
    ContentBuyongoogleprogramsRequestreviewResource,

    -- ** Constructing a Request
    newContentBuyongoogleprogramsRequestreview,
    ContentBuyongoogleprogramsRequestreview,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.buyongoogleprograms.requestreview@ method which the
-- 'ContentBuyongoogleprogramsRequestreview' request conforms to.
type ContentBuyongoogleprogramsRequestreviewResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "buyongoogleprograms"
    Core.:> Core.Capture "regionCode" Core.Text
    Core.:> "requestreview"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RequestReviewBuyOnGoogleProgramRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Requests review and then activates the BoG program in your Merchant Center account for the first time. Moves the program to the REVIEW_PENDING state. Important: This method is only whitelisted for selected merchants.
--
-- /See:/ 'newContentBuyongoogleprogramsRequestreview' smart constructor.
data ContentBuyongoogleprogramsRequestreview = ContentBuyongoogleprogramsRequestreview
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: RequestReviewBuyOnGoogleProgramRequest,
    -- | Required. The program region code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2>. Currently only US is available.
    regionCode :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentBuyongoogleprogramsRequestreview' with the minimum fields required to make a request.
newContentBuyongoogleprogramsRequestreview ::
  -- |  Required. The ID of the account. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  RequestReviewBuyOnGoogleProgramRequest ->
  -- |  Required. The program region code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2>. Currently only US is available. See 'regionCode'.
  Core.Text ->
  ContentBuyongoogleprogramsRequestreview
newContentBuyongoogleprogramsRequestreview merchantId payload regionCode =
  ContentBuyongoogleprogramsRequestreview
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      regionCode = regionCode,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentBuyongoogleprogramsRequestreview
  where
  type Rs ContentBuyongoogleprogramsRequestreview = ()
  type
    Scopes ContentBuyongoogleprogramsRequestreview =
      '["https://www.googleapis.com/auth/content"]
  requestClient
    ContentBuyongoogleprogramsRequestreview {..} =
      go
        merchantId
        regionCode
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
                  ContentBuyongoogleprogramsRequestreviewResource
            )
            Core.mempty
