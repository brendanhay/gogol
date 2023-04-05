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
-- Module      : Gogol.DFAReporting.Campaigns.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of campaigns, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaigns.list@.
module Gogol.DFAReporting.Campaigns.List
  ( -- * Resource
    DFAReportingCampaignsListResource,

    -- ** Constructing a Request
    DFAReportingCampaignsList (..),
    newDFAReportingCampaignsList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.campaigns.list@ method which the
-- 'DFAReportingCampaignsList' request conforms to.
type DFAReportingCampaignsListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "campaigns"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "advertiserGroupIds" Core.Int64
    Core.:> Core.QueryParams "advertiserIds" Core.Int64
    Core.:> Core.QueryParam "archived" Core.Bool
    Core.:> Core.QueryParam
              "atLeastOneOptimizationActivity"
              Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "excludedIds" Core.Int64
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam
              "overriddenEventTagId"
              Core.Int64
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              CampaignsListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              CampaignsListSortOrder
    Core.:> Core.QueryParam
              "subaccountId"
              Core.Int64
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
              CampaignsListResponse

-- | Retrieves a list of campaigns, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingCampaignsList' smart constructor.
data DFAReportingCampaignsList = DFAReportingCampaignsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only campaigns whose advertisers belong to these advertiser groups.
    advertiserGroupIds :: (Core.Maybe [Core.Int64]),
    -- | Select only campaigns that belong to these advertisers.
    advertiserIds :: (Core.Maybe [Core.Int64]),
    -- | Select only archived campaigns. Don\'t set this field to select both archived and non-archived campaigns.
    archived :: (Core.Maybe Core.Bool),
    -- | Select only campaigns that have at least one optimization activity.
    atLeastOneOptimizationActivity :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Exclude campaigns with these IDs.
    excludedIds :: (Core.Maybe [Core.Int64]),
    -- | Select only campaigns with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Select only campaigns that have overridden this event tag ID.
    overriddenEventTagId :: (Core.Maybe Core.Int64),
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for campaigns by name or ID. Wildcards (/) are allowed. For example, \"campaign/2015\" will return campaigns with names like \"campaign June 2015\", \"campaign April 2015\", or simply \"campaign 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"campaign\" will match campaigns with name \"my campaign\", \"campaign 2015\", or simply \"campaign\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: CampaignsListSortField,
    -- | Order of sorted results.
    sortOrder :: CampaignsListSortOrder,
    -- | Select only campaigns that belong to this subaccount.
    subaccountId :: (Core.Maybe Core.Int64),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCampaignsList' with the minimum fields required to make a request.
newDFAReportingCampaignsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCampaignsList
newDFAReportingCampaignsList profileId =
  DFAReportingCampaignsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserGroupIds = Core.Nothing,
      advertiserIds = Core.Nothing,
      archived = Core.Nothing,
      atLeastOneOptimizationActivity = Core.Nothing,
      callback = Core.Nothing,
      excludedIds = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      overriddenEventTagId = Core.Nothing,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = CampaignsListSortField_ID,
      sortOrder = CampaignsListSortOrder_Ascending,
      subaccountId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingCampaignsList where
  type
    Rs DFAReportingCampaignsList =
      CampaignsListResponse
  type
    Scopes DFAReportingCampaignsList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingCampaignsList {..} =
    go
      profileId
      xgafv
      accessToken
      (advertiserGroupIds Core.^. Core._Default)
      (advertiserIds Core.^. Core._Default)
      archived
      atLeastOneOptimizationActivity
      callback
      (excludedIds Core.^. Core._Default)
      (ids Core.^. Core._Default)
      (Core.Just maxResults)
      overriddenEventTagId
      pageToken
      searchString
      (Core.Just sortField)
      (Core.Just sortOrder)
      subaccountId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingCampaignsListResource
          )
          Core.mempty
