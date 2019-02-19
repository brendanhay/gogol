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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Tags of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsListResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsList
    , AccountsContainersWorkspacesTagsList

    -- * Request Lenses
    , acwtlParent
    , acwtlPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.list@ method which the
-- 'AccountsContainersWorkspacesTagsList' request conforms to.
type AccountsContainersWorkspacesTagsListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "tags" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListTagsResponse

-- | Lists all GTM Tags of a Container.
--
-- /See:/ 'accountsContainersWorkspacesTagsList' smart constructor.
data AccountsContainersWorkspacesTagsList =
  AccountsContainersWorkspacesTagsList'
    { _acwtlParent    :: !Text
    , _acwtlPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesTagsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtlParent'
--
-- * 'acwtlPageToken'
accountsContainersWorkspacesTagsList
    :: Text -- ^ 'acwtlParent'
    -> AccountsContainersWorkspacesTagsList
accountsContainersWorkspacesTagsList pAcwtlParent_ =
  AccountsContainersWorkspacesTagsList'
    {_acwtlParent = pAcwtlParent_, _acwtlPageToken = Nothing}

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwtlParent :: Lens' AccountsContainersWorkspacesTagsList Text
acwtlParent
  = lens _acwtlParent (\ s a -> s{_acwtlParent = a})

-- | Continuation token for fetching the next page of results.
acwtlPageToken :: Lens' AccountsContainersWorkspacesTagsList (Maybe Text)
acwtlPageToken
  = lens _acwtlPageToken
      (\ s a -> s{_acwtlPageToken = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsList
         where
        type Rs AccountsContainersWorkspacesTagsList =
             ListTagsResponse
        type Scopes AccountsContainersWorkspacesTagsList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTagsList'{..}
          = go _acwtlParent _acwtlPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsListResource)
                      mempty
