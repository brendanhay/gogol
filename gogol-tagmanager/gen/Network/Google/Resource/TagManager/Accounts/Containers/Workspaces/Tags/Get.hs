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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsGet
    , AccountsContainersWorkspacesTagsGet

    -- * Request Lenses
    , acwtgPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.get@ method which the
-- 'AccountsContainersWorkspacesTagsGet' request conforms to.
type AccountsContainersWorkspacesTagsGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Tag

-- | Gets a GTM Tag.
--
-- /See:/ 'accountsContainersWorkspacesTagsGet' smart constructor.
newtype AccountsContainersWorkspacesTagsGet =
  AccountsContainersWorkspacesTagsGet'
    { _acwtgPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesTagsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtgPath'
accountsContainersWorkspacesTagsGet
    :: Text -- ^ 'acwtgPath'
    -> AccountsContainersWorkspacesTagsGet
accountsContainersWorkspacesTagsGet pAcwtgPath_ =
  AccountsContainersWorkspacesTagsGet' {_acwtgPath = pAcwtgPath_}

-- | GTM Tag\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/tags\/{tag_id}
acwtgPath :: Lens' AccountsContainersWorkspacesTagsGet Text
acwtgPath
  = lens _acwtgPath (\ s a -> s{_acwtgPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsGet
         where
        type Rs AccountsContainersWorkspacesTagsGet = Tag
        type Scopes AccountsContainersWorkspacesTagsGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTagsGet'{..}
          = go _acwtgPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsGetResource)
                      mempty
