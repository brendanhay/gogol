{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Rollback
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back messages from the HL7v2 store to the specified time. This method returns an Operation that can be used to track the status of the rollback by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>). Otherwise, when the operation finishes, a detailed response of type RollbackHl7V2MessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.rollback@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Rollback
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsHl7V2StoresRollbackResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsHl7V2StoresRollback (..)
    , newHealthcareProjectsLocationsDatasetsHl7V2StoresRollback
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.rollback@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresRollback' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresRollbackResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "rollback" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       RollbackHl7V2MessagesRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Rolls back messages from the HL7v2 store to the specified time. This method returns an Operation that can be used to track the status of the rollback by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>). Otherwise, when the operation finishes, a detailed response of type RollbackHl7V2MessagesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresRollback' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresRollback = HealthcareProjectsLocationsDatasetsHl7V2StoresRollback
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the HL7v2 store to rollback, in the format of \"projects\/{project/id}\/locations\/{location/id}\/datasets\/{dataset/id} \/hl7V2Stores\/{hl7v2/store_id}\".
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: RollbackHl7V2MessagesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresRollback' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresRollback 
    ::  Core.Text
       -- ^  Required. The name of the HL7v2 store to rollback, in the format of \"projects\/{project/id}\/locations\/{location/id}\/datasets\/{dataset/id} \/hl7V2Stores\/{hl7v2/store_id}\". See 'name'.
    -> RollbackHl7V2MessagesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsDatasetsHl7V2StoresRollback
newHealthcareProjectsLocationsDatasetsHl7V2StoresRollback name payload =
  HealthcareProjectsLocationsDatasetsHl7V2StoresRollback
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsHl7V2StoresRollback
         where
        type Rs
               HealthcareProjectsLocationsDatasetsHl7V2StoresRollback
             = Operation
        type Scopes
               HealthcareProjectsLocationsDatasetsHl7V2StoresRollback
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsHl7V2StoresRollback{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsHl7V2StoresRollbackResource)
                      Core.mempty

