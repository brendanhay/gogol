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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Revert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Folder in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersRevert
    , AccountsContainersWorkspacesFoldersRevert

    -- * Request Lenses
    , acwfrXgafv
    , acwfrUploadProtocol
    , acwfrPath
    , acwfrFingerprint
    , acwfrAccessToken
    , acwfrUploadType
    , acwfrCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.revert@ method which the
-- 'AccountsContainersWorkspacesFoldersRevert' request conforms to.
type AccountsContainersWorkspacesFoldersRevertResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "revert" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "fingerprint" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] RevertFolderResponse

-- | Reverts changes to a GTM Folder in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesFoldersRevert' smart constructor.
data AccountsContainersWorkspacesFoldersRevert =
  AccountsContainersWorkspacesFoldersRevert'
    { _acwfrXgafv :: !(Maybe Xgafv)
    , _acwfrUploadProtocol :: !(Maybe Text)
    , _acwfrPath :: !Text
    , _acwfrFingerprint :: !(Maybe Text)
    , _acwfrAccessToken :: !(Maybe Text)
    , _acwfrUploadType :: !(Maybe Text)
    , _acwfrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesFoldersRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfrXgafv'
--
-- * 'acwfrUploadProtocol'
--
-- * 'acwfrPath'
--
-- * 'acwfrFingerprint'
--
-- * 'acwfrAccessToken'
--
-- * 'acwfrUploadType'
--
-- * 'acwfrCallback'
accountsContainersWorkspacesFoldersRevert
    :: Text -- ^ 'acwfrPath'
    -> AccountsContainersWorkspacesFoldersRevert
accountsContainersWorkspacesFoldersRevert pAcwfrPath_ =
  AccountsContainersWorkspacesFoldersRevert'
    { _acwfrXgafv = Nothing
    , _acwfrUploadProtocol = Nothing
    , _acwfrPath = pAcwfrPath_
    , _acwfrFingerprint = Nothing
    , _acwfrAccessToken = Nothing
    , _acwfrUploadType = Nothing
    , _acwfrCallback = Nothing
    }


-- | V1 error format.
acwfrXgafv :: Lens' AccountsContainersWorkspacesFoldersRevert (Maybe Xgafv)
acwfrXgafv
  = lens _acwfrXgafv (\ s a -> s{_acwfrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwfrUploadProtocol :: Lens' AccountsContainersWorkspacesFoldersRevert (Maybe Text)
acwfrUploadProtocol
  = lens _acwfrUploadProtocol
      (\ s a -> s{_acwfrUploadProtocol = a})

-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfrPath :: Lens' AccountsContainersWorkspacesFoldersRevert Text
acwfrPath
  = lens _acwfrPath (\ s a -> s{_acwfrPath = a})

-- | When provided, this fingerprint must match the fingerprint of the tag in
-- storage.
acwfrFingerprint :: Lens' AccountsContainersWorkspacesFoldersRevert (Maybe Text)
acwfrFingerprint
  = lens _acwfrFingerprint
      (\ s a -> s{_acwfrFingerprint = a})

-- | OAuth access token.
acwfrAccessToken :: Lens' AccountsContainersWorkspacesFoldersRevert (Maybe Text)
acwfrAccessToken
  = lens _acwfrAccessToken
      (\ s a -> s{_acwfrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwfrUploadType :: Lens' AccountsContainersWorkspacesFoldersRevert (Maybe Text)
acwfrUploadType
  = lens _acwfrUploadType
      (\ s a -> s{_acwfrUploadType = a})

-- | JSONP
acwfrCallback :: Lens' AccountsContainersWorkspacesFoldersRevert (Maybe Text)
acwfrCallback
  = lens _acwfrCallback
      (\ s a -> s{_acwfrCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersRevert
         where
        type Rs AccountsContainersWorkspacesFoldersRevert =
             RevertFolderResponse
        type Scopes AccountsContainersWorkspacesFoldersRevert
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesFoldersRevert'{..}
          = go _acwfrPath _acwfrXgafv _acwfrUploadProtocol
              _acwfrFingerprint
              _acwfrAccessToken
              _acwfrUploadType
              _acwfrCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersRevertResource)
                      mempty
