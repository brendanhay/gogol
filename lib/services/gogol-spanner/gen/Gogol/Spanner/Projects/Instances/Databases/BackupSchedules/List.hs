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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the backup schedules for the database.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.backupSchedules.list@.
module Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.List
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesBackupSchedulesListResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesDatabasesBackupSchedulesList (..)
    , newSpannerProjectsInstancesDatabasesBackupSchedulesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.backupSchedules.list@ method which the
-- 'SpannerProjectsInstancesDatabasesBackupSchedulesList' request conforms to.
type SpannerProjectsInstancesDatabasesBackupSchedulesListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "backupSchedules" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListBackupSchedulesResponse

-- | Lists all the backup schedules for the database.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesBackupSchedulesList' smart constructor.
data SpannerProjectsInstancesDatabasesBackupSchedulesList = SpannerProjectsInstancesDatabasesBackupSchedulesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Number of backup schedules to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If non-empty, @page_token@ should contain a next/page/token from a previous ListBackupSchedulesResponse to the same @parent@.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Database is the parent resource whose backup schedules should be listed. Values are of the form projects\/\/instances\/\/databases\/
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesBackupSchedulesList' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesBackupSchedulesList 
    ::  Core.Text
       -- ^  Required. Database is the parent resource whose backup schedules should be listed. Values are of the form projects\/\/instances\/\/databases\/ See 'parent'.
    -> SpannerProjectsInstancesDatabasesBackupSchedulesList
newSpannerProjectsInstancesDatabasesBackupSchedulesList parent =
  SpannerProjectsInstancesDatabasesBackupSchedulesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesBackupSchedulesList
         where
        type Rs
               SpannerProjectsInstancesDatabasesBackupSchedulesList
             = ListBackupSchedulesResponse
        type Scopes
               SpannerProjectsInstancesDatabasesBackupSchedulesList
             = '[CloudPlatform'FullControl, Spanner'Admin]
        requestClient
          SpannerProjectsInstancesDatabasesBackupSchedulesList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesBackupSchedulesListResource)
                      Core.mempty

