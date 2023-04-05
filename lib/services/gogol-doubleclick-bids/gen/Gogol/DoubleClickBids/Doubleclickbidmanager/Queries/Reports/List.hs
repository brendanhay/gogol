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
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Reports.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists reports associated with a query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.reports.list@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Reports.List
  ( -- * Resource
    DoubleclickbidmanagerQueriesReportsListResource,

    -- ** Constructing a Request
    DoubleclickbidmanagerQueriesReportsList (..),
    newDoubleclickbidmanagerQueriesReportsList,
  )
where

import Gogol.DoubleClickBids.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @doubleclickbidmanager.queries.reports.list@ method which the
-- 'DoubleclickbidmanagerQueriesReportsList' request conforms to.
type DoubleclickbidmanagerQueriesReportsListResource =
  "v2"
    Core.:> "queries"
    Core.:> Core.Capture "queryId" Core.Int64
    Core.:> "reports"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListReportsResponse

-- | Lists reports associated with a query.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesReportsList' smart constructor.
data DoubleclickbidmanagerQueriesReportsList = DoubleclickbidmanagerQueriesReportsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of a field used to order results. The default sorting order is ascending. To specify descending order for a field, append a \" desc\" suffix. For example \"key.reportId desc\". Sorting is only supported for the following fields: * @key.reportId@
    orderBy :: (Core.Maybe Core.Text),
    -- | Maximum number of results per page. Must be between @1@ and @100@. Defaults to @100@ if unspecified.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous list call. Provide this to retrieve the subsequent page of reports.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. ID of the query with which the reports are associated.
    queryId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerQueriesReportsList' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesReportsList ::
  -- |  Required. ID of the query with which the reports are associated. See 'queryId'.
  Core.Int64 ->
  DoubleclickbidmanagerQueriesReportsList
newDoubleclickbidmanagerQueriesReportsList queryId =
  DoubleclickbidmanagerQueriesReportsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      queryId = queryId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleclickbidmanagerQueriesReportsList
  where
  type
    Rs DoubleclickbidmanagerQueriesReportsList =
      ListReportsResponse
  type
    Scopes DoubleclickbidmanagerQueriesReportsList =
      '[Doubleclickbidmanager'FullControl]
  requestClient
    DoubleclickbidmanagerQueriesReportsList {..} =
      go
        queryId
        xgafv
        accessToken
        callback
        orderBy
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        doubleClickBidsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DoubleclickbidmanagerQueriesReportsListResource
            )
            Core.mempty
