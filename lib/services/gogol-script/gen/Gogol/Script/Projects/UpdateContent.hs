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
-- Module      : Gogol.Script.Projects.UpdateContent
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the content of the specified script project. This content is stored as the HEAD version, and is used when the script is executed as a trigger, in the script editor, in add-on preview mode, or as a web app or Apps Script API in development mode. This clears all the existing files in the project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.updateContent@.
module Gogol.Script.Projects.UpdateContent
  ( -- * Resource
    ScriptProjectsUpdateContentResource,

    -- ** Constructing a Request
    ScriptProjectsUpdateContent (..),
    newScriptProjectsUpdateContent,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Script.Types

-- | A resource alias for @script.projects.updateContent@ method which the
-- 'ScriptProjectsUpdateContent' request conforms to.
type ScriptProjectsUpdateContentResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "scriptId" Core.Text
    Core.:> "content"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Content
    Core.:> Core.Put '[Core.JSON] Content

-- | Updates the content of the specified script project. This content is stored as the HEAD version, and is used when the script is executed as a trigger, in the script editor, in add-on preview mode, or as a web app or Apps Script API in development mode. This clears all the existing files in the project.
--
-- /See:/ 'newScriptProjectsUpdateContent' smart constructor.
data ScriptProjectsUpdateContent = ScriptProjectsUpdateContent
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Content,
    -- | The script project\'s Drive ID.
    scriptId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProjectsUpdateContent' with the minimum fields required to make a request.
newScriptProjectsUpdateContent ::
  -- |  Multipart request metadata. See 'payload'.
  Content ->
  -- |  The script project\'s Drive ID. See 'scriptId'.
  Core.Text ->
  ScriptProjectsUpdateContent
newScriptProjectsUpdateContent payload scriptId =
  ScriptProjectsUpdateContent
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      scriptId = scriptId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ScriptProjectsUpdateContent
  where
  type Rs ScriptProjectsUpdateContent = Content
  type
    Scopes ScriptProjectsUpdateContent =
      '[Script'Projects]
  requestClient ScriptProjectsUpdateContent {..} =
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
          ( Core.Proxy ::
              Core.Proxy ScriptProjectsUpdateContentResource
          )
          Core.mempty
