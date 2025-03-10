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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Cloud Spanner database. The returned long-running operation can be used to track the progress of updating the database. If the named database does not exist, returns @NOT_FOUND@. While the operation is pending: * The database\'s reconciling field is set to true. * Cancelling the operation is best-effort. If the cancellation succeeds, the operation metadata\'s cancel_time is set, the updates are reverted, and the operation terminates with a @CANCELLED@ status. * New UpdateDatabase requests will return a @FAILED_PRECONDITION@ error until the pending operation is done (returns successfully or with error). * Reading the database via the API continues to give the pre-request values. Upon completion of the returned operation: * The new values are in effect and readable via the API. * The database\'s reconciling field becomes false. The returned long-running operation will have a name of the format @projects\/\/instances\/\/databases\/\/operations\/@ and can be used to track the database modification. The
-- metadata field type is UpdateDatabaseMetadata. The response field type is Database, if successful.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.patch@.
module Gogol.Spanner.Projects.Instances.Databases.Patch
  ( -- * Resource
    SpannerProjectsInstancesDatabasesPatchResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesPatch (..),
    newSpannerProjectsInstancesDatabasesPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.patch@ method which the
-- 'SpannerProjectsInstancesDatabasesPatch' request conforms to.
type SpannerProjectsInstancesDatabasesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Database
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a Cloud Spanner database. The returned long-running operation can be used to track the progress of updating the database. If the named database does not exist, returns @NOT_FOUND@. While the operation is pending: * The database\'s reconciling field is set to true. * Cancelling the operation is best-effort. If the cancellation succeeds, the operation metadata\'s cancel_time is set, the updates are reverted, and the operation terminates with a @CANCELLED@ status. * New UpdateDatabase requests will return a @FAILED_PRECONDITION@ error until the pending operation is done (returns successfully or with error). * Reading the database via the API continues to give the pre-request values. Upon completion of the returned operation: * The new values are in effect and readable via the API. * The database\'s reconciling field becomes false. The returned long-running operation will have a name of the format @projects\/\/instances\/\/databases\/\/operations\/@ and can be used to track the database modification. The
-- metadata field type is UpdateDatabaseMetadata. The response field type is Database, if successful.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesPatch' smart constructor.
data SpannerProjectsInstancesDatabasesPatch = SpannerProjectsInstancesDatabasesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the database. Values are of the form @projects\/\/instances\/\/databases\/@, where \`@is as specified in the@CREATE DATABASE\` statement. This name can be passed to other API methods to identify the database.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Database,
    -- | Required. The list of fields to update. Currently, only @enable_drop_protection@ field can be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesPatch' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesPatch ::
  -- |  Required. The name of the database. Values are of the form @projects\/\/instances\/\/databases\/@, where \`@is as specified in the@CREATE DATABASE\` statement. This name can be passed to other API methods to identify the database. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Database ->
  SpannerProjectsInstancesDatabasesPatch
newSpannerProjectsInstancesDatabasesPatch name payload =
  SpannerProjectsInstancesDatabasesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SpannerProjectsInstancesDatabasesPatch where
  type Rs SpannerProjectsInstancesDatabasesPatch = Operation
  type
    Scopes SpannerProjectsInstancesDatabasesPatch =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesDatabasesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpannerProjectsInstancesDatabasesPatchResource
          )
          Core.mempty
