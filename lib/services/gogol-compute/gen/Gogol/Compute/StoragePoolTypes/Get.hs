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
-- Module      : Gogol.Compute.StoragePoolTypes.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified storage pool type.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.storagePoolTypes.get@.
module Gogol.Compute.StoragePoolTypes.Get
  ( -- * Resource
    ComputeStoragePoolTypesGetResource,

    -- ** Constructing a Request
    ComputeStoragePoolTypesGet (..),
    newComputeStoragePoolTypesGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.storagePoolTypes.get@ method which the
-- 'ComputeStoragePoolTypesGet' request conforms to.
type ComputeStoragePoolTypesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "storagePoolTypes"
    Core.:> Core.Capture "storagePoolType" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StoragePoolType

-- | Returns the specified storage pool type.
--
-- /See:/ 'newComputeStoragePoolTypesGet' smart constructor.
data ComputeStoragePoolTypesGet = ComputeStoragePoolTypesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the storage pool type to return.
    storagePoolType :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone for this request.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeStoragePoolTypesGet' with the minimum fields required to make a request.
newComputeStoragePoolTypesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the storage pool type to return. See 'storagePoolType'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeStoragePoolTypesGet
newComputeStoragePoolTypesGet project storagePoolType zone =
  ComputeStoragePoolTypesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      storagePoolType = storagePoolType,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance Core.GoogleRequest ComputeStoragePoolTypesGet where
  type Rs ComputeStoragePoolTypesGet = StoragePoolType
  type
    Scopes ComputeStoragePoolTypesGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeStoragePoolTypesGet {..} =
    go
      project
      zone
      storagePoolType
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ComputeStoragePoolTypesGetResource)
          Core.mempty
