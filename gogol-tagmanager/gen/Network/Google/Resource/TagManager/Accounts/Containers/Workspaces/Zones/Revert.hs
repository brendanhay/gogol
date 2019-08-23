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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Revert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Zone in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesRevert
    , AccountsContainersWorkspacesZonesRevert

    -- * Request Lenses
    , acwzrPath
    , acwzrFingerprint
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.revert@ method which the
-- 'AccountsContainersWorkspacesZonesRevert' request conforms to.
type AccountsContainersWorkspacesZonesRevertResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "revert" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] RevertZoneResponse

-- | Reverts changes to a GTM Zone in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesZonesRevert' smart constructor.
data AccountsContainersWorkspacesZonesRevert =
  AccountsContainersWorkspacesZonesRevert'
    { _acwzrPath        :: !Text
    , _acwzrFingerprint :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzrPath'
--
-- * 'acwzrFingerprint'
accountsContainersWorkspacesZonesRevert
    :: Text -- ^ 'acwzrPath'
    -> AccountsContainersWorkspacesZonesRevert
accountsContainersWorkspacesZonesRevert pAcwzrPath_ =
  AccountsContainersWorkspacesZonesRevert'
    {_acwzrPath = pAcwzrPath_, _acwzrFingerprint = Nothing}


-- | GTM Zone\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/zones\/{zone_id}
acwzrPath :: Lens' AccountsContainersWorkspacesZonesRevert Text
acwzrPath
  = lens _acwzrPath (\ s a -> s{_acwzrPath = a})

-- | When provided, this fingerprint must match the fingerprint of the zone
-- in storage.
acwzrFingerprint :: Lens' AccountsContainersWorkspacesZonesRevert (Maybe Text)
acwzrFingerprint
  = lens _acwzrFingerprint
      (\ s a -> s{_acwzrFingerprint = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesRevert
         where
        type Rs AccountsContainersWorkspacesZonesRevert =
             RevertZoneResponse
        type Scopes AccountsContainersWorkspacesZonesRevert =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesZonesRevert'{..}
          = go _acwzrPath _acwzrFingerprint (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesZonesRevertResource)
                      mempty
