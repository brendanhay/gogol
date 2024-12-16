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
-- Module      : Gogol.Testing.Projects.TestMatrices.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels unfinished test executions in a test matrix. This call returns immediately and cancellation proceeds asynchronously. If the matrix is already final, this operation will have no effect. May return any of the following canonical error codes: - PERMISSION/DENIED - if the user is not authorized to read project - INVALID/ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Testing API Reference> for @testing.projects.testMatrices.cancel@.
module Gogol.Testing.Projects.TestMatrices.Cancel
    (
    -- * Resource
      TestingProjectsTestMatricesCancelResource

    -- ** Constructing a Request
    , TestingProjectsTestMatricesCancel (..)
    , newTestingProjectsTestMatricesCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.projects.testMatrices.cancel@ method which the
-- 'TestingProjectsTestMatricesCancel' request conforms to.
type TestingProjectsTestMatricesCancelResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "testMatrices" Core.:>
             Core.CaptureMode "testMatrixId" "cancel" Core.Text
               Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Post '[Core.JSON] CancelTestMatrixResponse

-- | Cancels unfinished test executions in a test matrix. This call returns immediately and cancellation proceeds asynchronously. If the matrix is already final, this operation will have no effect. May return any of the following canonical error codes: - PERMISSION/DENIED - if the user is not authorized to read project - INVALID/ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist
--
-- /See:/ 'newTestingProjectsTestMatricesCancel' smart constructor.
data TestingProjectsTestMatricesCancel = TestingProjectsTestMatricesCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Cloud project that owns the test.
    , projectId :: Core.Text
      -- | Test matrix that will be canceled.
    , testMatrixId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingProjectsTestMatricesCancel' with the minimum fields required to make a request.
newTestingProjectsTestMatricesCancel 
    ::  Core.Text
       -- ^  Cloud project that owns the test. See 'projectId'.
    -> Core.Text
       -- ^  Test matrix that will be canceled. See 'testMatrixId'.
    -> TestingProjectsTestMatricesCancel
newTestingProjectsTestMatricesCancel projectId testMatrixId =
  TestingProjectsTestMatricesCancel
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , projectId = projectId
    , testMatrixId = testMatrixId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TestingProjectsTestMatricesCancel
         where
        type Rs TestingProjectsTestMatricesCancel =
             CancelTestMatrixResponse
        type Scopes TestingProjectsTestMatricesCancel =
             '[CloudPlatform'FullControl]
        requestClient TestingProjectsTestMatricesCancel{..}
          = go projectId testMatrixId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              testingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy TestingProjectsTestMatricesCancelResource)
                      Core.mempty

