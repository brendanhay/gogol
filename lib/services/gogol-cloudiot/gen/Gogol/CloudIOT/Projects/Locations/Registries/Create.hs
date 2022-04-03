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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device registry that contains devices.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.create@.
module Gogol.CloudIOT.Projects.Locations.Registries.Create
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesCreateResource,

    -- ** Constructing a Request
    CloudIOTProjectsLocationsRegistriesCreate (..),
    newCloudIOTProjectsLocationsRegistriesCreate,
  )
where

import Gogol.CloudIOT.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudiot.projects.locations.registries.create@ method which the
-- 'CloudIOTProjectsLocationsRegistriesCreate' request conforms to.
type CloudIOTProjectsLocationsRegistriesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "registries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeviceRegistry
    Core.:> Core.Post '[Core.JSON] DeviceRegistry

-- | Creates a device registry that contains devices.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesCreate' smart constructor.
data CloudIOTProjectsLocationsRegistriesCreate = CloudIOTProjectsLocationsRegistriesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project and cloud region where this device registry must be created. For example, @projects\/example-project\/locations\/us-central1@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: DeviceRegistry,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesCreate' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesCreate ::
  -- |  Required. The project and cloud region where this device registry must be created. For example, @projects\/example-project\/locations\/us-central1@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DeviceRegistry ->
  CloudIOTProjectsLocationsRegistriesCreate
newCloudIOTProjectsLocationsRegistriesCreate parent payload =
  CloudIOTProjectsLocationsRegistriesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIOTProjectsLocationsRegistriesCreate
  where
  type
    Rs CloudIOTProjectsLocationsRegistriesCreate =
      DeviceRegistry
  type
    Scopes CloudIOTProjectsLocationsRegistriesCreate =
      '[CloudPlatform'FullControl, Cloudiot'FullControl]
  requestClient
    CloudIOTProjectsLocationsRegistriesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudIOTService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIOTProjectsLocationsRegistriesCreateResource
            )
            Core.mempty
