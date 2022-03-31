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
-- Module      : Gogol.DFAReporting.Advertisers.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of advertisers, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertisers.list@.
module Gogol.DFAReporting.Advertisers.List
  ( -- * Resource
    DFAReportingAdvertisersListResource,

    -- ** Constructing a Request
    newDFAReportingAdvertisersList,
    DFAReportingAdvertisersList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.advertisers.list@ method which the
-- 'DFAReportingAdvertisersList' request conforms to.
type DFAReportingAdvertisersListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "advertisers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "advertiserGroupIds" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "floodlightConfigurationIds"
              Core.Int64
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam
              "includeAdvertisersWithoutGroupsOnly"
              Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "onlyParent" Core.Bool
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              AdvertisersListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              AdvertisersListSortOrder
    Core.:> Core.QueryParam
              "status"
              AdvertisersListStatus
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
              AdvertisersListResponse

-- | Retrieves a list of advertisers, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingAdvertisersList' smart constructor.
data DFAReportingAdvertisersList = DFAReportingAdvertisersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only advertisers with these advertiser group IDs.
    advertiserGroupIds :: (Core.Maybe [Core.Int64]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only advertisers with these floodlight configuration IDs.
    floodlightConfigurationIds :: (Core.Maybe [Core.Int64]),
    -- | Select only advertisers with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Select only advertisers which do not belong to any advertiser group.
    includeAdvertisersWithoutGroupsOnly :: (Core.Maybe Core.Bool),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Select only advertisers which use another advertiser\'s floodlight configuration.
    onlyParent :: (Core.Maybe Core.Bool),
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"advertiser/2015\" will return objects with names like \"advertiser June 2015\", \"advertiser April 2015\", or simply \"advertiser 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"advertiser\" will match objects with name \"my advertiser\", \"advertiser 2015\", or simply \"advertiser\" .
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: AdvertisersListSortField,
    -- | Order of sorted results.
    sortOrder :: AdvertisersListSortOrder,
    -- | Select only advertisers with the specified status.
    status :: (Core.Maybe AdvertisersListStatus),
    -- | Select only advertisers with these subaccount IDs.
    subaccountId :: (Core.Maybe Core.Int64),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingAdvertisersList' with the minimum fields required to make a request.
newDFAReportingAdvertisersList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingAdvertisersList
newDFAReportingAdvertisersList profileId =
  DFAReportingAdvertisersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserGroupIds = Core.Nothing,
      callback = Core.Nothing,
      floodlightConfigurationIds = Core.Nothing,
      ids = Core.Nothing,
      includeAdvertisersWithoutGroupsOnly = Core.Nothing,
      maxResults = 1000,
      onlyParent = Core.Nothing,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = AdvertisersListSortField_ID,
      sortOrder = AdvertisersListSortOrder_Ascending,
      status = Core.Nothing,
      subaccountId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingAdvertisersList
  where
  type
    Rs DFAReportingAdvertisersList =
      AdvertisersListResponse
  type
    Scopes DFAReportingAdvertisersList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingAdvertisersList {..} =
    go
      profileId
      xgafv
      accessToken
      (advertiserGroupIds Core.^. Core._Default)
      callback
      (floodlightConfigurationIds Core.^. Core._Default)
      (ids Core.^. Core._Default)
      includeAdvertisersWithoutGroupsOnly
      (Core.Just maxResults)
      onlyParent
      pageToken
      searchString
      (Core.Just sortField)
      (Core.Just sortOrder)
      status
      subaccountId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingAdvertisersListResource
          )
          Core.mempty
