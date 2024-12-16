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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Variables.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.create@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Variables.Create
    (
    -- * Resource
      TagManagerAccountsContainersWorkspacesVariablesCreateResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersWorkspacesVariablesCreate (..)
    , newTagManagerAccountsContainersWorkspacesVariablesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.create@ method which the
-- 'TagManagerAccountsContainersWorkspacesVariablesCreate' request conforms to.
type TagManagerAccountsContainersWorkspacesVariablesCreateResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.Capture "parent" Core.Text Core.:>
           "variables" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Variable Core.:>
                           Core.Post '[Core.JSON] Variable

-- | Creates a GTM Variable.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesVariablesCreate' smart constructor.
data TagManagerAccountsContainersWorkspacesVariablesCreate = TagManagerAccountsContainersWorkspacesVariablesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Variable
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesVariablesCreate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesVariablesCreate 
    ::  Core.Text
       -- ^  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'parent'.
    -> Variable
       -- ^  Multipart request metadata. See 'payload'.
    -> TagManagerAccountsContainersWorkspacesVariablesCreate
newTagManagerAccountsContainersWorkspacesVariablesCreate parent payload =
  TagManagerAccountsContainersWorkspacesVariablesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersWorkspacesVariablesCreate
         where
        type Rs
               TagManagerAccountsContainersWorkspacesVariablesCreate
             = Variable
        type Scopes
               TagManagerAccountsContainersWorkspacesVariablesCreate
             = '[Tagmanager'Edit'Containers]
        requestClient
          TagManagerAccountsContainersWorkspacesVariablesCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersWorkspacesVariablesCreateResource)
                      Core.mempty

