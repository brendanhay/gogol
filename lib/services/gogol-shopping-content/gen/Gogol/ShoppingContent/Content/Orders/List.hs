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
-- Module      : Gogol.ShoppingContent.Content.Orders.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the orders in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.list@.
module Gogol.ShoppingContent.Content.Orders.List
  ( -- * Resource
    ContentOrdersListResource,

    -- ** Constructing a Request
    ContentOrdersList (..),
    newContentOrdersList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orders.list@ method which the
-- 'ContentOrdersList' request conforms to.
type ContentOrdersListResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "orders"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "acknowledged" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "placedDateEnd" Core.Text
    Core.:> Core.QueryParam "placedDateStart" Core.Text
    Core.:> Core.QueryParams "statuses" OrdersListStatuses
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] OrdersListResponse

-- | Lists the orders in your Merchant Center account.
--
-- /See:/ 'newContentOrdersList' smart constructor.
data ContentOrdersList = ContentOrdersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Obtains orders that match the acknowledgement status. When set to true, obtains orders that have been acknowledged. When false, obtains orders that have not been acknowledged. We recommend using this filter set to @false@, in conjunction with the @acknowledge@ call, such that only un-acknowledged orders are returned.
    acknowledged :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of orders to return in the response, used for paging. The default value is 25 orders per page, and the maximum allowed value is 250 orders per page.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The ID of the account that manages the order. This cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | Order results by placement date in descending or ascending order. Acceptable values are: - placedDateAsc - placedDateDesc
    orderBy :: (Core.Maybe Core.Text),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Obtains orders placed before this date (exclusively), in ISO 8601 format.
    placedDateEnd :: (Core.Maybe Core.Text),
    -- | Obtains orders placed after this date (inclusively), in ISO 8601 format.
    placedDateStart :: (Core.Maybe Core.Text),
    -- | Obtains orders that match any of the specified statuses. Note that @active@ is a shortcut for @pendingShipment@ and @partiallyShipped@, and @completed@ is a shortcut for @shipped@, @partiallyDelivered@, @delivered@, @partiallyReturned@, @returned@, and @canceled@.
    statuses :: (Core.Maybe [OrdersListStatuses]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersList' with the minimum fields required to make a request.
newContentOrdersList ::
  -- |  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentOrdersList
newContentOrdersList merchantId =
  ContentOrdersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      acknowledged = Core.Nothing,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      merchantId = merchantId,
      orderBy = Core.Nothing,
      pageToken = Core.Nothing,
      placedDateEnd = Core.Nothing,
      placedDateStart = Core.Nothing,
      statuses = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentOrdersList where
  type Rs ContentOrdersList = OrdersListResponse
  type
    Scopes ContentOrdersList =
      '[Content'FullControl]
  requestClient ContentOrdersList {..} =
    go
      merchantId
      xgafv
      accessToken
      acknowledged
      callback
      maxResults
      orderBy
      pageToken
      placedDateEnd
      placedDateStart
      (statuses Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ContentOrdersListResource)
          Core.mempty
