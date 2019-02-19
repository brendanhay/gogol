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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesGet
    , AccountsContainersWorkspacesGet

    -- * Request Lenses
    , acwgPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.get@ method which the
-- 'AccountsContainersWorkspacesGet' request conforms to.
type AccountsContainersWorkspacesGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Workspace

-- | Gets a Workspace.
--
-- /See:/ 'accountsContainersWorkspacesGet' smart constructor.
newtype AccountsContainersWorkspacesGet =
  AccountsContainersWorkspacesGet'
    { _acwgPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwgPath'
accountsContainersWorkspacesGet
    :: Text -- ^ 'acwgPath'
    -> AccountsContainersWorkspacesGet
accountsContainersWorkspacesGet pAcwgPath_ =
  AccountsContainersWorkspacesGet' {_acwgPath = pAcwgPath_}

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwgPath :: Lens' AccountsContainersWorkspacesGet Text
acwgPath = lens _acwgPath (\ s a -> s{_acwgPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesGet
         where
        type Rs AccountsContainersWorkspacesGet = Workspace
        type Scopes AccountsContainersWorkspacesGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersWorkspacesGet'{..}
          = go _acwgPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesGetResource)
                      mempty
