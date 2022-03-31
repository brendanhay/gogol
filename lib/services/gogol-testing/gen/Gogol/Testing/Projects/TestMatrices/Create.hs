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
-- Module      : Gogol.Testing.Projects.TestMatrices.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and runs a matrix of tests according to the given specifications. Unsupported environments will be returned in the state UNSUPPORTED. A test matrix is limited to use at most 2000 devices in parallel. May return any of the following canonical error codes: - PERMISSION/DENIED - if the user is not authorized to write to project - INVALID/ARGUMENT - if the request is malformed or if the matrix tries to use too many simultaneous devices.
--
-- /See:/ <https://developers.google.com/cloud-test-lab/ Cloud Testing API Reference> for @testing.projects.testMatrices.create@.
module Gogol.Testing.Projects.TestMatrices.Create
  ( -- * Resource
    TestingProjectsTestMatricesCreateResource,

    -- ** Constructing a Request
    newTestingProjectsTestMatricesCreate,
    TestingProjectsTestMatricesCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.projects.testMatrices.create@ method which the
-- 'TestingProjectsTestMatricesCreate' request conforms to.
type TestingProjectsTestMatricesCreateResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "testMatrices"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestMatrix
    Core.:> Core.Post '[Core.JSON] TestMatrix

-- | Creates and runs a matrix of tests according to the given specifications. Unsupported environments will be returned in the state UNSUPPORTED. A test matrix is limited to use at most 2000 devices in parallel. May return any of the following canonical error codes: - PERMISSION/DENIED - if the user is not authorized to write to project - INVALID/ARGUMENT - if the request is malformed or if the matrix tries to use too many simultaneous devices.
--
-- /See:/ 'newTestingProjectsTestMatricesCreate' smart constructor.
data TestingProjectsTestMatricesCreate = TestingProjectsTestMatricesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TestMatrix,
    -- | The GCE project under which this job will run.
    projectId :: Core.Text,
    -- | A string id used to detect duplicated requests. Ids are automatically scoped to a project, so users should ensure the ID is unique per-project. A UUID is recommended. Optional, but strongly recommended.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingProjectsTestMatricesCreate' with the minimum fields required to make a request.
newTestingProjectsTestMatricesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  TestMatrix ->
  -- |  The GCE project under which this job will run. See 'projectId'.
  Core.Text ->
  TestingProjectsTestMatricesCreate
newTestingProjectsTestMatricesCreate payload projectId =
  TestingProjectsTestMatricesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TestingProjectsTestMatricesCreate
  where
  type
    Rs TestingProjectsTestMatricesCreate =
      TestMatrix
  type
    Scopes TestingProjectsTestMatricesCreate =
      '[CloudPlatform'FullControl]
  requestClient TestingProjectsTestMatricesCreate {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      testingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TestingProjectsTestMatricesCreateResource
          )
          Core.mempty
