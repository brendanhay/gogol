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
-- Module      : Gogol.Compute.Disks.CreateSnapshot
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot of a specified persistent disk. For regular snapshot creation, consider using snapshots.insert instead, as that method supports more features, such as creating snapshots in a project different from the source disk project.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.disks.createSnapshot@.
module Gogol.Compute.Disks.CreateSnapshot
  ( -- * Resource
    ComputeDisksCreateSnapshotResource,

    -- ** Constructing a Request
    ComputeDisksCreateSnapshot (..),
    newComputeDisksCreateSnapshot,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.disks.createSnapshot@ method which the
-- 'ComputeDisksCreateSnapshot' request conforms to.
type ComputeDisksCreateSnapshotResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "disks"
    Core.:> Core.Capture "disk" Core.Text
    Core.:> "createSnapshot"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "guestFlush" Core.Bool
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Snapshot
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a snapshot of a specified persistent disk. For regular snapshot creation, consider using snapshots.insert instead, as that method supports more features, such as creating snapshots in a project different from the source disk project.
--
-- /See:/ 'newComputeDisksCreateSnapshot' smart constructor.
data ComputeDisksCreateSnapshot = ComputeDisksCreateSnapshot
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the persistent disk to snapshot.
    disk :: Core.Text,
    -- | [Input Only] Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
    guestFlush :: (Core.Maybe Core.Bool),
    -- | Multipart request metadata.
    payload :: Snapshot,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone for this request.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeDisksCreateSnapshot' with the minimum fields required to make a request.
newComputeDisksCreateSnapshot ::
  -- |  Name of the persistent disk to snapshot. See 'disk'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Snapshot ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeDisksCreateSnapshot
newComputeDisksCreateSnapshot disk payload project zone =
  ComputeDisksCreateSnapshot
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      disk = disk,
      guestFlush = Core.Nothing,
      payload = payload,
      project = project,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ComputeDisksCreateSnapshot
  where
  type Rs ComputeDisksCreateSnapshot = Operation
  type
    Scopes ComputeDisksCreateSnapshot =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeDisksCreateSnapshot {..} =
    go
      project
      zone
      disk
      xgafv
      accessToken
      callback
      guestFlush
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeDisksCreateSnapshotResource
          )
          Core.mempty
