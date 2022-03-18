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
-- Module      : Gogol.SQLAdmin.Sql.Instances.RotateServerCa
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rotates the server certificate to one signed by the Certificate Authority (CA) version previously added with the addServerCA method.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.rotateServerCa@.
module Gogol.SQLAdmin.Sql.Instances.RotateServerCa
    (
    -- * Resource
      SqlInstancesRotateServerCaResource

    -- ** Constructing a Request
    , newSqlInstancesRotateServerCa
    , SqlInstancesRotateServerCa
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.rotateServerCa@ method which the
-- 'SqlInstancesRotateServerCa' request conforms to.
type SqlInstancesRotateServerCaResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "rotateServerCa" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               InstancesRotateServerCaRequest
                               Core.:> Core.Post '[Core.JSON] Operation

-- | Rotates the server certificate to one signed by the Certificate Authority (CA) version previously added with the addServerCA method.
--
-- /See:/ 'newSqlInstancesRotateServerCa' smart constructor.
data SqlInstancesRotateServerCa = SqlInstancesRotateServerCa
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
    , payload :: InstancesRotateServerCaRequest
      -- | Project ID of the project that contains the instance.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesRotateServerCa' with the minimum fields required to make a request.
newSqlInstancesRotateServerCa 
    ::  Core.Text
       -- ^  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
    -> InstancesRotateServerCaRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID of the project that contains the instance. See 'project'.
    -> SqlInstancesRotateServerCa
newSqlInstancesRotateServerCa instance' payload project =
  SqlInstancesRotateServerCa
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
           SqlInstancesRotateServerCa
         where
        type Rs SqlInstancesRotateServerCa = Operation
        type Scopes SqlInstancesRotateServerCa =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SqlInstancesRotateServerCa{..}
          = go project instance' xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SqlInstancesRotateServerCaResource)
                      Core.mempty

