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
-- Module      : Gogol.DoubleClickSearch.Reports.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Polls for the status of a report request.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.reports.get@.
module Gogol.DoubleClickSearch.Reports.Get
  ( -- * Resource
    DoubleClickSearchReportsGetResource,

    -- ** Constructing a Request
    DoubleClickSearchReportsGet (..),
    newDoubleClickSearchReportsGet,
  )
where

import Gogol.DoubleClickSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @doubleclicksearch.reports.get@ method which the
-- 'DoubleClickSearchReportsGet' request conforms to.
type DoubleClickSearchReportsGetResource =
  "doubleclicksearch"
    Core.:> "v2"
    Core.:> "reports"
    Core.:> Core.Capture "reportId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Report

-- | Polls for the status of a report request.
--
-- /See:/ 'newDoubleClickSearchReportsGet' smart constructor.
data DoubleClickSearchReportsGet = DoubleClickSearchReportsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ID of the report request being polled.
    reportId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleClickSearchReportsGet' with the minimum fields required to make a request.
newDoubleClickSearchReportsGet ::
  -- |  ID of the report request being polled. See 'reportId'.
  Core.Text ->
  DoubleClickSearchReportsGet
newDoubleClickSearchReportsGet reportId =
  DoubleClickSearchReportsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      reportId = reportId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DoubleClickSearchReportsGet where
  type Rs DoubleClickSearchReportsGet = Report
  type
    Scopes DoubleClickSearchReportsGet =
      '[Doubleclicksearch'FullControl]
  requestClient DoubleClickSearchReportsGet {..} =
    go
      reportId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      doubleClickSearchService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DoubleClickSearchReportsGetResource)
          Core.mempty
