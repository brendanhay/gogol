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
-- Module      : Gogol.ShoppingContent.Content.Orderreturns.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists order returns in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.list@.
module Gogol.ShoppingContent.Content.Orderreturns.List
  ( -- * Resource
    ContentOrderreturnsListResource,

    -- ** Constructing a Request
    newContentOrderreturnsList,
    ContentOrderreturnsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.list@ method which the
-- 'ContentOrderreturnsList' request conforms to.
type ContentOrderreturnsListResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "orderreturns"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "acknowledged" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "createdEndDate" Core.Text
    Core.:> Core.QueryParam "createdStartDate" Core.Text
    Core.:> Core.QueryParams "googleOrderIds" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "orderBy" OrderreturnsListOrderBy
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParams
              "shipmentStates"
              OrderreturnsListShipmentStates
    Core.:> Core.QueryParams
              "shipmentStatus"
              OrderreturnsListShipmentStatus
    Core.:> Core.QueryParams
              "shipmentTrackingNumbers"
              Core.Text
    Core.:> Core.QueryParams
              "shipmentTypes"
              OrderreturnsListShipmentTypes
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              OrderreturnsListResponse

-- | Lists order returns in your Merchant Center account.
--
-- /See:/ 'newContentOrderreturnsList' smart constructor.
data ContentOrderreturnsList = ContentOrderreturnsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Obtains order returns that match the acknowledgement status. When set to true, obtains order returns that have been acknowledged. When false, obtains order returns that have not been acknowledged. When not provided, obtains order returns regardless of their acknowledgement status. We recommend using this filter set to @false@, in conjunction with the @acknowledge@ call, such that only un-acknowledged order returns are returned.
    acknowledged :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Obtains order returns created before this date (inclusively), in ISO 8601 format.
    createdEndDate :: (Core.Maybe Core.Text),
    -- | Obtains order returns created after this date (inclusively), in ISO 8601 format.
    createdStartDate :: (Core.Maybe Core.Text),
    -- | Obtains order returns with the specified order ids. If this parameter is provided, createdStartDate, createdEndDate, shipmentType, shipmentStatus, shipmentState and acknowledged parameters must be not set. Note: if googleOrderId and shipmentTrackingNumber parameters are provided, the obtained results will include all order returns that either match the specified order id or the specified tracking number.
    googleOrderIds :: (Core.Maybe [Core.Text]),
    -- | The maximum number of order returns to return in the response, used for paging. The default value is 25 returns per page, and the maximum allowed value is 250 returns per page.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The ID of the account that manages the order. This cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | Return the results in the specified order.
    orderBy :: (Core.Maybe OrderreturnsListOrderBy),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Obtains order returns that match any shipment state provided in this parameter. When this parameter is not provided, order returns are obtained regardless of their shipment states.
    shipmentStates :: (Core.Maybe [OrderreturnsListShipmentStates]),
    -- | Obtains order returns that match any shipment status provided in this parameter. When this parameter is not provided, order returns are obtained regardless of their shipment statuses.
    shipmentStatus :: (Core.Maybe [OrderreturnsListShipmentStatus]),
    -- | Obtains order returns with the specified tracking numbers. If this parameter is provided, createdStartDate, createdEndDate, shipmentType, shipmentStatus, shipmentState and acknowledged parameters must be not set. Note: if googleOrderId and shipmentTrackingNumber parameters are provided, the obtained results will include all order returns that either match the specified order id or the specified tracking number.
    shipmentTrackingNumbers :: (Core.Maybe [Core.Text]),
    -- | Obtains order returns that match any shipment type provided in this parameter. When this parameter is not provided, order returns are obtained regardless of their shipment types.
    shipmentTypes :: (Core.Maybe [OrderreturnsListShipmentTypes]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrderreturnsList' with the minimum fields required to make a request.
newContentOrderreturnsList ::
  -- |  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentOrderreturnsList
newContentOrderreturnsList merchantId =
  ContentOrderreturnsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      acknowledged = Core.Nothing,
      callback = Core.Nothing,
      createdEndDate = Core.Nothing,
      createdStartDate = Core.Nothing,
      googleOrderIds = Core.Nothing,
      maxResults = Core.Nothing,
      merchantId = merchantId,
      orderBy = Core.Nothing,
      pageToken = Core.Nothing,
      shipmentStates = Core.Nothing,
      shipmentStatus = Core.Nothing,
      shipmentTrackingNumbers = Core.Nothing,
      shipmentTypes = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentOrderreturnsList where
  type
    Rs ContentOrderreturnsList =
      OrderreturnsListResponse
  type
    Scopes ContentOrderreturnsList =
      '[Content'FullControl]
  requestClient ContentOrderreturnsList {..} =
    go
      merchantId
      xgafv
      accessToken
      acknowledged
      callback
      createdEndDate
      createdStartDate
      (googleOrderIds Core.^. Core._Default)
      maxResults
      orderBy
      pageToken
      (shipmentStates Core.^. Core._Default)
      (shipmentStatus Core.^. Core._Default)
      (shipmentTrackingNumbers Core.^. Core._Default)
      (shipmentTypes Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentOrderreturnsListResource
          )
          Core.mempty
