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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Archive
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Archives the specified User data mapping.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.archive@.
module Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Archive
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchiveResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive,
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.archive@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchiveResource =
  "v1"
    Core.:> Core.CaptureMode "name" "archive" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ArchiveUserDataMappingRequest
    Core.:> Core.Post '[Core.JSON] ArchiveUserDataMappingResponse

-- | Archives the specified User data mapping.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive = HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the User data mapping to archive.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ArchiveUserDataMappingRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive ::
  -- |  Required. The resource name of the User data mapping to archive. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ArchiveUserDataMappingRequest ->
  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive name payload =
  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive
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
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive =
      ArchiveUserDataMappingResponse
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchive {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsArchiveResource
            )
            Core.mempty
