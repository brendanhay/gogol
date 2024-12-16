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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Clusters.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a cluster.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.get@.
module Gogol.BigtableAdmin.Projects.Instances.Clusters.Get
    (
    -- * Resource
      BigtableAdminProjectsInstancesClustersGetResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesClustersGet (..)
    , newBigtableAdminProjectsInstancesClustersGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.clusters.get@ method which the
-- 'BigtableAdminProjectsInstancesClustersGet' request conforms to.
type BigtableAdminProjectsInstancesClustersGetResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Cluster

-- | Gets information about a cluster.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersGet' smart constructor.
data BigtableAdminProjectsInstancesClustersGet = BigtableAdminProjectsInstancesClustersGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the requested cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersGet' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersGet 
    ::  Core.Text
       -- ^  Required. The unique name of the requested cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@. See 'name'.
    -> BigtableAdminProjectsInstancesClustersGet
newBigtableAdminProjectsInstancesClustersGet name =
  BigtableAdminProjectsInstancesClustersGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BigtableAdminProjectsInstancesClustersGet
         where
        type Rs BigtableAdminProjectsInstancesClustersGet =
             Cluster
        type Scopes BigtableAdminProjectsInstancesClustersGet
             =
             '[Bigtable'Admin, Bigtable'Admin'Cluster,
               Bigtable'Admin'Instance, CloudBigtable'Admin,
               CloudBigtable'Admin'Cluster,
               CloudPlatform'FullControl, CloudPlatform'ReadOnly]
        requestClient
          BigtableAdminProjectsInstancesClustersGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesClustersGetResource)
                      Core.mempty

