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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Variables of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesListResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesList
    , AccountsContainersWorkspacesVariablesList

    -- * Request Lenses
    , acwvlParent
    , acwvlPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.list@ method which the
-- 'AccountsContainersWorkspacesVariablesList' request conforms to.
type AccountsContainersWorkspacesVariablesListResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "variables" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListVariablesResponse

-- | Lists all GTM Variables of a Container.
--
-- /See:/ 'accountsContainersWorkspacesVariablesList' smart constructor.
data AccountsContainersWorkspacesVariablesList =
  AccountsContainersWorkspacesVariablesList'
    { _acwvlParent    :: !Text
    , _acwvlPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesVariablesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvlParent'
--
-- * 'acwvlPageToken'
accountsContainersWorkspacesVariablesList
    :: Text -- ^ 'acwvlParent'
    -> AccountsContainersWorkspacesVariablesList
accountsContainersWorkspacesVariablesList pAcwvlParent_ =
  AccountsContainersWorkspacesVariablesList'
    {_acwvlParent = pAcwvlParent_, _acwvlPageToken = Nothing}


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwvlParent :: Lens' AccountsContainersWorkspacesVariablesList Text
acwvlParent
  = lens _acwvlParent (\ s a -> s{_acwvlParent = a})

-- | Continuation token for fetching the next page of results.
acwvlPageToken :: Lens' AccountsContainersWorkspacesVariablesList (Maybe Text)
acwvlPageToken
  = lens _acwvlPageToken
      (\ s a -> s{_acwvlPageToken = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesList
         where
        type Rs AccountsContainersWorkspacesVariablesList =
             ListVariablesResponse
        type Scopes AccountsContainersWorkspacesVariablesList
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesVariablesList'{..}
          = go _acwvlParent _acwvlPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesListResource)
                      mempty
