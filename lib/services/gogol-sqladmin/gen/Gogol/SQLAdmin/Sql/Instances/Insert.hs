{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SQLAdmin.Sql.Instances.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.insert@.
module Gogol.SQLAdmin.Sql.Instances.Insert
  ( -- * Resource
    SqlInstancesInsertResource,

    -- ** Constructing a Request
    SqlInstancesInsert (..),
    newSqlInstancesInsert,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.insert@ method which the
-- 'SqlInstancesInsert' request conforms to.
type SqlInstancesInsertResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DatabaseInstance
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new Cloud SQL instance.
--
-- /See:/ 'newSqlInstancesInsert' smart constructor.
data SqlInstancesInsert = SqlInstancesInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: DatabaseInstance,
    -- | Project ID of the project to which the newly created Cloud SQL instances should belong.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesInsert' with the minimum fields required to make a request.
newSqlInstancesInsert ::
  -- |  Multipart request metadata. See 'payload'.
  DatabaseInstance ->
  -- |  Project ID of the project to which the newly created Cloud SQL instances should belong. See 'project'.
  Core.Text ->
  SqlInstancesInsert
newSqlInstancesInsert payload project =
  SqlInstancesInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesInsert where
  type Rs SqlInstancesInsert = Operation
  type
    Scopes SqlInstancesInsert =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlInstancesInsert {..} =
    go
      project
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlInstancesInsertResource)
          Core.mempty
