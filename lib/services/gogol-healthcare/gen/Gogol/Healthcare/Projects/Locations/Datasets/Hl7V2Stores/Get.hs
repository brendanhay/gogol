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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified HL7v2 store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.get@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Get
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsHl7V2StoresGetResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsHl7V2StoresGet (..),
    newHealthcareProjectsLocationsDatasetsHl7V2StoresGet,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.get@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresGet' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Hl7V2Store

-- | Gets the specified HL7v2 store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresGet' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresGet = HealthcareProjectsLocationsDatasetsHl7V2StoresGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the HL7v2 store to get.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresGet' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresGet ::
  -- |  Required. The resource name of the HL7v2 store to get. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsHl7V2StoresGet
newHealthcareProjectsLocationsDatasetsHl7V2StoresGet name =
  HealthcareProjectsLocationsDatasetsHl7V2StoresGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsHl7V2StoresGet
  where
  type
    Rs HealthcareProjectsLocationsDatasetsHl7V2StoresGet =
      Hl7V2Store
  type
    Scopes HealthcareProjectsLocationsDatasetsHl7V2StoresGet =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient HealthcareProjectsLocationsDatasetsHl7V2StoresGet {..} =
    go
      name
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
                HealthcareProjectsLocationsDatasetsHl7V2StoresGetResource
          )
          Core.mempty
