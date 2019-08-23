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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.QuickPreview
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Quick previews a workspace by creating a fake container version from all
-- entities in the provided workspace.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.quick_preview@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.QuickPreview
    (
    -- * REST Resource
      AccountsContainersWorkspacesQuickPreviewResource

    -- * Creating a Request
    , accountsContainersWorkspacesQuickPreview
    , AccountsContainersWorkspacesQuickPreview

    -- * Request Lenses
    , acwqpPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.quick_preview@ method which the
-- 'AccountsContainersWorkspacesQuickPreview' request conforms to.
type AccountsContainersWorkspacesQuickPreviewResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "quick_preview" Text :>
           QueryParam "alt" AltJSON :>
             Post '[JSON] QuickPreviewResponse

-- | Quick previews a workspace by creating a fake container version from all
-- entities in the provided workspace.
--
-- /See:/ 'accountsContainersWorkspacesQuickPreview' smart constructor.
newtype AccountsContainersWorkspacesQuickPreview =
  AccountsContainersWorkspacesQuickPreview'
    { _acwqpPath :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesQuickPreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwqpPath'
accountsContainersWorkspacesQuickPreview
    :: Text -- ^ 'acwqpPath'
    -> AccountsContainersWorkspacesQuickPreview
accountsContainersWorkspacesQuickPreview pAcwqpPath_ =
  AccountsContainersWorkspacesQuickPreview' {_acwqpPath = pAcwqpPath_}


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwqpPath :: Lens' AccountsContainersWorkspacesQuickPreview Text
acwqpPath
  = lens _acwqpPath (\ s a -> s{_acwqpPath = a})

instance GoogleRequest
           AccountsContainersWorkspacesQuickPreview
         where
        type Rs AccountsContainersWorkspacesQuickPreview =
             QuickPreviewResponse
        type Scopes AccountsContainersWorkspacesQuickPreview
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient
          AccountsContainersWorkspacesQuickPreview'{..}
          = go _acwqpPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesQuickPreviewResource)
                      mempty
