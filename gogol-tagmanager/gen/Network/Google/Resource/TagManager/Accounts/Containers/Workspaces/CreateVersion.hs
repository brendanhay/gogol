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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.CreateVersion
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Container Version from the entities present in the workspace,
-- deletes the workspace, and sets the base container version to the newly
-- created version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.create_version@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.CreateVersion
    (
    -- * REST Resource
      AccountsContainersWorkspacesCreateVersionResource

    -- * Creating a Request
    , accountsContainersWorkspacesCreateVersion
    , AccountsContainersWorkspacesCreateVersion

    -- * Request Lenses
    , acwcvPath
    , acwcvPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.create_version@ method which the
-- 'AccountsContainersWorkspacesCreateVersion' request conforms to.
type AccountsContainersWorkspacesCreateVersionResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "create_version" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON]
               CreateContainerVersionRequestVersionOptions
               :> Post '[JSON] CreateContainerVersionResponse

-- | Creates a Container Version from the entities present in the workspace,
-- deletes the workspace, and sets the base container version to the newly
-- created version.
--
-- /See:/ 'accountsContainersWorkspacesCreateVersion' smart constructor.
data AccountsContainersWorkspacesCreateVersion = AccountsContainersWorkspacesCreateVersion'
    { _acwcvPath    :: !Text
    , _acwcvPayload :: !CreateContainerVersionRequestVersionOptions
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesCreateVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwcvPath'
--
-- * 'acwcvPayload'
accountsContainersWorkspacesCreateVersion
    :: Text -- ^ 'acwcvPath'
    -> CreateContainerVersionRequestVersionOptions -- ^ 'acwcvPayload'
    -> AccountsContainersWorkspacesCreateVersion
accountsContainersWorkspacesCreateVersion pAcwcvPath_ pAcwcvPayload_ =
    AccountsContainersWorkspacesCreateVersion'
    { _acwcvPath = pAcwcvPath_
    , _acwcvPayload = pAcwcvPayload_
    }

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwcvPath :: Lens' AccountsContainersWorkspacesCreateVersion Text
acwcvPath
  = lens _acwcvPath (\ s a -> s{_acwcvPath = a})

-- | Multipart request metadata.
acwcvPayload :: Lens' AccountsContainersWorkspacesCreateVersion CreateContainerVersionRequestVersionOptions
acwcvPayload
  = lens _acwcvPayload (\ s a -> s{_acwcvPayload = a})

instance GoogleRequest
         AccountsContainersWorkspacesCreateVersion where
        type Rs AccountsContainersWorkspacesCreateVersion =
             CreateContainerVersionResponse
        type Scopes AccountsContainersWorkspacesCreateVersion
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient
          AccountsContainersWorkspacesCreateVersion'{..}
          = go _acwcvPath (Just AltJSON) _acwcvPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesCreateVersionResource)
                      mempty
