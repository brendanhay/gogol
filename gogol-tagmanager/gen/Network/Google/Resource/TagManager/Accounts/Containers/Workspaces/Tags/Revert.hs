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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Revert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Tag in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsRevert
    , AccountsContainersWorkspacesTagsRevert

    -- * Request Lenses
    , acwtrcPath
    , acwtrcFingerprint
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.revert@ method which the
-- 'AccountsContainersWorkspacesTagsRevert' request conforms to.
type AccountsContainersWorkspacesTagsRevertResource =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "revert" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] RevertTagResponse

-- | Reverts changes to a GTM Tag in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesTagsRevert' smart constructor.
data AccountsContainersWorkspacesTagsRevert =
  AccountsContainersWorkspacesTagsRevert'
    { _acwtrcPath        :: !Text
    , _acwtrcFingerprint :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesTagsRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtrcPath'
--
-- * 'acwtrcFingerprint'
accountsContainersWorkspacesTagsRevert
    :: Text -- ^ 'acwtrcPath'
    -> AccountsContainersWorkspacesTagsRevert
accountsContainersWorkspacesTagsRevert pAcwtrcPath_ =
  AccountsContainersWorkspacesTagsRevert'
    {_acwtrcPath = pAcwtrcPath_, _acwtrcFingerprint = Nothing}

-- | GTM Tag\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/tags\/{tag_id}
acwtrcPath :: Lens' AccountsContainersWorkspacesTagsRevert Text
acwtrcPath
  = lens _acwtrcPath (\ s a -> s{_acwtrcPath = a})

-- | When provided, this fingerprint must match the fingerprint of thetag in
-- storage.
acwtrcFingerprint :: Lens' AccountsContainersWorkspacesTagsRevert (Maybe Text)
acwtrcFingerprint
  = lens _acwtrcFingerprint
      (\ s a -> s{_acwtrcFingerprint = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsRevert
         where
        type Rs AccountsContainersWorkspacesTagsRevert =
             RevertTagResponse
        type Scopes AccountsContainersWorkspacesTagsRevert =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTagsRevert'{..}
          = go _acwtrcPath _acwtrcFingerprint (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsRevertResource)
                      mempty
