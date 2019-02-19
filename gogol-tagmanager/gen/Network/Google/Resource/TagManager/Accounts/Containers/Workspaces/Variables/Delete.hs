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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesDelete
    , AccountsContainersWorkspacesVariablesDelete

    -- * Request Lenses
    , acwvdPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.delete@ method which the
-- 'AccountsContainersWorkspacesVariablesDelete' request conforms to.
type AccountsContainersWorkspacesVariablesDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Variable.
--
-- /See:/ 'accountsContainersWorkspacesVariablesDelete' smart constructor.
newtype AccountsContainersWorkspacesVariablesDelete =
  AccountsContainersWorkspacesVariablesDelete'
    { _acwvdPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesVariablesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvdPath'
accountsContainersWorkspacesVariablesDelete
    :: Text -- ^ 'acwvdPath'
    -> AccountsContainersWorkspacesVariablesDelete
accountsContainersWorkspacesVariablesDelete pAcwvdPath_ =
  AccountsContainersWorkspacesVariablesDelete' {_acwvdPath = pAcwvdPath_}


-- | GTM Variable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/variables\/{variable_id}
acwvdPath :: Lens' AccountsContainersWorkspacesVariablesDelete Text
acwvdPath
  = lens _acwvdPath (\ s a -> s{_acwvdPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesDelete
         where
        type Rs AccountsContainersWorkspacesVariablesDelete =
             ()
        type Scopes
               AccountsContainersWorkspacesVariablesDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesVariablesDelete'{..}
          = go _acwvdPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesDeleteResource)
                      mempty
