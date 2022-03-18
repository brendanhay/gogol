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
-- Module      : Gogol.ProximityBeacon.Beacons.Attachments.BatchDelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes multiple attachments on a given beacon. This operation is permanent and cannot be undone.
--
-- You can optionally specify @namespacedType@ to choose which attachments should be deleted. If you do not specify @namespacedType@, all your attachments on the given beacon will be deleted. You also may explicitly specify @*\/*@ to delete all.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.batchDelete@.
module Gogol.ProximityBeacon.Beacons.Attachments.BatchDelete
  ( -- * Resource
    ProximityBeaconBeaconsAttachmentsBatchDeleteResource,

    -- ** Constructing a Request
    newProximityBeaconBeaconsAttachmentsBatchDelete,
    ProximityBeaconBeaconsAttachmentsBatchDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.attachments.batchDelete@ method which the
-- 'ProximityBeaconBeaconsAttachmentsBatchDelete' request conforms to.
type ProximityBeaconBeaconsAttachmentsBatchDeleteResource =
  "v1beta1"
    Core.:> Core.Capture "beaconName" Core.Text
    Core.:> "attachments:batchDelete"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "namespacedType" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] DeleteAttachmentsResponse

-- | Deletes multiple attachments on a given beacon. This operation is permanent and cannot be undone.
--
-- You can optionally specify @namespacedType@ to choose which attachments should be deleted. If you do not specify @namespacedType@, all your attachments on the given beacon will be deleted. You also may explicitly specify @*\/*@ to delete all.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconBeaconsAttachmentsBatchDelete' smart constructor.
data ProximityBeaconBeaconsAttachmentsBatchDelete = ProximityBeaconBeaconsAttachmentsBatchDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The beacon whose attachments should be deleted. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID or the beacon\'s \"stable\" UID. Required.
    beaconName :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Specifies the namespace and type of attachments to delete in @namespace\/type@ format. Accepts @*\/*@ to specify \"all types in all namespaces\". Optional.
    namespacedType :: (Core.Maybe Core.Text),
    -- | The project id to delete beacon attachments under. This field can be used when \"/\" is specified to mean all attachment namespaces. Projects may have multiple attachments with multiple namespaces. If \"/\" is specified and the projectId string is empty, then the project making the request is used. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsAttachmentsBatchDelete' with the minimum fields required to make a request.
newProximityBeaconBeaconsAttachmentsBatchDelete ::
  -- |  The beacon whose attachments should be deleted. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone-UID, @4@ for Eddystone-EID, @1@ for iBeacon, or @5@ for AltBeacon. For Eddystone-EID beacons, you may use either the current EID or the beacon\'s \"stable\" UID. Required. See 'beaconName'.
  Core.Text ->
  ProximityBeaconBeaconsAttachmentsBatchDelete
newProximityBeaconBeaconsAttachmentsBatchDelete beaconName =
  ProximityBeaconBeaconsAttachmentsBatchDelete
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
    ProximityBeaconBeaconsAttachmentsBatchDelete
  where
  type
    Rs ProximityBeaconBeaconsAttachmentsBatchDelete =
      DeleteAttachmentsResponse
  type
    Scopes
      ProximityBeaconBeaconsAttachmentsBatchDelete =
      '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
  requestClient
    ProximityBeaconBeaconsAttachmentsBatchDelete {..} =
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
                  ProximityBeaconBeaconsAttachmentsBatchDeleteResource
            )
            Core.mempty
