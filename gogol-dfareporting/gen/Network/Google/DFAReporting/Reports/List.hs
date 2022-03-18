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
-- Module      : Network.Google.DFAReporting.Reports.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves list of reports.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.list@.
module Network.Google.DFAReporting.Reports.List
  ( -- * Resource
    DFAReportingReportsListResource,

    -- ** Constructing a Request
    newDFAReportingReportsList,
    DFAReportingReportsList,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.reports.list@ method which the
-- 'DFAReportingReportsList' request conforms to.
type DFAReportingReportsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "reports"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "scope" ReportsListScope
    Core.:> Core.QueryParam "sortField" ReportsListSortField
    Core.:> Core.QueryParam "sortOrder" ReportsListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ReportList

-- | Retrieves list of reports.
--
-- /See:/ 'newDFAReportingReportsList' smart constructor.
data DFAReportingReportsList = DFAReportingReportsList
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
    -- | The scope that defines which results are returned.
    scope :: ReportsListScope,
    -- | The field by which to sort the list.
    sortField :: ReportsListSortField,
    -- | Order of sorted results.
    sortOrder :: ReportsListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingReportsList' with the minimum fields required to make a request.
newDFAReportingReportsList ::
  -- |  The Campaign Manager 360 user profile ID. See 'profileId'.
  Core.Int64 ->
  DFAReportingReportsList
newDFAReportingReportsList profileId =
  DFAReportingReportsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = 10,
      pageToken = Core.Nothing,
      profileId = profileId,
      scope = ReportsListScope_Mine,
      sortField = ReportsListSortField_LASTMODIFIEDTIME,
      sortOrder = ReportsListSortOrder_Descending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingReportsList where
  type Rs DFAReportingReportsList = ReportList
  type
    Scopes DFAReportingReportsList =
      '["https://www.googleapis.com/auth/dfareporting"]
  requestClient DFAReportingReportsList {..} =
    go
      profileId
      xgafv
      accessToken
      callback
      (Core.Just maxResults)
      pageToken
      (Core.Just scope)
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
              Core.Proxy DFAReportingReportsListResource
          )
          Core.mempty
