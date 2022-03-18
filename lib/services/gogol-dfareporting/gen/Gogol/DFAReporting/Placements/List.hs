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
-- Module      : Gogol.DFAReporting.Placements.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of placements, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placements.list@.
module Gogol.DFAReporting.Placements.List
  ( -- * Resource
    DFAReportingPlacementsListResource,

    -- ** Constructing a Request
    newDFAReportingPlacementsList,
    DFAReportingPlacementsList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.placements.list@ method which the
-- 'DFAReportingPlacementsList' request conforms to.
type DFAReportingPlacementsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "placements"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "advertiserIds" Core.Int64
    Core.:> Core.QueryParam "archived" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "campaignIds" Core.Int64
    Core.:> Core.QueryParams
              "compatibilities"
              PlacementsListCompatibilities
    Core.:> Core.QueryParams "contentCategoryIds" Core.Int64
    Core.:> Core.QueryParams "directorySiteIds" Core.Int64
    Core.:> Core.QueryParams "groupIds" Core.Int64
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxEndDate" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam
              "maxStartDate"
              Core.Text
    Core.:> Core.QueryParam
              "minEndDate"
              Core.Text
    Core.:> Core.QueryParam
              "minStartDate"
              Core.Text
    Core.:> Core.QueryParam
              "pageToken"
              Core.Text
    Core.:> Core.QueryParam
              "paymentSource"
              PlacementsListPaymentSource
    Core.:> Core.QueryParams
              "placementStrategyIds"
              Core.Int64
    Core.:> Core.QueryParams
              "pricingTypes"
              PlacementsListPricingTypes
    Core.:> Core.QueryParam
              "searchString"
              Core.Text
    Core.:> Core.QueryParams
              "siteIds"
              Core.Int64
    Core.:> Core.QueryParams
              "sizeIds"
              Core.Int64
    Core.:> Core.QueryParam
              "sortField"
              PlacementsListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              PlacementsListSortOrder
    Core.:> Core.QueryParam
              "uploadType"
              Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam
              "alt"
              Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              PlacementsListResponse

-- | Retrieves a list of placements, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingPlacementsList' smart constructor.
data DFAReportingPlacementsList = DFAReportingPlacementsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only placements that belong to these advertisers.
    advertiserIds :: (Core.Maybe [Core.Int64]),
    -- | Select only archived placements. Don\'t set this field to select both archived and non-archived placements.
    archived :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only placements that belong to these campaigns.
    campaignIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placements that are associated with these compatibilities. DISPLAY and DISPLAY/INTERSTITIAL refer to rendering either on desktop or on mobile devices for regular or interstitial ads respectively. APP and APP/INTERSTITIAL are for rendering in mobile apps. IN/STREAM/VIDEO refers to rendering in in-stream video ads developed with the VAST standard.
    compatibilities :: (Core.Maybe [PlacementsListCompatibilities]),
    -- | Select only placements that are associated with these content categories.
    contentCategoryIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placements that are associated with these directory sites.
    directorySiteIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placements that belong to these placement groups.
    groupIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placements with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Select only placements or placement groups whose end date is on or before the specified maxEndDate. The date should be formatted as \"yyyy-MM-dd\".
    maxEndDate :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Select only placements or placement groups whose start date is on or before the specified maxStartDate. The date should be formatted as \"yyyy-MM-dd\".
    maxStartDate :: (Core.Maybe Core.Text),
    -- | Select only placements or placement groups whose end date is on or after the specified minEndDate. The date should be formatted as \"yyyy-MM-dd\".
    minEndDate :: (Core.Maybe Core.Text),
    -- | Select only placements or placement groups whose start date is on or after the specified minStartDate. The date should be formatted as \"yyyy-MM-dd\".
    minStartDate :: (Core.Maybe Core.Text),
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Select only placements with this payment source.
    paymentSource :: (Core.Maybe PlacementsListPaymentSource),
    -- | Select only placements that are associated with these placement strategies.
    placementStrategyIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placements with these pricing types.
    pricingTypes :: (Core.Maybe [PlacementsListPricingTypes]),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for placements by name or ID. Wildcards (/) are allowed. For example, \"placement/2015\" will return placements with names like \"placement June 2015\", \"placement May 2015\", or simply \"placements 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"placement\" will match placements with name \"my placement\", \"placement 2015\", or simply \"placement\" .
    searchString :: (Core.Maybe Core.Text),
    -- | Select only placements that are associated with these sites.
    siteIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placements that are associated with these sizes.
    sizeIds :: (Core.Maybe [Core.Int64]),
    -- | Field by which to sort the list.
    sortField :: PlacementsListSortField,
    -- | Order of sorted results.
    sortOrder :: PlacementsListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingPlacementsList' with the minimum fields required to make a request.
newDFAReportingPlacementsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingPlacementsList
newDFAReportingPlacementsList profileId =
  DFAReportingPlacementsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserIds = Core.Nothing,
      archived = Core.Nothing,
      callback = Core.Nothing,
      campaignIds = Core.Nothing,
      compatibilities = Core.Nothing,
      contentCategoryIds = Core.Nothing,
      directorySiteIds = Core.Nothing,
      groupIds = Core.Nothing,
      ids = Core.Nothing,
      maxEndDate = Core.Nothing,
      maxResults = 1000,
      maxStartDate = Core.Nothing,
      minEndDate = Core.Nothing,
      minStartDate = Core.Nothing,
      pageToken = Core.Nothing,
      paymentSource = Core.Nothing,
      placementStrategyIds = Core.Nothing,
      pricingTypes = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      siteIds = Core.Nothing,
      sizeIds = Core.Nothing,
      sortField = PlacementsListSortField_ID,
      sortOrder = PlacementsListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingPlacementsList
  where
  type
    Rs DFAReportingPlacementsList =
      PlacementsListResponse
  type
    Scopes DFAReportingPlacementsList =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient DFAReportingPlacementsList {..} =
    go
      profileId
      xgafv
      accessToken
      (advertiserIds Core.^. Core._Default)
      archived
      callback
      (campaignIds Core.^. Core._Default)
      (compatibilities Core.^. Core._Default)
      (contentCategoryIds Core.^. Core._Default)
      (directorySiteIds Core.^. Core._Default)
      (groupIds Core.^. Core._Default)
      (ids Core.^. Core._Default)
      maxEndDate
      (Core.Just maxResults)
      maxStartDate
      minEndDate
      minStartDate
      pageToken
      paymentSource
      (placementStrategyIds Core.^. Core._Default)
      (pricingTypes Core.^. Core._Default)
      searchString
      (siteIds Core.^. Core._Default)
      (sizeIds Core.^. Core._Default)
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
              Core.Proxy DFAReportingPlacementsListResource
          )
          Core.mempty
