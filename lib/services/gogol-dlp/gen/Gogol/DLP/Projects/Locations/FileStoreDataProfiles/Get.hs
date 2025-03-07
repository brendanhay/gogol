{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.DLP.Projects.Locations.FileStoreDataProfiles.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a file store data profile.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.fileStoreDataProfiles.get@.
module Gogol.DLP.Projects.Locations.FileStoreDataProfiles.Get
  ( -- * Resource
    DLPProjectsLocationsFileStoreDataProfilesGetResource,

    -- ** Constructing a Request
    DLPProjectsLocationsFileStoreDataProfilesGet (..),
    newDLPProjectsLocationsFileStoreDataProfilesGet,
  )
where

import Gogol.DLP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dlp.projects.locations.fileStoreDataProfiles.get@ method which the
-- 'DLPProjectsLocationsFileStoreDataProfilesGet' request conforms to.
type DLPProjectsLocationsFileStoreDataProfilesGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GooglePrivacyDlpV2FileStoreDataProfile

-- | Gets a file store data profile.
--
-- /See:/ 'newDLPProjectsLocationsFileStoreDataProfilesGet' smart constructor.
data DLPProjectsLocationsFileStoreDataProfilesGet = DLPProjectsLocationsFileStoreDataProfilesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name, for example @organizations\/12345\/locations\/us\/fileStoreDataProfiles\/53234423@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsFileStoreDataProfilesGet' with the minimum fields required to make a request.
newDLPProjectsLocationsFileStoreDataProfilesGet ::
  -- |  Required. Resource name, for example @organizations\/12345\/locations\/us\/fileStoreDataProfiles\/53234423@. See 'name'.
  Core.Text ->
  DLPProjectsLocationsFileStoreDataProfilesGet
newDLPProjectsLocationsFileStoreDataProfilesGet name =
  DLPProjectsLocationsFileStoreDataProfilesGet
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
    DLPProjectsLocationsFileStoreDataProfilesGet
  where
  type
    Rs DLPProjectsLocationsFileStoreDataProfilesGet =
      GooglePrivacyDlpV2FileStoreDataProfile
  type
    Scopes DLPProjectsLocationsFileStoreDataProfilesGet =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsLocationsFileStoreDataProfilesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dLPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DLPProjectsLocationsFileStoreDataProfilesGetResource
          )
          Core.mempty
