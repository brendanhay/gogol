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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.DropDatabase
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Drops (aka deletes) a Cloud Spanner database. Completed backups for the database will be retained according to their @expire_time@. Note: Cloud Spanner might continue to accept requests for a few seconds after the database has been deleted.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.dropDatabase@.
module Gogol.Spanner.Projects.Instances.Databases.DropDatabase
  ( -- * Resource
    SpannerProjectsInstancesDatabasesDropDatabaseResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesDropDatabase (..),
    newSpannerProjectsInstancesDatabasesDropDatabase,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.dropDatabase@ method which the
-- 'SpannerProjectsInstancesDatabasesDropDatabase' request conforms to.
type SpannerProjectsInstancesDatabasesDropDatabaseResource =
  "v1"
    Core.:> Core.Capture "database" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Drops (aka deletes) a Cloud Spanner database. Completed backups for the database will be retained according to their @expire_time@. Note: Cloud Spanner might continue to accept requests for a few seconds after the database has been deleted.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesDropDatabase' smart constructor.
data SpannerProjectsInstancesDatabasesDropDatabase = SpannerProjectsInstancesDatabasesDropDatabase
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database to be dropped.
    database :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesDropDatabase' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesDropDatabase ::
  -- |  Required. The database to be dropped. See 'database'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesDropDatabase
newSpannerProjectsInstancesDatabasesDropDatabase database =
  SpannerProjectsInstancesDatabasesDropDatabase
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      database = database,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesDropDatabase
  where
  type
    Rs SpannerProjectsInstancesDatabasesDropDatabase =
      Empty
  type
    Scopes
      SpannerProjectsInstancesDatabasesDropDatabase =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesDatabasesDropDatabase {..} =
      go
        database
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        spannerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SpannerProjectsInstancesDatabasesDropDatabaseResource
            )
            Core.mempty
