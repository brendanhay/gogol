{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ProximityBeacon.Beacons.Diagnostics.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the diagnostics for a single beacon. You can also list diagnostics for all the beacons owned by your Google Developers Console project by using the beacon name @beacons\/-@.
-- 
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.diagnostics.list@.
module Gogol.ProximityBeacon.Beacons.Diagnostics.List
    (
    -- * Resource
      ProximityBeaconBeaconsDiagnosticsListResource

    -- ** Constructing a Request
    , ProximityBeaconBeaconsDiagnosticsList (..)
    , newProximityBeaconBeaconsDiagnosticsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.diagnostics.list@ method which the
-- 'ProximityBeaconBeaconsDiagnosticsList' request conforms to.
type ProximityBeaconBeaconsDiagnosticsListResource =
     "v1beta1" Core.:>
       Core.Capture "beaconName" Core.Text Core.:>
         "diagnostics" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "alertFilter" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "projectId" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ListDiagnosticsResponse

-- | List the diagnostics for a single beacon. You can also list diagnostics for all the beacons owned by your Google Developers Console project by using the beacon name @beacons\/-@.
-- 
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconBeaconsDiagnosticsList' smart constructor.
data ProximityBeaconBeaconsDiagnosticsList = ProximityBeaconBeaconsDiagnosticsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Requests only beacons that have the given alert. For example, to find beacons that have low batteries use @alert_filter=LOW_BATTERY@.
    , alertFilter :: (Core.Maybe Core.Text)
      -- | Beacon that the diagnostics are for.
    , beaconName :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Specifies the maximum number of results to return. Defaults to 10. Maximum 1000. Optional.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Requests results that occur after the @page_token@, obtained from the response to a previous request. Optional.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Requests only diagnostic records for the given project id. If not set, then the project making the request will be used for looking up diagnostic records. Optional.
    , projectId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsDiagnosticsList' with the minimum fields required to make a request.
newProximityBeaconBeaconsDiagnosticsList 
    ::  Core.Text
       -- ^  Beacon that the diagnostics are for. See 'beaconName'.
    -> ProximityBeaconBeaconsDiagnosticsList
newProximityBeaconBeaconsDiagnosticsList beaconName =
  ProximityBeaconBeaconsDiagnosticsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , alertFilter = Core.Nothing
    , beaconName = beaconName
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , projectId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ProximityBeaconBeaconsDiagnosticsList
         where
        type Rs ProximityBeaconBeaconsDiagnosticsList =
             ListDiagnosticsResponse
        type Scopes ProximityBeaconBeaconsDiagnosticsList =
             '[Userlocation'Beacon'Registry]
        requestClient
          ProximityBeaconBeaconsDiagnosticsList{..}
          = go beaconName xgafv accessToken alertFilter
              callback
              pageSize
              pageToken
              projectId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              proximityBeaconService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ProximityBeaconBeaconsDiagnosticsListResource)
                      Core.mempty

