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
-- Module      : Gogol.DFAReporting.AdvertiserLandingPages.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of landing pages.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserLandingPages.list@.
module Gogol.DFAReporting.AdvertiserLandingPages.List
  ( -- * Resource
    DFAReportingAdvertiserLandingPagesListResource,

    -- ** Constructing a Request
    DFAReportingAdvertiserLandingPagesList (..),
    newDFAReportingAdvertiserLandingPagesList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.advertiserLandingPages.list@ method which the
-- 'DFAReportingAdvertiserLandingPagesList' request conforms to.
type DFAReportingAdvertiserLandingPagesListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "advertiserLandingPages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "advertiserIds" Core.Int64
    Core.:> Core.QueryParam "archived" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "campaignIds" Core.Int64
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              AdvertiserLandingPagesListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              AdvertiserLandingPagesListSortOrder
    Core.:> Core.QueryParam "subaccountId" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              AdvertiserLandingPagesListResponse

-- | Retrieves a list of landing pages.
--
-- /See:/ 'newDFAReportingAdvertiserLandingPagesList' smart constructor.
data DFAReportingAdvertiserLandingPagesList = DFAReportingAdvertiserLandingPagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only landing pages that belong to these advertisers.
    advertiserIds :: (Core.Maybe [Core.Int64]),
    -- | Select only archived landing pages. Don\'t set this field to select both archived and non-archived landing pages.
    archived :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only landing pages that are associated with these campaigns.
    campaignIds :: (Core.Maybe [Core.Int64]),
    -- | Select only landing pages with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for landing pages by name or ID. Wildcards (/) are allowed. For example, \"landingpage/2017\" will return landing pages with names like \"landingpage July 2017\", \"landingpage March 2017\", or simply \"landingpage 2017\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"landingpage\" will match campaigns with name \"my landingpage\", \"landingpage 2015\", or simply \"landingpage\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: AdvertiserLandingPagesListSortField,
    -- | Order of sorted results.
    sortOrder :: AdvertiserLandingPagesListSortOrder,
    -- | Select only landing pages that belong to this subaccount.
    subaccountId :: (Core.Maybe Core.Int64),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingAdvertiserLandingPagesList' with the minimum fields required to make a request.
newDFAReportingAdvertiserLandingPagesList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingAdvertiserLandingPagesList
newDFAReportingAdvertiserLandingPagesList profileId =
  DFAReportingAdvertiserLandingPagesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserIds = Core.Nothing,
      archived = Core.Nothing,
      callback = Core.Nothing,
      campaignIds = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = AdvertiserLandingPagesListSortField_ID,
      sortOrder = AdvertiserLandingPagesListSortOrder_Ascending,
      subaccountId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingAdvertiserLandingPagesList
  where
  type
    Rs DFAReportingAdvertiserLandingPagesList =
      AdvertiserLandingPagesListResponse
  type
    Scopes DFAReportingAdvertiserLandingPagesList =
      '[Dfatrafficking'FullControl]
  requestClient
    DFAReportingAdvertiserLandingPagesList {..} =
      go
        profileId
        xgafv
        accessToken
        (advertiserIds Core.^. Core._Default)
        archived
        callback
        (campaignIds Core.^. Core._Default)
        (ids Core.^. Core._Default)
        (Core.Just maxResults)
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
                Core.Proxy
                  DFAReportingAdvertiserLandingPagesListResource
            )
            Core.mempty
