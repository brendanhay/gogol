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
-- Module      : Gogol.ProximityBeacon.Beaconinfo.Getforobserved
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Given one or more beacon observations, returns any beacon information and attachments accessible to your application. Authorize by using the <https://developers.google.com/beacons/proximity/get-started#request_a_browser_api_key API key> for the application.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beaconinfo.getforobserved@.
module Gogol.ProximityBeacon.Beaconinfo.Getforobserved
    (
    -- * Resource
      ProximityBeaconBeaconinfoGetforobservedResource

    -- ** Constructing a Request
    , ProximityBeaconBeaconinfoGetforobserved (..)
    , newProximityBeaconBeaconinfoGetforobserved
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beaconinfo.getforobserved@ method which the
-- 'ProximityBeaconBeaconinfoGetforobserved' request conforms to.
type ProximityBeaconBeaconinfoGetforobservedResource
     =
     "v1beta1" Core.:>
       "beaconinfo:getforobserved" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GetInfoForObservedBeaconsRequest
                       Core.:>
                       Core.Post '[Core.JSON]
                         GetInfoForObservedBeaconsResponse

-- | Given one or more beacon observations, returns any beacon information and attachments accessible to your application. Authorize by using the <https://developers.google.com/beacons/proximity/get-started#request_a_browser_api_key API key> for the application.
--
-- /See:/ 'newProximityBeaconBeaconinfoGetforobserved' smart constructor.
data ProximityBeaconBeaconinfoGetforobserved = ProximityBeaconBeaconinfoGetforobserved
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GetInfoForObservedBeaconsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconinfoGetforobserved' with the minimum fields required to make a request.
newProximityBeaconBeaconinfoGetforobserved 
    ::  GetInfoForObservedBeaconsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ProximityBeaconBeaconinfoGetforobserved
newProximityBeaconBeaconinfoGetforobserved payload =
  ProximityBeaconBeaconinfoGetforobserved
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ProximityBeaconBeaconinfoGetforobserved
         where
        type Rs ProximityBeaconBeaconinfoGetforobserved =
             GetInfoForObservedBeaconsResponse
        type Scopes ProximityBeaconBeaconinfoGetforobserved =
             '[]
        requestClient
          ProximityBeaconBeaconinfoGetforobserved{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              proximityBeaconService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ProximityBeaconBeaconinfoGetforobservedResource)
                      Core.mempty

