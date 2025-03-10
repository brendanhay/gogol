{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DFAReporting.DirectorySites.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of directory sites, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.directorySites.list@.
module Gogol.DFAReporting.DirectorySites.List
  ( -- * Resource
    DFAReportingDirectorySitesListResource,

    -- ** Constructing a Request
    DFAReportingDirectorySitesList (..),
    newDFAReportingDirectorySitesList,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.directorySites.list@ method which the
-- 'DFAReportingDirectorySitesList' request conforms to.
type DFAReportingDirectorySitesListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "directorySites"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "acceptsInStreamVideoPlacements" Core.Bool
    Core.:> Core.QueryParam "acceptsInterstitialPlacements" Core.Bool
    Core.:> Core.QueryParam "acceptsPublisherPaidPlacements" Core.Bool
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "active" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "dfpNetworkCode" Core.Text
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam "sortField" DirectorySitesListSortField
    Core.:> Core.QueryParam "sortOrder" DirectorySitesListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DirectorySitesListResponse

-- | Retrieves a list of directory sites, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingDirectorySitesList' smart constructor.
data DFAReportingDirectorySitesList = DFAReportingDirectorySitesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | This search filter is no longer supported and will have no effect on the results returned.
    acceptsInStreamVideoPlacements :: (Core.Maybe Core.Bool),
    -- | This search filter is no longer supported and will have no effect on the results returned.
    acceptsInterstitialPlacements :: (Core.Maybe Core.Bool),
    -- | Select only directory sites that accept publisher paid placements. This field can be left blank.
    acceptsPublisherPaidPlacements :: (Core.Maybe Core.Bool),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only active directory sites. Leave blank to retrieve both active and inactive directory sites.
    active :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only directory sites with this Ad Manager network code.
    dfpNetworkCode :: (Core.Maybe Core.Text),
    -- | Select only directory sites with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for objects by name, ID or URL. Wildcards (/) are allowed. For example, \"directory site/2015\" will return objects with names like \"directory site June 2015\", \"directory site April 2015\", or simply \"directory site 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"directory site\" will match objects with name \"my directory site\", \"directory site 2015\" or simply, \"directory site\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: DirectorySitesListSortField,
    -- | Order of sorted results.
    sortOrder :: DirectorySitesListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingDirectorySitesList' with the minimum fields required to make a request.
newDFAReportingDirectorySitesList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingDirectorySitesList
newDFAReportingDirectorySitesList profileId =
  DFAReportingDirectorySitesList
    { xgafv = Core.Nothing,
      acceptsInStreamVideoPlacements = Core.Nothing,
      acceptsInterstitialPlacements = Core.Nothing,
      acceptsPublisherPaidPlacements = Core.Nothing,
      accessToken = Core.Nothing,
      active = Core.Nothing,
      callback = Core.Nothing,
      dfpNetworkCode = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = DirectorySitesListSortField_ID,
      sortOrder = DirectorySitesListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingDirectorySitesList where
  type Rs DFAReportingDirectorySitesList = DirectorySitesListResponse
  type
    Scopes DFAReportingDirectorySitesList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingDirectorySitesList {..} =
    go
      profileId
      xgafv
      acceptsInStreamVideoPlacements
      acceptsInterstitialPlacements
      acceptsPublisherPaidPlacements
      accessToken
      active
      callback
      dfpNetworkCode
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
          (Core.Proxy :: Core.Proxy DFAReportingDirectorySitesListResource)
          Core.mempty
