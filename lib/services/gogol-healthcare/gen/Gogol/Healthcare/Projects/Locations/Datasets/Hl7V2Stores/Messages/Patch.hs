{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the message. The contents of the message in Message.data and data extracted from the contents such as Message.create_time cannot be altered. Only the Message.labels field is allowed to be updated. The labels in the request are merged with the existing set of labels. Existing labels with the same keys are updated.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.patch@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Patch
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatchResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch (..),
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.patch@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Message
    Core.:> Core.Patch '[Core.JSON] Message

-- | Update the message. The contents of the message in Message.data and data extracted from the contents such as Message.create_time cannot be altered. Only the Message.labels field is allowed to be updated. The labels in the request are merged with the existing set of labels. Existing labels with the same keys are updated.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch = HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. Resource name of the Message, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7_v2_store_id}\/messages\/{message_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Message,
    -- | Required. The update mask applies to the resource. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch ::
  -- |  Output only. Resource name of the Message, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7_v2_store_id}\/messages\/{message_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Message ->
  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch
  name
  payload =
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch
  where
  type
    Rs HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch =
      Message
  type
    Scopes
      HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesPatchResource
            )
            Core.mempty
