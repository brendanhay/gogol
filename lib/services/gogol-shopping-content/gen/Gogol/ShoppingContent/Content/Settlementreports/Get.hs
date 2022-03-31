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
-- Module      : Gogol.ShoppingContent.Content.Settlementreports.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a settlement report from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.settlementreports.get@.
module Gogol.ShoppingContent.Content.Settlementreports.Get
  ( -- * Resource
    ContentSettlementreportsGetResource,

    -- ** Constructing a Request
    newContentSettlementreportsGet,
    ContentSettlementreportsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.settlementreports.get@ method which the
-- 'ContentSettlementreportsGet' request conforms to.
type ContentSettlementreportsGetResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "settlementreports"
    Core.:> Core.Capture "settlementId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SettlementReport

-- | Retrieves a settlement report from your Merchant Center account.
--
-- /See:/ 'newContentSettlementreportsGet' smart constructor.
data ContentSettlementreportsGet = ContentSettlementreportsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The Merchant Center account of the settlement report.
    merchantId :: Core.Word64,
    -- | The Google-provided ID of the settlement.
    settlementId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentSettlementreportsGet' with the minimum fields required to make a request.
newContentSettlementreportsGet ::
  -- |  The Merchant Center account of the settlement report. See 'merchantId'.
  Core.Word64 ->
  -- |  The Google-provided ID of the settlement. See 'settlementId'.
  Core.Text ->
  ContentSettlementreportsGet
newContentSettlementreportsGet merchantId settlementId =
  ContentSettlementreportsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      settlementId = settlementId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentSettlementreportsGet
  where
  type
    Rs ContentSettlementreportsGet =
      SettlementReport
  type
    Scopes ContentSettlementreportsGet =
      '[Content'FullControl]
  requestClient ContentSettlementreportsGet {..} =
    go
      merchantId
      settlementId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentSettlementreportsGetResource
          )
          Core.mempty
