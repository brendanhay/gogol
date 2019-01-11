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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more GTM Built-In Variables.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesBuiltInVariablesDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesBuiltInVariablesDelete
    , AccountsContainersWorkspacesBuiltInVariablesDelete

    -- * Request Lenses
    , acwbivdPath
    , acwbivdType
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.delete@ method which the
-- 'AccountsContainersWorkspacesBuiltInVariablesDelete' request conforms to.
type AccountsContainersWorkspacesBuiltInVariablesDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParams "type"
             AccountsContainersWorkspacesBuilt_in_variablesDeleteType
             :> QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes one or more GTM Built-In Variables.
--
-- /See:/ 'accountsContainersWorkspacesBuiltInVariablesDelete' smart constructor.
data AccountsContainersWorkspacesBuiltInVariablesDelete = AccountsContainersWorkspacesBuiltInVariablesDelete'
    { _acwbivdPath :: !Text
    , _acwbivdType :: !(Maybe [AccountsContainersWorkspacesBuilt_in_variablesDeleteType])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesBuiltInVariablesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwbivdPath'
--
-- * 'acwbivdType'
accountsContainersWorkspacesBuiltInVariablesDelete
    :: Text -- ^ 'acwbivdPath'
    -> AccountsContainersWorkspacesBuiltInVariablesDelete
accountsContainersWorkspacesBuiltInVariablesDelete pAcwbivdPath_ =
    AccountsContainersWorkspacesBuiltInVariablesDelete'
    { _acwbivdPath = pAcwbivdPath_
    , _acwbivdType = Nothing
    }

-- | GTM BuiltInVariable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/built_in_variables
acwbivdPath :: Lens' AccountsContainersWorkspacesBuiltInVariablesDelete Text
acwbivdPath
  = lens _acwbivdPath (\ s a -> s{_acwbivdPath = a})

-- | The types of built-in variables to delete.
acwbivdType :: Lens' AccountsContainersWorkspacesBuiltInVariablesDelete [AccountsContainersWorkspacesBuilt_in_variablesDeleteType]
acwbivdType
  = lens _acwbivdType (\ s a -> s{_acwbivdType = a}) .
      _Default
      . _Coerce

instance GoogleRequest
         AccountsContainersWorkspacesBuiltInVariablesDelete
         where
        type Rs
               AccountsContainersWorkspacesBuiltInVariablesDelete
             = ()
        type Scopes
               AccountsContainersWorkspacesBuiltInVariablesDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesBuiltInVariablesDelete'{..}
          = go _acwbivdPath (_acwbivdType ^. _Default)
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesBuiltInVariablesDeleteResource)
                      mempty
