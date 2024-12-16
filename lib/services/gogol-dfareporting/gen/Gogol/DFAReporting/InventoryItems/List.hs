{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DFAReporting.InventoryItems.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of inventory items, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.inventoryItems.list@.
module Gogol.DFAReporting.InventoryItems.List
    (
    -- * Resource
      DFAReportingInventoryItemsListResource

    -- ** Constructing a Request
    , DFAReportingInventoryItemsList (..)
    , newDFAReportingInventoryItemsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.inventoryItems.list@ method which the
-- 'DFAReportingInventoryItemsList' request conforms to.
type DFAReportingInventoryItemsListResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "projects" Core.:>
               Core.Capture "projectId" Core.Int64 Core.:>
                 "inventoryItems" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParams "ids" Core.Int64 Core.:>
                           Core.QueryParam "inPlan" Core.Bool Core.:>
                             Core.QueryParam "maxResults" Core.Int32 Core.:>
                               Core.QueryParams "orderId" Core.Int64 Core.:>
                                 Core.QueryParam "pageToken" Core.Text Core.:>
                                   Core.QueryParams "siteId" Core.Int64 Core.:>
                                     Core.QueryParam "sortField"
                                       InventoryItemsListSortField
                                       Core.:>
                                       Core.QueryParam "sortOrder"
                                         InventoryItemsListSortOrder
                                         Core.:>
                                         Core.QueryParam "type"
                                           InventoryItemsListType
                                           Core.:>
                                           Core.QueryParam "uploadType"
                                             Core.Text
                                             Core.:>
                                             Core.QueryParam "upload_protocol"
                                               Core.Text
                                               Core.:>
                                               Core.QueryParam "alt"
                                                 Core.AltJSON
                                                 Core.:>
                                                 Core.Get '[Core.JSON]
                                                   InventoryItemsListResponse

-- | Retrieves a list of inventory items, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingInventoryItemsList' smart constructor.
data DFAReportingInventoryItemsList = DFAReportingInventoryItemsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Select only inventory items with these IDs.
    , ids :: (Core.Maybe [Core.Int64])
      -- | Select only inventory items that are in plan.
    , inPlan :: (Core.Maybe Core.Bool)
      -- | Maximum number of results to return.
    , maxResults :: Core.Int32
      -- | Select only inventory items that belong to specified orders.
    , orderId :: (Core.Maybe [Core.Int64])
      -- | Value of the nextPageToken from the previous result page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Project ID for order documents.
    , projectId :: Core.Int64
      -- | Select only inventory items that are associated with these sites.
    , siteId :: (Core.Maybe [Core.Int64])
      -- | Field by which to sort the list.
    , sortField :: InventoryItemsListSortField
      -- | Order of sorted results.
    , sortOrder :: InventoryItemsListSortOrder
      -- | Select only inventory items with this type.
    , type' :: (Core.Maybe InventoryItemsListType)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingInventoryItemsList' with the minimum fields required to make a request.
newDFAReportingInventoryItemsList 
    ::  Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> Core.Int64
       -- ^  Project ID for order documents. See 'projectId'.
    -> DFAReportingInventoryItemsList
newDFAReportingInventoryItemsList profileId projectId =
  DFAReportingInventoryItemsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , ids = Core.Nothing
    , inPlan = Core.Nothing
    , maxResults = 1000
    , orderId = Core.Nothing
    , pageToken = Core.Nothing
    , profileId = profileId
    , projectId = projectId
    , siteId = Core.Nothing
    , sortField = InventoryItemsListSortField_ID
    , sortOrder = InventoryItemsListSortOrder_Ascending
    , type' = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingInventoryItemsList
         where
        type Rs DFAReportingInventoryItemsList =
             InventoryItemsListResponse
        type Scopes DFAReportingInventoryItemsList =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingInventoryItemsList{..}
          = go profileId projectId xgafv accessToken callback
              (ids Core.^. Core._Default)
              inPlan
              (Core.Just maxResults)
              (orderId Core.^. Core._Default)
              pageToken
              (siteId Core.^. Core._Default)
              (Core.Just sortField)
              (Core.Just sortOrder)
              type'
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingInventoryItemsListResource)
                      Core.mempty

