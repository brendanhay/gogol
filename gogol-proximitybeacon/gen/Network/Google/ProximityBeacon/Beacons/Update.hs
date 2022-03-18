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
-- Module      : Network.Google.ProximityBeacon.Beacons.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the information about the specified beacon. __Any field that you do not populate in the submitted beacon will be permanently erased__, so you should follow the \"read, modify, write\" pattern to avoid inadvertently destroying data.
--
-- Changes to the beacon status via this method will be silently ignored. To update beacon status, use the separate methods on this API for activation, deactivation, and decommissioning. Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.update@.
module Network.Google.ProximityBeacon.Beacons.Update
  ( -- * Resource
    ProximityBeaconBeaconsUpdateResource,

    -- ** Constructing a Request
    newProximityBeaconBeaconsUpdate,
    ProximityBeaconBeaconsUpdate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.update@ method which the
-- 'ProximityBeaconBeaconsUpdate' request conforms to.
type ProximityBeaconBeaconsUpdateResource =
  "v1beta1"
    Core.:> Core.Capture "beaconName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Beacon
    Core.:> Core.Put '[Core.JSON] Beacon

-- | Updates the information about the specified beacon. __Any field that you do not populate in the submitted beacon will be permanently erased__, so you should follow the \"read, modify, write\" pattern to avoid inadvertently destroying data.
--
-- Changes to the beacon status via this method will be silently ignored. To update beacon status, use the separate methods on this API for activation, deactivation, and decommissioning. Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconBeaconsUpdate' smart constructor.
data ProximityBeaconBeaconsUpdate = ProximityBeaconBeaconsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Resource name of this beacon. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone, @1@ for iBeacon, or @5@ for AltBeacon.
    --
    -- This field must be left empty when registering. After reading a beacon, clients can use the name for future operations.
    beaconName :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Beacon,
    -- | The project id of the beacon to update. If the project id is not specified then the project making the request is used. The project id must match the project that owns the beacon. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsUpdate' with the minimum fields required to make a request.
newProximityBeaconBeaconsUpdate ::
  -- |  Resource name of this beacon. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone, @1@ for iBeacon, or @5@ for AltBeacon.
  --
  -- This field must be left empty when registering. After reading a beacon, clients can use the name for future operations. See 'beaconName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Beacon ->
  ProximityBeaconBeaconsUpdate
newProximityBeaconBeaconsUpdate beaconName payload =
  ProximityBeaconBeaconsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      beaconName = beaconName,
      callback = Core.Nothing,
      payload = payload,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ProximityBeaconBeaconsUpdate
  where
  type Rs ProximityBeaconBeaconsUpdate = Beacon
  type
    Scopes ProximityBeaconBeaconsUpdate =
      '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
  requestClient ProximityBeaconBeaconsUpdate {..} =
    go
      beaconName
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
              Core.Proxy ProximityBeaconBeaconsUpdateResource
          )
          Core.mempty
