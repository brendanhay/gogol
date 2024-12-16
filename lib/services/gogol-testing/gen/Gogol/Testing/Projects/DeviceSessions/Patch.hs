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
-- Module      : Gogol.Testing.Projects.DeviceSessions.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- PATCH \/v1\/projects\/{projectId}\/deviceSessions\/deviceSessionId}:updateDeviceSession Updates the current device session to the fields described by the update_mask.
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Testing API Reference> for @testing.projects.deviceSessions.patch@.
module Gogol.Testing.Projects.DeviceSessions.Patch
    (
    -- * Resource
      TestingProjectsDeviceSessionsPatchResource

    -- ** Constructing a Request
    , TestingProjectsDeviceSessionsPatch (..)
    , newTestingProjectsDeviceSessionsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.projects.deviceSessions.patch@ method which the
-- 'TestingProjectsDeviceSessionsPatch' request conforms to.
type TestingProjectsDeviceSessionsPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] DeviceSession Core.:>
                         Core.Patch '[Core.JSON] DeviceSession

-- | PATCH \/v1\/projects\/{projectId}\/deviceSessions\/deviceSessionId}:updateDeviceSession Updates the current device session to the fields described by the update_mask.
--
-- /See:/ 'newTestingProjectsDeviceSessionsPatch' smart constructor.
data TestingProjectsDeviceSessionsPatch = TestingProjectsDeviceSessionsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Name of the DeviceSession, e.g. \"projects\/{project/id}\/deviceSessions\/{session/id}\"
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DeviceSession
      -- | Required. The list of fields to update.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingProjectsDeviceSessionsPatch' with the minimum fields required to make a request.
newTestingProjectsDeviceSessionsPatch 
    ::  Core.Text
       -- ^  Optional. Name of the DeviceSession, e.g. \"projects\/{project/id}\/deviceSessions\/{session/id}\" See 'name'.
    -> DeviceSession
       -- ^  Multipart request metadata. See 'payload'.
    -> TestingProjectsDeviceSessionsPatch
newTestingProjectsDeviceSessionsPatch name payload =
  TestingProjectsDeviceSessionsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TestingProjectsDeviceSessionsPatch
         where
        type Rs TestingProjectsDeviceSessionsPatch =
             DeviceSession
        type Scopes TestingProjectsDeviceSessionsPatch =
             '[CloudPlatform'FullControl]
        requestClient TestingProjectsDeviceSessionsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              testingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TestingProjectsDeviceSessionsPatchResource)
                      Core.mempty

