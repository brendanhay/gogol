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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Workspaces that belong to a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesListResource

    -- * Creating a Request
    , accountsContainersWorkspacesList
    , AccountsContainersWorkspacesList

    -- * Request Lenses
    , acwlParent
    , acwlPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.list@ method which the
-- 'AccountsContainersWorkspacesList' request conforms to.
type AccountsContainersWorkspacesListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "workspaces" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListWorkspacesResponse

-- | Lists all Workspaces that belong to a GTM Container.
--
-- /See:/ 'accountsContainersWorkspacesList' smart constructor.
data AccountsContainersWorkspacesList =
  AccountsContainersWorkspacesList'
    { _acwlParent    :: !Text
    , _acwlPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwlParent'
--
-- * 'acwlPageToken'
accountsContainersWorkspacesList
    :: Text -- ^ 'acwlParent'
    -> AccountsContainersWorkspacesList
accountsContainersWorkspacesList pAcwlParent_ =
  AccountsContainersWorkspacesList'
    {_acwlParent = pAcwlParent_, _acwlPageToken = Nothing}


-- | GTM parent Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acwlParent :: Lens' AccountsContainersWorkspacesList Text
acwlParent
  = lens _acwlParent (\ s a -> s{_acwlParent = a})

-- | Continuation token for fetching the next page of results.
acwlPageToken :: Lens' AccountsContainersWorkspacesList (Maybe Text)
acwlPageToken
  = lens _acwlPageToken
      (\ s a -> s{_acwlPageToken = a})

instance GoogleRequest
           AccountsContainersWorkspacesList
         where
        type Rs AccountsContainersWorkspacesList =
             ListWorkspacesResponse
        type Scopes AccountsContainersWorkspacesList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersWorkspacesList'{..}
          = go _acwlParent _acwlPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesListResource)
                      mempty
