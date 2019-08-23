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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsCreate
    , AccountsContainersWorkspacesTagsCreate

    -- * Request Lenses
    , acwtccParent
    , acwtccPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.create@ method which the
-- 'AccountsContainersWorkspacesTagsCreate' request conforms to.
type AccountsContainersWorkspacesTagsCreateResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "tags" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Tag :> Post '[JSON] Tag

-- | Creates a GTM Tag.
--
-- /See:/ 'accountsContainersWorkspacesTagsCreate' smart constructor.
data AccountsContainersWorkspacesTagsCreate =
  AccountsContainersWorkspacesTagsCreate'
    { _acwtccParent  :: !Text
    , _acwtccPayload :: !Tag
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTagsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtccParent'
--
-- * 'acwtccPayload'
accountsContainersWorkspacesTagsCreate
    :: Text -- ^ 'acwtccParent'
    -> Tag -- ^ 'acwtccPayload'
    -> AccountsContainersWorkspacesTagsCreate
accountsContainersWorkspacesTagsCreate pAcwtccParent_ pAcwtccPayload_ =
  AccountsContainersWorkspacesTagsCreate'
    {_acwtccParent = pAcwtccParent_, _acwtccPayload = pAcwtccPayload_}


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwtccParent :: Lens' AccountsContainersWorkspacesTagsCreate Text
acwtccParent
  = lens _acwtccParent (\ s a -> s{_acwtccParent = a})

-- | Multipart request metadata.
acwtccPayload :: Lens' AccountsContainersWorkspacesTagsCreate Tag
acwtccPayload
  = lens _acwtccPayload
      (\ s a -> s{_acwtccPayload = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsCreate
         where
        type Rs AccountsContainersWorkspacesTagsCreate = Tag
        type Scopes AccountsContainersWorkspacesTagsCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTagsCreate'{..}
          = go _acwtccParent (Just AltJSON) _acwtccPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsCreateResource)
                      mempty
