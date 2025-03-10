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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for a given ImportJob.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.importJobs.get@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Get
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsImportJobsGetResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsKeyRingsImportJobsGet (..),
    newCloudKMSProjectsLocationsKeyRingsImportJobsGet,
  )
where

import Gogol.CloudKMS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.importJobs.get@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsImportJobsGet' request conforms to.
type CloudKMSProjectsLocationsKeyRingsImportJobsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ImportJob

-- | Returns metadata for a given ImportJob.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsImportJobsGet' smart constructor.
data CloudKMSProjectsLocationsKeyRingsImportJobsGet = CloudKMSProjectsLocationsKeyRingsImportJobsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the ImportJob to get.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsImportJobsGet' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsImportJobsGet ::
  -- |  Required. The name of the ImportJob to get. See 'name'.
  Core.Text ->
  CloudKMSProjectsLocationsKeyRingsImportJobsGet
newCloudKMSProjectsLocationsKeyRingsImportJobsGet name =
  CloudKMSProjectsLocationsKeyRingsImportJobsGet
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
    CloudKMSProjectsLocationsKeyRingsImportJobsGet
  where
  type Rs CloudKMSProjectsLocationsKeyRingsImportJobsGet = ImportJob
  type
    Scopes CloudKMSProjectsLocationsKeyRingsImportJobsGet =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient CloudKMSProjectsLocationsKeyRingsImportJobsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudKMSService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudKMSProjectsLocationsKeyRingsImportJobsGetResource
          )
          Core.mempty
