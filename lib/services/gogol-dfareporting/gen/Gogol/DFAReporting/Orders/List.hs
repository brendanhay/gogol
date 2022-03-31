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
-- Module      : Gogol.DFAReporting.Orders.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of orders, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.orders.list@.
module Gogol.DFAReporting.Orders.List
  ( -- * Resource
    DFAReportingOrdersListResource,

    -- ** Constructing a Request
    newDFAReportingOrdersList,
    DFAReportingOrdersList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.orders.list@ method which the
-- 'DFAReportingOrdersList' request conforms to.
type DFAReportingOrdersListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Int64
    Core.:> "orders"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParams "siteId" Core.Int64
    Core.:> Core.QueryParam
              "sortField"
              OrdersListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              OrdersListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              OrdersListResponse

-- | Retrieves a list of orders, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingOrdersList' smart constructor.
data DFAReportingOrdersList = DFAReportingOrdersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only orders with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Project ID for orders.
    projectId :: Core.Int64,
    -- | Allows searching for orders by name or ID. Wildcards (/) are allowed. For example, \"order/2015\" will return orders with names like \"order June 2015\", \"order April 2015\", or simply \"order 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"order\" will match orders with name \"my order\", \"order 2015\", or simply \"order\".
    searchString :: (Core.Maybe Core.Text),
    -- | Select only orders that are associated with these site IDs.
    siteId :: (Core.Maybe [Core.Int64]),
    -- | Field by which to sort the list.
    sortField :: OrdersListSortField,
    -- | Order of sorted results.
    sortOrder :: OrdersListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingOrdersList' with the minimum fields required to make a request.
newDFAReportingOrdersList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  -- |  Project ID for orders. See 'projectId'.
  Core.Int64 ->
  DFAReportingOrdersList
newDFAReportingOrdersList profileId projectId =
  DFAReportingOrdersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      projectId = projectId,
      searchString = Core.Nothing,
      siteId = Core.Nothing,
      sortField = OrdersListSortField_ID,
      sortOrder = OrdersListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingOrdersList where
  type Rs DFAReportingOrdersList = OrdersListResponse
  type
    Scopes DFAReportingOrdersList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingOrdersList {..} =
    go
      profileId
      projectId
      xgafv
      accessToken
      callback
      (ids Core.^. Core._Default)
      (Core.Just maxResults)
      pageToken
      searchString
      (siteId Core.^. Core._Default)
      (Core.Just sortField)
      (Core.Just sortOrder)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingOrdersListResource
          )
          Core.mempty
