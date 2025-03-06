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
-- Module      : Gogol.ProximityBeacon.Beacons.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about the specified beacon.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- Requests may supply an Eddystone-EID beacon name in the form: @beacons\/4!beaconId@ where the @beaconId@ is the base16 ephemeral ID broadcast by the beacon. The returned @Beacon@ object will contain the beacon\'s stable Eddystone-UID. Clients not authorized to resolve the beacon\'s ephemeral Eddystone-EID broadcast will receive an error.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.get@.
module Gogol.ProximityBeacon.Beacons.Get
  ( -- * Resource
    ProximityBeaconBeaconsGetResource,

    -- ** Constructing a Request
    ProximityBeaconBeaconsGet (..),
    newProximityBeaconBeaconsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.get@ method which the
-- 'ProximityBeaconBeaconsGet' request conforms to.
type ProximityBeaconBeaconsGetResource =
  "v1beta1"
    Core.:> Core.Capture "beaconName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Beacon

-- | Returns detailed information about the specified beacon.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- Requests may supply an Eddystone-EID beacon name in the form: @beacons\/4!beaconId@ where the @beaconId@ is the base16 ephemeral ID broadcast by the beacon. The returned @Beacon@ object will contain the beacon\'s stable Eddystone-UID. Clients not authorized to resolve the beacon\'s ephemeral Eddystone-EID broadcast will receive an error.
--
-- /See:/ 'newProximityBeaconBeaconsGet' smart constructor.
data ProximityBeaconBeaconsGet = ProximityBeaconBeaconsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Resource name of this beacon. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID or the beacon\'s \"stable\" UID. Required.
    beaconName :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The project id of the beacon to request. If the project id is not specified then the project making the request is used. The project id must match the project that owns the beacon. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsGet' with the minimum fields required to make a request.
newProximityBeaconBeaconsGet ::
  -- |  Resource name of this beacon. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID or the beacon\'s \"stable\" UID. Required. See 'beaconName'.
  Core.Text ->
  ProximityBeaconBeaconsGet
newProximityBeaconBeaconsGet beaconName =
  ProximityBeaconBeaconsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      beaconName = beaconName,
      callback = Core.Nothing,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ProximityBeaconBeaconsGet where
  type Rs ProximityBeaconBeaconsGet = Beacon
  type
    Scopes ProximityBeaconBeaconsGet =
      '[Userlocation'Beacon'Registry]
  requestClient ProximityBeaconBeaconsGet {..} =
    go
      beaconName
      xgafv
      accessToken
      callback
      projectId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      proximityBeaconService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ProximityBeaconBeaconsGetResource)
          Core.mempty
