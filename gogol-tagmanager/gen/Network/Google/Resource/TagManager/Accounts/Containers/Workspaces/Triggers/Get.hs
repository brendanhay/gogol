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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersGet
    , AccountsContainersWorkspacesTriggersGet

    -- * Request Lenses
    , accPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.get@ method which the
-- 'AccountsContainersWorkspacesTriggersGet' request conforms to.
type AccountsContainersWorkspacesTriggersGetResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Trigger

-- | Gets a GTM Trigger.
--
-- /See:/ 'accountsContainersWorkspacesTriggersGet' smart constructor.
newtype AccountsContainersWorkspacesTriggersGet =
  AccountsContainersWorkspacesTriggersGet'
    { _accPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTriggersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accPath'
accountsContainersWorkspacesTriggersGet
    :: Text -- ^ 'accPath'
    -> AccountsContainersWorkspacesTriggersGet
accountsContainersWorkspacesTriggersGet pAccPath_ =
  AccountsContainersWorkspacesTriggersGet' {_accPath = pAccPath_}


-- | GTM Trigger\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/triggers\/{trigger_id}
accPath :: Lens' AccountsContainersWorkspacesTriggersGet Text
accPath = lens _accPath (\ s a -> s{_accPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesTriggersGet
         where
        type Rs AccountsContainersWorkspacesTriggersGet =
             Trigger
        type Scopes AccountsContainersWorkspacesTriggersGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTriggersGet'{..}
          = go _accPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersGetResource)
                      mempty
