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
-- Module      : Gogol.DFAReporting.Creatives.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creatives, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creatives.list@.
module Gogol.DFAReporting.Creatives.List
  ( -- * Resource
    DFAReportingCreativesListResource,

    -- ** Constructing a Request
    newDFAReportingCreativesList,
    DFAReportingCreativesList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.creatives.list@ method which the
-- 'DFAReportingCreativesList' request conforms to.
type DFAReportingCreativesListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "creatives"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "active" Core.Bool
    Core.:> Core.QueryParam "advertiserId" Core.Int64
    Core.:> Core.QueryParam "archived" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "campaignId" Core.Int64
    Core.:> Core.QueryParams "companionCreativeIds" Core.Int64
    Core.:> Core.QueryParams "creativeFieldIds" Core.Int64
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParams
              "renderingIds"
              Core.Int64
    Core.:> Core.QueryParam
              "searchString"
              Core.Text
    Core.:> Core.QueryParams "sizeIds" Core.Int64
    Core.:> Core.QueryParam
              "sortField"
              CreativesListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              CreativesListSortOrder
    Core.:> Core.QueryParam
              "studioCreativeId"
              Core.Int64
    Core.:> Core.QueryParams
              "types"
              CreativesListTypes
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
              CreativesListResponse

-- | Retrieves a list of creatives, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingCreativesList' smart constructor.
data DFAReportingCreativesList = DFAReportingCreativesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only active creatives. Leave blank to select active and inactive creatives.
    active :: (Core.Maybe Core.Bool),
    -- | Select only creatives with this advertiser ID.
    advertiserId :: (Core.Maybe Core.Int64),
    -- | Select only archived creatives. Leave blank to select archived and unarchived creatives.
    archived :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only creatives with this campaign ID.
    campaignId :: (Core.Maybe Core.Int64),
    -- | Select only in-stream video creatives with these companion IDs.
    companionCreativeIds :: (Core.Maybe [Core.Int64]),
    -- | Select only creatives with these creative field IDs.
    creativeFieldIds :: (Core.Maybe [Core.Int64]),
    -- | Select only creatives with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Select only creatives with these rendering IDs.
    renderingIds :: (Core.Maybe [Core.Int64]),
    -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"creative/2015\" will return objects with names like \"creative June 2015\", \"creative April 2015\", or simply \"creative 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"creative\" will match objects with name \"my creative\", \"creative 2015\", or simply \"creative\".
    searchString :: (Core.Maybe Core.Text),
    -- | Select only creatives with these size IDs.
    sizeIds :: (Core.Maybe [Core.Int64]),
    -- | Field by which to sort the list.
    sortField :: CreativesListSortField,
    -- | Order of sorted results.
    sortOrder :: CreativesListSortOrder,
    -- | Select only creatives corresponding to this Studio creative ID.
    studioCreativeId :: (Core.Maybe Core.Int64),
    -- | Select only creatives with these creative types.
    types :: (Core.Maybe [CreativesListTypes]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCreativesList' with the minimum fields required to make a request.
newDFAReportingCreativesList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCreativesList
newDFAReportingCreativesList profileId =
  DFAReportingCreativesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      active = Core.Nothing,
      advertiserId = Core.Nothing,
      archived = Core.Nothing,
      callback = Core.Nothing,
      campaignId = Core.Nothing,
      companionCreativeIds = Core.Nothing,
      creativeFieldIds = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      renderingIds = Core.Nothing,
      searchString = Core.Nothing,
      sizeIds = Core.Nothing,
      sortField = CreativesListSortField_ID,
      sortOrder = CreativesListSortOrder_Ascending,
      studioCreativeId = Core.Nothing,
      types = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingCreativesList where
  type
    Rs DFAReportingCreativesList =
      CreativesListResponse
  type
    Scopes DFAReportingCreativesList =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient DFAReportingCreativesList {..} =
    go
      profileId
      xgafv
      accessToken
      active
      advertiserId
      archived
      callback
      campaignId
      (companionCreativeIds Core.^. Core._Default)
      (creativeFieldIds Core.^. Core._Default)
      (ids Core.^. Core._Default)
      (Core.Just maxResults)
      pageToken
      (renderingIds Core.^. Core._Default)
      searchString
      (sizeIds Core.^. Core._Default)
      (Core.Just sortField)
      (Core.Just sortOrder)
      studioCreativeId
      (types Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingCreativesListResource
          )
          Core.mempty
