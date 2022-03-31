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
-- Module      : Gogol.DFAReporting.Reports.Files.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report file by its report ID and file ID. This method supports media download.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.files.get@.
module Gogol.DFAReporting.Reports.Files.Get
  ( -- * Resource
    DFAReportingReportsFilesGetResource,

    -- ** Constructing a Request
    newDFAReportingReportsFilesGet,
    DFAReportingReportsFilesGet,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.reports.files.get@ method which the
-- 'DFAReportingReportsFilesGet' request conforms to.
type DFAReportingReportsFilesGetResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "reports"
    Core.:> Core.Capture "reportId" Core.Int64
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] File
    Core.:<|> "dfareporting"
      Core.:> "v3.5"
      Core.:> "userprofiles"
      Core.:> Core.Capture "profileId" Core.Int64
      Core.:> "reports"
      Core.:> Core.Capture "reportId" Core.Int64
      Core.:> "files"
      Core.:> Core.Capture "fileId" Core.Int64
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltMedia
      Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Retrieves a report file by its report ID and file ID. This method supports media download.
--
-- /See:/ 'newDFAReportingReportsFilesGet' smart constructor.
data DFAReportingReportsFilesGet = DFAReportingReportsFilesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the report file.
    fileId :: Core.Int64,
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

-- | Creates a value of 'DFAReportingReportsFilesGet' with the minimum fields required to make a request.
newDFAReportingReportsFilesGet ::
  -- |  The ID of the report file. See 'fileId'.
  Core.Int64 ->
  -- |  The Campaign Manager 360 user profile ID. See 'profileId'.
  Core.Int64 ->
  -- |  The ID of the report. See 'reportId'.
  Core.Int64 ->
  DFAReportingReportsFilesGet
newDFAReportingReportsFilesGet fileId profileId reportId =
  DFAReportingReportsFilesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fileId = fileId,
      profileId = profileId,
      reportId = reportId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingReportsFilesGet
  where
  type Rs DFAReportingReportsFilesGet = File
  type
    Scopes DFAReportingReportsFilesGet =
      '[Dfareporting'FullControl]
  requestClient DFAReportingReportsFilesGet {..} =
    go
      profileId
      reportId
      fileId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingReportsFilesGetResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload DFAReportingReportsFilesGet)
  where
  type
    Rs
      (Core.MediaDownload DFAReportingReportsFilesGet) =
      Core.Stream
  type
    Scopes
      (Core.MediaDownload DFAReportingReportsFilesGet) =
      Core.Scopes DFAReportingReportsFilesGet
  requestClient
    (Core.MediaDownload DFAReportingReportsFilesGet {..}) =
      go
        profileId
        reportId
        fileId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltMedia)
        dFAReportingService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy DFAReportingReportsFilesGetResource
            )
            Core.mempty
