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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the enabled Built-In Variables of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesBuiltInVariablesListResource

    -- * Creating a Request
    , accountsContainersWorkspacesBuiltInVariablesList
    , AccountsContainersWorkspacesBuiltInVariablesList

    -- * Request Lenses
    , acwbivlParent
    , acwbivlPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.list@ method which the
-- 'AccountsContainersWorkspacesBuiltInVariablesList' request conforms to.
type AccountsContainersWorkspacesBuiltInVariablesListResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "built_in_variables" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListEnabledBuiltInVariablesResponse

-- | Lists all the enabled Built-In Variables of a GTM Container.
--
-- /See:/ 'accountsContainersWorkspacesBuiltInVariablesList' smart constructor.
data AccountsContainersWorkspacesBuiltInVariablesList =
  AccountsContainersWorkspacesBuiltInVariablesList'
    { _acwbivlParent    :: !Text
    , _acwbivlPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesBuiltInVariablesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwbivlParent'
--
-- * 'acwbivlPageToken'
accountsContainersWorkspacesBuiltInVariablesList
    :: Text -- ^ 'acwbivlParent'
    -> AccountsContainersWorkspacesBuiltInVariablesList
accountsContainersWorkspacesBuiltInVariablesList pAcwbivlParent_ =
  AccountsContainersWorkspacesBuiltInVariablesList'
    {_acwbivlParent = pAcwbivlParent_, _acwbivlPageToken = Nothing}


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwbivlParent :: Lens' AccountsContainersWorkspacesBuiltInVariablesList Text
acwbivlParent
  = lens _acwbivlParent
      (\ s a -> s{_acwbivlParent = a})

-- | Continuation token for fetching the next page of results.
acwbivlPageToken :: Lens' AccountsContainersWorkspacesBuiltInVariablesList (Maybe Text)
acwbivlPageToken
  = lens _acwbivlPageToken
      (\ s a -> s{_acwbivlPageToken = a})

instance GoogleRequest
           AccountsContainersWorkspacesBuiltInVariablesList
         where
        type Rs
               AccountsContainersWorkspacesBuiltInVariablesList
             = ListEnabledBuiltInVariablesResponse
        type Scopes
               AccountsContainersWorkspacesBuiltInVariablesList
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesBuiltInVariablesList'{..}
          = go _acwbivlParent _acwbivlPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesBuiltInVariablesListResource)
                      mempty
