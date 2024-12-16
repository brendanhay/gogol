{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SQLAdmin.Sql.Projects.Instances.GetDiskShrinkConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get Disk Shrink Config for a given instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.projects.instances.getDiskShrinkConfig@.
module Gogol.SQLAdmin.Sql.Projects.Instances.GetDiskShrinkConfig
    (
    -- * Resource
      SqlProjectsInstancesGetDiskShrinkConfigResource

    -- ** Constructing a Request
    , SqlProjectsInstancesGetDiskShrinkConfig (..)
    , newSqlProjectsInstancesGetDiskShrinkConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.projects.instances.getDiskShrinkConfig@ method which the
-- 'SqlProjectsInstancesGetDiskShrinkConfig' request conforms to.
type SqlProjectsInstancesGetDiskShrinkConfigResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "getDiskShrinkConfig" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               SqlInstancesGetDiskShrinkConfigResponse

-- | Get Disk Shrink Config for a given instance.
--
-- /See:/ 'newSqlProjectsInstancesGetDiskShrinkConfig' smart constructor.
data SqlProjectsInstancesGetDiskShrinkConfig = SqlProjectsInstancesGetDiskShrinkConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Cloud SQL instance ID. This does not include the project ID.
    , instance' :: Core.Text
      -- | Project ID of the project that contains the instance.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlProjectsInstancesGetDiskShrinkConfig' with the minimum fields required to make a request.
newSqlProjectsInstancesGetDiskShrinkConfig 
    ::  Core.Text
       -- ^  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
    -> Core.Text
       -- ^  Project ID of the project that contains the instance. See 'project'.
    -> SqlProjectsInstancesGetDiskShrinkConfig
newSqlProjectsInstancesGetDiskShrinkConfig instance' project =
  SqlProjectsInstancesGetDiskShrinkConfig
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instance' = instance'
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SqlProjectsInstancesGetDiskShrinkConfig
         where
        type Rs SqlProjectsInstancesGetDiskShrinkConfig =
             SqlInstancesGetDiskShrinkConfigResponse
        type Scopes SqlProjectsInstancesGetDiskShrinkConfig =
             '[CloudPlatform'FullControl, Sqlservice'Admin]
        requestClient
          SqlProjectsInstancesGetDiskShrinkConfig{..}
          = go project instance' xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SqlProjectsInstancesGetDiskShrinkConfigResource)
                      Core.mempty

