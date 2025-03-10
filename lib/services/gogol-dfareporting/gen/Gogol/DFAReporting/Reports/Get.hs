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
-- Module      : Gogol.DFAReporting.Reports.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report by its ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.get@.
module Gogol.DFAReporting.Reports.Get
  ( -- * Resource
    DFAReportingReportsGetResource,

    -- ** Constructing a Request
    DFAReportingReportsGet (..),
    newDFAReportingReportsGet,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.reports.get@ method which the
-- 'DFAReportingReportsGet' request conforms to.
type DFAReportingReportsGetResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "reports"
    Core.:> Core.Capture "reportId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Report

-- | Retrieves a report by its ID.
--
-- /See:/ 'newDFAReportingReportsGet' smart constructor.
data DFAReportingReportsGet = DFAReportingReportsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The Campaign Manager 360 user profile ID.
    profileId :: Core.Int64,
    -- | The ID of the report.
    reportId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingReportsGet' with the minimum fields required to make a request.
newDFAReportingReportsGet ::
  -- |  The Campaign Manager 360 user profile ID. See 'profileId'.
  Core.Int64 ->
  -- |  The ID of the report. See 'reportId'.
  Core.Int64 ->
  DFAReportingReportsGet
newDFAReportingReportsGet profileId reportId =
  DFAReportingReportsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      profileId = profileId,
      reportId = reportId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingReportsGet where
  type Rs DFAReportingReportsGet = Report
  type Scopes DFAReportingReportsGet = '[Dfareporting'FullControl]
  requestClient DFAReportingReportsGet {..} =
    go
      profileId
      reportId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DFAReportingReportsGetResource)
          Core.mempty
