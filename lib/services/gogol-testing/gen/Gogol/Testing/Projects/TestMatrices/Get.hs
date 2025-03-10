{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Testing.Projects.TestMatrices.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks the status of a test matrix and the executions once they are created. The test matrix will contain the list of test executions to run if and only if the resultStorage.toolResultsExecution fields have been populated. Note: Flaky test executions may be added to the matrix at a later stage. May return any of the following canonical error codes: - PERMISSION/DENIED - if the user is not authorized to read project - INVALID/ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Testing API Reference> for @testing.projects.testMatrices.get@.
module Gogol.Testing.Projects.TestMatrices.Get
  ( -- * Resource
    TestingProjectsTestMatricesGetResource,

    -- ** Constructing a Request
    TestingProjectsTestMatricesGet (..),
    newTestingProjectsTestMatricesGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.projects.testMatrices.get@ method which the
-- 'TestingProjectsTestMatricesGet' request conforms to.
type TestingProjectsTestMatricesGetResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "testMatrices"
    Core.:> Core.Capture "testMatrixId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TestMatrix

-- | Checks the status of a test matrix and the executions once they are created. The test matrix will contain the list of test executions to run if and only if the resultStorage.toolResultsExecution fields have been populated. Note: Flaky test executions may be added to the matrix at a later stage. May return any of the following canonical error codes: - PERMISSION/DENIED - if the user is not authorized to read project - INVALID/ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist
--
-- /See:/ 'newTestingProjectsTestMatricesGet' smart constructor.
data TestingProjectsTestMatricesGet = TestingProjectsTestMatricesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Cloud project that owns the test matrix.
    projectId :: Core.Text,
    -- | Unique test matrix id which was assigned by the service.
    testMatrixId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingProjectsTestMatricesGet' with the minimum fields required to make a request.
newTestingProjectsTestMatricesGet ::
  -- |  Cloud project that owns the test matrix. See 'projectId'.
  Core.Text ->
  -- |  Unique test matrix id which was assigned by the service. See 'testMatrixId'.
  Core.Text ->
  TestingProjectsTestMatricesGet
newTestingProjectsTestMatricesGet projectId testMatrixId =
  TestingProjectsTestMatricesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      projectId = projectId,
      testMatrixId = testMatrixId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TestingProjectsTestMatricesGet where
  type Rs TestingProjectsTestMatricesGet = TestMatrix
  type
    Scopes TestingProjectsTestMatricesGet =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient TestingProjectsTestMatricesGet {..} =
    go
      projectId
      testMatrixId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      testingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TestingProjectsTestMatricesGetResource)
          Core.mempty
