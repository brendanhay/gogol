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
-- Module      : Gogol.File.Projects.Locations.Instances.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance. When creating from a backup, the capacity of the new instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.create@.
module Gogol.File.Projects.Locations.Instances.Create
  ( -- * Resource
    FileProjectsLocationsInstancesCreateResource,

    -- ** Constructing a Request
    FileProjectsLocationsInstancesCreate (..),
    newFileProjectsLocationsInstancesCreate,
  )
where

import Gogol.File.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @file.projects.locations.instances.create@ method which the
-- 'FileProjectsLocationsInstancesCreate' request conforms to.
type FileProjectsLocationsInstancesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "instanceId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Instance
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an instance. When creating from a backup, the capacity of the new instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).
--
-- /See:/ 'newFileProjectsLocationsInstancesCreate' smart constructor.
data FileProjectsLocationsInstancesCreate = FileProjectsLocationsInstancesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the instance to create. The name must be unique for the specified project and location.
    instanceId :: (Core.Maybe Core.Text),
    -- | Required. The instance\'s project and location, in the format @projects\/{project_id}\/locations\/{location}@. In Filestore, locations map to Google Cloud zones, for example __us-west1-b__.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Instance,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesCreate' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesCreate ::
  -- |  Required. The instance\'s project and location, in the format @projects\/{project_id}\/locations\/{location}@. In Filestore, locations map to Google Cloud zones, for example __us-west1-b__. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Instance ->
  FileProjectsLocationsInstancesCreate
newFileProjectsLocationsInstancesCreate parent payload =
  FileProjectsLocationsInstancesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FileProjectsLocationsInstancesCreate
  where
  type
    Rs FileProjectsLocationsInstancesCreate =
      Operation
  type
    Scopes FileProjectsLocationsInstancesCreate =
      '[CloudPlatform'FullControl]
  requestClient
    FileProjectsLocationsInstancesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        instanceId
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
                  FileProjectsLocationsInstancesCreateResource
            )
            Core.mempty
