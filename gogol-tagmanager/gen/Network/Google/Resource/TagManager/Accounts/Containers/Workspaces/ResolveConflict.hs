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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.ResolveConflict
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resolves a merge conflict for a workspace entity by updating it to the
-- resolved entity passed in the request.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.resolve_conflict@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.ResolveConflict
    (
    -- * REST Resource
      AccountsContainersWorkspacesResolveConflictResource

    -- * Creating a Request
    , accountsContainersWorkspacesResolveConflict
    , AccountsContainersWorkspacesResolveConflict

    -- * Request Lenses
    , acwrcPath
    , acwrcFingerprint
    , acwrcPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.resolve_conflict@ method which the
-- 'AccountsContainersWorkspacesResolveConflict' request conforms to.
type AccountsContainersWorkspacesResolveConflictResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "resolve_conflict" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Entity :> Post '[JSON] ()

-- | Resolves a merge conflict for a workspace entity by updating it to the
-- resolved entity passed in the request.
--
-- /See:/ 'accountsContainersWorkspacesResolveConflict' smart constructor.
data AccountsContainersWorkspacesResolveConflict = AccountsContainersWorkspacesResolveConflict'
    { _acwrcPath        :: !Text
    , _acwrcFingerprint :: !(Maybe Text)
    , _acwrcPayload     :: !Entity
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesResolveConflict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwrcPath'
--
-- * 'acwrcFingerprint'
--
-- * 'acwrcPayload'
accountsContainersWorkspacesResolveConflict
    :: Text -- ^ 'acwrcPath'
    -> Entity -- ^ 'acwrcPayload'
    -> AccountsContainersWorkspacesResolveConflict
accountsContainersWorkspacesResolveConflict pAcwrcPath_ pAcwrcPayload_ =
    AccountsContainersWorkspacesResolveConflict'
    { _acwrcPath = pAcwrcPath_
    , _acwrcFingerprint = Nothing
    , _acwrcPayload = pAcwrcPayload_
    }

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwrcPath :: Lens' AccountsContainersWorkspacesResolveConflict Text
acwrcPath
  = lens _acwrcPath (\ s a -> s{_acwrcPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- entity_in_workspace in the merge conflict.
acwrcFingerprint :: Lens' AccountsContainersWorkspacesResolveConflict (Maybe Text)
acwrcFingerprint
  = lens _acwrcFingerprint
      (\ s a -> s{_acwrcFingerprint = a})

-- | Multipart request metadata.
acwrcPayload :: Lens' AccountsContainersWorkspacesResolveConflict Entity
acwrcPayload
  = lens _acwrcPayload (\ s a -> s{_acwrcPayload = a})

instance GoogleRequest
         AccountsContainersWorkspacesResolveConflict where
        type Rs AccountsContainersWorkspacesResolveConflict =
             ()
        type Scopes
               AccountsContainersWorkspacesResolveConflict
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesResolveConflict'{..}
          = go _acwrcPath _acwrcFingerprint (Just AltJSON)
              _acwrcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesResolveConflictResource)
                      mempty
