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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets backup schedule for the input schedule name.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.backupSchedules.get@.
module Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.Get
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesBackupSchedulesGetResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesDatabasesBackupSchedulesGet (..)
    , newSpannerProjectsInstancesDatabasesBackupSchedulesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.backupSchedules.get@ method which the
-- 'SpannerProjectsInstancesDatabasesBackupSchedulesGet' request conforms to.
type SpannerProjectsInstancesDatabasesBackupSchedulesGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] BackupSchedule

-- | Gets backup schedule for the input schedule name.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesBackupSchedulesGet' smart constructor.
data SpannerProjectsInstancesDatabasesBackupSchedulesGet = SpannerProjectsInstancesDatabasesBackupSchedulesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the schedule to retrieve. Values are of the form @projects\/\/instances\/\/databases\/\/backupSchedules\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesBackupSchedulesGet' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesBackupSchedulesGet 
    ::  Core.Text
       -- ^  Required. The name of the schedule to retrieve. Values are of the form @projects\/\/instances\/\/databases\/\/backupSchedules\/@. See 'name'.
    -> SpannerProjectsInstancesDatabasesBackupSchedulesGet
newSpannerProjectsInstancesDatabasesBackupSchedulesGet name =
  SpannerProjectsInstancesDatabasesBackupSchedulesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesBackupSchedulesGet
         where
        type Rs
               SpannerProjectsInstancesDatabasesBackupSchedulesGet
             = BackupSchedule
        type Scopes
               SpannerProjectsInstancesDatabasesBackupSchedulesGet
             = '[CloudPlatform'FullControl, Spanner'Admin]
        requestClient
          SpannerProjectsInstancesDatabasesBackupSchedulesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesBackupSchedulesGetResource)
                      Core.mempty

