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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyHandles.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new KeyHandle, triggering the provisioning of a new CryptoKey for CMEK use with the given resource type in the configured key project and the same location. GetOperation should be used to resolve the resulting long-running operation and get the resulting KeyHandle and CryptoKey.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyHandles.create@.
module Gogol.CloudKMS.Projects.Locations.KeyHandles.Create
  ( -- * Resource
    CloudKMSProjectsLocationsKeyHandlesCreateResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsKeyHandlesCreate (..),
    newCloudKMSProjectsLocationsKeyHandlesCreate,
  )
where

import Gogol.CloudKMS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudkms.projects.locations.keyHandles.create@ method which the
-- 'CloudKMSProjectsLocationsKeyHandlesCreate' request conforms to.
type CloudKMSProjectsLocationsKeyHandlesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "keyHandles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "keyHandleId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] KeyHandle
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new KeyHandle, triggering the provisioning of a new CryptoKey for CMEK use with the given resource type in the configured key project and the same location. GetOperation should be used to resolve the resulting long-running operation and get the resulting KeyHandle and CryptoKey.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyHandlesCreate' smart constructor.
data CloudKMSProjectsLocationsKeyHandlesCreate = CloudKMSProjectsLocationsKeyHandlesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Id of the KeyHandle. Must be unique to the resource project and location. If not provided by the caller, a new UUID is used.
    keyHandleId :: (Core.Maybe Core.Text),
    -- | Required. Name of the resource project and location to create the KeyHandle in, e.g. @projects\/{PROJECT_ID}\/locations\/{LOCATION}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: KeyHandle,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyHandlesCreate' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyHandlesCreate ::
  -- |  Required. Name of the resource project and location to create the KeyHandle in, e.g. @projects\/{PROJECT_ID}\/locations\/{LOCATION}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  KeyHandle ->
  CloudKMSProjectsLocationsKeyHandlesCreate
newCloudKMSProjectsLocationsKeyHandlesCreate parent payload =
  CloudKMSProjectsLocationsKeyHandlesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      keyHandleId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsKeyHandlesCreate
  where
  type Rs CloudKMSProjectsLocationsKeyHandlesCreate = Operation
  type
    Scopes CloudKMSProjectsLocationsKeyHandlesCreate =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient CloudKMSProjectsLocationsKeyHandlesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      keyHandleId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudKMSService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudKMSProjectsLocationsKeyHandlesCreateResource
          )
          Core.mempty
