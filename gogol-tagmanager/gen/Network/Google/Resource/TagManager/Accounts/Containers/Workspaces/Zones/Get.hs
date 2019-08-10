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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Zone.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesGet
    , AccountsContainersWorkspacesZonesGet

    -- * Request Lenses
    , acwzgPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.get@ method which the
-- 'AccountsContainersWorkspacesZonesGet' request conforms to.
type AccountsContainersWorkspacesZonesGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Zone

-- | Gets a GTM Zone.
--
-- /See:/ 'accountsContainersWorkspacesZonesGet' smart constructor.
newtype AccountsContainersWorkspacesZonesGet =
  AccountsContainersWorkspacesZonesGet'
    { _acwzgPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzgPath'
accountsContainersWorkspacesZonesGet
    :: Text -- ^ 'acwzgPath'
    -> AccountsContainersWorkspacesZonesGet
accountsContainersWorkspacesZonesGet pAcwzgPath_ =
  AccountsContainersWorkspacesZonesGet' {_acwzgPath = pAcwzgPath_}


-- | GTM Zone\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/zones\/{zone_id}
acwzgPath :: Lens' AccountsContainersWorkspacesZonesGet Text
acwzgPath
  = lens _acwzgPath (\ s a -> s{_acwzgPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesGet
         where
        type Rs AccountsContainersWorkspacesZonesGet = Zone
        type Scopes AccountsContainersWorkspacesZonesGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesZonesGet'{..}
          = go _acwzgPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesZonesGetResource)
                      mempty
