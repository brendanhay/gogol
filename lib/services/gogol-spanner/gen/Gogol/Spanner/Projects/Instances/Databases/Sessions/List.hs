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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all sessions in a given database.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.list@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.List
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsListResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesDatabasesSessionsList,
    SpannerProjectsInstancesDatabasesSessionsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.list@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsList' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsListResource =
  "v1"
    Core.:> Core.Capture "database" Core.Text
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

-- | Lists all sessions in a given database.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsList' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsList = SpannerProjectsInstancesDatabasesSessionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database in which to list sessions.
    database :: Core.Text,
    -- | An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are: * @labels.key@ where key is the name of a label Some examples of using filters are: * @labels.env:*@ --> The session has the label \"env\". * @labels.env:dev@ --> The session has the label \"env\" and the value of the label contains the string \"dev\".
    filter :: (Core.Maybe Core.Text),
    -- | Number of sessions to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListSessionsResponse.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsList' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsList ::
  -- |  Required. The database in which to list sessions. See 'database'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesSessionsList
newSpannerProjectsInstancesDatabasesSessionsList database =
  SpannerProjectsInstancesDatabasesSessionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      database = database,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesSessionsList
  where
  type
    Rs SpannerProjectsInstancesDatabasesSessionsList =
      ListSessionsResponse
  type
    Scopes
      SpannerProjectsInstancesDatabasesSessionsList =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient
    SpannerProjectsInstancesDatabasesSessionsList {..} =
      go
        database
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        spannerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SpannerProjectsInstancesDatabasesSessionsListResource
            )
            Core.mempty
