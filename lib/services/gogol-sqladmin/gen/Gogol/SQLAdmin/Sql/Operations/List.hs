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
-- Module      : Gogol.SQLAdmin.Sql.Operations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all instance operations that have been performed on the given Cloud SQL instance in the reverse chronological order of the start time.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.operations.list@.
module Gogol.SQLAdmin.Sql.Operations.List
  ( -- * Resource
    SqlOperationsListResource,

    -- ** Constructing a Request
    SqlOperationsList (..),
    newSqlOperationsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.operations.list@ method which the
-- 'SqlOperationsList' request conforms to.
type SqlOperationsListResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "operations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "instance" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] OperationsListResponse

-- | Lists all instance operations that have been performed on the given Cloud SQL instance in the reverse chronological order of the start time.
--
-- /See:/ 'newSqlOperationsList' smart constructor.
data SqlOperationsList = SqlOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Cloud SQL instance ID. This does not include the project ID.
    instance' :: (Core.Maybe Core.Text),
    -- | Maximum number of operations per response.
    maxResults :: (Core.Maybe Core.Word32),
    -- | A previously-returned page token representing part of the larger set of results to view.
    pageToken :: (Core.Maybe Core.Text),
    -- | Project ID of the project that contains the instance.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlOperationsList' with the minimum fields required to make a request.
newSqlOperationsList ::
  -- |  Project ID of the project that contains the instance. See 'project'.
  Core.Text ->
  SqlOperationsList
newSqlOperationsList project =
  SqlOperationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlOperationsList where
  type Rs SqlOperationsList = OperationsListResponse
  type
    Scopes SqlOperationsList =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlOperationsList {..} =
    go
      project
      xgafv
      accessToken
      callback
      instance'
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlOperationsListResource)
          Core.mempty
