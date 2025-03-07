{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Script.Projects.Versions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new immutable version using the current code, with a unique version number.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.versions.create@.
module Gogol.Script.Projects.Versions.Create
  ( -- * Resource
    ScriptProjectsVersionsCreateResource,

    -- ** Constructing a Request
    ScriptProjectsVersionsCreate (..),
    newScriptProjectsVersionsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Script.Types

-- | A resource alias for @script.projects.versions.create@ method which the
-- 'ScriptProjectsVersionsCreate' request conforms to.
type ScriptProjectsVersionsCreateResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "scriptId" Core.Text
    Core.:> "versions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Version
    Core.:> Core.Post '[Core.JSON] Version

-- | Creates a new immutable version using the current code, with a unique version number.
--
-- /See:/ 'newScriptProjectsVersionsCreate' smart constructor.
data ScriptProjectsVersionsCreate = ScriptProjectsVersionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Version,
    -- | The script project\'s Drive ID.
    scriptId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProjectsVersionsCreate' with the minimum fields required to make a request.
newScriptProjectsVersionsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Version ->
  -- |  The script project\'s Drive ID. See 'scriptId'.
  Core.Text ->
  ScriptProjectsVersionsCreate
newScriptProjectsVersionsCreate payload scriptId =
  ScriptProjectsVersionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      scriptId = scriptId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ScriptProjectsVersionsCreate where
  type Rs ScriptProjectsVersionsCreate = Version
  type Scopes ScriptProjectsVersionsCreate = '[Script'Projects]
  requestClient ScriptProjectsVersionsCreate {..} =
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
          (Core.Proxy :: Core.Proxy ScriptProjectsVersionsCreateResource)
          Core.mempty
