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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires @spanner.databases.getIamPolicy@ permission on resource. For backups, authorization requires @spanner.backups.getIamPolicy@ permission on resource. For backup schedules, authorization requires @spanner.backupSchedules.getIamPolicy@ permission on resource.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.backupSchedules.getIamPolicy@.
module Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.GetIamPolicy
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicyResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy (..)
    , newSpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.backupSchedules.getIamPolicy@ method which the
-- 'SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy' request conforms to.
type SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicyResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "getIamPolicy" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] GetIamPolicyRequest Core.:>
                       Core.Post '[Core.JSON] Policy

-- | Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires @spanner.databases.getIamPolicy@ permission on resource. For backups, authorization requires @spanner.backups.getIamPolicy@ permission on resource. For backup schedules, authorization requires @spanner.backupSchedules.getIamPolicy@ permission on resource.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy' smart constructor.
data SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy = SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GetIamPolicyRequest
      -- | REQUIRED: The Cloud Spanner resource for which the policy is being retrieved. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for database resources.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy 
    ::  GetIamPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The Cloud Spanner resource for which the policy is being retrieved. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for database resources. See 'resource'.
    -> SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy
newSpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy payload resource =
  SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy
         where
        type Rs
               SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy
             = Policy
        type Scopes
               SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy
             = '[CloudPlatform'FullControl, Spanner'Admin]
        requestClient
          SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicy{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesBackupSchedulesGetIamPolicyResource)
                      Core.mempty

