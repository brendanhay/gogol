{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SQLAdmin.Sql.BackupRuns.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all backup runs associated with the project or a given instance and configuration in the reverse chronological order of the backup initiation time.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.backupRuns.list@.
module Gogol.SQLAdmin.Sql.BackupRuns.List
    (
    -- * Resource
      SqlBackupRunsListResource

    -- ** Constructing a Request
    , newSqlBackupRunsList
    , SqlBackupRunsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.backupRuns.list@ method which the
-- 'SqlBackupRunsList' request conforms to.
type SqlBackupRunsListResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "backupRuns" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "maxResults" Core.Int32 Core.:>
                         Core.QueryParam "pageToken" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] BackupRunsListResponse

-- | Lists all backup runs associated with the project or a given instance and configuration in the reverse chronological order of the backup initiation time.
--
-- /See:/ 'newSqlBackupRunsList' smart constructor.
data SqlBackupRunsList = SqlBackupRunsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Cloud SQL instance ID, or \"-\" for all instances. This does not include the project ID.
    , instance' :: Core.Text
      -- | Maximum number of backup runs per response.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | A previously-returned page token representing part of the larger set of results to view.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Project ID of the project that contains the instance.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlBackupRunsList' with the minimum fields required to make a request.
newSqlBackupRunsList 
    ::  Core.Text
       -- ^  Cloud SQL instance ID, or \"-\" for all instances. This does not include the project ID. See 'instance''.
    -> Core.Text
       -- ^  Project ID of the project that contains the instance. See 'project'.
    -> SqlBackupRunsList
newSqlBackupRunsList instance' project =
  SqlBackupRunsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instance' = instance'
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlBackupRunsList where
        type Rs SqlBackupRunsList = BackupRunsListResponse
        type Scopes SqlBackupRunsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SqlBackupRunsList{..}
          = go project instance' xgafv accessToken callback
              maxResults
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy SqlBackupRunsListResource)
                      Core.mempty

