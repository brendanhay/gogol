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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Zone.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesCreate
    , AccountsContainersWorkspacesZonesCreate

    -- * Request Lenses
    , acwzcParent
    , acwzcPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.create@ method which the
-- 'AccountsContainersWorkspacesZonesCreate' request conforms to.
type AccountsContainersWorkspacesZonesCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "zones" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Zone :> Post '[JSON] Zone

-- | Creates a GTM Zone.
--
-- /See:/ 'accountsContainersWorkspacesZonesCreate' smart constructor.
data AccountsContainersWorkspacesZonesCreate =
  AccountsContainersWorkspacesZonesCreate'
    { _acwzcParent  :: !Text
    , _acwzcPayload :: !Zone
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzcParent'
--
-- * 'acwzcPayload'
accountsContainersWorkspacesZonesCreate
    :: Text -- ^ 'acwzcParent'
    -> Zone -- ^ 'acwzcPayload'
    -> AccountsContainersWorkspacesZonesCreate
accountsContainersWorkspacesZonesCreate pAcwzcParent_ pAcwzcPayload_ =
  AccountsContainersWorkspacesZonesCreate'
    {_acwzcParent = pAcwzcParent_, _acwzcPayload = pAcwzcPayload_}


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwzcParent :: Lens' AccountsContainersWorkspacesZonesCreate Text
acwzcParent
  = lens _acwzcParent (\ s a -> s{_acwzcParent = a})

-- | Multipart request metadata.
acwzcPayload :: Lens' AccountsContainersWorkspacesZonesCreate Zone
acwzcPayload
  = lens _acwzcPayload (\ s a -> s{_acwzcPayload = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesCreate
         where
        type Rs AccountsContainersWorkspacesZonesCreate =
             Zone
        type Scopes AccountsContainersWorkspacesZonesCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesZonesCreate'{..}
          = go _acwzcParent (Just AltJSON) _acwzcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesZonesCreateResource)
                      mempty
