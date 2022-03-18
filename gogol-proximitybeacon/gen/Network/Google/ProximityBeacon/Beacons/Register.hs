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
-- Module      : Network.Google.ProximityBeacon.Beacons.Register
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a previously unregistered beacon given its @advertisedId@. These IDs are unique within the system. An ID can be registered only once.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.register@.
module Network.Google.ProximityBeacon.Beacons.Register
  ( -- * Resource
    ProximityBeaconBeaconsRegisterResource,

    -- ** Constructing a Request
    newProximityBeaconBeaconsRegister,
    ProximityBeaconBeaconsRegister,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.register@ method which the
-- 'ProximityBeaconBeaconsRegister' request conforms to.
type ProximityBeaconBeaconsRegisterResource =
  "v1beta1"
    Core.:> "beacons:register"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Beacon
    Core.:> Core.Post '[Core.JSON] Beacon

-- | Registers a previously unregistered beacon given its @advertisedId@. These IDs are unique within the system. An ID can be registered only once.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconBeaconsRegister' smart constructor.
data ProximityBeaconBeaconsRegister = ProximityBeaconBeaconsRegister
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Beacon,
    -- | The project id of the project the beacon will be registered to. If the project id is not specified then the project making the request is used. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsRegister' with the minimum fields required to make a request.
newProximityBeaconBeaconsRegister ::
  -- |  Multipart request metadata. See 'payload'.
  Beacon ->
  ProximityBeaconBeaconsRegister
newProximityBeaconBeaconsRegister payload =
  ProximityBeaconBeaconsRegister
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ProximityBeaconBeaconsRegister
  where
  type Rs ProximityBeaconBeaconsRegister = Beacon
  type
    Scopes ProximityBeaconBeaconsRegister =
      '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
  requestClient ProximityBeaconBeaconsRegister {..} =
    go
      xgafv
      accessToken
      callback
      projectId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      proximityBeaconService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ProximityBeaconBeaconsRegisterResource
          )
          Core.mempty
