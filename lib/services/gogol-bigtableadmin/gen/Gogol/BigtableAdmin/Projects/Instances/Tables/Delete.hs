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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a specified table and all of its data.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.delete@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.Delete
    (
    -- * Resource
      BigtableAdminProjectsInstancesTablesDeleteResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesTablesDelete (..)
    , newBigtableAdminProjectsInstancesTablesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.tables.delete@ method which the
-- 'BigtableAdminProjectsInstancesTablesDelete' request conforms to.
type BigtableAdminProjectsInstancesTablesDeleteResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Permanently deletes a specified table and all of its data.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesDelete' smart constructor.
data BigtableAdminProjectsInstancesTablesDelete = BigtableAdminProjectsInstancesTablesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the table to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesDelete' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesDelete 
    ::  Core.Text
       -- ^  Required. The unique name of the table to be deleted. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'name'.
    -> BigtableAdminProjectsInstancesTablesDelete
newBigtableAdminProjectsInstancesTablesDelete name =
  BigtableAdminProjectsInstancesTablesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BigtableAdminProjectsInstancesTablesDelete
         where
        type Rs BigtableAdminProjectsInstancesTablesDelete =
             Empty
        type Scopes
               BigtableAdminProjectsInstancesTablesDelete
             =
             '[Bigtable'Admin, Bigtable'Admin'Table,
               CloudBigtable'Admin, CloudBigtable'Admin'Table,
               CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesTablesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesTablesDeleteResource)
                      Core.mempty

