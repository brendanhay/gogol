{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Entities
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all entities in a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.entities@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Entities
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersEntitiesResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersEntities
    , AccountsContainersWorkspacesFoldersEntities

    -- * Request Lenses
    , acwfePath
    , acwfePageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.entities@ method which the
-- 'AccountsContainersWorkspacesFoldersEntities' request conforms to.
type AccountsContainersWorkspacesFoldersEntitiesResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "entities" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] FolderEntities

-- | List all entities in a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersEntities' smart constructor.
data AccountsContainersWorkspacesFoldersEntities =
  AccountsContainersWorkspacesFoldersEntities'
    { _acwfePath      :: !Text
    , _acwfePageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesFoldersEntities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfePath'
--
-- * 'acwfePageToken'
accountsContainersWorkspacesFoldersEntities
    :: Text -- ^ 'acwfePath'
    -> AccountsContainersWorkspacesFoldersEntities
accountsContainersWorkspacesFoldersEntities pAcwfePath_ =
  AccountsContainersWorkspacesFoldersEntities'
    {_acwfePath = pAcwfePath_, _acwfePageToken = Nothing}

-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfePath :: Lens' AccountsContainersWorkspacesFoldersEntities Text
acwfePath
  = lens _acwfePath (\ s a -> s{_acwfePath = a})

-- | Continuation token for fetching the next page of results.
acwfePageToken :: Lens' AccountsContainersWorkspacesFoldersEntities (Maybe Text)
acwfePageToken
  = lens _acwfePageToken
      (\ s a -> s{_acwfePageToken = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersEntities
         where
        type Rs AccountsContainersWorkspacesFoldersEntities =
             FolderEntities
        type Scopes
               AccountsContainersWorkspacesFoldersEntities
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesFoldersEntities'{..}
          = go _acwfePath _acwfePageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersEntitiesResource)
                      mempty
