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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesDelete
    , AccountsContainersWorkspacesDelete

    -- * Request Lenses
    , acwdPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.delete@ method which the
-- 'AccountsContainersWorkspacesDelete' request conforms to.
type AccountsContainersWorkspacesDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Workspace.
--
-- /See:/ 'accountsContainersWorkspacesDelete' smart constructor.
newtype AccountsContainersWorkspacesDelete = AccountsContainersWorkspacesDelete'
    { _acwdPath :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwdPath'
accountsContainersWorkspacesDelete
    :: Text -- ^ 'acwdPath'
    -> AccountsContainersWorkspacesDelete
accountsContainersWorkspacesDelete pAcwdPath_ =
    AccountsContainersWorkspacesDelete'
    { _acwdPath = pAcwdPath_
    }

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwdPath :: Lens' AccountsContainersWorkspacesDelete Text
acwdPath = lens _acwdPath (\ s a -> s{_acwdPath = a})

instance GoogleRequest
         AccountsContainersWorkspacesDelete where
        type Rs AccountsContainersWorkspacesDelete = ()
        type Scopes AccountsContainersWorkspacesDelete =
             '["https://www.googleapis.com/auth/tagmanager.delete.containers"]
        requestClient AccountsContainersWorkspacesDelete'{..}
          = go _acwdPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesDeleteResource)
                      mempty
