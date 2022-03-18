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
-- Module      : Gogol.ProximityBeacon.Beacons.Attachments.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified attachment for the given beacon. Each attachment has a unique attachment name (@attachmentName@) which is returned when you fetch the attachment data via this API. You specify this with the delete request to control which attachment is removed. This operation cannot be undone.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.delete@.
module Gogol.ProximityBeacon.Beacons.Attachments.Delete
  ( -- * Resource
    ProximityBeaconBeaconsAttachmentsDeleteResource,

    -- ** Constructing a Request
    newProximityBeaconBeaconsAttachmentsDelete,
    ProximityBeaconBeaconsAttachmentsDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.attachments.delete@ method which the
-- 'ProximityBeaconBeaconsAttachmentsDelete' request conforms to.
type ProximityBeaconBeaconsAttachmentsDeleteResource =
  "v1beta1"
    Core.:> Core.Capture "attachmentName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the specified attachment for the given beacon. Each attachment has a unique attachment name (@attachmentName@) which is returned when you fetch the attachment data via this API. You specify this with the delete request to control which attachment is removed. This operation cannot be undone.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconBeaconsAttachmentsDelete' smart constructor.
data ProximityBeaconBeaconsAttachmentsDelete = ProximityBeaconBeaconsAttachmentsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The attachment name (@attachmentName@) of the attachment to remove. For example: @beacons\/3!893737abc9\/attachments\/c5e937-af0-494-959-ec49d12738@. For Eddystone-EID beacons, the beacon ID portion (@3!893737abc9@) may be the beacon\'s current EID, or its \"stable\" Eddystone-UID. Required.
    attachmentName :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The project id of the attachment to delete. If not provided, the project that is making the request is used. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconBeaconsAttachmentsDelete' with the minimum fields required to make a request.
newProximityBeaconBeaconsAttachmentsDelete ::
  -- |  The attachment name (@attachmentName@) of the attachment to remove. For example: @beacons\/3!893737abc9\/attachments\/c5e937-af0-494-959-ec49d12738@. For Eddystone-EID beacons, the beacon ID portion (@3!893737abc9@) may be the beacon\'s current EID, or its \"stable\" Eddystone-UID. Required. See 'attachmentName'.
  Core.Text ->
  ProximityBeaconBeaconsAttachmentsDelete
newProximityBeaconBeaconsAttachmentsDelete attachmentName =
  ProximityBeaconBeaconsAttachmentsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      attachmentName = attachmentName,
      callback = Core.Nothing,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ProximityBeaconBeaconsAttachmentsDelete
  where
  type
    Rs ProximityBeaconBeaconsAttachmentsDelete =
      Empty
  type
    Scopes ProximityBeaconBeaconsAttachmentsDelete =
      '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
  requestClient
    ProximityBeaconBeaconsAttachmentsDelete {..} =
      go
        attachmentName
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
                  ProximityBeaconBeaconsAttachmentsDeleteResource
            )
            Core.mempty
