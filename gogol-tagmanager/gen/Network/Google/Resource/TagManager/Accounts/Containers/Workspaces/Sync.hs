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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Sync
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Syncs a workspace to the latest container version by updating all
-- unmodified workspace entities and displaying conflicts for modified
-- entities.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.sync@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Sync
    (
    -- * REST Resource
      AccountsContainersWorkspacesSyncResource

    -- * Creating a Request
    , accountsContainersWorkspacesSync
    , AccountsContainersWorkspacesSync

    -- * Request Lenses
    , acwsPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.sync@ method which the
-- 'AccountsContainersWorkspacesSync' request conforms to.
type AccountsContainersWorkspacesSyncResource =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "sync" Text :>
           QueryParam "alt" AltJSON :>
             Post '[JSON] SyncWorkspaceResponse

-- | Syncs a workspace to the latest container version by updating all
-- unmodified workspace entities and displaying conflicts for modified
-- entities.
--
-- /See:/ 'accountsContainersWorkspacesSync' smart constructor.
newtype AccountsContainersWorkspacesSync =
  AccountsContainersWorkspacesSync'
    { _acwsPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesSync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwsPath'
accountsContainersWorkspacesSync
    :: Text -- ^ 'acwsPath'
    -> AccountsContainersWorkspacesSync
accountsContainersWorkspacesSync pAcwsPath_ =
  AccountsContainersWorkspacesSync' {_acwsPath = pAcwsPath_}

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwsPath :: Lens' AccountsContainersWorkspacesSync Text
acwsPath = lens _acwsPath (\ s a -> s{_acwsPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesSync
         where
        type Rs AccountsContainersWorkspacesSync =
             SyncWorkspaceResponse
        type Scopes AccountsContainersWorkspacesSync =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersWorkspacesSync'{..}
          = go _acwsPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesSyncResource)
                      mempty
