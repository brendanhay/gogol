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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Move_entities_to_folder
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves entities to a GTM Folder. If {folder_id} in the request path equals 0, this will instead move entities out of the folder they currently belong to.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.move_entities_to_folder@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Move_entities_to_folder
    (
    -- * Resource
      TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folderResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder (..)
    , newTagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.move_entities_to_folder@ method which the
-- 'TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder' request conforms to.
type TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folderResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.CaptureMode "path" "move_entities_to_folder"
           Core.Text
           Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParams "tagId" Core.Text Core.:>
                   Core.QueryParams "triggerId" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParams "variableId" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] Folder Core.:>
                               Core.Post '[Core.JSON] ()

-- | Moves entities to a GTM Folder. If {folder_id} in the request path equals 0, this will instead move entities out of the folder they currently belong to.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder' smart constructor.
data TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder = TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | GTM Folder\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/folders\/{folder/id}
    , path :: Core.Text
      -- | Multipart request metadata.
    , payload :: Folder
      -- | The tags to be moved to the folder.
    , tagId :: (Core.Maybe [Core.Text])
      -- | The triggers to be moved to the folder.
    , triggerId :: (Core.Maybe [Core.Text])
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The variables to be moved to the folder.
    , variableId :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder 
    ::  Core.Text
       -- ^  GTM Folder\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/folders\/{folder/id} See 'path'.
    -> Folder
       -- ^  Multipart request metadata. See 'payload'.
    -> TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder
newTagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder path payload =
  TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , path = path
    , payload = payload
    , tagId = Core.Nothing
    , triggerId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , variableId = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder
         where
        type Rs
               TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder
             = ()
        type Scopes
               TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder
             = '[Tagmanager'Edit'Containers]
        requestClient
          TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folder{..}
          = go path xgafv accessToken callback
              (tagId Core.^. Core._Default)
              (triggerId Core.^. Core._Default)
              uploadType
              uploadProtocol
              (variableId Core.^. Core._Default)
              (Core.Just Core.AltJSON)
              payload
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersWorkspacesFoldersMove_entities_to_folderResource)
                      Core.mempty

