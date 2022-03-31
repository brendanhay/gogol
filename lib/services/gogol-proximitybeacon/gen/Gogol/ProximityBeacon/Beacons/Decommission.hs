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
-- Module      : Gogol.ProximityBeacon.Beacons.Decommission
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decommissions the specified beacon in the service. This beacon will no longer be returned from @beaconinfo.getforobserved@. This operation is permanent -- you will not be able to re-register a beacon with this ID again.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.decommission@.
module Gogol.ProximityBeacon.Beacons.Decommission
  ( -- * Resource
    ProximityBeaconBeaconsDecommissionResource,

    -- ** Constructing a Request
    newProximityBeaconBeaconsDecommission,
    ProximityBeaconBeaconsDecommission,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.decommission@ method which the
-- 'ProximityBeaconBeaconsDecommission' request conforms to.
type ProximityBeaconBeaconsDecommissionResource =
  "v1beta1"
    Core.:> Core.CaptureMode
              "beaconName"
              "decommission"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Empty

-- | Decommissions the specified beacon in the service. This beacon will no longer be returned from @beaconinfo.getforobserved@. This operation is permanent -- you will not be able to re-register a beacon with this ID again.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconBeaconsDecommission' smart constructor.
data ProximityBeaconBeaconsDecommission = ProximityBeaconBeaconsDecommission
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Beacon that should be decommissioned. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID of the beacon\'s \"stable\" UID. Required.
    beaconName :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The project id of the beacon to decommission. If the project id is not specified then the project making the request is used. The project id must match the project that owns the beacon. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsDecommission' with the minimum fields required to make a request.
newProximityBeaconBeaconsDecommission ::
  -- |  Beacon that should be decommissioned. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID of the beacon\'s \"stable\" UID. Required. See 'beaconName'.
  Core.Text ->
  ProximityBeaconBeaconsDecommission
newProximityBeaconBeaconsDecommission beaconName =
  ProximityBeaconBeaconsDecommission
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      beaconName = beaconName,
      callback = Core.Nothing,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ProximityBeaconBeaconsDecommission
  where
  type Rs ProximityBeaconBeaconsDecommission = Empty
  type
    Scopes ProximityBeaconBeaconsDecommission =
      '[Userlocation'Beacon'Registry]
  requestClient ProximityBeaconBeaconsDecommission {..} =
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
          ( Core.Proxy ::
              Core.Proxy
                ProximityBeaconBeaconsDecommissionResource
          )
          Core.mempty
