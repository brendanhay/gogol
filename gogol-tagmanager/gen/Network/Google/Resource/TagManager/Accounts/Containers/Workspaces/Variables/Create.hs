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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesCreate
    , AccountsContainersWorkspacesVariablesCreate

    -- * Request Lenses
    , acwvcParent
    , acwvcPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.create@ method which the
-- 'AccountsContainersWorkspacesVariablesCreate' request conforms to.
type AccountsContainersWorkspacesVariablesCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "variables" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Variable :> Post '[JSON] Variable

-- | Creates a GTM Variable.
--
-- /See:/ 'accountsContainersWorkspacesVariablesCreate' smart constructor.
data AccountsContainersWorkspacesVariablesCreate =
  AccountsContainersWorkspacesVariablesCreate'
    { _acwvcParent  :: !Text
    , _acwvcPayload :: !Variable
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesVariablesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvcParent'
--
-- * 'acwvcPayload'
accountsContainersWorkspacesVariablesCreate
    :: Text -- ^ 'acwvcParent'
    -> Variable -- ^ 'acwvcPayload'
    -> AccountsContainersWorkspacesVariablesCreate
accountsContainersWorkspacesVariablesCreate pAcwvcParent_ pAcwvcPayload_ =
  AccountsContainersWorkspacesVariablesCreate'
    {_acwvcParent = pAcwvcParent_, _acwvcPayload = pAcwvcPayload_}

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwvcParent :: Lens' AccountsContainersWorkspacesVariablesCreate Text
acwvcParent
  = lens _acwvcParent (\ s a -> s{_acwvcParent = a})

-- | Multipart request metadata.
acwvcPayload :: Lens' AccountsContainersWorkspacesVariablesCreate Variable
acwvcPayload
  = lens _acwvcPayload (\ s a -> s{_acwvcPayload = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesCreate
         where
        type Rs AccountsContainersWorkspacesVariablesCreate =
             Variable
        type Scopes
               AccountsContainersWorkspacesVariablesCreate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesVariablesCreate'{..}
          = go _acwvcParent (Just AltJSON) _acwvcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesCreateResource)
                      mempty
