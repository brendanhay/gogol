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
-- Module      : Gogol.SQLAdmin.Sql.BackupRuns.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the backup taken by a backup run.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.backupRuns.delete@.
module Gogol.SQLAdmin.Sql.BackupRuns.Delete
    (
    -- * Resource
      SqlBackupRunsDeleteResource

    -- ** Constructing a Request
    , SqlBackupRunsDelete (..)
    , newSqlBackupRunsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.backupRuns.delete@ method which the
-- 'SqlBackupRunsDelete' request conforms to.
type SqlBackupRunsDeleteResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "backupRuns" Core.:>
                 Core.Capture "id" Core.Int64 Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Delete '[Core.JSON] Operation

-- | Deletes the backup taken by a backup run.
--
-- /See:/ 'newSqlBackupRunsDelete' smart constructor.
data SqlBackupRunsDelete = SqlBackupRunsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the backup run to delete. To find a backup run ID, use the <https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/backupRuns/list list> method.
    , id :: Core.Int64
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

-- | Creates a value of 'SqlBackupRunsDelete' with the minimum fields required to make a request.
newSqlBackupRunsDelete 
    ::  Core.Int64
       -- ^  The ID of the backup run to delete. To find a backup run ID, use the <https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/backupRuns/list list> method. See 'id'.
    -> Core.Text
       -- ^  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
    -> Core.Text
       -- ^  Project ID of the project that contains the instance. See 'project'.
    -> SqlBackupRunsDelete
newSqlBackupRunsDelete id instance' project =
  SqlBackupRunsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , instance' = instance'
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlBackupRunsDelete where
        type Rs SqlBackupRunsDelete = Operation
        type Scopes SqlBackupRunsDelete =
             '[CloudPlatform'FullControl, Sqlservice'Admin]
        requestClient SqlBackupRunsDelete{..}
          = go project instance' id xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SqlBackupRunsDeleteResource)
                      Core.mempty

