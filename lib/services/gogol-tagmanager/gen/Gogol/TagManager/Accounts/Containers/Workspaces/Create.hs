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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.create@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Create
    (
    -- * Resource
      TagManagerAccountsContainersWorkspacesCreateResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersWorkspacesCreate (..)
    , newTagManagerAccountsContainersWorkspacesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.create@ method which the
-- 'TagManagerAccountsContainersWorkspacesCreate' request conforms to.
type TagManagerAccountsContainersWorkspacesCreateResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.Capture "parent" Core.Text Core.:>
           "workspaces" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Workspace Core.:>
                           Core.Post '[Core.JSON] Workspace

-- | Creates a Workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesCreate' smart constructor.
data TagManagerAccountsContainersWorkspacesCreate = TagManagerAccountsContainersWorkspacesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | GTM parent Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Workspace
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesCreate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesCreate 
    ::  Core.Text
       -- ^  GTM parent Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id} See 'parent'.
    -> Workspace
       -- ^  Multipart request metadata. See 'payload'.
    -> TagManagerAccountsContainersWorkspacesCreate
newTagManagerAccountsContainersWorkspacesCreate parent payload =
  TagManagerAccountsContainersWorkspacesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersWorkspacesCreate
         where
        type Rs TagManagerAccountsContainersWorkspacesCreate
             = Workspace
        type Scopes
               TagManagerAccountsContainersWorkspacesCreate
             = '[Tagmanager'Edit'Containers]
        requestClient
          TagManagerAccountsContainersWorkspacesCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersWorkspacesCreateResource)
                      Core.mempty

