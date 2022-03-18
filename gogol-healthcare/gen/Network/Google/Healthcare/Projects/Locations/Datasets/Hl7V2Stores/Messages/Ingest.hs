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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Ingest
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub\/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub\/Sub topic, the adapter transmits the message when a notification is received. If the method is successful, it generates a response containing an HL7v2 acknowledgment (@ACK@) message. If the method encounters an error, it returns a negative acknowledgment (@NACK@) message. This behavior is suitable for replying to HL7v2 interface systems that expect these acknowledgments.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest@.
module Network.Google.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Ingest
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngestResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest,
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.ingest@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngestResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "messages:ingest"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] IngestMessageRequest
    Core.:> Core.Post '[Core.JSON] IngestMessageResponse

-- | Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub\/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub\/Sub topic, the adapter transmits the message when a notification is received. If the method is successful, it generates a response containing an HL7v2 acknowledgment (@ACK@) message. If the method encounters an error, it returns a negative acknowledgment (@NACK@) message. This behavior is suitable for replying to HL7v2 interface systems that expect these acknowledgments.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest = HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the HL7v2 store this message belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: IngestMessageRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest ::
  -- |  The name of the HL7v2 store this message belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  IngestMessageRequest ->
  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest parent payload =
  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest =
      IngestMessageResponse
  type
    Scopes
      HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngest {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesIngestResource
            )
            Core.mempty
