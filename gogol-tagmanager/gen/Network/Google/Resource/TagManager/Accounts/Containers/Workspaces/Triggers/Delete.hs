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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersDelete
    , AccountsContainersWorkspacesTriggersDelete

    -- * Request Lenses
    , acwtdPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.delete@ method which the
-- 'AccountsContainersWorkspacesTriggersDelete' request conforms to.
type AccountsContainersWorkspacesTriggersDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Trigger.
--
-- /See:/ 'accountsContainersWorkspacesTriggersDelete' smart constructor.
newtype AccountsContainersWorkspacesTriggersDelete = AccountsContainersWorkspacesTriggersDelete'
    { _acwtdPath :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesTriggersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtdPath'
accountsContainersWorkspacesTriggersDelete
    :: Text -- ^ 'acwtdPath'
    -> AccountsContainersWorkspacesTriggersDelete
accountsContainersWorkspacesTriggersDelete pAcwtdPath_ =
    AccountsContainersWorkspacesTriggersDelete'
    { _acwtdPath = pAcwtdPath_
    }

-- | GTM Trigger\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/triggers\/{trigger_id}
acwtdPath :: Lens' AccountsContainersWorkspacesTriggersDelete Text
acwtdPath
  = lens _acwtdPath (\ s a -> s{_acwtdPath = a})

instance GoogleRequest
         AccountsContainersWorkspacesTriggersDelete where
        type Rs AccountsContainersWorkspacesTriggersDelete =
             ()
        type Scopes
               AccountsContainersWorkspacesTriggersDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTriggersDelete'{..}
          = go _acwtdPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersDeleteResource)
                      mempty
