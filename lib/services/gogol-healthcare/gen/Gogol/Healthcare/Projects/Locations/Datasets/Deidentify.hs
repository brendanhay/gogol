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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Deidentify
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new dataset containing de-identified data from the source dataset. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifySummary. If errors occur, error is set. The LRO result may still be successful if de-identification fails for some DICOM instances. The new de-identified dataset will not contain these failed resources. Failed resource totals are tracked in Operation.metadata. Error details are also logged to Cloud Logging. For more information, see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.deidentify@.
module Gogol.Healthcare.Projects.Locations.Datasets.Deidentify
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsDeidentifyResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsDeidentify (..)
    , newHealthcareProjectsLocationsDatasetsDeidentify
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.deidentify@ method which the
-- 'HealthcareProjectsLocationsDatasetsDeidentify' request conforms to.
type HealthcareProjectsLocationsDatasetsDeidentifyResource
     =
     "v1" Core.:>
       Core.CaptureMode "sourceDataset" "deidentify"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] DeidentifyDatasetRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new dataset containing de-identified data from the source dataset. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifySummary. If errors occur, error is set. The LRO result may still be successful if de-identification fails for some DICOM instances. The new de-identified dataset will not contain these failed resources. Failed resource totals are tracked in Operation.metadata. Error details are also logged to Cloud Logging. For more information, see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDeidentify' smart constructor.
data HealthcareProjectsLocationsDatasetsDeidentify = HealthcareProjectsLocationsDatasetsDeidentify
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: DeidentifyDatasetRequest
      -- | Required. Source dataset resource name. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}@.
    , sourceDataset :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDeidentify' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDeidentify 
    ::  DeidentifyDatasetRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. Source dataset resource name. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}@. See 'sourceDataset'.
    -> HealthcareProjectsLocationsDatasetsDeidentify
newHealthcareProjectsLocationsDatasetsDeidentify payload sourceDataset =
  HealthcareProjectsLocationsDatasetsDeidentify
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , sourceDataset = sourceDataset
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsDeidentify
         where
        type Rs HealthcareProjectsLocationsDatasetsDeidentify
             = Operation
        type Scopes
               HealthcareProjectsLocationsDatasetsDeidentify
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsDeidentify{..}
          = go sourceDataset xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsDeidentifyResource)
                      Core.mempty

