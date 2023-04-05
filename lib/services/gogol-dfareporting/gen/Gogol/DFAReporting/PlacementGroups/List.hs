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
-- Module      : Gogol.DFAReporting.PlacementGroups.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of placement groups, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementGroups.list@.
module Gogol.DFAReporting.PlacementGroups.List
  ( -- * Resource
    DFAReportingPlacementGroupsListResource,

    -- ** Constructing a Request
    DFAReportingPlacementGroupsList (..),
    newDFAReportingPlacementGroupsList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.placementGroups.list@ method which the
-- 'DFAReportingPlacementGroupsList' request conforms to.
type DFAReportingPlacementGroupsListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "placementGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams
              "activeStatus"
              PlacementGroupsListActiveStatus
    Core.:> Core.QueryParams "advertiserIds" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "campaignIds" Core.Int64
    Core.:> Core.QueryParams "contentCategoryIds" Core.Int64
    Core.:> Core.QueryParams "directorySiteIds" Core.Int64
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxEndDate" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "maxStartDate" Core.Text
    Core.:> Core.QueryParam "minEndDate" Core.Text
    Core.:> Core.QueryParam
              "minStartDate"
              Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "placementGroupType"
              PlacementGroupsListPlacementGroupType
    Core.:> Core.QueryParams
              "placementStrategyIds"
              Core.Int64
    Core.:> Core.QueryParams
              "pricingTypes"
              PlacementGroupsListPricingTypes
    Core.:> Core.QueryParam
              "searchString"
              Core.Text
    Core.:> Core.QueryParams
              "siteIds"
              Core.Int64
    Core.:> Core.QueryParam
              "sortField"
              PlacementGroupsListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              PlacementGroupsListSortOrder
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
              PlacementGroupsListResponse

-- | Retrieves a list of placement groups, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingPlacementGroupsList' smart constructor.
data DFAReportingPlacementGroupsList = DFAReportingPlacementGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only placements with these active statuses.
    activeStatus :: (Core.Maybe [PlacementGroupsListActiveStatus]),
    -- | Select only placement groups that belong to these advertisers.
    advertiserIds :: (Core.Maybe [Core.Int64]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only placement groups that belong to these campaigns.
    campaignIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placement groups that are associated with these content categories.
    contentCategoryIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placement groups that are associated with these directory sites.
    directorySiteIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placement groups with these IDs.
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
    -- | Select only placement groups belonging with this group type. A package is a simple group of placements that acts as a single pricing point for a group of tags. A roadblock is a group of placements that not only acts as a single pricing point but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned placements to be marked as primary for reporting.
    placementGroupType :: (Core.Maybe PlacementGroupsListPlacementGroupType),
    -- | Select only placement groups that are associated with these placement strategies.
    placementStrategyIds :: (Core.Maybe [Core.Int64]),
    -- | Select only placement groups with these pricing types.
    pricingTypes :: (Core.Maybe [PlacementGroupsListPricingTypes]),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for placement groups by name or ID. Wildcards (/) are allowed. For example, \"placement/2015\" will return placement groups with names like \"placement group June 2015\", \"placement group May 2015\", or simply \"placements 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"placementgroup\" will match placement groups with name \"my placementgroup\", \"placementgroup 2015\", or simply \"placementgroup\".
    searchString :: (Core.Maybe Core.Text),
    -- | Select only placement groups that are associated with these sites.
    siteIds :: (Core.Maybe [Core.Int64]),
    -- | Field by which to sort the list.
    sortField :: PlacementGroupsListSortField,
    -- | Order of sorted results.
    sortOrder :: PlacementGroupsListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingPlacementGroupsList' with the minimum fields required to make a request.
newDFAReportingPlacementGroupsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingPlacementGroupsList
newDFAReportingPlacementGroupsList profileId =
  DFAReportingPlacementGroupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      activeStatus = Core.Nothing,
      advertiserIds = Core.Nothing,
      callback = Core.Nothing,
      campaignIds = Core.Nothing,
      contentCategoryIds = Core.Nothing,
      directorySiteIds = Core.Nothing,
      ids = Core.Nothing,
      maxEndDate = Core.Nothing,
      maxResults = 800,
      maxStartDate = Core.Nothing,
      minEndDate = Core.Nothing,
      minStartDate = Core.Nothing,
      pageToken = Core.Nothing,
      placementGroupType = Core.Nothing,
      placementStrategyIds = Core.Nothing,
      pricingTypes = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      siteIds = Core.Nothing,
      sortField = PlacementGroupsListSortField_ID,
      sortOrder = PlacementGroupsListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingPlacementGroupsList
  where
  type
    Rs DFAReportingPlacementGroupsList =
      PlacementGroupsListResponse
  type
    Scopes DFAReportingPlacementGroupsList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingPlacementGroupsList {..} =
    go
      profileId
      xgafv
      accessToken
      (activeStatus Core.^. Core._Default)
      (advertiserIds Core.^. Core._Default)
      callback
      (campaignIds Core.^. Core._Default)
      (contentCategoryIds Core.^. Core._Default)
      (directorySiteIds Core.^. Core._Default)
      (ids Core.^. Core._Default)
      maxEndDate
      (Core.Just maxResults)
      maxStartDate
      minEndDate
      minStartDate
      pageToken
      placementGroupType
      (placementStrategyIds Core.^. Core._Default)
      (pricingTypes Core.^. Core._Default)
      searchString
      (siteIds Core.^. Core._Default)
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
              Core.Proxy DFAReportingPlacementGroupsListResource
          )
          Core.mempty
