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
-- Module      : Network.Google.ProximityBeacon.Beacons.Attachments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the attachments for the specified beacon that match the specified namespaced-type pattern.
--
-- To control which namespaced types are returned, you add the @namespacedType@ query parameter to the request. You must either use @*\/*@, to return all attachments, or the namespace must be one of the ones returned from the @namespaces@ endpoint.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.list@.
module Network.Google.ProximityBeacon.Beacons.Attachments.List
  ( -- * Resource
    ProximityBeaconBeaconsAttachmentsListResource,

    -- ** Constructing a Request
    newProximityBeaconBeaconsAttachmentsList,
    ProximityBeaconBeaconsAttachmentsList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.attachments.list@ method which the
-- 'ProximityBeaconBeaconsAttachmentsList' request conforms to.
type ProximityBeaconBeaconsAttachmentsListResource =
  "v1beta1"
    Core.:> Core.Capture "beaconName" Core.Text
    Core.:> "attachments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "namespacedType" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBeaconAttachmentsResponse

-- | Returns the attachments for the specified beacon that match the specified namespaced-type pattern.
--
-- To control which namespaced types are returned, you add the @namespacedType@ query parameter to the request. You must either use @*\/*@, to return all attachments, or the namespace must be one of the ones returned from the @namespaces@ endpoint.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconBeaconsAttachmentsList' smart constructor.
data ProximityBeaconBeaconsAttachmentsList = ProximityBeaconBeaconsAttachmentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Beacon whose attachments should be fetched. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID or the beacon\'s \"stable\" UID. Required.
    beaconName :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Specifies the namespace and type of attachment to include in response in \<var>namespace\/type\<\/var> format. Accepts @*\/*@ to specify \"all types in all namespaces\".
    namespacedType :: (Core.Maybe Core.Text),
    -- | The project id to list beacon attachments under. This field can be used when \"/\" is specified to mean all attachment namespaces. Projects may have multiple attachments with multiple namespaces. If \"/\" is specified and the projectId string is empty, then the project making the request is used. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsAttachmentsList' with the minimum fields required to make a request.
newProximityBeaconBeaconsAttachmentsList ::
  -- |  Beacon whose attachments should be fetched. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID or the beacon\'s \"stable\" UID. Required. See 'beaconName'.
  Core.Text ->
  ProximityBeaconBeaconsAttachmentsList
newProximityBeaconBeaconsAttachmentsList beaconName =
  ProximityBeaconBeaconsAttachmentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      beaconName = beaconName,
      callback = Core.Nothing,
      namespacedType = Core.Nothing,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ProximityBeaconBeaconsAttachmentsList
  where
  type
    Rs ProximityBeaconBeaconsAttachmentsList =
      ListBeaconAttachmentsResponse
  type
    Scopes ProximityBeaconBeaconsAttachmentsList =
      '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
  requestClient
    ProximityBeaconBeaconsAttachmentsList {..} =
      go
        beaconName
        xgafv
        accessToken
        callback
        namespacedType
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
                  ProximityBeaconBeaconsAttachmentsListResource
            )
            Core.mempty
