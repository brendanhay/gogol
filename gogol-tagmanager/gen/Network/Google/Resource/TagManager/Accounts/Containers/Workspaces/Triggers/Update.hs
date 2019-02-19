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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersUpdate
    , AccountsContainersWorkspacesTriggersUpdate

    -- * Request Lenses
    , acwtuPath
    , acwtuFingerprint
    , acwtuPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.update@ method which the
-- 'AccountsContainersWorkspacesTriggersUpdate' request conforms to.
type AccountsContainersWorkspacesTriggersUpdateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Trigger :> Put '[JSON] Trigger

-- | Updates a GTM Trigger.
--
-- /See:/ 'accountsContainersWorkspacesTriggersUpdate' smart constructor.
data AccountsContainersWorkspacesTriggersUpdate =
  AccountsContainersWorkspacesTriggersUpdate'
    { _acwtuPath        :: !Text
    , _acwtuFingerprint :: !(Maybe Text)
    , _acwtuPayload     :: !Trigger
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesTriggersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtuPath'
--
-- * 'acwtuFingerprint'
--
-- * 'acwtuPayload'
accountsContainersWorkspacesTriggersUpdate
    :: Text -- ^ 'acwtuPath'
    -> Trigger -- ^ 'acwtuPayload'
    -> AccountsContainersWorkspacesTriggersUpdate
accountsContainersWorkspacesTriggersUpdate pAcwtuPath_ pAcwtuPayload_ =
  AccountsContainersWorkspacesTriggersUpdate'
    { _acwtuPath = pAcwtuPath_
    , _acwtuFingerprint = Nothing
    , _acwtuPayload = pAcwtuPayload_
    }

-- | GTM Trigger\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/triggers\/{trigger_id}
acwtuPath :: Lens' AccountsContainersWorkspacesTriggersUpdate Text
acwtuPath
  = lens _acwtuPath (\ s a -> s{_acwtuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- trigger in storage.
acwtuFingerprint :: Lens' AccountsContainersWorkspacesTriggersUpdate (Maybe Text)
acwtuFingerprint
  = lens _acwtuFingerprint
      (\ s a -> s{_acwtuFingerprint = a})

-- | Multipart request metadata.
acwtuPayload :: Lens' AccountsContainersWorkspacesTriggersUpdate Trigger
acwtuPayload
  = lens _acwtuPayload (\ s a -> s{_acwtuPayload = a})

instance GoogleRequest
           AccountsContainersWorkspacesTriggersUpdate
         where
        type Rs AccountsContainersWorkspacesTriggersUpdate =
             Trigger
        type Scopes
               AccountsContainersWorkspacesTriggersUpdate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTriggersUpdate'{..}
          = go _acwtuPath _acwtuFingerprint (Just AltJSON)
              _acwtuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersUpdateResource)
                      mempty
