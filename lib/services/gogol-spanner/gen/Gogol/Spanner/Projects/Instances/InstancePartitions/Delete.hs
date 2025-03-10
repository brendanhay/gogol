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
-- Module      : Gogol.Spanner.Projects.Instances.InstancePartitions.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing instance partition. Requires that the instance partition is not used by any database or backup and is not the default instance partition of an instance. Authorization requires @spanner.instancePartitions.delete@ permission on the resource name.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.instancePartitions.delete@.
module Gogol.Spanner.Projects.Instances.InstancePartitions.Delete
  ( -- * Resource
    SpannerProjectsInstancesInstancePartitionsDeleteResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesInstancePartitionsDelete (..),
    newSpannerProjectsInstancesInstancePartitionsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.instancePartitions.delete@ method which the
-- 'SpannerProjectsInstancesInstancePartitionsDelete' request conforms to.
type SpannerProjectsInstancesInstancePartitionsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "etag" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an existing instance partition. Requires that the instance partition is not used by any database or backup and is not the default instance partition of an instance. Authorization requires @spanner.instancePartitions.delete@ permission on the resource name.
--
-- /See:/ 'newSpannerProjectsInstancesInstancePartitionsDelete' smart constructor.
data SpannerProjectsInstancesInstancePartitionsDelete = SpannerProjectsInstancesInstancePartitionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. If not empty, the API only deletes the instance partition when the etag provided matches the current status of the requested instance partition. Otherwise, deletes the instance partition without checking the current status of the requested instance partition.
    etag :: (Core.Maybe Core.Text),
    -- | Required. The name of the instance partition to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/instancePartitions\/{instance_partition}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesInstancePartitionsDelete' with the minimum fields required to make a request.
newSpannerProjectsInstancesInstancePartitionsDelete ::
  -- |  Required. The name of the instance partition to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/instancePartitions\/{instance_partition}@ See 'name'.
  Core.Text ->
  SpannerProjectsInstancesInstancePartitionsDelete
newSpannerProjectsInstancesInstancePartitionsDelete name =
  SpannerProjectsInstancesInstancePartitionsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      etag = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesInstancePartitionsDelete
  where
  type Rs SpannerProjectsInstancesInstancePartitionsDelete = Empty
  type
    Scopes SpannerProjectsInstancesInstancePartitionsDelete =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesInstancePartitionsDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      etag
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                SpannerProjectsInstancesInstancePartitionsDeleteResource
          )
          Core.mempty
