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
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Reports.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.reports.get@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Reports.Get
  ( -- * Resource
    DoubleclickbidmanagerQueriesReportsGetResource,

    -- ** Constructing a Request
    DoubleclickbidmanagerQueriesReportsGet (..),
    newDoubleclickbidmanagerQueriesReportsGet,
  )
where

import Gogol.DoubleClickBids.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @doubleclickbidmanager.queries.reports.get@ method which the
-- 'DoubleclickbidmanagerQueriesReportsGet' request conforms to.
type DoubleclickbidmanagerQueriesReportsGetResource =
  "v2"
    Core.:> "queries"
    Core.:> Core.Capture "queryId" Core.Int64
    Core.:> "reports"
    Core.:> Core.Capture "reportId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Report

-- | Retrieves a report.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesReportsGet' smart constructor.
data DoubleclickbidmanagerQueriesReportsGet = DoubleclickbidmanagerQueriesReportsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. ID of the query the report is associated with.
    queryId :: Core.Int64,
    -- | Required. ID of the report to retrieve.
    reportId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerQueriesReportsGet' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesReportsGet ::
  -- |  Required. ID of the query the report is associated with. See 'queryId'.
  Core.Int64 ->
  -- |  Required. ID of the report to retrieve. See 'reportId'.
  Core.Int64 ->
  DoubleclickbidmanagerQueriesReportsGet
newDoubleclickbidmanagerQueriesReportsGet queryId reportId =
  DoubleclickbidmanagerQueriesReportsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      queryId = queryId,
      reportId = reportId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleclickbidmanagerQueriesReportsGet
  where
  type
    Rs DoubleclickbidmanagerQueriesReportsGet =
      Report
  type
    Scopes DoubleclickbidmanagerQueriesReportsGet =
      '[Doubleclickbidmanager'FullControl]
  requestClient
    DoubleclickbidmanagerQueriesReportsGet {..} =
      go
        queryId
        reportId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        doubleClickBidsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DoubleclickbidmanagerQueriesReportsGetResource
            )
            Core.mempty
