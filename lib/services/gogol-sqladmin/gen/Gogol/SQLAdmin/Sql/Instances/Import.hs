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
-- Module      : Gogol.SQLAdmin.Sql.Instances.Import
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports data into a Cloud SQL instance from a SQL dump or CSV file in Cloud Storage.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.import@.
module Gogol.SQLAdmin.Sql.Instances.Import
  ( -- * Resource
    SqlInstancesImportResource,

    -- ** Constructing a Request
    SqlInstancesImport (..),
    newSqlInstancesImport,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.import@ method which the
-- 'SqlInstancesImport' request conforms to.
type SqlInstancesImportResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "import"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InstancesImportRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Imports data into a Cloud SQL instance from a SQL dump or CSV file in Cloud Storage.
--
-- /See:/ 'newSqlInstancesImport' smart constructor.
data SqlInstancesImport = SqlInstancesImport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Cloud SQL instance ID. This does not include the project ID.
    instance' :: Core.Text,
    -- | Multipart request metadata.
    payload :: InstancesImportRequest,
    -- | Project ID of the project that contains the instance.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesImport' with the minimum fields required to make a request.
newSqlInstancesImport ::
  -- |  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InstancesImportRequest ->
  -- |  Project ID of the project that contains the instance. See 'project'.
  Core.Text ->
  SqlInstancesImport
newSqlInstancesImport instance' payload project =
  SqlInstancesImport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesImport where
  type Rs SqlInstancesImport = Operation
  type
    Scopes SqlInstancesImport =
      '[CloudPlatform'FullControl]
  requestClient SqlInstancesImport {..} =
    go
      project
      instance'
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
          (Core.Proxy :: Core.Proxy SqlInstancesImportResource)
          Core.mempty
