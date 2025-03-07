{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.DFAReporting.TvCampaignSummaries.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of TV campaign summaries.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.tvCampaignSummaries.list@.
module Gogol.DFAReporting.TvCampaignSummaries.List
  ( -- * Resource
    DFAReportingTvCampaignSummariesListResource,

    -- ** Constructing a Request
    DFAReportingTvCampaignSummariesList (..),
    newDFAReportingTvCampaignSummariesList,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.tvCampaignSummaries.list@ method which the
-- 'DFAReportingTvCampaignSummariesList' request conforms to.
type DFAReportingTvCampaignSummariesListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "tvCampaignSummaries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "accountId" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TvCampaignSummariesListResponse

-- | Retrieves a list of TV campaign summaries.
--
-- /See:/ 'newDFAReportingTvCampaignSummariesList' smart constructor.
data DFAReportingTvCampaignSummariesList = DFAReportingTvCampaignSummariesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. Account ID associated with this request.
    accountId :: (Core.Maybe Core.Int64),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Search string to filter the list of TV campaign summaries. Matches any substring. Required field.
    name :: (Core.Maybe Core.Text),
    -- | Required. User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingTvCampaignSummariesList' with the minimum fields required to make a request.
newDFAReportingTvCampaignSummariesList ::
  -- |  Required. User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingTvCampaignSummariesList
newDFAReportingTvCampaignSummariesList profileId =
  DFAReportingTvCampaignSummariesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = Core.Nothing,
      callback = Core.Nothing,
      name = Core.Nothing,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingTvCampaignSummariesList where
  type
    Rs DFAReportingTvCampaignSummariesList =
      TvCampaignSummariesListResponse
  type
    Scopes DFAReportingTvCampaignSummariesList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingTvCampaignSummariesList {..} =
    go
      profileId
      xgafv
      accessToken
      accountId
      callback
      name
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingTvCampaignSummariesListResource
          )
          Core.mempty
