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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more GTM Built-In Variables.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.delete@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.Delete
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesDeleteResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete (..),
    newTagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.delete@ method which the
-- 'TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete' request conforms to.
type TagManagerAccountsContainersWorkspacesBuilt_in_variablesDeleteResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "type"
              AccountsContainersWorkspacesBuilt_in_variablesDeleteType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes one or more GTM Built-In Variables.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete' smart constructor.
data TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete = TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM BuiltInVariable\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/built/in_variables
    path :: Core.Text,
    -- | The types of built-in variables to delete.
    type' ::
      ( Core.Maybe
          [AccountsContainersWorkspacesBuilt_in_variablesDeleteType]
      ),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete ::
  -- |  GTM BuiltInVariable\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/built/in_variables See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete
newTagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete path =
  TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      type' = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete =
      ()
  type
    Scopes
      TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesDelete {..} =
      go
        path
        xgafv
        accessToken
        callback
        (type' Core.^. Core._Default)
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesBuilt_in_variablesDeleteResource
            )
            Core.mempty
