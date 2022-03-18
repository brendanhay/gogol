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
-- Module      : Network.Google.DFAReporting.FloodlightActivityGroups.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of floodlight activity groups, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivityGroups.list@.
module Network.Google.DFAReporting.FloodlightActivityGroups.List
  ( -- * Resource
    DFAReportingFloodlightActivityGroupsListResource,

    -- ** Constructing a Request
    newDFAReportingFloodlightActivityGroupsList,
    DFAReportingFloodlightActivityGroupsList,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.floodlightActivityGroups.list@ method which the
-- 'DFAReportingFloodlightActivityGroupsList' request conforms to.
type DFAReportingFloodlightActivityGroupsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "floodlightActivityGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "advertiserId" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "floodlightConfigurationId"
              Core.Int64
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              FloodlightActivityGroupsListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              FloodlightActivityGroupsListSortOrder
    Core.:> Core.QueryParam
              "type"
              FloodlightActivityGroupsListType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              FloodlightActivityGroupsListResponse

-- | Retrieves a list of floodlight activity groups, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingFloodlightActivityGroupsList' smart constructor.
data DFAReportingFloodlightActivityGroupsList = DFAReportingFloodlightActivityGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only floodlight activity groups with the specified advertiser ID. Must specify either advertiserId or floodlightConfigurationId for a non-empty result.
    advertiserId :: (Core.Maybe Core.Int64),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only floodlight activity groups with the specified floodlight configuration ID. Must specify either advertiserId, or floodlightConfigurationId for a non-empty result.
    floodlightConfigurationId :: (Core.Maybe Core.Int64),
    -- | Select only floodlight activity groups with the specified IDs. Must specify either advertiserId or floodlightConfigurationId for a non-empty result.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"floodlightactivitygroup/2015\" will return objects with names like \"floodlightactivitygroup June 2015\", \"floodlightactivitygroup April 2015\", or simply \"floodlightactivitygroup 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"floodlightactivitygroup\" will match objects with name \"my floodlightactivitygroup activity\", \"floodlightactivitygroup 2015\", or simply \"floodlightactivitygroup\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: FloodlightActivityGroupsListSortField,
    -- | Order of sorted results.
    sortOrder :: FloodlightActivityGroupsListSortOrder,
    -- | Select only floodlight activity groups with the specified floodlight activity group type.
    type' :: (Core.Maybe FloodlightActivityGroupsListType),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingFloodlightActivityGroupsList' with the minimum fields required to make a request.
newDFAReportingFloodlightActivityGroupsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingFloodlightActivityGroupsList
newDFAReportingFloodlightActivityGroupsList profileId =
  DFAReportingFloodlightActivityGroupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserId = Core.Nothing,
      callback = Core.Nothing,
      floodlightConfigurationId = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = FloodlightActivityGroupsListSortField_ID,
      sortOrder = FloodlightActivityGroupsListSortOrder_Ascending,
      type' = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingFloodlightActivityGroupsList
  where
  type
    Rs DFAReportingFloodlightActivityGroupsList =
      FloodlightActivityGroupsListResponse
  type
    Scopes DFAReportingFloodlightActivityGroupsList =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient
    DFAReportingFloodlightActivityGroupsList {..} =
      go
        profileId
        xgafv
        accessToken
        advertiserId
        callback
        floodlightConfigurationId
        (ids Core.^. Core._Default)
        (Core.Just maxResults)
        pageToken
        searchString
        (Core.Just sortField)
        (Core.Just sortOrder)
        type'
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dFAReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DFAReportingFloodlightActivityGroupsListResource
            )
            Core.mempty
