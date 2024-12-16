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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.RetrieveSeries
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveSeries returns all instances within the given study and series. See [RetrieveTransaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4). For details on the implementation of RetrieveSeries, see <https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances DICOM study\/series\/instances> in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveSeries, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-dicom Retrieve DICOM data>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.RetrieveSeries
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeriesResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries (..)
    , newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeriesResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "dicomWeb" Core.:>
           Core.Capture "dicomWebPath" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] HttpBody

-- | RetrieveSeries returns all instances within the given study and series. See [RetrieveTransaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4). For details on the implementation of RetrieveSeries, see <https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances DICOM study\/series\/instances> in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveSeries, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-dicom Retrieve DICOM data>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries = HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The path of the RetrieveSeries DICOMweb request. For example, @studies\/{study_uid}\/series\/{series_uid}@.
    , dicomWebPath :: Core.Text
      -- | Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries 
    ::  Core.Text
       -- ^  Required. The path of the RetrieveSeries DICOMweb request. For example, @studies\/{study_uid}\/series\/{series_uid}@. See 'dicomWebPath'.
    -> Core.Text
       -- ^  Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. See 'parent'.
    -> HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries dicomWebPath parent =
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , dicomWebPath = dicomWebPath
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries
         where
        type Rs
               HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries
             = HttpBody
        type Scopes
               HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeries{..}
          = go parent dicomWebPath xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveSeriesResource)
                      Core.mempty

