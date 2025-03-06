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
-- Module      : Gogol.ProximityBeacon.GetEidparams
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Proximity Beacon API\'s current public key and associated parameters used to initiate the Diffie-Hellman key exchange required to register a beacon that broadcasts the Eddystone-EID format. This key changes periodically; clients may cache it and re-use the same public key to provision and register multiple beacons. However, clients should be prepared to refresh this key when they encounter an error registering an Eddystone-EID beacon.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.getEidparams@.
module Gogol.ProximityBeacon.GetEidparams
  ( -- * Resource
    ProximityBeaconGetEidparamsResource,

    -- ** Constructing a Request
    ProximityBeaconGetEidparams (..),
    newProximityBeaconGetEidparams,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.getEidparams@ method which the
-- 'ProximityBeaconGetEidparams' request conforms to.
type ProximityBeaconGetEidparamsResource =
  "v1beta1"
    Core.:> "eidparams"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] EphemeralIdRegistrationParams

-- | Gets the Proximity Beacon API\'s current public key and associated parameters used to initiate the Diffie-Hellman key exchange required to register a beacon that broadcasts the Eddystone-EID format. This key changes periodically; clients may cache it and re-use the same public key to provision and register multiple beacons. However, clients should be prepared to refresh this key when they encounter an error registering an Eddystone-EID beacon.
--
-- /See:/ 'newProximityBeaconGetEidparams' smart constructor.
data ProximityBeaconGetEidparams = ProximityBeaconGetEidparams
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconGetEidparams' with the minimum fields required to make a request.
newProximityBeaconGetEidparams ::
  ProximityBeaconGetEidparams
newProximityBeaconGetEidparams =
  ProximityBeaconGetEidparams
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ProximityBeaconGetEidparams where
  type Rs ProximityBeaconGetEidparams = EphemeralIdRegistrationParams
  type
    Scopes ProximityBeaconGetEidparams =
      '[Userlocation'Beacon'Registry]
  requestClient ProximityBeaconGetEidparams {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      proximityBeaconService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ProximityBeaconGetEidparamsResource)
          Core.mempty
