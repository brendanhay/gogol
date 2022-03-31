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
-- Module      : Gogol.File.Projects.Locations.Instances.Restore
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores an existing instance\'s file share from a backup. The capacity of the instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.restore@.
module Gogol.File.Projects.Locations.Instances.Restore
  ( -- * Resource
    FileProjectsLocationsInstancesRestoreResource,

    -- ** Constructing a Request
    newFileProjectsLocationsInstancesRestore,
    FileProjectsLocationsInstancesRestore,
  )
where

import Gogol.File.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @file.projects.locations.instances.restore@ method which the
-- 'FileProjectsLocationsInstancesRestore' request conforms to.
type FileProjectsLocationsInstancesRestoreResource =
  "v1"
    Core.:> Core.CaptureMode "name" "restore" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RestoreInstanceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Restores an existing instance\'s file share from a backup. The capacity of the instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).
--
-- /See:/ 'newFileProjectsLocationsInstancesRestore' smart constructor.
data FileProjectsLocationsInstancesRestore = FileProjectsLocationsInstancesRestore
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the instance, in the format @projects\/{project_number}\/locations\/{location_id}\/instances\/{instance_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RestoreInstanceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesRestore' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesRestore ::
  -- |  Required. The resource name of the instance, in the format @projects\/{project_number}\/locations\/{location_id}\/instances\/{instance_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RestoreInstanceRequest ->
  FileProjectsLocationsInstancesRestore
newFileProjectsLocationsInstancesRestore name payload =
  FileProjectsLocationsInstancesRestore
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
    FileProjectsLocationsInstancesRestore
  where
  type
    Rs FileProjectsLocationsInstancesRestore =
      Operation
  type
    Scopes FileProjectsLocationsInstancesRestore =
      '[CloudPlatform'FullControl]
  requestClient
    FileProjectsLocationsInstancesRestore {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        fileService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FileProjectsLocationsInstancesRestoreResource
            )
            Core.mempty
