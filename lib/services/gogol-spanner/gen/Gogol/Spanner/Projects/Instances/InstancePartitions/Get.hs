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
-- Module      : Gogol.Spanner.Projects.Instances.InstancePartitions.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a particular instance partition.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.instancePartitions.get@.
module Gogol.Spanner.Projects.Instances.InstancePartitions.Get
  ( -- * Resource
    SpannerProjectsInstancesInstancePartitionsGetResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesInstancePartitionsGet (..),
    newSpannerProjectsInstancesInstancePartitionsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.instancePartitions.get@ method which the
-- 'SpannerProjectsInstancesInstancePartitionsGet' request conforms to.
type SpannerProjectsInstancesInstancePartitionsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InstancePartition

-- | Gets information about a particular instance partition.
--
-- /See:/ 'newSpannerProjectsInstancesInstancePartitionsGet' smart constructor.
data SpannerProjectsInstancesInstancePartitionsGet = SpannerProjectsInstancesInstancePartitionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the requested instance partition. Values are of the form @projects\/{project}\/instances\/{instance}\/instancePartitions\/{instance_partition}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesInstancePartitionsGet' with the minimum fields required to make a request.
newSpannerProjectsInstancesInstancePartitionsGet ::
  -- |  Required. The name of the requested instance partition. Values are of the form @projects\/{project}\/instances\/{instance}\/instancePartitions\/{instance_partition}@. See 'name'.
  Core.Text ->
  SpannerProjectsInstancesInstancePartitionsGet
newSpannerProjectsInstancesInstancePartitionsGet name =
  SpannerProjectsInstancesInstancePartitionsGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesInstancePartitionsGet
  where
  type
    Rs SpannerProjectsInstancesInstancePartitionsGet =
      InstancePartition
  type
    Scopes SpannerProjectsInstancesInstancePartitionsGet =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesInstancePartitionsGet {..} =
    go
      name
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
              Core.Proxy SpannerProjectsInstancesInstancePartitionsGetResource
          )
          Core.mempty
