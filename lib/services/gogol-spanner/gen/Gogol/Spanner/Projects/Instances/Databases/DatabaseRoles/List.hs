{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.DatabaseRoles.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Cloud Spanner database roles.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.databaseRoles.list@.
module Gogol.Spanner.Projects.Instances.Databases.DatabaseRoles.List
  ( -- * Resource
    SpannerProjectsInstancesDatabasesDatabaseRolesListResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesDatabaseRolesList (..),
    newSpannerProjectsInstancesDatabasesDatabaseRolesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.databaseRoles.list@ method which the
-- 'SpannerProjectsInstancesDatabasesDatabaseRolesList' request conforms to.
type SpannerProjectsInstancesDatabasesDatabaseRolesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "databaseRoles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDatabaseRolesResponse

-- | Lists Cloud Spanner database roles.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesDatabaseRolesList' smart constructor.
data SpannerProjectsInstancesDatabasesDatabaseRolesList = SpannerProjectsInstancesDatabasesDatabaseRolesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number of database roles to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListDatabaseRolesResponse.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The database whose roles should be listed. Values are of the form @projects\/\/instances\/\/databases\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesDatabaseRolesList' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesDatabaseRolesList ::
  -- |  Required. The database whose roles should be listed. Values are of the form @projects\/\/instances\/\/databases\/@. See 'parent'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesDatabaseRolesList
newSpannerProjectsInstancesDatabasesDatabaseRolesList parent =
  SpannerProjectsInstancesDatabasesDatabaseRolesList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesDatabaseRolesList
  where
  type
    Rs SpannerProjectsInstancesDatabasesDatabaseRolesList =
      ListDatabaseRolesResponse
  type
    Scopes SpannerProjectsInstancesDatabasesDatabaseRolesList =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesDatabasesDatabaseRolesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                  SpannerProjectsInstancesDatabasesDatabaseRolesListResource
            )
            Core.mempty
