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
-- Module      : Gogol.DFAReporting.CreativeGroups.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creative groups, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeGroups.list@.
module Gogol.DFAReporting.CreativeGroups.List
  ( -- * Resource
    DFAReportingCreativeGroupsListResource,

    -- ** Constructing a Request
    DFAReportingCreativeGroupsList (..),
    newDFAReportingCreativeGroupsList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.creativeGroups.list@ method which the
-- 'DFAReportingCreativeGroupsList' request conforms to.
type DFAReportingCreativeGroupsListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "creativeGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "advertiserIds" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "groupNumber" Core.Int32
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              CreativeGroupsListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              CreativeGroupsListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              CreativeGroupsListResponse

-- | Retrieves a list of creative groups, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingCreativeGroupsList' smart constructor.
data DFAReportingCreativeGroupsList = DFAReportingCreativeGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only creative groups that belong to these advertisers.
    advertiserIds :: (Core.Maybe [Core.Int64]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only creative groups that belong to this subgroup.
    groupNumber :: (Core.Maybe Core.Int32),
    -- | Select only creative groups with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for creative groups by name or ID. Wildcards (/) are allowed. For example, \"creativegroup/2015\" will return creative groups with names like \"creativegroup June 2015\", \"creativegroup April 2015\", or simply \"creativegroup 2015\". Most of the searches also add wild-cards implicitly at the start and the end of the search string. For example, a search string of \"creativegroup\" will match creative groups with the name \"my creativegroup\", \"creativegroup 2015\", or simply \"creativegroup\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: CreativeGroupsListSortField,
    -- | Order of sorted results.
    sortOrder :: CreativeGroupsListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCreativeGroupsList' with the minimum fields required to make a request.
newDFAReportingCreativeGroupsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCreativeGroupsList
newDFAReportingCreativeGroupsList profileId =
  DFAReportingCreativeGroupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserIds = Core.Nothing,
      callback = Core.Nothing,
      groupNumber = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = CreativeGroupsListSortField_ID,
      sortOrder = CreativeGroupsListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingCreativeGroupsList
  where
  type
    Rs DFAReportingCreativeGroupsList =
      CreativeGroupsListResponse
  type
    Scopes DFAReportingCreativeGroupsList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingCreativeGroupsList {..} =
    go
      profileId
      xgafv
      accessToken
      (advertiserIds Core.^. Core._Default)
      callback
      groupNumber
      (ids Core.^. Core._Default)
      (Core.Just maxResults)
      pageToken
      searchString
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
              Core.Proxy DFAReportingCreativeGroupsListResource
          )
          Core.mempty
