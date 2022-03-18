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
-- Module      : Gogol.SQLAdmin.Sql.Instances.PromoteReplica
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Promotes the read replica instance to be a stand-alone Cloud SQL instance. Using this operation might cause your instance to restart.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.promoteReplica@.
module Gogol.SQLAdmin.Sql.Instances.PromoteReplica
    (
    -- * Resource
      SqlInstancesPromoteReplicaResource

    -- ** Constructing a Request
    , newSqlInstancesPromoteReplica
    , SqlInstancesPromoteReplica
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.promoteReplica@ method which the
-- 'SqlInstancesPromoteReplica' request conforms to.
type SqlInstancesPromoteReplicaResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "promoteReplica" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Post '[Core.JSON] Operation

-- | Promotes the read replica instance to be a stand-alone Cloud SQL instance. Using this operation might cause your instance to restart.
--
-- /See:/ 'newSqlInstancesPromoteReplica' smart constructor.
data SqlInstancesPromoteReplica = SqlInstancesPromoteReplica
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Cloud SQL read replica instance name.
    , instance' :: Core.Text
      -- | ID of the project that contains the read replica.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesPromoteReplica' with the minimum fields required to make a request.
newSqlInstancesPromoteReplica 
    ::  Core.Text
       -- ^  Cloud SQL read replica instance name. See 'instance''.
    -> Core.Text
       -- ^  ID of the project that contains the read replica. See 'project'.
    -> SqlInstancesPromoteReplica
newSqlInstancesPromoteReplica instance' project =
  SqlInstancesPromoteReplica
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instance' = instance'
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SqlInstancesPromoteReplica
         where
        type Rs SqlInstancesPromoteReplica = Operation
        type Scopes SqlInstancesPromoteReplica =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SqlInstancesPromoteReplica{..}
          = go project instance' xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SqlInstancesPromoteReplicaResource)
                      Core.mempty

