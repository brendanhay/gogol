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
-- Module      : Gogol.SQLAdmin.Sql.Databases.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Partially updates a resource containing information about a database inside a Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.databases.patch@.
module Gogol.SQLAdmin.Sql.Databases.Patch
    (
    -- * Resource
      SqlDatabasesPatchResource

    -- ** Constructing a Request
    , SqlDatabasesPatch (..)
    , newSqlDatabasesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.databases.patch@ method which the
-- 'SqlDatabasesPatch' request conforms to.
type SqlDatabasesPatchResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "project" Core.Text Core.:>
           "instances" Core.:>
             Core.Capture "instance" Core.Text Core.:>
               "databases" Core.:>
                 Core.Capture "database" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] Database Core.:>
                                 Core.Patch '[Core.JSON] Operation

-- | Partially updates a resource containing information about a database inside a Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ 'newSqlDatabasesPatch' smart constructor.
data SqlDatabasesPatch = SqlDatabasesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the database to be updated in the instance.
    , database :: Core.Text
      -- | Database instance ID. This does not include the project ID.
    , instance' :: Core.Text
      -- | Multipart request metadata.
    , payload :: Database
      -- | Project ID of the project that contains the instance.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlDatabasesPatch' with the minimum fields required to make a request.
newSqlDatabasesPatch 
    ::  Core.Text
       -- ^  Name of the database to be updated in the instance. See 'database'.
    -> Core.Text
       -- ^  Database instance ID. This does not include the project ID. See 'instance''.
    -> Database
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID of the project that contains the instance. See 'project'.
    -> SqlDatabasesPatch
newSqlDatabasesPatch database instance' payload project =
  SqlDatabasesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , database = database
    , instance' = instance'
    , payload = payload
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlDatabasesPatch where
        type Rs SqlDatabasesPatch = Operation
        type Scopes SqlDatabasesPatch =
             '[CloudPlatform'FullControl, Sqlservice'Admin]
        requestClient SqlDatabasesPatch{..}
          = go project instance' database xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              sQLAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy SqlDatabasesPatchResource)
                      Core.mempty

