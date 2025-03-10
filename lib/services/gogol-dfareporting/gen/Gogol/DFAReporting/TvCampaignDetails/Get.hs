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
-- Module      : Gogol.DFAReporting.TvCampaignDetails.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one TvCampaignDetail by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.tvCampaignDetails.get@.
module Gogol.DFAReporting.TvCampaignDetails.Get
  ( -- * Resource
    DFAReportingTvCampaignDetailsGetResource,

    -- ** Constructing a Request
    DFAReportingTvCampaignDetailsGet (..),
    newDFAReportingTvCampaignDetailsGet,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.tvCampaignDetails.get@ method which the
-- 'DFAReportingTvCampaignDetailsGet' request conforms to.
type DFAReportingTvCampaignDetailsGetResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "tvCampaignDetails"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "accountId" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TvCampaignDetail

-- | Gets one TvCampaignDetail by ID.
--
-- /See:/ 'newDFAReportingTvCampaignDetailsGet' smart constructor.
data DFAReportingTvCampaignDetailsGet = DFAReportingTvCampaignDetailsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. Account ID associated with this request.
    accountId :: (Core.Maybe Core.Int64),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. TV Campaign ID.
    id :: Core.Text,
    -- | Required. User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingTvCampaignDetailsGet' with the minimum fields required to make a request.
newDFAReportingTvCampaignDetailsGet ::
  -- |  Required. TV Campaign ID. See 'id'.
  Core.Text ->
  -- |  Required. User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingTvCampaignDetailsGet
newDFAReportingTvCampaignDetailsGet id profileId =
  DFAReportingTvCampaignDetailsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingTvCampaignDetailsGet where
  type Rs DFAReportingTvCampaignDetailsGet = TvCampaignDetail
  type
    Scopes DFAReportingTvCampaignDetailsGet =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingTvCampaignDetailsGet {..} =
    go
      profileId
      id
      xgafv
      accessToken
      accountId
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DFAReportingTvCampaignDetailsGetResource)
          Core.mempty
