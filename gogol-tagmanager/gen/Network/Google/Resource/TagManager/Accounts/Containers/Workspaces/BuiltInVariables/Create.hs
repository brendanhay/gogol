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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more GTM Built-In Variables.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesBuiltInVariablesCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesBuiltInVariablesCreate
    , AccountsContainersWorkspacesBuiltInVariablesCreate

    -- * Request Lenses
    , acwbivcParent
    , acwbivcType
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.create@ method which the
-- 'AccountsContainersWorkspacesBuiltInVariablesCreate' request conforms to.
type AccountsContainersWorkspacesBuiltInVariablesCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "built_in_variables" :>
             QueryParams "type"
               AccountsContainersWorkspacesBuilt_in_variablesCreateType
               :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] CreateBuiltInVariableResponse

-- | Creates one or more GTM Built-In Variables.
--
-- /See:/ 'accountsContainersWorkspacesBuiltInVariablesCreate' smart constructor.
data AccountsContainersWorkspacesBuiltInVariablesCreate = AccountsContainersWorkspacesBuiltInVariablesCreate'
    { _acwbivcParent :: !Text
    , _acwbivcType   :: !(Maybe [AccountsContainersWorkspacesBuilt_in_variablesCreateType])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesBuiltInVariablesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwbivcParent'
--
-- * 'acwbivcType'
accountsContainersWorkspacesBuiltInVariablesCreate
    :: Text -- ^ 'acwbivcParent'
    -> AccountsContainersWorkspacesBuiltInVariablesCreate
accountsContainersWorkspacesBuiltInVariablesCreate pAcwbivcParent_ =
    AccountsContainersWorkspacesBuiltInVariablesCreate'
    { _acwbivcParent = pAcwbivcParent_
    , _acwbivcType = Nothing
    }

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwbivcParent :: Lens' AccountsContainersWorkspacesBuiltInVariablesCreate Text
acwbivcParent
  = lens _acwbivcParent
      (\ s a -> s{_acwbivcParent = a})

-- | The types of built-in variables to enable.
acwbivcType :: Lens' AccountsContainersWorkspacesBuiltInVariablesCreate [AccountsContainersWorkspacesBuilt_in_variablesCreateType]
acwbivcType
  = lens _acwbivcType (\ s a -> s{_acwbivcType = a}) .
      _Default
      . _Coerce

instance GoogleRequest
         AccountsContainersWorkspacesBuiltInVariablesCreate
         where
        type Rs
               AccountsContainersWorkspacesBuiltInVariablesCreate
             = CreateBuiltInVariableResponse
        type Scopes
               AccountsContainersWorkspacesBuiltInVariablesCreate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesBuiltInVariablesCreate'{..}
          = go _acwbivcParent (_acwbivcType ^. _Default)
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesBuiltInVariablesCreateResource)
                      mempty
