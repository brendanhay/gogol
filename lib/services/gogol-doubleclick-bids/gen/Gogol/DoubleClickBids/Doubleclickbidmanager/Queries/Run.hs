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
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Run
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a stored query to generate a report.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.run@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Run
  ( -- * Resource
    DoubleclickbidmanagerQueriesRunResource,

    -- ** Constructing a Request
    DoubleclickbidmanagerQueriesRun (..),
    newDoubleclickbidmanagerQueriesRun,
  )
where

import Gogol.DoubleClickBids.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @doubleclickbidmanager.queries.run@ method which the
-- 'DoubleclickbidmanagerQueriesRun' request conforms to.
type DoubleclickbidmanagerQueriesRunResource =
  "v2"
    Core.:> "queries"
    Core.:> Core.CaptureMode "queryId" "run" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "synchronous" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RunQueryRequest
    Core.:> Core.Post '[Core.JSON] Report

-- | Runs a stored query to generate a report.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesRun' smart constructor.
data DoubleclickbidmanagerQueriesRun = DoubleclickbidmanagerQueriesRun
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RunQueryRequest,
    -- | Required. ID of query to run.
    queryId :: Core.Int64,
    -- | Whether the query should be run synchronously. When true, this method will not return until the query has finished running. When false or not specified, this method will return immediately.
    synchronous :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerQueriesRun' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesRun ::
  -- |  Multipart request metadata. See 'payload'.
  RunQueryRequest ->
  -- |  Required. ID of query to run. See 'queryId'.
  Core.Int64 ->
  DoubleclickbidmanagerQueriesRun
newDoubleclickbidmanagerQueriesRun payload queryId =
  DoubleclickbidmanagerQueriesRun
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      queryId = queryId,
      synchronous = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleclickbidmanagerQueriesRun
  where
  type Rs DoubleclickbidmanagerQueriesRun = Report
  type
    Scopes DoubleclickbidmanagerQueriesRun =
      '[Doubleclickbidmanager'FullControl]
  requestClient DoubleclickbidmanagerQueriesRun {..} =
    go
      queryId
      xgafv
      accessToken
      callback
      synchronous
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      doubleClickBidsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DoubleclickbidmanagerQueriesRunResource
          )
          Core.mempty
