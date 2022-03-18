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
-- Module      : Network.Google.DFAReporting.CampaignCreativeAssociations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of creative IDs associated with the specified campaign. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaignCreativeAssociations.list@.
module Network.Google.DFAReporting.CampaignCreativeAssociations.List
  ( -- * Resource
    DFAReportingCampaignCreativeAssociationsListResource,

    -- ** Constructing a Request
    newDFAReportingCampaignCreativeAssociationsList,
    DFAReportingCampaignCreativeAssociationsList,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.campaignCreativeAssociations.list@ method which the
-- 'DFAReportingCampaignCreativeAssociationsList' request conforms to.
type DFAReportingCampaignCreativeAssociationsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "campaigns"
    Core.:> Core.Capture "campaignId" Core.Int64
    Core.:> "campaignCreativeAssociations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "sortOrder"
              CampaignCreativeAssociationsListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              CampaignCreativeAssociationsListResponse

-- | Retrieves the list of creative IDs associated with the specified campaign. This method supports paging.
--
-- /See:/ 'newDFAReportingCampaignCreativeAssociationsList' smart constructor.
data DFAReportingCampaignCreativeAssociationsList = DFAReportingCampaignCreativeAssociationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Campaign ID in this association.
    campaignId :: Core.Int64,
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Order of sorted results.
    sortOrder :: CampaignCreativeAssociationsListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCampaignCreativeAssociationsList' with the minimum fields required to make a request.
newDFAReportingCampaignCreativeAssociationsList ::
  -- |  Campaign ID in this association. See 'campaignId'.
  Core.Int64 ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCampaignCreativeAssociationsList
newDFAReportingCampaignCreativeAssociationsList campaignId profileId =
  DFAReportingCampaignCreativeAssociationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      campaignId = campaignId,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      sortOrder = CampaignCreativeAssociationsListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingCampaignCreativeAssociationsList
  where
  type
    Rs DFAReportingCampaignCreativeAssociationsList =
      CampaignCreativeAssociationsListResponse
  type
    Scopes
      DFAReportingCampaignCreativeAssociationsList =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient
    DFAReportingCampaignCreativeAssociationsList {..} =
      go
        profileId
        campaignId
        xgafv
        accessToken
        callback
        (Core.Just maxResults)
        pageToken
        (Core.Just sortOrder)
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dFAReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DFAReportingCampaignCreativeAssociationsListResource
            )
            Core.mempty
