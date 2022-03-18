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
-- Module      : Network.Google.ProximityBeacon.Beacons.Attachments.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates the given data with the specified beacon. Attachment data must contain two parts: \<ul> \<li>A namespaced type.\<\/li> \<li>The actual attachment data itself.\<\/li> \<\/ul> The namespaced type consists of two parts, the namespace and the type. The namespace must be one of the values returned by the @namespaces@ endpoint, while the type can be a string of any characters except for the forward slash (@\/@) up to 100 characters in length.
--
-- Attachment data can be up to 1024 bytes long.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.create@.
module Network.Google.ProximityBeacon.Beacons.Attachments.Create
  ( -- * Resource
    ProximityBeaconBeaconsAttachmentsCreateResource,

    -- ** Constructing a Request
    newProximityBeaconBeaconsAttachmentsCreate,
    ProximityBeaconBeaconsAttachmentsCreate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.attachments.create@ method which the
-- 'ProximityBeaconBeaconsAttachmentsCreate' request conforms to.
type ProximityBeaconBeaconsAttachmentsCreateResource =
  "v1beta1"
    Core.:> Core.Capture "beaconName" Core.Text
    Core.:> "attachments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BeaconAttachment
    Core.:> Core.Post '[Core.JSON] BeaconAttachment

-- | Associates the given data with the specified beacon. Attachment data must contain two parts: \<ul> \<li>A namespaced type.\<\/li> \<li>The actual attachment data itself.\<\/li> \<\/ul> The namespaced type consists of two parts, the namespace and the type. The namespace must be one of the values returned by the @namespaces@ endpoint, while the type can be a string of any characters except for the forward slash (@\/@) up to 100 characters in length.
--
-- Attachment data can be up to 1024 bytes long.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconBeaconsAttachmentsCreate' smart constructor.
data ProximityBeaconBeaconsAttachmentsCreate = ProximityBeaconBeaconsAttachmentsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Beacon on which the attachment should be created. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID or the beacon\'s \"stable\" UID. Required.
    beaconName :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BeaconAttachment,
    -- | The project id of the project the attachment will belong to. If the project id is not specified then the project making the request is used. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsAttachmentsCreate' with the minimum fields required to make a request.
newProximityBeaconBeaconsAttachmentsCreate ::
  -- |  Beacon on which the attachment should be created. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID or the beacon\'s \"stable\" UID. Required. See 'beaconName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BeaconAttachment ->
  ProximityBeaconBeaconsAttachmentsCreate
newProximityBeaconBeaconsAttachmentsCreate beaconName payload =
  ProximityBeaconBeaconsAttachmentsCreate
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
    ProximityBeaconBeaconsAttachmentsCreate
  where
  type
    Rs ProximityBeaconBeaconsAttachmentsCreate =
      BeaconAttachment
  type
    Scopes ProximityBeaconBeaconsAttachmentsCreate =
      '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
  requestClient
    ProximityBeaconBeaconsAttachmentsCreate {..} =
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
                Core.Proxy
                  ProximityBeaconBeaconsAttachmentsCreateResource
            )
            Core.mempty
