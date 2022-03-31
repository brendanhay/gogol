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
-- Module      : Gogol.DFAReporting.Sites.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of sites, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.sites.list@.
module Gogol.DFAReporting.Sites.List
  ( -- * Resource
    DFAReportingSitesListResource,

    -- ** Constructing a Request
    newDFAReportingSitesList,
    DFAReportingSitesList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.sites.list@ method which the
-- 'DFAReportingSitesList' request conforms to.
type DFAReportingSitesListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "sites"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam
              "acceptsInStreamVideoPlacements"
              Core.Bool
    Core.:> Core.QueryParam
              "acceptsInterstitialPlacements"
              Core.Bool
    Core.:> Core.QueryParam
              "acceptsPublisherPaidPlacements"
              Core.Bool
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "adWordsSite" Core.Bool
    Core.:> Core.QueryParam "approved" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "campaignIds" Core.Int64
    Core.:> Core.QueryParams "directorySiteIds" Core.Int64
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "searchString"
              Core.Text
    Core.:> Core.QueryParam
              "sortField"
              SitesListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              SitesListSortOrder
    Core.:> Core.QueryParam
              "subaccountId"
              Core.Int64
    Core.:> Core.QueryParam
              "unmappedSite"
              Core.Bool
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
              SitesListResponse

-- | Retrieves a list of sites, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingSitesList' smart constructor.
data DFAReportingSitesList = DFAReportingSitesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | This search filter is no longer supported and will have no effect on the results returned.
    acceptsInStreamVideoPlacements :: (Core.Maybe Core.Bool),
    -- | This search filter is no longer supported and will have no effect on the results returned.
    acceptsInterstitialPlacements :: (Core.Maybe Core.Bool),
    -- | Select only sites that accept publisher paid placements.
    acceptsPublisherPaidPlacements :: (Core.Maybe Core.Bool),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only AdWords sites.
    adWordsSite :: (Core.Maybe Core.Bool),
    -- | Select only approved sites.
    approved :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only sites with these campaign IDs.
    campaignIds :: (Core.Maybe [Core.Int64]),
    -- | Select only sites with these directory site IDs.
    directorySiteIds :: (Core.Maybe [Core.Int64]),
    -- | Select only sites with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for objects by name, ID or keyName. Wildcards (/) are allowed. For example, \"site/2015\" will return objects with names like \"site June 2015\", \"site April 2015\", or simply \"site 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"site\" will match objects with name \"my site\", \"site 2015\", or simply \"site\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: SitesListSortField,
    -- | Order of sorted results.
    sortOrder :: SitesListSortOrder,
    -- | Select only sites with this subaccount ID.
    subaccountId :: (Core.Maybe Core.Int64),
    -- | Select only sites that have not been mapped to a directory site.
    unmappedSite :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingSitesList' with the minimum fields required to make a request.
newDFAReportingSitesList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingSitesList
newDFAReportingSitesList profileId =
  DFAReportingSitesList
    { xgafv = Core.Nothing,
      acceptsInStreamVideoPlacements = Core.Nothing,
      acceptsInterstitialPlacements = Core.Nothing,
      acceptsPublisherPaidPlacements = Core.Nothing,
      accessToken = Core.Nothing,
      adWordsSite = Core.Nothing,
      approved = Core.Nothing,
      callback = Core.Nothing,
      campaignIds = Core.Nothing,
      directorySiteIds = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = SitesListSortField_ID,
      sortOrder = SitesListSortOrder_Ascending,
      subaccountId = Core.Nothing,
      unmappedSite = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingSitesList where
  type Rs DFAReportingSitesList = SitesListResponse
  type
    Scopes DFAReportingSitesList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingSitesList {..} =
    go
      profileId
      xgafv
      acceptsInStreamVideoPlacements
      acceptsInterstitialPlacements
      acceptsPublisherPaidPlacements
      accessToken
      adWordsSite
      approved
      callback
      (campaignIds Core.^. Core._Default)
      (directorySiteIds Core.^. Core._Default)
      (ids Core.^. Core._Default)
      (Core.Just maxResults)
      pageToken
      searchString
      (Core.Just sortField)
      (Core.Just sortOrder)
      subaccountId
      unmappedSite
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingSitesListResource
          )
          Core.mempty
