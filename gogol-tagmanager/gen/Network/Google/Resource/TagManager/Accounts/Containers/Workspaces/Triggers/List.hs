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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Triggers of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersListResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersList
    , AccountsContainersWorkspacesTriggersList

    -- * Request Lenses
    , acwtlcParent
    , acwtlcPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.list@ method which the
-- 'AccountsContainersWorkspacesTriggersList' request conforms to.
type AccountsContainersWorkspacesTriggersListResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "triggers" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListTriggersResponse

-- | Lists all GTM Triggers of a Container.
--
-- /See:/ 'accountsContainersWorkspacesTriggersList' smart constructor.
data AccountsContainersWorkspacesTriggersList = AccountsContainersWorkspacesTriggersList'
    { _acwtlcParent    :: !Text
    , _acwtlcPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesTriggersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtlcParent'
--
-- * 'acwtlcPageToken'
accountsContainersWorkspacesTriggersList
    :: Text -- ^ 'acwtlcParent'
    -> AccountsContainersWorkspacesTriggersList
accountsContainersWorkspacesTriggersList pAcwtlcParent_ =
    AccountsContainersWorkspacesTriggersList'
    { _acwtlcParent = pAcwtlcParent_
    , _acwtlcPageToken = Nothing
    }

-- | GTM Workspaces\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwtlcParent :: Lens' AccountsContainersWorkspacesTriggersList Text
acwtlcParent
  = lens _acwtlcParent (\ s a -> s{_acwtlcParent = a})

-- | Continuation token for fetching the next page of results.
acwtlcPageToken :: Lens' AccountsContainersWorkspacesTriggersList (Maybe Text)
acwtlcPageToken
  = lens _acwtlcPageToken
      (\ s a -> s{_acwtlcPageToken = a})

instance GoogleRequest
         AccountsContainersWorkspacesTriggersList where
        type Rs AccountsContainersWorkspacesTriggersList =
             ListTriggersResponse
        type Scopes AccountsContainersWorkspacesTriggersList
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTriggersList'{..}
          = go _acwtlcParent _acwtlcPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersListResource)
                      mempty
