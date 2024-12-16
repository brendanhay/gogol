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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an AuthorizedView in a table.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.authorizedViews.patch@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.Patch
    (
    -- * Resource
      BigtableAdminProjectsInstancesTablesAuthorizedViewsPatchResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch (..)
    , newBigtableAdminProjectsInstancesTablesAuthorizedViewsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.tables.authorizedViews.patch@ method which the
-- 'BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch' request conforms to.
type BigtableAdminProjectsInstancesTablesAuthorizedViewsPatchResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "ignoreWarnings" Core.Bool Core.:>
                 Core.QueryParam "updateMask" Core.FieldMask Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] AuthorizedView Core.:>
                           Core.Patch '[Core.JSON] Operation

-- | Updates an AuthorizedView in a table.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesAuthorizedViewsPatch' smart constructor.
data BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch = BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. If true, ignore the safety checks when updating the AuthorizedView.
    , ignoreWarnings :: (Core.Maybe Core.Bool)
      -- | Identifier. The name of this AuthorizedView. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedViews\/{authorized_view}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AuthorizedView
      -- | Optional. The list of fields to update. A mask specifying which fields in the AuthorizedView resource should be updated. This mask is relative to the AuthorizedView resource, not to the request message. A field will be overwritten if it is in the mask. If empty, all fields set in the request will be overwritten. A special value @*@ means to overwrite all fields (including fields not set in the request).
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesAuthorizedViewsPatch 
    ::  Core.Text
       -- ^  Identifier. The name of this AuthorizedView. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedViews\/{authorized_view}@ See 'name'.
    -> AuthorizedView
       -- ^  Multipart request metadata. See 'payload'.
    -> BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch
newBigtableAdminProjectsInstancesTablesAuthorizedViewsPatch name payload =
  BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , ignoreWarnings = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch
         where
        type Rs
               BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch
             = Operation
        type Scopes
               BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch
             =
             '[Bigtable'Admin, Bigtable'Admin'Table,
               CloudBigtable'Admin, CloudBigtable'Admin'Table,
               CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesTablesAuthorizedViewsPatch{..}
          = go name xgafv accessToken callback ignoreWarnings
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesTablesAuthorizedViewsPatchResource)
                      Core.mempty

