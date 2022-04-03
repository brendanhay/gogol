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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.UpdateDdl
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the schema of a Cloud Spanner database by creating\/altering\/dropping tables, columns, indexes, etc. The returned long-running operation will have a name of the format @\/operations\/@ and can be used to track execution of the schema change(s). The metadata field type is UpdateDatabaseDdlMetadata. The operation has no response.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.updateDdl@.
module Gogol.Spanner.Projects.Instances.Databases.UpdateDdl
  ( -- * Resource
    SpannerProjectsInstancesDatabasesUpdateDdlResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesUpdateDdl (..),
    newSpannerProjectsInstancesDatabasesUpdateDdl,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.updateDdl@ method which the
-- 'SpannerProjectsInstancesDatabasesUpdateDdl' request conforms to.
type SpannerProjectsInstancesDatabasesUpdateDdlResource =
  "v1"
    Core.:> Core.Capture "database" Core.Text
    Core.:> "ddl"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateDatabaseDdlRequest
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the schema of a Cloud Spanner database by creating\/altering\/dropping tables, columns, indexes, etc. The returned long-running operation will have a name of the format @\/operations\/@ and can be used to track execution of the schema change(s). The metadata field type is UpdateDatabaseDdlMetadata. The operation has no response.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesUpdateDdl' smart constructor.
data SpannerProjectsInstancesDatabasesUpdateDdl = SpannerProjectsInstancesDatabasesUpdateDdl
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database to update.
    database :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateDatabaseDdlRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesUpdateDdl' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesUpdateDdl ::
  -- |  Required. The database to update. See 'database'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateDatabaseDdlRequest ->
  SpannerProjectsInstancesDatabasesUpdateDdl
newSpannerProjectsInstancesDatabasesUpdateDdl database payload =
  SpannerProjectsInstancesDatabasesUpdateDdl
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      database = database,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesUpdateDdl
  where
  type
    Rs SpannerProjectsInstancesDatabasesUpdateDdl =
      Operation
  type
    Scopes
      SpannerProjectsInstancesDatabasesUpdateDdl =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesDatabasesUpdateDdl {..} =
      go
        database
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        spannerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SpannerProjectsInstancesDatabasesUpdateDdlResource
            )
            Core.mempty
