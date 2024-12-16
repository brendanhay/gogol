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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new backup schedule.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.backupSchedules.create@.
module Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.Create
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesBackupSchedulesCreateResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesDatabasesBackupSchedulesCreate (..)
    , newSpannerProjectsInstancesDatabasesBackupSchedulesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.backupSchedules.create@ method which the
-- 'SpannerProjectsInstancesDatabasesBackupSchedulesCreate' request conforms to.
type SpannerProjectsInstancesDatabasesBackupSchedulesCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "backupSchedules" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "backupScheduleId" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] BackupSchedule Core.:>
                           Core.Post '[Core.JSON] BackupSchedule

-- | Creates a new backup schedule.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesBackupSchedulesCreate' smart constructor.
data SpannerProjectsInstancesDatabasesBackupSchedulesCreate = SpannerProjectsInstancesDatabasesBackupSchedulesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. The Id to use for the backup schedule. The @backup_schedule_id@ appended to @parent@ forms the full backup schedule name of the form @projects\/\/instances\/\/databases\/\/backupSchedules\/@.
    , backupScheduleId :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the database that this backup schedule applies to.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: BackupSchedule
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesBackupSchedulesCreate' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesBackupSchedulesCreate 
    ::  Core.Text
       -- ^  Required. The name of the database that this backup schedule applies to. See 'parent'.
    -> BackupSchedule
       -- ^  Multipart request metadata. See 'payload'.
    -> SpannerProjectsInstancesDatabasesBackupSchedulesCreate
newSpannerProjectsInstancesDatabasesBackupSchedulesCreate parent payload =
  SpannerProjectsInstancesDatabasesBackupSchedulesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , backupScheduleId = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesBackupSchedulesCreate
         where
        type Rs
               SpannerProjectsInstancesDatabasesBackupSchedulesCreate
             = BackupSchedule
        type Scopes
               SpannerProjectsInstancesDatabasesBackupSchedulesCreate
             = '[CloudPlatform'FullControl, Spanner'Admin]
        requestClient
          SpannerProjectsInstancesDatabasesBackupSchedulesCreate{..}
          = go parent xgafv accessToken backupScheduleId
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesBackupSchedulesCreateResource)
                      Core.mempty

