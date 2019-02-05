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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersUpdate
    , AccountsContainersWorkspacesFoldersUpdate

    -- * Request Lenses
    , acwfuPath
    , acwfuFingerprint
    , acwfuPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.update@ method which the
-- 'AccountsContainersWorkspacesFoldersUpdate' request conforms to.
type AccountsContainersWorkspacesFoldersUpdateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Folder :> Put '[JSON] Folder

-- | Updates a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersUpdate' smart constructor.
data AccountsContainersWorkspacesFoldersUpdate = AccountsContainersWorkspacesFoldersUpdate'
    { _acwfuPath        :: !Text
    , _acwfuFingerprint :: !(Maybe Text)
    , _acwfuPayload     :: !Folder
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesFoldersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfuPath'
--
-- * 'acwfuFingerprint'
--
-- * 'acwfuPayload'
accountsContainersWorkspacesFoldersUpdate
    :: Text -- ^ 'acwfuPath'
    -> Folder -- ^ 'acwfuPayload'
    -> AccountsContainersWorkspacesFoldersUpdate
accountsContainersWorkspacesFoldersUpdate pAcwfuPath_ pAcwfuPayload_ =
    AccountsContainersWorkspacesFoldersUpdate'
    { _acwfuPath = pAcwfuPath_
    , _acwfuFingerprint = Nothing
    , _acwfuPayload = pAcwfuPayload_
    }

-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfuPath :: Lens' AccountsContainersWorkspacesFoldersUpdate Text
acwfuPath
  = lens _acwfuPath (\ s a -> s{_acwfuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the folder
-- in storage.
acwfuFingerprint :: Lens' AccountsContainersWorkspacesFoldersUpdate (Maybe Text)
acwfuFingerprint
  = lens _acwfuFingerprint
      (\ s a -> s{_acwfuFingerprint = a})

-- | Multipart request metadata.
acwfuPayload :: Lens' AccountsContainersWorkspacesFoldersUpdate Folder
acwfuPayload
  = lens _acwfuPayload (\ s a -> s{_acwfuPayload = a})

instance GoogleRequest
         AccountsContainersWorkspacesFoldersUpdate where
        type Rs AccountsContainersWorkspacesFoldersUpdate =
             Folder
        type Scopes AccountsContainersWorkspacesFoldersUpdate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesFoldersUpdate'{..}
          = go _acwfuPath _acwfuFingerprint (Just AltJSON)
              _acwfuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersUpdateResource)
                      mempty
