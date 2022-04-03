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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Import
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Import messages to the HL7v2 store by loading data from the specified sources. This method is optimized to load large quantities of data using import semantics that ignore some HL7v2 store configuration options and are not suitable for all use cases. It is primarily intended to load data into an empty HL7v2 store that is not being used by other clients. An existing message will be overwritten if a duplicate message is imported. A duplicate message is a message with the same raw bytes as a message that already exists in this HL7v2 store. When a message is overwritten, its labels will also be overwritten. The import operation is idempotent unless the input data contains multiple valid messages with the same raw bytes but different labels. In that case, after the import completes, the store contains exactly one message with those raw bytes but there is no ordering guarantee on which version of the labels it has. The operation result counters do not count duplicated raw bytes as an error and count one success for
-- each message in the input, which might result in a success count larger than the number of messages in the HL7v2 store. If some messages fail to import, for example due to parsing errors, successfully imported messages are not rolled back. This method returns an Operation that can be used to track the status of the import by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>). Otherwise, when the operation finishes, a response of type ImportMessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.import@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Import
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsHl7V2StoresImportResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsHl7V2StoresImport (..),
    newHealthcareProjectsLocationsDatasetsHl7V2StoresImport,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.import@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresImport' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresImportResource =
  "v1"
    Core.:> Core.CaptureMode "name" "import" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ImportMessagesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Import messages to the HL7v2 store by loading data from the specified sources. This method is optimized to load large quantities of data using import semantics that ignore some HL7v2 store configuration options and are not suitable for all use cases. It is primarily intended to load data into an empty HL7v2 store that is not being used by other clients. An existing message will be overwritten if a duplicate message is imported. A duplicate message is a message with the same raw bytes as a message that already exists in this HL7v2 store. When a message is overwritten, its labels will also be overwritten. The import operation is idempotent unless the input data contains multiple valid messages with the same raw bytes but different labels. In that case, after the import completes, the store contains exactly one message with those raw bytes but there is no ordering guarantee on which version of the labels it has. The operation result counters do not count duplicated raw bytes as an error and count one success for
-- each message in the input, which might result in a success count larger than the number of messages in the HL7v2 store. If some messages fail to import, for example due to parsing errors, successfully imported messages are not rolled back. This method returns an Operation that can be used to track the status of the import by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>). Otherwise, when the operation finishes, a response of type ImportMessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresImport' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresImport = HealthcareProjectsLocationsDatasetsHl7V2StoresImport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the target HL7v2 store, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/hl7v2Stores\/{hl7v2_store_id}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ImportMessagesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresImport' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresImport ::
  -- |  The name of the target HL7v2 store, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/hl7v2Stores\/{hl7v2_store_id}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ImportMessagesRequest ->
  HealthcareProjectsLocationsDatasetsHl7V2StoresImport
newHealthcareProjectsLocationsDatasetsHl7V2StoresImport name payload =
  HealthcareProjectsLocationsDatasetsHl7V2StoresImport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsHl7V2StoresImport
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsHl7V2StoresImport =
      Operation
  type
    Scopes
      HealthcareProjectsLocationsDatasetsHl7V2StoresImport =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsHl7V2StoresImport {..} =
      go
        name
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
                  HealthcareProjectsLocationsDatasetsHl7V2StoresImportResource
            )
            Core.mempty
