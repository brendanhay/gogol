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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- DeleteStudy deletes all instances within the given study. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. The method returns an Operation which will be marked successful when the deletion is complete. Warning: Instances cannot be inserted into a study that is being deleted by an operation until the operation completes. For samples that show how to call DeleteStudy, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance Deleting a study, series, or instance>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.delete@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Delete
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesDeleteResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.delete@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresStudiesDeleteResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dicomWeb"
    Core.:> Core.Capture "dicomWebPath" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | DeleteStudy deletes all instances within the given study. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. The method returns an Operation which will be marked successful when the deletion is complete. Warning: Instances cannot be inserted into a study that is being deleted by an operation until the operation completes. For samples that show how to call DeleteStudy, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance Deleting a study, series, or instance>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete = HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The path of the DeleteStudy request. For example, @studies\/{study_uid}@.
    dicomWebPath :: Core.Text,
    -- |
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete ::
  -- |  The path of the DeleteStudy request. For example, @studies\/{study_uid}@. See 'dicomWebPath'.
  Core.Text ->
  -- |  See 'parent'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete dicomWebPath parent =
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dicomWebPath = dicomWebPath,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete =
      Operation
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesDelete {..} =
      go
        parent
        dicomWebPath
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsDicomStoresStudiesDeleteResource
            )
            Core.mempty
