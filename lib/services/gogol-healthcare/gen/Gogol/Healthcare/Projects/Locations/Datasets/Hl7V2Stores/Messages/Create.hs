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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub\/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub\/Sub topic, the adapter transmits the message when a notification is received.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Create
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreateResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate (..),
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "messages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateMessageRequest
    Core.:> Core.Post '[Core.JSON] Message

-- | Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub\/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub\/Sub topic, the adapter transmits the message when a notification is received.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate = HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the dataset this message belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateMessageRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate ::
  -- |  The name of the dataset this message belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateMessageRequest ->
  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate parent payload =
  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate
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
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate =
      Message
  type
    Scopes
      HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreate {..} =
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
                  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesCreateResource
            )
            Core.mempty
