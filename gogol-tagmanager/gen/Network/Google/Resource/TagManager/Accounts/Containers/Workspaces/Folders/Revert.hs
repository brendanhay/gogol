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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Revert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Folder in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersRevert
    , AccountsContainersWorkspacesFoldersRevert

    -- * Request Lenses
    , acwfrPath
    , acwfrFingerprint
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.revert@ method which the
-- 'AccountsContainersWorkspacesFoldersRevert' request conforms to.
type AccountsContainersWorkspacesFoldersRevertResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "revert" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] RevertFolderResponse

-- | Reverts changes to a GTM Folder in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesFoldersRevert' smart constructor.
data AccountsContainersWorkspacesFoldersRevert =
  AccountsContainersWorkspacesFoldersRevert'
    { _acwfrPath        :: !Text
    , _acwfrFingerprint :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesFoldersRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfrPath'
--
-- * 'acwfrFingerprint'
accountsContainersWorkspacesFoldersRevert
    :: Text -- ^ 'acwfrPath'
    -> AccountsContainersWorkspacesFoldersRevert
accountsContainersWorkspacesFoldersRevert pAcwfrPath_ =
  AccountsContainersWorkspacesFoldersRevert'
    {_acwfrPath = pAcwfrPath_, _acwfrFingerprint = Nothing}


-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfrPath :: Lens' AccountsContainersWorkspacesFoldersRevert Text
acwfrPath
  = lens _acwfrPath (\ s a -> s{_acwfrPath = a})

-- | When provided, this fingerprint must match the fingerprint of the tag in
-- storage.
acwfrFingerprint :: Lens' AccountsContainersWorkspacesFoldersRevert (Maybe Text)
acwfrFingerprint
  = lens _acwfrFingerprint
      (\ s a -> s{_acwfrFingerprint = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersRevert
         where
        type Rs AccountsContainersWorkspacesFoldersRevert =
             RevertFolderResponse
        type Scopes AccountsContainersWorkspacesFoldersRevert
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesFoldersRevert'{..}
          = go _acwfrPath _acwfrFingerprint (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersRevertResource)
                      mempty
