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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.get@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Get
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresGetResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresGet (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresGet,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.get@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresGet' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ConsentStore

-- | Gets the specified consent store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresGet' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresGet = HealthcareProjectsLocationsDatasetsConsentStoresGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the consent store to get.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresGet' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresGet ::
  -- |  Required. The resource name of the consent store to get. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsConsentStoresGet
newHealthcareProjectsLocationsDatasetsConsentStoresGet name =
  HealthcareProjectsLocationsDatasetsConsentStoresGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresGet
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresGet =
      ConsentStore
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresGet =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresGet {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresGetResource
            )
            Core.mempty
