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
-- Module      : Gogol.ShoppingContent.Content.Settlementreports.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of settlement reports from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.settlementreports.list@.
module Gogol.ShoppingContent.Content.Settlementreports.List
  ( -- * Resource
    ContentSettlementreportsListResource,

    -- ** Constructing a Request
    ContentSettlementreportsList (..),
    newContentSettlementreportsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.settlementreports.list@ method which the
-- 'ContentSettlementreportsList' request conforms to.
type ContentSettlementreportsListResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "settlementreports"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "transferEndDate" Core.Text
    Core.:> Core.QueryParam "transferStartDate" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              SettlementreportsListResponse

-- | Retrieves a list of settlement reports from your Merchant Center account.
--
-- /See:/ 'newContentSettlementreportsList' smart constructor.
data ContentSettlementreportsList = ContentSettlementreportsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of settlements to return in the response, used for paging. The default value is 200 returns per page, and the maximum allowed value is 5000 returns per page.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The Merchant Center account to list settlements for.
    merchantId :: Core.Word64,
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Obtains settlements which have transactions before this date (inclusively), in ISO 8601 format.
    transferEndDate :: (Core.Maybe Core.Text),
    -- | Obtains settlements which have transactions after this date (inclusively), in ISO 8601 format.
    transferStartDate :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentSettlementreportsList' with the minimum fields required to make a request.
newContentSettlementreportsList ::
  -- |  The Merchant Center account to list settlements for. See 'merchantId'.
  Core.Word64 ->
  ContentSettlementreportsList
newContentSettlementreportsList merchantId =
  ContentSettlementreportsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      merchantId = merchantId,
      pageToken = Core.Nothing,
      transferEndDate = Core.Nothing,
      transferStartDate = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentSettlementreportsList
  where
  type
    Rs ContentSettlementreportsList =
      SettlementreportsListResponse
  type
    Scopes ContentSettlementreportsList =
      '[Content'FullControl]
  requestClient ContentSettlementreportsList {..} =
    go
      merchantId
      xgafv
      accessToken
      callback
      maxResults
      pageToken
      transferEndDate
      transferStartDate
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentSettlementreportsListResource
          )
          Core.mempty
