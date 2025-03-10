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
-- Module      : Gogol.DoubleClickSearch.Reports.Request
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a report request into the reporting system.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.reports.request@.
module Gogol.DoubleClickSearch.Reports.Request
  ( -- * Resource
    DoubleClickSearchReportsRequestResource,

    -- ** Constructing a Request
    DoubleClickSearchReportsRequest (..),
    newDoubleClickSearchReportsRequest,
  )
where

import Gogol.DoubleClickSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @doubleclicksearch.reports.request@ method which the
-- 'DoubleClickSearchReportsRequest' request conforms to.
type DoubleClickSearchReportsRequestResource =
  "doubleclicksearch"
    Core.:> "v2"
    Core.:> "reports"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReportRequest
    Core.:> Core.Post '[Core.JSON] Report

-- | Inserts a report request into the reporting system.
--
-- /See:/ 'newDoubleClickSearchReportsRequest' smart constructor.
data DoubleClickSearchReportsRequest = DoubleClickSearchReportsRequest
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ReportRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleClickSearchReportsRequest' with the minimum fields required to make a request.
newDoubleClickSearchReportsRequest ::
  -- |  Multipart request metadata. See 'payload'.
  ReportRequest ->
  DoubleClickSearchReportsRequest
newDoubleClickSearchReportsRequest payload =
  DoubleClickSearchReportsRequest
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DoubleClickSearchReportsRequest where
  type Rs DoubleClickSearchReportsRequest = Report
  type
    Scopes DoubleClickSearchReportsRequest =
      '[Doubleclicksearch'FullControl]
  requestClient DoubleClickSearchReportsRequest {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      doubleClickSearchService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DoubleClickSearchReportsRequestResource)
          Core.mempty
