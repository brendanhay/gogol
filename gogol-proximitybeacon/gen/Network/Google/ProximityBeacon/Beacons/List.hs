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
-- Module      : Network.Google.ProximityBeacon.Beacons.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches the beacon registry for beacons that match the given search criteria. Only those beacons that the client has permission to list will be returned.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.list@.
module Network.Google.ProximityBeacon.Beacons.List
  ( -- * Resource
    ProximityBeaconBeaconsListResource,

    -- ** Constructing a Request
    newProximityBeaconBeaconsList,
    ProximityBeaconBeaconsList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.list@ method which the
-- 'ProximityBeaconBeaconsList' request conforms to.
type ProximityBeaconBeaconsListResource =
  "v1beta1"
    Core.:> "beacons"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBeaconsResponse

-- | Searches the beacon registry for beacons that match the given search criteria. Only those beacons that the client has permission to list will be returned.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconBeaconsList' smart constructor.
data ProximityBeaconBeaconsList = ProximityBeaconBeaconsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of records to return for this request, up to a server-defined upper limit.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A pagination token obtained from a previous request to list beacons.
    pageToken :: (Core.Maybe Core.Text),
    -- | The project id to list beacons under. If not present then the project credential that made the request is used as the project. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Filter query string that supports the following field filters:
    --
    -- -   __description:@\"\<string>\"@__ For example: __description:\"Room 3\"__ Returns beacons whose description matches tokens in the string \"Room 3\" (not necessarily that exact string). The string must be double-quoted.
    -- -   __status:@\<enum>@__ For example: __status:active__ Returns beacons whose status matches the given value. Values must be one of the Beacon.Status enum values (case insensitive). Accepts multiple filters which will be combined with OR logic.
    -- -   __stability:@\<enum>@__ For example: __stability:mobile__ Returns beacons whose expected stability matches the given value. Values must be one of the Beacon.Stability enum values (case insensitive). Accepts multiple filters which will be combined with OR logic.
    -- -   __place_id:@\"\<string>\"@__ For example: __place_id:\"ChIJVSZzVR8FdkgRXGmmm6SslKw=\"__ Returns beacons explicitly registered at the given place, expressed as a Place ID obtained from </places/place-id Google Places API>. Does not match places inside the given place. Does not consider the beacon\'s actual location (which may be different from its registered place). Accepts multiple filters that will be combined with OR logic. The place ID must be double-quoted.
    -- -   __registration_time@[\<|>|\<=|>=]\<integer>@__ For example: __registration_time>=1433116800__ Returns beacons whose registration time matches the given filter. Supports the operators: \<, >, \<=, and >=. Timestamp must be expressed as an integer number of seconds since midnight January 1, 1970 UTC. Accepts at most two filters that will be combined with AND logic, to support \"between\" semantics. If more than two are supplied, the latter ones are ignored.
    -- -   __lat:@\<double> lng:\<double> radius:\<integer>@__ For example: __lat:51.1232343 lng:-1.093852 radius:1000__ Returns beacons whose registered location is within the given circle. When any of these fields are given, all are required. Latitude and longitude must be decimal degrees between -90.0 and 90.0 and between -180.0 and 180.0 respectively. Radius must be an integer number of meters between 10 and 1,000,000 (1000 km).
    -- -   __property:@\"\<string>=\<string>\"@__ For example: __property:\"battery-type=CR2032\"__ Returns beacons which have a property of the given name and value. Supports multiple filters which will be combined with OR logic. The entire name=value string must be double-quoted as one string.
    -- -   __attachment_type:@\"\<string>\"@__ For example: **attachment_type:\"my-namespace\/my-type\"** Returns beacons having at least one attachment of the given namespaced type. Supports \"any within this namespace\" via the partial wildcard syntax: \"my-namespace\/*\". Supports multiple filters which will be combined with OR logic. The string must be double-quoted.
    -- -   __indoor_level:@\"\<string>\"@__ For example: __indoor_level:\"1\"__ Returns beacons which are located on the given indoor level. Accepts multiple filters that will be combined with OR logic.
    --
    -- Multiple filters on the same field are combined with OR logic (except registration_time which is combined with AND logic). Multiple filters on different fields are combined with AND logic. Filters should be separated by spaces.
    --
    -- As with any HTTP query string parameter, the whole filter expression must be URL-encoded.
    --
    -- Example REST request: @GET \/v1beta1\/beacons?q=status:active%20lat:51.123%20lng:-1.095%20radius:1000@
    q :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsList' with the minimum fields required to make a request.
newProximityBeaconBeaconsList ::
  ProximityBeaconBeaconsList
newProximityBeaconBeaconsList =
  ProximityBeaconBeaconsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = Core.Nothing,
      q = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ProximityBeaconBeaconsList
  where
  type
    Rs ProximityBeaconBeaconsList =
      ListBeaconsResponse
  type
    Scopes ProximityBeaconBeaconsList =
      '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
  requestClient ProximityBeaconBeaconsList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      projectId
      q
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      proximityBeaconService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ProximityBeaconBeaconsListResource
          )
          Core.mempty
