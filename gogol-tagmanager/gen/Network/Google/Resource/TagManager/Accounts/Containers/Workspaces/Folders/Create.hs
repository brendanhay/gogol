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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersCreate
    , AccountsContainersWorkspacesFoldersCreate

    -- * Request Lenses
    , acwfcParent
    , acwfcPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.create@ method which the
-- 'AccountsContainersWorkspacesFoldersCreate' request conforms to.
type AccountsContainersWorkspacesFoldersCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "folders" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Folder :> Post '[JSON] Folder

-- | Creates a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersCreate' smart constructor.
data AccountsContainersWorkspacesFoldersCreate =
  AccountsContainersWorkspacesFoldersCreate'
    { _acwfcParent  :: !Text
    , _acwfcPayload :: !Folder
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesFoldersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfcParent'
--
-- * 'acwfcPayload'
accountsContainersWorkspacesFoldersCreate
    :: Text -- ^ 'acwfcParent'
    -> Folder -- ^ 'acwfcPayload'
    -> AccountsContainersWorkspacesFoldersCreate
accountsContainersWorkspacesFoldersCreate pAcwfcParent_ pAcwfcPayload_ =
  AccountsContainersWorkspacesFoldersCreate'
    {_acwfcParent = pAcwfcParent_, _acwfcPayload = pAcwfcPayload_}


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwfcParent :: Lens' AccountsContainersWorkspacesFoldersCreate Text
acwfcParent
  = lens _acwfcParent (\ s a -> s{_acwfcParent = a})

-- | Multipart request metadata.
acwfcPayload :: Lens' AccountsContainersWorkspacesFoldersCreate Folder
acwfcPayload
  = lens _acwfcPayload (\ s a -> s{_acwfcPayload = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersCreate
         where
        type Rs AccountsContainersWorkspacesFoldersCreate =
             Folder
        type Scopes AccountsContainersWorkspacesFoldersCreate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesFoldersCreate'{..}
          = go _acwfcParent (Just AltJSON) _acwfcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersCreateResource)
                      mempty
