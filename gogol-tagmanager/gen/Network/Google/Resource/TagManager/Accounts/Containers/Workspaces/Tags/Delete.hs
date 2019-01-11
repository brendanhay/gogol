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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsDelete
    , AccountsContainersWorkspacesTagsDelete

    -- * Request Lenses
    , acwtdcPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.delete@ method which the
-- 'AccountsContainersWorkspacesTagsDelete' request conforms to.
type AccountsContainersWorkspacesTagsDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Tag.
--
-- /See:/ 'accountsContainersWorkspacesTagsDelete' smart constructor.
newtype AccountsContainersWorkspacesTagsDelete = AccountsContainersWorkspacesTagsDelete'
    { _acwtdcPath :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesTagsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtdcPath'
accountsContainersWorkspacesTagsDelete
    :: Text -- ^ 'acwtdcPath'
    -> AccountsContainersWorkspacesTagsDelete
accountsContainersWorkspacesTagsDelete pAcwtdcPath_ =
    AccountsContainersWorkspacesTagsDelete'
    { _acwtdcPath = pAcwtdcPath_
    }

-- | GTM Tag\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/tags\/{tag_id}
acwtdcPath :: Lens' AccountsContainersWorkspacesTagsDelete Text
acwtdcPath
  = lens _acwtdcPath (\ s a -> s{_acwtdcPath = a})

instance GoogleRequest
         AccountsContainersWorkspacesTagsDelete where
        type Rs AccountsContainersWorkspacesTagsDelete = ()
        type Scopes AccountsContainersWorkspacesTagsDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTagsDelete'{..}
          = go _acwtdcPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsDeleteResource)
                      mempty
