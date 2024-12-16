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
-- Module      : Gogol.Testing.Projects.DeviceSessions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- GET \/v1\/projects\/{project/id}\/deviceSessions\/{device/session_id} Return a DeviceSession, which documents the allocation status and whether the device is allocated. Clients making requests from this API must poll GetDeviceSession.
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Testing API Reference> for @testing.projects.deviceSessions.get@.
module Gogol.Testing.Projects.DeviceSessions.Get
    (
    -- * Resource
      TestingProjectsDeviceSessionsGetResource

    -- ** Constructing a Request
    , TestingProjectsDeviceSessionsGet (..)
    , newTestingProjectsDeviceSessionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.projects.deviceSessions.get@ method which the
-- 'TestingProjectsDeviceSessionsGet' request conforms to.
type TestingProjectsDeviceSessionsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] DeviceSession

-- | GET \/v1\/projects\/{project/id}\/deviceSessions\/{device/session_id} Return a DeviceSession, which documents the allocation status and whether the device is allocated. Clients making requests from this API must poll GetDeviceSession.
--
-- /See:/ 'newTestingProjectsDeviceSessionsGet' smart constructor.
data TestingProjectsDeviceSessionsGet = TestingProjectsDeviceSessionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the DeviceSession, e.g. \"projects\/{project/id}\/deviceSessions\/{session/id}\"
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingProjectsDeviceSessionsGet' with the minimum fields required to make a request.
newTestingProjectsDeviceSessionsGet 
    ::  Core.Text
       -- ^  Required. Name of the DeviceSession, e.g. \"projects\/{project/id}\/deviceSessions\/{session/id}\" See 'name'.
    -> TestingProjectsDeviceSessionsGet
newTestingProjectsDeviceSessionsGet name =
  TestingProjectsDeviceSessionsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TestingProjectsDeviceSessionsGet
         where
        type Rs TestingProjectsDeviceSessionsGet =
             DeviceSession
        type Scopes TestingProjectsDeviceSessionsGet =
             '[CloudPlatform'FullControl]
        requestClient TestingProjectsDeviceSessionsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              testingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy TestingProjectsDeviceSessionsGetResource)
                      Core.mempty

