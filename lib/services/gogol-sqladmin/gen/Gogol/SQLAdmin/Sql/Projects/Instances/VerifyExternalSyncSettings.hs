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
-- Module      : Gogol.SQLAdmin.Sql.Projects.Instances.VerifyExternalSyncSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verify External primary instance external sync settings.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.projects.instances.verifyExternalSyncSettings@.
module Gogol.SQLAdmin.Sql.Projects.Instances.VerifyExternalSyncSettings
    (
    -- * Resource
      SqlProjectsInstancesVerifyExternalSyncSettingsResource

    -- ** Constructing a Request
    , newSqlProjectsInstancesVerifyExternalSyncSettings
    , SqlProjectsInstancesVerifyExternalSyncSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.projects.instances.verifyExternalSyncSettings@ method which the
-- 'SqlProjectsInstancesVerifyExternalSyncSettings' request conforms to.
type SqlProjectsInstancesVerifyExternalSyncSettingsResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "verifyExternalSyncSettings" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               SqlInstancesVerifyExternalSyncSettingsRequest
                               Core.:>
                               Core.Post '[Core.JSON]
                                 SqlInstancesVerifyExternalSyncSettingsResponse

-- | Verify External primary instance external sync settings.
--
-- /See:/ 'newSqlProjectsInstancesVerifyExternalSyncSettings' smart constructor.
data SqlProjectsInstancesVerifyExternalSyncSettings = SqlProjectsInstancesVerifyExternalSyncSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Cloud SQL instance ID. This does not include the project ID.
    , instance' :: Core.Text
      -- | Multipart request metadata.
    , payload :: SqlInstancesVerifyExternalSyncSettingsRequest
      -- | Project ID of the project that contains the instance.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlProjectsInstancesVerifyExternalSyncSettings' with the minimum fields required to make a request.
newSqlProjectsInstancesVerifyExternalSyncSettings 
    ::  Core.Text
       -- ^  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
    -> SqlInstancesVerifyExternalSyncSettingsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID of the project that contains the instance. See 'project'.
    -> SqlProjectsInstancesVerifyExternalSyncSettings
newSqlProjectsInstancesVerifyExternalSyncSettings instance' payload project =
  SqlProjectsInstancesVerifyExternalSyncSettings
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instance' = instance'
    , payload = payload
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SqlProjectsInstancesVerifyExternalSyncSettings
         where
        type Rs
               SqlProjectsInstancesVerifyExternalSyncSettings
             = SqlInstancesVerifyExternalSyncSettingsResponse
        type Scopes
               SqlProjectsInstancesVerifyExternalSyncSettings
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient
          SqlProjectsInstancesVerifyExternalSyncSettings{..}
          = go project instance' xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SqlProjectsInstancesVerifyExternalSyncSettingsResource)
                      Core.mempty

