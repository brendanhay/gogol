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
-- Module      : Gogol.ShoppingContent.Content.Buyongoogleprograms.Activate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reactivates the BoG program in your Merchant Center account. Moves the program to the active state when allowed, e.g. when paused. Important: This method is only whitelisted for selected merchants.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.buyongoogleprograms.activate@.
module Gogol.ShoppingContent.Content.Buyongoogleprograms.Activate
  ( -- * Resource
    ContentBuyongoogleprogramsActivateResource,

    -- ** Constructing a Request
    newContentBuyongoogleprogramsActivate,
    ContentBuyongoogleprogramsActivate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.buyongoogleprograms.activate@ method which the
-- 'ContentBuyongoogleprogramsActivate' request conforms to.
type ContentBuyongoogleprogramsActivateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "buyongoogleprograms"
    Core.:> Core.Capture "regionCode" Core.Text
    Core.:> "activate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ActivateBuyOnGoogleProgramRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Reactivates the BoG program in your Merchant Center account. Moves the program to the active state when allowed, e.g. when paused. Important: This method is only whitelisted for selected merchants.
--
-- /See:/ 'newContentBuyongoogleprogramsActivate' smart constructor.
data ContentBuyongoogleprogramsActivate = ContentBuyongoogleprogramsActivate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: ActivateBuyOnGoogleProgramRequest,
    -- | Required. The program region code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2>. Currently only US is available.
    regionCode :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentBuyongoogleprogramsActivate' with the minimum fields required to make a request.
newContentBuyongoogleprogramsActivate ::
  -- |  Required. The ID of the account. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  ActivateBuyOnGoogleProgramRequest ->
  -- |  Required. The program region code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2>. Currently only US is available. See 'regionCode'.
  Core.Text ->
  ContentBuyongoogleprogramsActivate
newContentBuyongoogleprogramsActivate merchantId payload regionCode =
  ContentBuyongoogleprogramsActivate
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
    ContentBuyongoogleprogramsActivate
  where
  type Rs ContentBuyongoogleprogramsActivate = ()
  type
    Scopes ContentBuyongoogleprogramsActivate =
      '[Content'FullControl]
  requestClient ContentBuyongoogleprogramsActivate {..} =
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
                ContentBuyongoogleprogramsActivateResource
          )
          Core.mempty
