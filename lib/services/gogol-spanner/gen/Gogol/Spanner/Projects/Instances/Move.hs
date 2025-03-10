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
-- Module      : Gogol.Spanner.Projects.Instances.Move
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves an instance to the target instance configuration. You can use the returned long-running operation to track the progress of moving the instance. @MoveInstance@ returns @FAILED_PRECONDITION@ if the instance meets any of the following criteria: * Is undergoing a move to a different instance configuration * Has backups * Has an ongoing update * Contains any CMEK-enabled databases * Is a free trial instance While the operation is pending: * All other attempts to modify the instance, including changes to its compute capacity, are rejected. * The following database and backup admin operations are rejected: * @DatabaseAdmin.CreateDatabase@ * @DatabaseAdmin.UpdateDatabaseDdl@ (disabled if default/leader is specified in the request.) * @DatabaseAdmin.RestoreDatabase@ * @DatabaseAdmin.CreateBackup@ * @DatabaseAdmin.CopyBackup@ * Both the source and target instance configurations are subject to hourly compute and storage charges. * The instance might experience higher read-write latencies and a higher transaction
-- abort rate. However, moving an instance doesn\'t cause any downtime. The returned long-running operation has a name of the format @\/operations\/@ and can be used to track the move instance operation. The metadata field type is MoveInstanceMetadata. The response field type is Instance, if successful. Cancelling the operation sets its metadata\'s cancel/time. Cancellation is not immediate because it involves moving any data previously moved to the target instance configuration back to the original instance configuration. You can use this operation to track the progress of the cancellation. Upon successful completion of the cancellation, the operation terminates with @CANCELLED@ status. If not cancelled, upon completion of the returned operation: * The instance successfully moves to the target instance configuration. * You are billed for compute and storage in target instance configuration. Authorization requires the @spanner.instances.update@ permission on the resource instance. For more details, see
-- <https://cloud.google.com/spanner/docs/move-instance Move an instance>.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.move@.
module Gogol.Spanner.Projects.Instances.Move
  ( -- * Resource
    SpannerProjectsInstancesMoveResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesMove (..),
    newSpannerProjectsInstancesMove,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.move@ method which the
-- 'SpannerProjectsInstancesMove' request conforms to.
type SpannerProjectsInstancesMoveResource =
  "v1"
    Core.:> Core.CaptureMode "name" "move" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] MoveInstanceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Moves an instance to the target instance configuration. You can use the returned long-running operation to track the progress of moving the instance. @MoveInstance@ returns @FAILED_PRECONDITION@ if the instance meets any of the following criteria: * Is undergoing a move to a different instance configuration * Has backups * Has an ongoing update * Contains any CMEK-enabled databases * Is a free trial instance While the operation is pending: * All other attempts to modify the instance, including changes to its compute capacity, are rejected. * The following database and backup admin operations are rejected: * @DatabaseAdmin.CreateDatabase@ * @DatabaseAdmin.UpdateDatabaseDdl@ (disabled if default/leader is specified in the request.) * @DatabaseAdmin.RestoreDatabase@ * @DatabaseAdmin.CreateBackup@ * @DatabaseAdmin.CopyBackup@ * Both the source and target instance configurations are subject to hourly compute and storage charges. * The instance might experience higher read-write latencies and a higher transaction
-- abort rate. However, moving an instance doesn\'t cause any downtime. The returned long-running operation has a name of the format @\/operations\/@ and can be used to track the move instance operation. The metadata field type is MoveInstanceMetadata. The response field type is Instance, if successful. Cancelling the operation sets its metadata\'s cancel/time. Cancellation is not immediate because it involves moving any data previously moved to the target instance configuration back to the original instance configuration. You can use this operation to track the progress of the cancellation. Upon successful completion of the cancellation, the operation terminates with @CANCELLED@ status. If not cancelled, upon completion of the returned operation: * The instance successfully moves to the target instance configuration. * You are billed for compute and storage in target instance configuration. Authorization requires the @spanner.instances.update@ permission on the resource instance. For more details, see
-- <https://cloud.google.com/spanner/docs/move-instance Move an instance>.
--
-- /See:/ 'newSpannerProjectsInstancesMove' smart constructor.
data SpannerProjectsInstancesMove = SpannerProjectsInstancesMove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The instance to move. Values are of the form @projects\/\/instances\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: MoveInstanceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesMove' with the minimum fields required to make a request.
newSpannerProjectsInstancesMove ::
  -- |  Required. The instance to move. Values are of the form @projects\/\/instances\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  MoveInstanceRequest ->
  SpannerProjectsInstancesMove
newSpannerProjectsInstancesMove name payload =
  SpannerProjectsInstancesMove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SpannerProjectsInstancesMove where
  type Rs SpannerProjectsInstancesMove = Operation
  type
    Scopes SpannerProjectsInstancesMove =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesMove {..} =
    go
      name
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
          (Core.Proxy :: Core.Proxy SpannerProjectsInstancesMoveResource)
          Core.mempty
