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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SetBlobStorageSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SetBlobStorageSettings sets the blob storage settings of the specified resources.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.setBlobStorageSettings@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SetBlobStorageSettings
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettingsResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.setBlobStorageSettings@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettingsResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "setBlobStorageSettings"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       SetBlobStorageSettingsRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | SetBlobStorageSettings sets the blob storage settings of the specified resources.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings = HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SetBlobStorageSettingsRequest
      -- | Required. The path of the resource to update the blob storage settings in the format of @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}@, @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/@, or @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/instances\/{instanceUID}@. If @filter_config@ is specified, set the value of @resource@ to the resource name of a DICOM store in the format @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}@.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings 
    ::  SetBlobStorageSettingsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The path of the resource to update the blob storage settings in the format of @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}@, @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/@, or @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/instances\/{instanceUID}@. If @filter_config@ is specified, set the value of @resource@ to the resource name of a DICOM store in the format @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}@. See 'resource'.
    -> HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings
newHealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings payload resource =
  HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings
         where
        type Rs
               HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings
             = Operation
        type Scopes
               HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettings{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsDicomStoresSetBlobStorageSettingsResource)
                      Core.mempty

