{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Export
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the messages to a destination. To filter messages to be exported, define a filter using the start and end time, relative to the message generation time (MSH.7). This API returns an Operation that can be used to track the status of the job by calling GetOperation. Immediate fatal errors appear in the error field. Otherwise, when the operation finishes, a detailed response of type ExportMessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.export@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Export
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsHl7V2StoresExportResource

    -- ** Constructing a Request
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresExport
    , HealthcareProjectsLocationsDatasetsHl7V2StoresExport
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.export@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresExport' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresExportResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "export" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ExportMessagesRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Exports the messages to a destination. To filter messages to be exported, define a filter using the start and end time, relative to the message generation time (MSH.7). This API returns an Operation that can be used to track the status of the job by calling GetOperation. Immediate fatal errors appear in the error field. Otherwise, when the operation finishes, a detailed response of type ExportMessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresExport' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresExport = HealthcareProjectsLocationsDatasetsHl7V2StoresExport
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the source HL7v2 store, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/hl7v2Stores\/{hl7v2_store_id}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ExportMessagesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresExport' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresExport 
    ::  Core.Text
       -- ^  The name of the source HL7v2 store, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/hl7v2Stores\/{hl7v2_store_id}@ See 'name'.
    -> ExportMessagesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsDatasetsHl7V2StoresExport
newHealthcareProjectsLocationsDatasetsHl7V2StoresExport name payload =
  HealthcareProjectsLocationsDatasetsHl7V2StoresExport
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsHl7V2StoresExport
         where
        type Rs
               HealthcareProjectsLocationsDatasetsHl7V2StoresExport
             = Operation
        type Scopes
               HealthcareProjectsLocationsDatasetsHl7V2StoresExport
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          HealthcareProjectsLocationsDatasetsHl7V2StoresExport{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsHl7V2StoresExportResource)
                      Core.mempty

