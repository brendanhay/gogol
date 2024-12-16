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
-- Module      : Gogol.Testing.TestEnvironmentCatalog.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the catalog of supported test environments. May return any of the following canonical error codes: - INVALID/ARGUMENT - if the request is malformed - NOT/FOUND - if the environment type does not exist - INTERNAL - if an internal error occurred
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Testing API Reference> for @testing.testEnvironmentCatalog.get@.
module Gogol.Testing.TestEnvironmentCatalog.Get
    (
    -- * Resource
      TestingTestEnvironmentCatalogGetResource

    -- ** Constructing a Request
    , TestingTestEnvironmentCatalogGet (..)
    , newTestingTestEnvironmentCatalogGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.testEnvironmentCatalog.get@ method which the
-- 'TestingTestEnvironmentCatalogGet' request conforms to.
type TestingTestEnvironmentCatalogGetResource =
     "v1" Core.:>
       "testEnvironmentCatalog" Core.:>
         Core.Capture "environmentType"
           TestEnvironmentCatalogGetEnvironmentType
           Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "projectId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] TestEnvironmentCatalog

-- | Gets the catalog of supported test environments. May return any of the following canonical error codes: - INVALID/ARGUMENT - if the request is malformed - NOT/FOUND - if the environment type does not exist - INTERNAL - if an internal error occurred
--
-- /See:/ 'newTestingTestEnvironmentCatalogGet' smart constructor.
data TestingTestEnvironmentCatalogGet = TestingTestEnvironmentCatalogGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The type of environment that should be listed.
    , environmentType :: TestEnvironmentCatalogGetEnvironmentType
      -- | For authorization, the cloud project requesting the TestEnvironmentCatalog.
    , projectId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingTestEnvironmentCatalogGet' with the minimum fields required to make a request.
newTestingTestEnvironmentCatalogGet 
    ::  TestEnvironmentCatalogGetEnvironmentType
       -- ^  Required. The type of environment that should be listed. See 'environmentType'.
    -> TestingTestEnvironmentCatalogGet
newTestingTestEnvironmentCatalogGet environmentType =
  TestingTestEnvironmentCatalogGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , environmentType = environmentType
    , projectId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TestingTestEnvironmentCatalogGet
         where
        type Rs TestingTestEnvironmentCatalogGet =
             TestEnvironmentCatalog
        type Scopes TestingTestEnvironmentCatalogGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
        requestClient TestingTestEnvironmentCatalogGet{..}
          = go environmentType xgafv accessToken callback
              projectId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              testingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy TestingTestEnvironmentCatalogGetResource)
                      Core.mempty

