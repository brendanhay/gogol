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
-- Module      : Gogol.ShoppingContent.Content.Buyongoogleprograms.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the status of the BoG program for your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.buyongoogleprograms.patch@.
module Gogol.ShoppingContent.Content.Buyongoogleprograms.Patch
  ( -- * Resource
    ContentBuyongoogleprogramsPatchResource,

    -- ** Constructing a Request
    newContentBuyongoogleprogramsPatch,
    ContentBuyongoogleprogramsPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.buyongoogleprograms.patch@ method which the
-- 'ContentBuyongoogleprogramsPatch' request conforms to.
type ContentBuyongoogleprogramsPatchResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "buyongoogleprograms"
    Core.:> Core.Capture "regionCode" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BuyOnGoogleProgramStatus
    Core.:> Core.Patch '[Core.JSON] BuyOnGoogleProgramStatus

-- | Updates the status of the BoG program for your Merchant Center account.
--
-- /See:/ 'newContentBuyongoogleprogramsPatch' smart constructor.
data ContentBuyongoogleprogramsPatch = ContentBuyongoogleprogramsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account.
    merchantId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: BuyOnGoogleProgramStatus,
    -- | Required. The program region code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2>. Currently only US is available.
    regionCode :: Core.Text,
    -- | The list of fields to update. If the update mask is not provided, then all the fields set in buyOnGoogleProgramStatus will be updated. Clearing fields is only possible if update mask is provided.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentBuyongoogleprogramsPatch' with the minimum fields required to make a request.
newContentBuyongoogleprogramsPatch ::
  -- |  Required. The ID of the account. See 'merchantId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  BuyOnGoogleProgramStatus ->
  -- |  Required. The program region code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2>. Currently only US is available. See 'regionCode'.
  Core.Text ->
  ContentBuyongoogleprogramsPatch
newContentBuyongoogleprogramsPatch merchantId payload regionCode =
  ContentBuyongoogleprogramsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      regionCode = regionCode,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentBuyongoogleprogramsPatch
  where
  type
    Rs ContentBuyongoogleprogramsPatch =
      BuyOnGoogleProgramStatus
  type
    Scopes ContentBuyongoogleprogramsPatch =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentBuyongoogleprogramsPatch {..} =
    go
      merchantId
      regionCode
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentBuyongoogleprogramsPatchResource
          )
          Core.mempty
