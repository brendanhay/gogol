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
-- Module      : Network.Google.ShoppingContent.Content.Orderreports.Listdisbursements
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report for disbursements from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreports.listdisbursements@.
module Network.Google.ShoppingContent.Content.Orderreports.Listdisbursements
  ( -- * Resource
    ContentOrderreportsListdisbursementsResource,

    -- ** Constructing a Request
    newContentOrderreportsListdisbursements,
    ContentOrderreportsListdisbursements,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreports.listdisbursements@ method which the
-- 'ContentOrderreportsListdisbursements' request conforms to.
type ContentOrderreportsListdisbursementsResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "orderreports"
    Core.:> "disbursements"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "disbursementEndDate" Core.Text
    Core.:> Core.QueryParam "disbursementStartDate" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              OrderreportsListDisbursementsResponse

-- | Retrieves a report for disbursements from your Merchant Center account.
--
-- /See:/ 'newContentOrderreportsListdisbursements' smart constructor.
data ContentOrderreportsListdisbursements = ContentOrderreportsListdisbursements
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The last date which disbursements occurred. In ISO 8601 format. Default: current date.
    disbursementEndDate :: (Core.Maybe Core.Text),
    -- | The first date which disbursements occurred. In ISO 8601 format.
    disbursementStartDate :: (Core.Maybe Core.Text),
    -- | The maximum number of disbursements to return in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The ID of the account that manages the order. This cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrderreportsListdisbursements' with the minimum fields required to make a request.
newContentOrderreportsListdisbursements ::
  -- |  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentOrderreportsListdisbursements
newContentOrderreportsListdisbursements merchantId =
  ContentOrderreportsListdisbursements
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      disbursementEndDate = Core.Nothing,
      disbursementStartDate = Core.Nothing,
      maxResults = Core.Nothing,
      merchantId = merchantId,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentOrderreportsListdisbursements
  where
  type
    Rs ContentOrderreportsListdisbursements =
      OrderreportsListDisbursementsResponse
  type
    Scopes ContentOrderreportsListdisbursements =
      '["https://www.googleapis.com/auth/content"]
  requestClient
    ContentOrderreportsListdisbursements {..} =
      go
        merchantId
        xgafv
        accessToken
        callback
        disbursementEndDate
        disbursementStartDate
        maxResults
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        shoppingContentService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContentOrderreportsListdisbursementsResource
            )
            Core.mempty
