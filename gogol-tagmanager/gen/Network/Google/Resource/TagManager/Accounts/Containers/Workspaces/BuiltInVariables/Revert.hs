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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Revert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Built-In Variables in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesBuiltInVariablesRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesBuiltInVariablesRevert
    , AccountsContainersWorkspacesBuiltInVariablesRevert

    -- * Request Lenses
    , acwbivrPath
    , acwbivrType
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.revert@ method which the
-- 'AccountsContainersWorkspacesBuiltInVariablesRevert' request conforms to.
type AccountsContainersWorkspacesBuiltInVariablesRevertResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           "built_in_variables:revert" :>
             QueryParam "type"
               AccountsContainersWorkspacesBuilt_in_variablesRevertType
               :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] RevertBuiltInVariableResponse

-- | Reverts changes to a GTM Built-In Variables in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesBuiltInVariablesRevert' smart constructor.
data AccountsContainersWorkspacesBuiltInVariablesRevert = AccountsContainersWorkspacesBuiltInVariablesRevert'
    { _acwbivrPath :: !Text
    , _acwbivrType :: !(Maybe AccountsContainersWorkspacesBuilt_in_variablesRevertType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesBuiltInVariablesRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwbivrPath'
--
-- * 'acwbivrType'
accountsContainersWorkspacesBuiltInVariablesRevert
    :: Text -- ^ 'acwbivrPath'
    -> AccountsContainersWorkspacesBuiltInVariablesRevert
accountsContainersWorkspacesBuiltInVariablesRevert pAcwbivrPath_ =
    AccountsContainersWorkspacesBuiltInVariablesRevert'
    { _acwbivrPath = pAcwbivrPath_
    , _acwbivrType = Nothing
    }

-- | GTM BuiltInVariable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/built_in_variables
acwbivrPath :: Lens' AccountsContainersWorkspacesBuiltInVariablesRevert Text
acwbivrPath
  = lens _acwbivrPath (\ s a -> s{_acwbivrPath = a})

-- | The type of built-in variable to revert.
acwbivrType :: Lens' AccountsContainersWorkspacesBuiltInVariablesRevert (Maybe AccountsContainersWorkspacesBuilt_in_variablesRevertType)
acwbivrType
  = lens _acwbivrType (\ s a -> s{_acwbivrType = a})

instance GoogleRequest
         AccountsContainersWorkspacesBuiltInVariablesRevert
         where
        type Rs
               AccountsContainersWorkspacesBuiltInVariablesRevert
             = RevertBuiltInVariableResponse
        type Scopes
               AccountsContainersWorkspacesBuiltInVariablesRevert
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesBuiltInVariablesRevert'{..}
          = go _acwbivrPath _acwbivrType (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesBuiltInVariablesRevertResource)
                      mempty
