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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.PartialUpdateInstance
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Partially updates an instance within a project. This method can modify all fields of an Instance and is the preferred way to update an Instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.partialUpdateInstance@.
module Gogol.BigtableAdmin.Projects.Instances.PartialUpdateInstance
  ( -- * Resource
    BigtableAdminProjectsInstancesPartialUpdateInstanceResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesPartialUpdateInstance (..),
    newBigtableAdminProjectsInstancesPartialUpdateInstance,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.partialUpdateInstance@ method which the
-- 'BigtableAdminProjectsInstancesPartialUpdateInstance' request conforms to.
type BigtableAdminProjectsInstancesPartialUpdateInstanceResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Instance
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Partially updates an instance within a project. This method can modify all fields of an Instance and is the preferred way to update an Instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesPartialUpdateInstance' smart constructor.
data BigtableAdminProjectsInstancesPartialUpdateInstance = BigtableAdminProjectsInstancesPartialUpdateInstance
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique name of the instance. Values are of the form @projects\/{project}\/instances\/a-z+[a-z0-9]@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Instance,
    -- | Required. The subset of Instance fields which should be replaced. Must be explicitly set.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesPartialUpdateInstance' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesPartialUpdateInstance ::
  -- |  The unique name of the instance. Values are of the form @projects\/{project}\/instances\/a-z+[a-z0-9]@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Instance ->
  BigtableAdminProjectsInstancesPartialUpdateInstance
newBigtableAdminProjectsInstancesPartialUpdateInstance name payload =
  BigtableAdminProjectsInstancesPartialUpdateInstance
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesPartialUpdateInstance
  where
  type
    Rs
      BigtableAdminProjectsInstancesPartialUpdateInstance =
      Operation
  type
    Scopes
      BigtableAdminProjectsInstancesPartialUpdateInstance =
      '[ Bigtable'Admin,
         Bigtable'Admin'Cluster,
         Bigtable'Admin'Instance,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Cluster,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesPartialUpdateInstance {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesPartialUpdateInstanceResource
            )
            Core.mempty
