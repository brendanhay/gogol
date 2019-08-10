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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Zone.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesDelete
    , AccountsContainersWorkspacesZonesDelete

    -- * Request Lenses
    , acwzdPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.delete@ method which the
-- 'AccountsContainersWorkspacesZonesDelete' request conforms to.
type AccountsContainersWorkspacesZonesDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Zone.
--
-- /See:/ 'accountsContainersWorkspacesZonesDelete' smart constructor.
newtype AccountsContainersWorkspacesZonesDelete =
  AccountsContainersWorkspacesZonesDelete'
    { _acwzdPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzdPath'
accountsContainersWorkspacesZonesDelete
    :: Text -- ^ 'acwzdPath'
    -> AccountsContainersWorkspacesZonesDelete
accountsContainersWorkspacesZonesDelete pAcwzdPath_ =
  AccountsContainersWorkspacesZonesDelete' {_acwzdPath = pAcwzdPath_}


-- | GTM Zone\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/zones\/{zone_id}
acwzdPath :: Lens' AccountsContainersWorkspacesZonesDelete Text
acwzdPath
  = lens _acwzdPath (\ s a -> s{_acwzdPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesDelete
         where
        type Rs AccountsContainersWorkspacesZonesDelete = ()
        type Scopes AccountsContainersWorkspacesZonesDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesZonesDelete'{..}
          = go _acwzdPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesZonesDeleteResource)
                      mempty
