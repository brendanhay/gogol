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
-- Module      : Gogol.DFAReporting.Reports.Files.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists files for a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.files.list@.
module Gogol.DFAReporting.Reports.Files.List
  ( -- * Resource
    DFAReportingReportsFilesListResource,

    -- ** Constructing a Request
    DFAReportingReportsFilesList (..),
    newDFAReportingReportsFilesList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.reports.files.list@ method which the
-- 'DFAReportingReportsFilesList' request conforms to.
type DFAReportingReportsFilesListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "reports"
    Core.:> Core.Capture "reportId" Core.Int64
    Core.:> "files"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              ReportsFilesListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              ReportsFilesListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FileList

-- | Lists files for a report.
--
-- /See:/ 'newDFAReportingReportsFilesList' smart constructor.
data DFAReportingReportsFilesList = DFAReportingReportsFilesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | The value of the nextToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | The Campaign Manager 360 user profile ID.
    profileId :: Core.Int64,
    -- | The ID of the parent report.
    reportId :: Core.Int64,
    -- | The field by which to sort the list.
    sortField :: ReportsFilesListSortField,
    -- | Order of sorted results.
    sortOrder :: ReportsFilesListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingReportsFilesList' with the minimum fields required to make a request.
newDFAReportingReportsFilesList ::
  -- |  The Campaign Manager 360 user profile ID. See 'profileId'.
  Core.Int64 ->
  -- |  The ID of the parent report. See 'reportId'.
  Core.Int64 ->
  DFAReportingReportsFilesList
newDFAReportingReportsFilesList profileId reportId =
  DFAReportingReportsFilesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = 10,
      pageToken = Core.Nothing,
      profileId = profileId,
      reportId = reportId,
      sortField = ReportsFilesListSortField_LASTMODIFIEDTIME,
      sortOrder = ReportsFilesListSortOrder_Descending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingReportsFilesList
  where
  type Rs DFAReportingReportsFilesList = FileList
  type
    Scopes DFAReportingReportsFilesList =
      '[Dfareporting'FullControl]
  requestClient DFAReportingReportsFilesList {..} =
    go
      profileId
      reportId
      xgafv
      accessToken
      callback
      (Core.Just maxResults)
      pageToken
      (Core.Just sortField)
      (Core.Just sortOrder)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingReportsFilesListResource
          )
          Core.mempty
