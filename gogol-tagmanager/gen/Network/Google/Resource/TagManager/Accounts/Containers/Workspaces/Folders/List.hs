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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Folders of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersListResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersList
    , AccountsContainersWorkspacesFoldersList

    -- * Request Lenses
    , acwflParent
    , acwflPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.list@ method which the
-- 'AccountsContainersWorkspacesFoldersList' request conforms to.
type AccountsContainersWorkspacesFoldersListResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "folders" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListFoldersResponse

-- | Lists all GTM Folders of a Container.
--
-- /See:/ 'accountsContainersWorkspacesFoldersList' smart constructor.
data AccountsContainersWorkspacesFoldersList =
  AccountsContainersWorkspacesFoldersList'
    { _acwflParent    :: !Text
    , _acwflPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesFoldersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwflParent'
--
-- * 'acwflPageToken'
accountsContainersWorkspacesFoldersList
    :: Text -- ^ 'acwflParent'
    -> AccountsContainersWorkspacesFoldersList
accountsContainersWorkspacesFoldersList pAcwflParent_ =
  AccountsContainersWorkspacesFoldersList'
    {_acwflParent = pAcwflParent_, _acwflPageToken = Nothing}

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwflParent :: Lens' AccountsContainersWorkspacesFoldersList Text
acwflParent
  = lens _acwflParent (\ s a -> s{_acwflParent = a})

-- | Continuation token for fetching the next page of results.
acwflPageToken :: Lens' AccountsContainersWorkspacesFoldersList (Maybe Text)
acwflPageToken
  = lens _acwflPageToken
      (\ s a -> s{_acwflPageToken = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersList
         where
        type Rs AccountsContainersWorkspacesFoldersList =
             ListFoldersResponse
        type Scopes AccountsContainersWorkspacesFoldersList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesFoldersList'{..}
          = go _acwflParent _acwflPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersListResource)
                      mempty
