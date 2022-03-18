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
-- Module      : Network.Google.Script.Scripts.Run
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a function in an Apps Script project. The script project must be deployed for use with the Apps Script API and the calling application must share the same Cloud Platform project. This method requires authorization with an OAuth 2.0 token that includes at least one of the scopes listed in the <#authorization-scopes Authorization> section; script projects that do not require authorization cannot be executed through this API. To find the correct scopes to include in the authentication token, open the script project __Overview__ page and scroll down to \"Project OAuth Scopes.\" The error @403, PERMISSION_DENIED: The caller does not have permission@ indicates that the Cloud Platform project used to authorize the request is not the same as the one used by the script.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.scripts.run@.
module Network.Google.Script.Scripts.Run
  ( -- * Resource
    ScriptScriptsRunResource,

    -- ** Constructing a Request
    newScriptScriptsRun,
    ScriptScriptsRun,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Script.Types

-- | A resource alias for @script.scripts.run@ method which the
-- 'ScriptScriptsRun' request conforms to.
type ScriptScriptsRunResource =
  "v1"
    Core.:> "scripts"
    Core.:> Core.CaptureMode "scriptId" "run" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ExecutionRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Runs a function in an Apps Script project. The script project must be deployed for use with the Apps Script API and the calling application must share the same Cloud Platform project. This method requires authorization with an OAuth 2.0 token that includes at least one of the scopes listed in the <#authorization-scopes Authorization> section; script projects that do not require authorization cannot be executed through this API. To find the correct scopes to include in the authentication token, open the script project __Overview__ page and scroll down to \"Project OAuth Scopes.\" The error @403, PERMISSION_DENIED: The caller does not have permission@ indicates that the Cloud Platform project used to authorize the request is not the same as the one used by the script.
--
-- /See:/ 'newScriptScriptsRun' smart constructor.
data ScriptScriptsRun = ScriptScriptsRun
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ExecutionRequest,
    -- | The script ID of the script to be executed. Find the script ID on the __Project settings__ page under \"IDs.\"
    scriptId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptScriptsRun' with the minimum fields required to make a request.
newScriptScriptsRun ::
  -- |  Multipart request metadata. See 'payload'.
  ExecutionRequest ->
  -- |  The script ID of the script to be executed. Find the script ID on the __Project settings__ page under \"IDs.\" See 'scriptId'.
  Core.Text ->
  ScriptScriptsRun
newScriptScriptsRun payload scriptId =
  ScriptScriptsRun
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      scriptId = scriptId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ScriptScriptsRun where
  type Rs ScriptScriptsRun = Operation
  type
    Scopes ScriptScriptsRun =
      '[ "https://mail.google.com/",
         "https://www.google.com/calendar/feeds",
         "https://www.google.com/m8/feeds",
         "https://www.googleapis.com/auth/admin.directory.group",
         "https://www.googleapis.com/auth/admin.directory.user",
         "https://www.googleapis.com/auth/documents",
         "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/forms",
         "https://www.googleapis.com/auth/forms.currentonly",
         "https://www.googleapis.com/auth/groups",
         "https://www.googleapis.com/auth/spreadsheets",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient ScriptScriptsRun {..} =
    go
      scriptId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      scriptService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ScriptScriptsRunResource)
          Core.mempty
