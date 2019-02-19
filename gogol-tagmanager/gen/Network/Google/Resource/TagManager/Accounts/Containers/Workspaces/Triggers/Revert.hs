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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Revert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Trigger in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersRevert
    , AccountsContainersWorkspacesTriggersRevert

    -- * Request Lenses
    , acwtrPath
    , acwtrFingerprint
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.revert@ method which the
-- 'AccountsContainersWorkspacesTriggersRevert' request conforms to.
type AccountsContainersWorkspacesTriggersRevertResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "revert" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] RevertTriggerResponse

-- | Reverts changes to a GTM Trigger in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesTriggersRevert' smart constructor.
data AccountsContainersWorkspacesTriggersRevert =
  AccountsContainersWorkspacesTriggersRevert'
    { _acwtrPath        :: !Text
    , _acwtrFingerprint :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTriggersRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtrPath'
--
-- * 'acwtrFingerprint'
accountsContainersWorkspacesTriggersRevert
    :: Text -- ^ 'acwtrPath'
    -> AccountsContainersWorkspacesTriggersRevert
accountsContainersWorkspacesTriggersRevert pAcwtrPath_ =
  AccountsContainersWorkspacesTriggersRevert'
    {_acwtrPath = pAcwtrPath_, _acwtrFingerprint = Nothing}


-- | GTM Trigger\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/triggers\/{trigger_id}
acwtrPath :: Lens' AccountsContainersWorkspacesTriggersRevert Text
acwtrPath
  = lens _acwtrPath (\ s a -> s{_acwtrPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- trigger in storage.
acwtrFingerprint :: Lens' AccountsContainersWorkspacesTriggersRevert (Maybe Text)
acwtrFingerprint
  = lens _acwtrFingerprint
      (\ s a -> s{_acwtrFingerprint = a})

instance GoogleRequest
           AccountsContainersWorkspacesTriggersRevert
         where
        type Rs AccountsContainersWorkspacesTriggersRevert =
             RevertTriggerResponse
        type Scopes
               AccountsContainersWorkspacesTriggersRevert
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTriggersRevert'{..}
          = go _acwtrPath _acwtrFingerprint (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersRevertResource)
                      mempty
