{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Variables.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Variables of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.list@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Variables.List
    (
    -- * Resource
      TagManagerAccountsContainersWorkspacesVariablesListResource

    -- ** Constructing a Request
    , newTagManagerAccountsContainersWorkspacesVariablesList
    , TagManagerAccountsContainersWorkspacesVariablesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.list@ method which the
-- 'TagManagerAccountsContainersWorkspacesVariablesList' request conforms to.
type TagManagerAccountsContainersWorkspacesVariablesListResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.Capture "parent" Core.Text Core.:>
           "variables" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListVariablesResponse

-- | Lists all GTM Variables of a Container.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesVariablesList' smart constructor.
data TagManagerAccountsContainersWorkspacesVariablesList = TagManagerAccountsContainersWorkspacesVariablesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Continuation token for fetching the next page of results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesVariablesList' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesVariablesList 
    ::  Core.Text
       -- ^  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'parent'.
    -> TagManagerAccountsContainersWorkspacesVariablesList
newTagManagerAccountsContainersWorkspacesVariablesList parent =
  TagManagerAccountsContainersWorkspacesVariablesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersWorkspacesVariablesList
         where
        type Rs
               TagManagerAccountsContainersWorkspacesVariablesList
             = ListVariablesResponse
        type Scopes
               TagManagerAccountsContainersWorkspacesVariablesList
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          TagManagerAccountsContainersWorkspacesVariablesList{..}
          = go parent xgafv accessToken callback pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersWorkspacesVariablesListResource)
                      Core.mempty

