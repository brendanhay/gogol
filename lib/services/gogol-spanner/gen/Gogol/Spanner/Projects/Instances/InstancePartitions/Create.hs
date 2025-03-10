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
-- Module      : Gogol.Spanner.Projects.Instances.InstancePartitions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance partition and begins preparing it to be used. The returned long-running operation can be used to track the progress of preparing the new instance partition. The instance partition name is assigned by the caller. If the named instance partition already exists, @CreateInstancePartition@ returns @ALREADY_EXISTS@. Immediately upon completion of this request: * The instance partition is readable via the API, with all requested attributes but no allocated resources. Its state is @CREATING@. Until completion of the returned operation: * Cancelling the operation renders the instance partition immediately unreadable via the API. * The instance partition can be deleted. * All other attempts to modify the instance partition are rejected. Upon completion of the returned operation: * Billing for all successfully-allocated resources begins (some types may have lower than the requested levels). * Databases can start using this instance partition. * The instance partition\'s allocated resource levels are
-- readable via the API. * The instance partition\'s state becomes @READY@. The returned long-running operation will have a name of the format @\/operations\/@ and can be used to track creation of the instance partition. The metadata field type is CreateInstancePartitionMetadata. The response field type is InstancePartition, if successful.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.instancePartitions.create@.
module Gogol.Spanner.Projects.Instances.InstancePartitions.Create
  ( -- * Resource
    SpannerProjectsInstancesInstancePartitionsCreateResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesInstancePartitionsCreate (..),
    newSpannerProjectsInstancesInstancePartitionsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.instancePartitions.create@ method which the
-- 'SpannerProjectsInstancesInstancePartitionsCreate' request conforms to.
type SpannerProjectsInstancesInstancePartitionsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instancePartitions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateInstancePartitionRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an instance partition and begins preparing it to be used. The returned long-running operation can be used to track the progress of preparing the new instance partition. The instance partition name is assigned by the caller. If the named instance partition already exists, @CreateInstancePartition@ returns @ALREADY_EXISTS@. Immediately upon completion of this request: * The instance partition is readable via the API, with all requested attributes but no allocated resources. Its state is @CREATING@. Until completion of the returned operation: * Cancelling the operation renders the instance partition immediately unreadable via the API. * The instance partition can be deleted. * All other attempts to modify the instance partition are rejected. Upon completion of the returned operation: * Billing for all successfully-allocated resources begins (some types may have lower than the requested levels). * Databases can start using this instance partition. * The instance partition\'s allocated resource levels are
-- readable via the API. * The instance partition\'s state becomes @READY@. The returned long-running operation will have a name of the format @\/operations\/@ and can be used to track creation of the instance partition. The metadata field type is CreateInstancePartitionMetadata. The response field type is InstancePartition, if successful.
--
-- /See:/ 'newSpannerProjectsInstancesInstancePartitionsCreate' smart constructor.
data SpannerProjectsInstancesInstancePartitionsCreate = SpannerProjectsInstancesInstancePartitionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the instance in which to create the instance partition. Values are of the form @projects\/\/instances\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateInstancePartitionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesInstancePartitionsCreate' with the minimum fields required to make a request.
newSpannerProjectsInstancesInstancePartitionsCreate ::
  -- |  Required. The name of the instance in which to create the instance partition. Values are of the form @projects\/\/instances\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateInstancePartitionRequest ->
  SpannerProjectsInstancesInstancePartitionsCreate
newSpannerProjectsInstancesInstancePartitionsCreate parent payload =
  SpannerProjectsInstancesInstancePartitionsCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesInstancePartitionsCreate
  where
  type
    Rs SpannerProjectsInstancesInstancePartitionsCreate =
      Operation
  type
    Scopes SpannerProjectsInstancesInstancePartitionsCreate =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesInstancePartitionsCreate {..} =
    go
      parent
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
                SpannerProjectsInstancesInstancePartitionsCreateResource
          )
          Core.mempty
