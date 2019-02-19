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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesGet
    , AccountsContainersWorkspacesVariablesGet

    -- * Request Lenses
    , acwvgPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.get@ method which the
-- 'AccountsContainersWorkspacesVariablesGet' request conforms to.
type AccountsContainersWorkspacesVariablesGetResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Variable

-- | Gets a GTM Variable.
--
-- /See:/ 'accountsContainersWorkspacesVariablesGet' smart constructor.
newtype AccountsContainersWorkspacesVariablesGet =
  AccountsContainersWorkspacesVariablesGet'
    { _acwvgPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesVariablesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvgPath'
accountsContainersWorkspacesVariablesGet
    :: Text -- ^ 'acwvgPath'
    -> AccountsContainersWorkspacesVariablesGet
accountsContainersWorkspacesVariablesGet pAcwvgPath_ =
  AccountsContainersWorkspacesVariablesGet' {_acwvgPath = pAcwvgPath_}

-- | GTM Variable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/variables\/{variable_id}
acwvgPath :: Lens' AccountsContainersWorkspacesVariablesGet Text
acwvgPath
  = lens _acwvgPath (\ s a -> s{_acwvgPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesGet
         where
        type Rs AccountsContainersWorkspacesVariablesGet =
             Variable
        type Scopes AccountsContainersWorkspacesVariablesGet
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesVariablesGet'{..}
          = go _acwvgPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesGetResource)
                      mempty
