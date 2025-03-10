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
-- Module      : Gogol.CloudKMS.Projects.Locations.EkmConnections.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an EkmConnection\'s metadata.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.ekmConnections.patch@.
module Gogol.CloudKMS.Projects.Locations.EkmConnections.Patch
  ( -- * Resource
    CloudKMSProjectsLocationsEkmConnectionsPatchResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsEkmConnectionsPatch (..),
    newCloudKMSProjectsLocationsEkmConnectionsPatch,
  )
where

import Gogol.CloudKMS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudkms.projects.locations.ekmConnections.patch@ method which the
-- 'CloudKMSProjectsLocationsEkmConnectionsPatch' request conforms to.
type CloudKMSProjectsLocationsEkmConnectionsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EkmConnection
    Core.:> Core.Patch '[Core.JSON] EkmConnection

-- | Updates an EkmConnection\'s metadata.
--
-- /See:/ 'newCloudKMSProjectsLocationsEkmConnectionsPatch' smart constructor.
data CloudKMSProjectsLocationsEkmConnectionsPatch = CloudKMSProjectsLocationsEkmConnectionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name for the EkmConnection in the format @projects\/*\/locations\/*\/ekmConnections\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: EkmConnection,
    -- | Required. List of fields to be updated in this request.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsEkmConnectionsPatch' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsEkmConnectionsPatch ::
  -- |  Output only. The resource name for the EkmConnection in the format @projects\/*\/locations\/*\/ekmConnections\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EkmConnection ->
  CloudKMSProjectsLocationsEkmConnectionsPatch
newCloudKMSProjectsLocationsEkmConnectionsPatch name payload =
  CloudKMSProjectsLocationsEkmConnectionsPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsEkmConnectionsPatch
  where
  type
    Rs CloudKMSProjectsLocationsEkmConnectionsPatch =
      EkmConnection
  type
    Scopes CloudKMSProjectsLocationsEkmConnectionsPatch =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient CloudKMSProjectsLocationsEkmConnectionsPatch {..} =
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
      cloudKMSService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudKMSProjectsLocationsEkmConnectionsPatchResource
          )
          Core.mempty
