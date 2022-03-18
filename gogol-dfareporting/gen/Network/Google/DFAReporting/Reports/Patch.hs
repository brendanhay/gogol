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
-- Module      : Network.Google.DFAReporting.Reports.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing report. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.patch@.
module Network.Google.DFAReporting.Reports.Patch
  ( -- * Resource
    DFAReportingReportsPatchResource,

    -- ** Constructing a Request
    newDFAReportingReportsPatch,
    DFAReportingReportsPatch,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.reports.patch@ method which the
-- 'DFAReportingReportsPatch' request conforms to.
type DFAReportingReportsPatchResource =
  "dfareporting"
    Core.:> "v3.5"
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
    Core.:> Core.ReqBody '[Core.JSON] Report
    Core.:> Core.Patch '[Core.JSON] Report

-- | Updates an existing report. This method supports patch semantics.
--
-- /See:/ 'newDFAReportingReportsPatch' smart constructor.
data DFAReportingReportsPatch = DFAReportingReportsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Report,
    -- | The DFA user profile ID.
    profileId :: Core.Int64,
    -- | The ID of the report.
    reportId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingReportsPatch' with the minimum fields required to make a request.
newDFAReportingReportsPatch ::
  -- |  Multipart request metadata. See 'payload'.
  Report ->
  -- |  The DFA user profile ID. See 'profileId'.
  Core.Int64 ->
  -- |  The ID of the report. See 'reportId'.
  Core.Int64 ->
  DFAReportingReportsPatch
newDFAReportingReportsPatch payload profileId reportId =
  DFAReportingReportsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      profileId = profileId,
      reportId = reportId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingReportsPatch where
  type Rs DFAReportingReportsPatch = Report
  type
    Scopes DFAReportingReportsPatch =
      '["https://www.googleapis.com/auth/dfareporting"]
  requestClient DFAReportingReportsPatch {..} =
    go
      profileId
      reportId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingReportsPatchResource
          )
          Core.mempty
