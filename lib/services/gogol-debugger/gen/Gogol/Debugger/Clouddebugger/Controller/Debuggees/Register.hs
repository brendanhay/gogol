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
-- Module      : Gogol.Debugger.Clouddebugger.Controller.Debuggees.Register
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers the debuggee with the controller service. All agents attached to the same application must call this method with exactly the same request content to get back the same stable @debuggee_id@. Agents should call this method again whenever @google.rpc.Code.NOT_FOUND@ is returned from any controller method. This protocol allows the controller service to disable debuggees, recover from data loss, or change the @debuggee_id@ format. Agents must handle @debuggee_id@ value changing upon re-registration.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API (Deprecated) Reference> for @clouddebugger.controller.debuggees.register@.
module Gogol.Debugger.Clouddebugger.Controller.Debuggees.Register
    (
    -- * Resource
      ClouddebuggerControllerDebuggeesRegisterResource

    -- ** Constructing a Request
    , ClouddebuggerControllerDebuggeesRegister (..)
    , newClouddebuggerControllerDebuggeesRegister
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Debugger.Types

-- | A resource alias for @clouddebugger.controller.debuggees.register@ method which the
-- 'ClouddebuggerControllerDebuggeesRegister' request conforms to.
type ClouddebuggerControllerDebuggeesRegisterResource
     =
     "v2" Core.:>
       "controller" Core.:>
         "debuggees" Core.:>
           "register" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] RegisterDebuggeeRequest
                           Core.:>
                           Core.Post '[Core.JSON] RegisterDebuggeeResponse

-- | Registers the debuggee with the controller service. All agents attached to the same application must call this method with exactly the same request content to get back the same stable @debuggee_id@. Agents should call this method again whenever @google.rpc.Code.NOT_FOUND@ is returned from any controller method. This protocol allows the controller service to disable debuggees, recover from data loss, or change the @debuggee_id@ format. Agents must handle @debuggee_id@ value changing upon re-registration.
--
-- /See:/ 'newClouddebuggerControllerDebuggeesRegister' smart constructor.
data ClouddebuggerControllerDebuggeesRegister = ClouddebuggerControllerDebuggeesRegister
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RegisterDebuggeeRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClouddebuggerControllerDebuggeesRegister' with the minimum fields required to make a request.
newClouddebuggerControllerDebuggeesRegister 
    ::  RegisterDebuggeeRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ClouddebuggerControllerDebuggeesRegister
newClouddebuggerControllerDebuggeesRegister payload =
  ClouddebuggerControllerDebuggeesRegister
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ClouddebuggerControllerDebuggeesRegister
         where
        type Rs ClouddebuggerControllerDebuggeesRegister =
             RegisterDebuggeeResponse
        type Scopes ClouddebuggerControllerDebuggeesRegister
             =
             '[CloudPlatform'FullControl,
               CloudDebugger'FullControl]
        requestClient
          ClouddebuggerControllerDebuggeesRegister{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              debuggerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ClouddebuggerControllerDebuggeesRegisterResource)
                      Core.mempty

