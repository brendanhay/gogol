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
-- Module      : Gogol.ShoppingContent.Content.Buyongoogleprograms.Onboard
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Onboards the BoG program in your Merchant Center account. By using this method, you agree to the <https://merchants.google.com/mc/termsofservice/transactions/US/latest Terms of Service>. Calling this method is only possible if the authenticated account is the same as the merchant id in the request. Calling this method multiple times will only accept Terms of Service if the latest version is not currently signed.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.buyongoogleprograms.onboard@.
module Gogol.ShoppingContent.Content.Buyongoogleprograms.Onboard
  ( -- * Resource
    ContentBuyongoogleprogramsOnboardResource,

    -- ** Constructing a Request
    newContentBuyongoogleprogramsOnboard,
    ContentBuyongoogleprogramsOnboard,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.buyongoogleprograms.onboard@ method which the
-- 'ContentBuyongoogleprogramsOnboard' request conforms to.
type ContentBuyongoogleprogramsOnboardResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "buyongoogleprograms"
    Core.:> Core.Capture "regionCode" Core.Text
    Core.:> "onboard"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              OnboardBuyOnGoogleProgramRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Onboards the BoG program in your Merchant Center account. By using this method, you agree to the <https://merchants.google.com/mc/termsofservice/transactions/US/latest Terms of Service>. Calling this method is only possible if the authenticated account is the same as the merchant id in the request. Calling this method multiple times will only accept Terms of Service if the latest version is not currently signed.
--
-- /See:/ 'newContentBuyongoogleprogramsOnboard' smart constructor.
data ContentBuyongoogleprogramsOnboard = ContentBuyongoogleprogramsOnboard
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: OnboardBuyOnGoogleProgramRequest,
    -- | Required. The program region code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2>. Currently only US is available.
    regionCode :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentBuyongoogleprogramsOnboard' with the minimum fields required to make a request.
newContentBuyongoogleprogramsOnboard ::
  -- |  Required. The ID of the account. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  OnboardBuyOnGoogleProgramRequest ->
  -- |  Required. The program region code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2>. Currently only US is available. See 'regionCode'.
  Core.Text ->
  ContentBuyongoogleprogramsOnboard
newContentBuyongoogleprogramsOnboard merchantId payload regionCode =
  ContentBuyongoogleprogramsOnboard
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
    ContentBuyongoogleprogramsOnboard
  where
  type Rs ContentBuyongoogleprogramsOnboard = ()
  type
    Scopes ContentBuyongoogleprogramsOnboard =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentBuyongoogleprogramsOnboard {..} =
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
              Core.Proxy ContentBuyongoogleprogramsOnboardResource
          )
          Core.mempty
