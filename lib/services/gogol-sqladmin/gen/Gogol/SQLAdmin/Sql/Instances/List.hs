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
-- Module      : Gogol.SQLAdmin.Sql.Instances.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists instances under a given project.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.list@.
module Gogol.SQLAdmin.Sql.Instances.List
  ( -- * Resource
    SqlInstancesListResource,

    -- ** Constructing a Request
    SqlInstancesList (..),
    newSqlInstancesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.list@ method which the
-- 'SqlInstancesList' request conforms to.
type SqlInstancesListResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InstancesListResponse

-- | Lists instances under a given project.
--
-- /See:/ 'newSqlInstancesList' smart constructor.
data SqlInstancesList = SqlInstancesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter expression that filters resources listed in the response. The expression is in the form of field:value. For example, \'instanceType:CLOUD/SQL/INSTANCE\'. Fields can be nested as needed as per their JSON representation, such as \'settings.userLabels.auto/start:true\'. Multiple filter queries are space-separated. For example. \'state:RUNNABLE instanceType:CLOUD/SQL_INSTANCE\'. By default, each expression is an AND expression. However, you can include AND and OR expressions explicitly.
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of instances to return. The service may return fewer than this value. If unspecified, at most 500 instances are returned. The maximum value is 1000; values above 1000 are coerced to 1000.
    maxResults :: (Core.Maybe Core.Word32),
    -- | A previously-returned page token representing part of the larger set of results to view.
    pageToken :: (Core.Maybe Core.Text),
    -- | Project ID of the project for which to list Cloud SQL instances.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesList' with the minimum fields required to make a request.
newSqlInstancesList ::
  -- |  Project ID of the project for which to list Cloud SQL instances. See 'project'.
  Core.Text ->
  SqlInstancesList
newSqlInstancesList project =
  SqlInstancesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesList where
  type Rs SqlInstancesList = InstancesListResponse
  type
    Scopes SqlInstancesList =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlInstancesList {..} =
    go
      project
      xgafv
      accessToken
      callback
      filter
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlInstancesListResource)
          Core.mempty
