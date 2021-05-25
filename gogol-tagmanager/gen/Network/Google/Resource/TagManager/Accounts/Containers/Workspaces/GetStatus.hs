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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.GetStatus
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds conflicting and modified entities in the workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.getStatus@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.GetStatus
    (
    -- * REST Resource
      AccountsContainersWorkspacesGetStatusResource

    -- * Creating a Request
    , accountsContainersWorkspacesGetStatus
    , AccountsContainersWorkspacesGetStatus

    -- * Request Lenses
    , acwgsXgafv
    , acwgsUploadProtocol
    , acwgsPath
    , acwgsAccessToken
    , acwgsUploadType
    , acwgsCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.getStatus@ method which the
-- 'AccountsContainersWorkspacesGetStatus' request conforms to.
type AccountsContainersWorkspacesGetStatusResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           "status" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GetWorkspaceStatusResponse

-- | Finds conflicting and modified entities in the workspace.
--
-- /See:/ 'accountsContainersWorkspacesGetStatus' smart constructor.
data AccountsContainersWorkspacesGetStatus =
  AccountsContainersWorkspacesGetStatus'
    { _acwgsXgafv :: !(Maybe Xgafv)
    , _acwgsUploadProtocol :: !(Maybe Text)
    , _acwgsPath :: !Text
    , _acwgsAccessToken :: !(Maybe Text)
    , _acwgsUploadType :: !(Maybe Text)
    , _acwgsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesGetStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwgsXgafv'
--
-- * 'acwgsUploadProtocol'
--
-- * 'acwgsPath'
--
-- * 'acwgsAccessToken'
--
-- * 'acwgsUploadType'
--
-- * 'acwgsCallback'
accountsContainersWorkspacesGetStatus
    :: Text -- ^ 'acwgsPath'
    -> AccountsContainersWorkspacesGetStatus
accountsContainersWorkspacesGetStatus pAcwgsPath_ =
  AccountsContainersWorkspacesGetStatus'
    { _acwgsXgafv = Nothing
    , _acwgsUploadProtocol = Nothing
    , _acwgsPath = pAcwgsPath_
    , _acwgsAccessToken = Nothing
    , _acwgsUploadType = Nothing
    , _acwgsCallback = Nothing
    }


-- | V1 error format.
acwgsXgafv :: Lens' AccountsContainersWorkspacesGetStatus (Maybe Xgafv)
acwgsXgafv
  = lens _acwgsXgafv (\ s a -> s{_acwgsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwgsUploadProtocol :: Lens' AccountsContainersWorkspacesGetStatus (Maybe Text)
acwgsUploadProtocol
  = lens _acwgsUploadProtocol
      (\ s a -> s{_acwgsUploadProtocol = a})

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwgsPath :: Lens' AccountsContainersWorkspacesGetStatus Text
acwgsPath
  = lens _acwgsPath (\ s a -> s{_acwgsPath = a})

-- | OAuth access token.
acwgsAccessToken :: Lens' AccountsContainersWorkspacesGetStatus (Maybe Text)
acwgsAccessToken
  = lens _acwgsAccessToken
      (\ s a -> s{_acwgsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwgsUploadType :: Lens' AccountsContainersWorkspacesGetStatus (Maybe Text)
acwgsUploadType
  = lens _acwgsUploadType
      (\ s a -> s{_acwgsUploadType = a})

-- | JSONP
acwgsCallback :: Lens' AccountsContainersWorkspacesGetStatus (Maybe Text)
acwgsCallback
  = lens _acwgsCallback
      (\ s a -> s{_acwgsCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesGetStatus
         where
        type Rs AccountsContainersWorkspacesGetStatus =
             GetWorkspaceStatusResponse
        type Scopes AccountsContainersWorkspacesGetStatus =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesGetStatus'{..}
          = go _acwgsPath _acwgsXgafv _acwgsUploadProtocol
              _acwgsAccessToken
              _acwgsUploadType
              _acwgsCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesGetStatusResource)
                      mempty
