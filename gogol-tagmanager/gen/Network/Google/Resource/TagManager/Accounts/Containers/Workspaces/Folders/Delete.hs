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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersDelete
    , AccountsContainersWorkspacesFoldersDelete

    -- * Request Lenses
    , acwfdPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.delete@ method which the
-- 'AccountsContainersWorkspacesFoldersDelete' request conforms to.
type AccountsContainersWorkspacesFoldersDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersDelete' smart constructor.
newtype AccountsContainersWorkspacesFoldersDelete =
  AccountsContainersWorkspacesFoldersDelete'
    { _acwfdPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesFoldersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfdPath'
accountsContainersWorkspacesFoldersDelete
    :: Text -- ^ 'acwfdPath'
    -> AccountsContainersWorkspacesFoldersDelete
accountsContainersWorkspacesFoldersDelete pAcwfdPath_ =
  AccountsContainersWorkspacesFoldersDelete' {_acwfdPath = pAcwfdPath_}


-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfdPath :: Lens' AccountsContainersWorkspacesFoldersDelete Text
acwfdPath
  = lens _acwfdPath (\ s a -> s{_acwfdPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersDelete
         where
        type Rs AccountsContainersWorkspacesFoldersDelete =
             ()
        type Scopes AccountsContainersWorkspacesFoldersDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesFoldersDelete'{..}
          = go _acwfdPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersDeleteResource)
                      mempty
