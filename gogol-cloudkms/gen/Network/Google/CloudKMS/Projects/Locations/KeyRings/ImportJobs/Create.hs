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
-- Module      : Network.Google.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new ImportJob within a KeyRing. ImportJob.import_method is required.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.importJobs.create@.
module Network.Google.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Create
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsImportJobsCreateResource,

    -- ** Constructing a Request
    newCloudKMSProjectsLocationsKeyRingsImportJobsCreate,
    CloudKMSProjectsLocationsKeyRingsImportJobsCreate,
  )
where

import Network.Google.CloudKMS.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.importJobs.create@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsImportJobsCreate' request conforms to.
type CloudKMSProjectsLocationsKeyRingsImportJobsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "importJobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "importJobId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ImportJob
    Core.:> Core.Post '[Core.JSON] ImportJob

-- | Create a new ImportJob within a KeyRing. ImportJob.import_method is required.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsImportJobsCreate' smart constructor.
data CloudKMSProjectsLocationsKeyRingsImportJobsCreate = CloudKMSProjectsLocationsKeyRingsImportJobsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. It must be unique within a KeyRing and match the regular expression @[a-zA-Z0-9_-]{1,63}@
    importJobId :: (Core.Maybe Core.Text),
    -- | Required. The name of the KeyRing associated with the ImportJobs.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: ImportJob,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsImportJobsCreate' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsImportJobsCreate ::
  -- |  Required. The name of the KeyRing associated with the ImportJobs. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ImportJob ->
  CloudKMSProjectsLocationsKeyRingsImportJobsCreate
newCloudKMSProjectsLocationsKeyRingsImportJobsCreate parent payload =
  CloudKMSProjectsLocationsKeyRingsImportJobsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      importJobId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsKeyRingsImportJobsCreate
  where
  type
    Rs
      CloudKMSProjectsLocationsKeyRingsImportJobsCreate =
      ImportJob
  type
    Scopes
      CloudKMSProjectsLocationsKeyRingsImportJobsCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloudkms"
       ]
  requestClient
    CloudKMSProjectsLocationsKeyRingsImportJobsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        importJobId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudKMSService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudKMSProjectsLocationsKeyRingsImportJobsCreateResource
            )
            Core.mempty
