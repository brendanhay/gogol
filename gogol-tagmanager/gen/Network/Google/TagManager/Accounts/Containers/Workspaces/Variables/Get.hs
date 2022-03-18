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
-- Module      : Network.Google.TagManager.Accounts.Containers.Workspaces.Variables.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.get@.
module Network.Google.TagManager.Accounts.Containers.Workspaces.Variables.Get
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesVariablesGetResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesVariablesGet,
    TagManagerAccountsContainersWorkspacesVariablesGet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.get@ method which the
-- 'TagManagerAccountsContainersWorkspacesVariablesGet' request conforms to.
type TagManagerAccountsContainersWorkspacesVariablesGetResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Variable

-- | Gets a GTM Variable.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesVariablesGet' smart constructor.
data TagManagerAccountsContainersWorkspacesVariablesGet = TagManagerAccountsContainersWorkspacesVariablesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Variable\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/variables\/{variable/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesVariablesGet' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesVariablesGet ::
  -- |  GTM Variable\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/variables\/{variable/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesVariablesGet
newTagManagerAccountsContainersWorkspacesVariablesGet path =
  TagManagerAccountsContainersWorkspacesVariablesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesVariablesGet
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesVariablesGet =
      Variable
  type
    Scopes
      TagManagerAccountsContainersWorkspacesVariablesGet =
      '[ "https://www.googleapis.com/auth/tagmanager.edit.containers",
         "https://www.googleapis.com/auth/tagmanager.readonly"
       ]
  requestClient
    TagManagerAccountsContainersWorkspacesVariablesGet {..} =
      go
        path
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesVariablesGetResource
            )
            Core.mempty
