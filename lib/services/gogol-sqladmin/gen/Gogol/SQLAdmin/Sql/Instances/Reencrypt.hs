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
-- Module      : Gogol.SQLAdmin.Sql.Instances.Reencrypt
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reencrypt CMEK instance with latest key version.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.reencrypt@.
module Gogol.SQLAdmin.Sql.Instances.Reencrypt
    (
    -- * Resource
      SqlInstancesReencryptResource

    -- ** Constructing a Request
    , SqlInstancesReencrypt (..)
    , newSqlInstancesReencrypt
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.reencrypt@ method which the
-- 'SqlInstancesReencrypt' request conforms to.
type SqlInstancesReencryptResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "reencrypt" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] InstancesReencryptRequest
                               Core.:> Core.Post '[Core.JSON] Operation

-- | Reencrypt CMEK instance with latest key version.
--
-- /See:/ 'newSqlInstancesReencrypt' smart constructor.
data SqlInstancesReencrypt = SqlInstancesReencrypt
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
    , payload :: InstancesReencryptRequest
      -- | ID of the project that contains the instance.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesReencrypt' with the minimum fields required to make a request.
newSqlInstancesReencrypt 
    ::  Core.Text
       -- ^  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
    -> InstancesReencryptRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  ID of the project that contains the instance. See 'project'.
    -> SqlInstancesReencrypt
newSqlInstancesReencrypt instance' payload project =
  SqlInstancesReencrypt
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instance' = instance'
    , payload = payload
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesReencrypt
         where
        type Rs SqlInstancesReencrypt = Operation
        type Scopes SqlInstancesReencrypt =
             '[CloudPlatform'FullControl, Sqlservice'Admin]
        requestClient SqlInstancesReencrypt{..}
          = go project instance' xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SqlInstancesReencryptResource)
                      Core.mempty

