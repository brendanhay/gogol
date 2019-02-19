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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersGet
    , AccountsContainersWorkspacesFoldersGet

    -- * Request Lenses
    , acwfgPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.get@ method which the
-- 'AccountsContainersWorkspacesFoldersGet' request conforms to.
type AccountsContainersWorkspacesFoldersGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Folder

-- | Gets a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersGet' smart constructor.
newtype AccountsContainersWorkspacesFoldersGet =
  AccountsContainersWorkspacesFoldersGet'
    { _acwfgPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesFoldersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfgPath'
accountsContainersWorkspacesFoldersGet
    :: Text -- ^ 'acwfgPath'
    -> AccountsContainersWorkspacesFoldersGet
accountsContainersWorkspacesFoldersGet pAcwfgPath_ =
  AccountsContainersWorkspacesFoldersGet' {_acwfgPath = pAcwfgPath_}

-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfgPath :: Lens' AccountsContainersWorkspacesFoldersGet Text
acwfgPath
  = lens _acwfgPath (\ s a -> s{_acwfgPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersGet
         where
        type Rs AccountsContainersWorkspacesFoldersGet =
             Folder
        type Scopes AccountsContainersWorkspacesFoldersGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesFoldersGet'{..}
          = go _acwfgPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesFoldersGetResource)
                      mempty
