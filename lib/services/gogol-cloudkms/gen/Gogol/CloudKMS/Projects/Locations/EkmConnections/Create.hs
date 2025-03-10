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
-- Module      : Gogol.CloudKMS.Projects.Locations.EkmConnections.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new EkmConnection in a given Project and Location.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.ekmConnections.create@.
module Gogol.CloudKMS.Projects.Locations.EkmConnections.Create
  ( -- * Resource
    CloudKMSProjectsLocationsEkmConnectionsCreateResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsEkmConnectionsCreate (..),
    newCloudKMSProjectsLocationsEkmConnectionsCreate,
  )
where

import Gogol.CloudKMS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudkms.projects.locations.ekmConnections.create@ method which the
-- 'CloudKMSProjectsLocationsEkmConnectionsCreate' request conforms to.
type CloudKMSProjectsLocationsEkmConnectionsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "ekmConnections"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "ekmConnectionId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EkmConnection
    Core.:> Core.Post '[Core.JSON] EkmConnection

-- | Creates a new EkmConnection in a given Project and Location.
--
-- /See:/ 'newCloudKMSProjectsLocationsEkmConnectionsCreate' smart constructor.
data CloudKMSProjectsLocationsEkmConnectionsCreate = CloudKMSProjectsLocationsEkmConnectionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. It must be unique within a location and match the regular expression @[a-zA-Z0-9_-]{1,63}@.
    ekmConnectionId :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the location associated with the EkmConnection, in the format @projects\/*\/locations\/*@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: EkmConnection,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsEkmConnectionsCreate' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsEkmConnectionsCreate ::
  -- |  Required. The resource name of the location associated with the EkmConnection, in the format @projects\/*\/locations\/*@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EkmConnection ->
  CloudKMSProjectsLocationsEkmConnectionsCreate
newCloudKMSProjectsLocationsEkmConnectionsCreate parent payload =
  CloudKMSProjectsLocationsEkmConnectionsCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      ekmConnectionId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsEkmConnectionsCreate
  where
  type
    Rs CloudKMSProjectsLocationsEkmConnectionsCreate =
      EkmConnection
  type
    Scopes CloudKMSProjectsLocationsEkmConnectionsCreate =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient CloudKMSProjectsLocationsEkmConnectionsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      ekmConnectionId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudKMSService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudKMSProjectsLocationsEkmConnectionsCreateResource
          )
          Core.mempty
