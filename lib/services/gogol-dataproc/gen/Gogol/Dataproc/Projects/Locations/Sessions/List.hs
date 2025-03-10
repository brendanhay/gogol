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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists interactive sessions.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.list@.
module Gogol.Dataproc.Projects.Locations.Sessions.List
  ( -- * Resource
    DataprocProjectsLocationsSessionsListResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsSessionsList (..),
    newDataprocProjectsLocationsSessionsList,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.sessions.list@ method which the
-- 'DataprocProjectsLocationsSessionsList' request conforms to.
type DataprocProjectsLocationsSessionsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "sessions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSessionsResponse

-- | Lists interactive sessions.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsList' smart constructor.
data DataprocProjectsLocationsSessionsList = DataprocProjectsLocationsSessionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A filter for the sessions to return in the response.A filter is a logical expression constraining the values of various fields in each session resource. Filters are case sensitive, and may contain multiple clauses combined with logical operators (AND, OR). Supported fields are session/id, session/uuid, state, create/time, and labels.Example: state = ACTIVE and create/time \< \"2023-01-01T00:00:00Z\" is a filter for sessions in an ACTIVE state that were created before 2023-01-01. state = ACTIVE and labels.environment=production is a filter for sessions in an ACTIVE state that have a production environment label.See https:\/\/google.aip.dev\/assets\/misc\/ebnf-filtering.txt for a detailed description of the filter syntax and a list of supported comparators.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of sessions to return in each response. The service may return fewer than this value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token received from a previous ListSessions call. Provide this token to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent, which owns this collection of sessions.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsList' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsList ::
  -- |  Required. The parent, which owns this collection of sessions. See 'parent'.
  Core.Text ->
  DataprocProjectsLocationsSessionsList
newDataprocProjectsLocationsSessionsList parent =
  DataprocProjectsLocationsSessionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataprocProjectsLocationsSessionsList where
  type
    Rs DataprocProjectsLocationsSessionsList =
      ListSessionsResponse
  type
    Scopes DataprocProjectsLocationsSessionsList =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsLocationsSessionsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataprocService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataprocProjectsLocationsSessionsListResource
          )
          Core.mempty
