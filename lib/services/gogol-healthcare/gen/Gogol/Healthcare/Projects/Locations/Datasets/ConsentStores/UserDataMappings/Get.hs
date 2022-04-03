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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified User data mapping.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.get@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Get
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGetResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.get@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UserDataMapping

-- | Gets the specified User data mapping.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet = HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the User data mapping to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet ::
  -- |  Required. The resource name of the User data mapping to retrieve. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet name =
  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet =
      UserDataMapping
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGet {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsGetResource
            )
            Core.mempty
