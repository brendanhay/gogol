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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Sync
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Syncs a workspace to the latest container version by updating all
-- unmodified workspace entities and displaying conflicts for modified
-- entities.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.sync@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Sync
    (
    -- * REST Resource
      AccountsContainersWorkspacesSyncResource

    -- * Creating a Request
    , accountsContainersWorkspacesSync
    , AccountsContainersWorkspacesSync

    -- * Request Lenses
    , acwsXgafv
    , acwsUploadProtocol
    , acwsPath
    , acwsAccessToken
    , acwsUploadType
    , acwsCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.sync@ method which the
-- 'AccountsContainersWorkspacesSync' request conforms to.
type AccountsContainersWorkspacesSyncResource =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "sync" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Post '[JSON] SyncWorkspaceResponse

-- | Syncs a workspace to the latest container version by updating all
-- unmodified workspace entities and displaying conflicts for modified
-- entities.
--
-- /See:/ 'accountsContainersWorkspacesSync' smart constructor.
data AccountsContainersWorkspacesSync =
  AccountsContainersWorkspacesSync'
    { _acwsXgafv :: !(Maybe Xgafv)
    , _acwsUploadProtocol :: !(Maybe Text)
    , _acwsPath :: !Text
    , _acwsAccessToken :: !(Maybe Text)
    , _acwsUploadType :: !(Maybe Text)
    , _acwsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesSync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwsXgafv'
--
-- * 'acwsUploadProtocol'
--
-- * 'acwsPath'
--
-- * 'acwsAccessToken'
--
-- * 'acwsUploadType'
--
-- * 'acwsCallback'
accountsContainersWorkspacesSync
    :: Text -- ^ 'acwsPath'
    -> AccountsContainersWorkspacesSync
accountsContainersWorkspacesSync pAcwsPath_ =
  AccountsContainersWorkspacesSync'
    { _acwsXgafv = Nothing
    , _acwsUploadProtocol = Nothing
    , _acwsPath = pAcwsPath_
    , _acwsAccessToken = Nothing
    , _acwsUploadType = Nothing
    , _acwsCallback = Nothing
    }


-- | V1 error format.
acwsXgafv :: Lens' AccountsContainersWorkspacesSync (Maybe Xgafv)
acwsXgafv
  = lens _acwsXgafv (\ s a -> s{_acwsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwsUploadProtocol :: Lens' AccountsContainersWorkspacesSync (Maybe Text)
acwsUploadProtocol
  = lens _acwsUploadProtocol
      (\ s a -> s{_acwsUploadProtocol = a})

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwsPath :: Lens' AccountsContainersWorkspacesSync Text
acwsPath = lens _acwsPath (\ s a -> s{_acwsPath = a})

-- | OAuth access token.
acwsAccessToken :: Lens' AccountsContainersWorkspacesSync (Maybe Text)
acwsAccessToken
  = lens _acwsAccessToken
      (\ s a -> s{_acwsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwsUploadType :: Lens' AccountsContainersWorkspacesSync (Maybe Text)
acwsUploadType
  = lens _acwsUploadType
      (\ s a -> s{_acwsUploadType = a})

-- | JSONP
acwsCallback :: Lens' AccountsContainersWorkspacesSync (Maybe Text)
acwsCallback
  = lens _acwsCallback (\ s a -> s{_acwsCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesSync
         where
        type Rs AccountsContainersWorkspacesSync =
             SyncWorkspaceResponse
        type Scopes AccountsContainersWorkspacesSync =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersWorkspacesSync'{..}
          = go _acwsPath _acwsXgafv _acwsUploadProtocol
              _acwsAccessToken
              _acwsUploadType
              _acwsCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesSyncResource)
                      mempty
