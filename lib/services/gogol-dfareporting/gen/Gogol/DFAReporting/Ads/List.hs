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
-- Module      : Gogol.DFAReporting.Ads.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of ads, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.ads.list@.
module Gogol.DFAReporting.Ads.List
  ( -- * Resource
    DFAReportingAdsListResource,

    -- ** Constructing a Request
    newDFAReportingAdsList,
    DFAReportingAdsList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.ads.list@ method which the
-- 'DFAReportingAdsList' request conforms to.
type DFAReportingAdsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "ads"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "active" Core.Bool
    Core.:> Core.QueryParam "advertiserId" Core.Int64
    Core.:> Core.QueryParam "archived" Core.Bool
    Core.:> Core.QueryParams "audienceSegmentIds" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "campaignIds" Core.Int64
    Core.:> Core.QueryParam
              "compatibility"
              AdsListCompatibility
    Core.:> Core.QueryParams "creativeIds" Core.Int64
    Core.:> Core.QueryParams
              "creativeOptimizationConfigurationIds"
              Core.Int64
    Core.:> Core.QueryParam
              "dynamicClickTracker"
              Core.Bool
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParams
              "landingPageIds"
              Core.Int64
    Core.:> Core.QueryParam
              "maxResults"
              Core.Int32
    Core.:> Core.QueryParam
              "overriddenEventTagId"
              Core.Int64
    Core.:> Core.QueryParam
              "pageToken"
              Core.Text
    Core.:> Core.QueryParams
              "placementIds"
              Core.Int64
    Core.:> Core.QueryParams
              "remarketingListIds"
              Core.Int64
    Core.:> Core.QueryParam
              "searchString"
              Core.Text
    Core.:> Core.QueryParams
              "sizeIds"
              Core.Int64
    Core.:> Core.QueryParam
              "sortField"
              AdsListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              AdsListSortOrder
    Core.:> Core.QueryParam
              "sslCompliant"
              Core.Bool
    Core.:> Core.QueryParam
              "sslRequired"
              Core.Bool
    Core.:> Core.QueryParams
              "type"
              AdsListType
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
              AdsListResponse

-- | Retrieves a list of ads, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingAdsList' smart constructor.
data DFAReportingAdsList = DFAReportingAdsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only active ads.
    active :: (Core.Maybe Core.Bool),
    -- | Select only ads with this advertiser ID.
    advertiserId :: (Core.Maybe Core.Int64),
    -- | Select only archived ads.
    archived :: (Core.Maybe Core.Bool),
    -- | Select only ads with these audience segment IDs.
    audienceSegmentIds :: (Core.Maybe [Core.Int64]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only ads with these campaign IDs.
    campaignIds :: (Core.Maybe [Core.Int64]),
    -- | Select default ads with the specified compatibility. Applicable when type is AD/SERVING/DEFAULT/AD. DISPLAY and DISPLAY/INTERSTITIAL refer to rendering either on desktop or on mobile devices for regular or interstitial ads, respectively. APP and APP/INTERSTITIAL are for rendering in mobile apps. IN/STREAM_VIDEO refers to rendering an in-stream video ads developed with the VAST standard.
    compatibility :: (Core.Maybe AdsListCompatibility),
    -- | Select only ads with these creative IDs assigned.
    creativeIds :: (Core.Maybe [Core.Int64]),
    -- | Select only ads with these creative optimization configuration IDs.
    creativeOptimizationConfigurationIds :: (Core.Maybe [Core.Int64]),
    -- | Select only dynamic click trackers. Applicable when type is AD/SERVING/CLICK_TRACKER. If true, select dynamic click trackers. If false, select static click trackers. Leave unset to select both.
    dynamicClickTracker :: (Core.Maybe Core.Bool),
    -- | Select only ads with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Select only ads with these landing page IDs.
    landingPageIds :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Select only ads with this event tag override ID.
    overriddenEventTagId :: (Core.Maybe Core.Int64),
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Select only ads with these placement IDs assigned.
    placementIds :: (Core.Maybe [Core.Int64]),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Select only ads whose list targeting expression use these remarketing list IDs.
    remarketingListIds :: (Core.Maybe [Core.Int64]),
    -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"ad/2015\" will return objects with names like \"ad June 2015\", \"ad April 2015\", or simply \"ad 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"ad\" will match objects with name \"my ad\", \"ad 2015\", or simply \"ad\".
    searchString :: (Core.Maybe Core.Text),
    -- | Select only ads with these size IDs.
    sizeIds :: (Core.Maybe [Core.Int64]),
    -- | Field by which to sort the list.
    sortField :: AdsListSortField,
    -- | Order of sorted results.
    sortOrder :: AdsListSortOrder,
    -- | Select only ads that are SSL-compliant.
    sslCompliant :: (Core.Maybe Core.Bool),
    -- | Select only ads that require SSL.
    sslRequired :: (Core.Maybe Core.Bool),
    -- | Select only ads with these types.
    type' :: (Core.Maybe [AdsListType]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingAdsList' with the minimum fields required to make a request.
newDFAReportingAdsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingAdsList
newDFAReportingAdsList profileId =
  DFAReportingAdsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      active = Core.Nothing,
      advertiserId = Core.Nothing,
      archived = Core.Nothing,
      audienceSegmentIds = Core.Nothing,
      callback = Core.Nothing,
      campaignIds = Core.Nothing,
      compatibility = Core.Nothing,
      creativeIds = Core.Nothing,
      creativeOptimizationConfigurationIds = Core.Nothing,
      dynamicClickTracker = Core.Nothing,
      ids = Core.Nothing,
      landingPageIds = Core.Nothing,
      maxResults = 1000,
      overriddenEventTagId = Core.Nothing,
      pageToken = Core.Nothing,
      placementIds = Core.Nothing,
      profileId = profileId,
      remarketingListIds = Core.Nothing,
      searchString = Core.Nothing,
      sizeIds = Core.Nothing,
      sortField = AdsListSortField_ID,
      sortOrder = AdsListSortOrder_Ascending,
      sslCompliant = Core.Nothing,
      sslRequired = Core.Nothing,
      type' = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingAdsList where
  type Rs DFAReportingAdsList = AdsListResponse
  type
    Scopes DFAReportingAdsList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingAdsList {..} =
    go
      profileId
      xgafv
      accessToken
      active
      advertiserId
      archived
      (audienceSegmentIds Core.^. Core._Default)
      callback
      (campaignIds Core.^. Core._Default)
      compatibility
      (creativeIds Core.^. Core._Default)
      ( creativeOptimizationConfigurationIds
          Core.^. Core._Default
      )
      dynamicClickTracker
      (ids Core.^. Core._Default)
      (landingPageIds Core.^. Core._Default)
      (Core.Just maxResults)
      overriddenEventTagId
      pageToken
      (placementIds Core.^. Core._Default)
      (remarketingListIds Core.^. Core._Default)
      searchString
      (sizeIds Core.^. Core._Default)
      (Core.Just sortField)
      (Core.Just sortOrder)
      sslCompliant
      sslRequired
      (type' Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingAdsListResource
          )
          Core.mempty
