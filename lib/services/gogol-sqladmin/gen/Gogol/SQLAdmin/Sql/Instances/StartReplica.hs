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
-- Module      : Gogol.SQLAdmin.Sql.Instances.StartReplica
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the replication in the read replica instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.startReplica@.
module Gogol.SQLAdmin.Sql.Instances.StartReplica
    (
    -- * Resource
      SqlInstancesStartReplicaResource

    -- ** Constructing a Request
    , newSqlInstancesStartReplica
    , SqlInstancesStartReplica
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.startReplica@ method which the
-- 'SqlInstancesStartReplica' request conforms to.
type SqlInstancesStartReplicaResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "startReplica" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Post '[Core.JSON] Operation

-- | Starts the replication in the read replica instance.
--
-- /See:/ 'newSqlInstancesStartReplica' smart constructor.
data SqlInstancesStartReplica = SqlInstancesStartReplica
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

-- | Creates a value of 'SqlInstancesStartReplica' with the minimum fields required to make a request.
newSqlInstancesStartReplica 
    ::  Core.Text
       -- ^  Cloud SQL read replica instance name. See 'instance''.
    -> Core.Text
       -- ^  ID of the project that contains the read replica. See 'project'.
    -> SqlInstancesStartReplica
newSqlInstancesStartReplica instance' project =
  SqlInstancesStartReplica
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instance' = instance'
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesStartReplica
         where
        type Rs SqlInstancesStartReplica = Operation
        type Scopes SqlInstancesStartReplica =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SqlInstancesStartReplica{..}
          = go project instance' xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SqlInstancesStartReplicaResource)
                      Core.mempty

