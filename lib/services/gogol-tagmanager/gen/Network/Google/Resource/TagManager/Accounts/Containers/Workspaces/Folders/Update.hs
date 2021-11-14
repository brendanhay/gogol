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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersUpdate
    , AccountsContainersWorkspacesFoldersUpdate

    -- * Request Lenses
    , acwfuXgafv
    , acwfuUploadProtocol
    , acwfuPath
    , acwfuFingerprint
    , acwfuAccessToken
    , acwfuUploadType
    , acwfuPayload
    , acwfuCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.update@ method which the
-- 'AccountsContainersWorkspacesFoldersUpdate' request conforms to.
type AccountsContainersWorkspacesFoldersUpdateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "fingerprint" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Folder :> Put '[JSON] Folder

-- | Updates a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersUpdate' smart constructor.
data AccountsContainersWorkspacesFoldersUpdate =
  AccountsContainersWorkspacesFoldersUpdate'
    { _acwfuXgafv :: !(Maybe Xgafv)
    , _acwfuUploadProtocol :: !(Maybe Text)
    , _acwfuPath :: !Text
    , _acwfuFingerprint :: !(Maybe Text)
    , _acwfuAccessToken :: !(Maybe Text)
    , _acwfuUploadType :: !(Maybe Text)
    , _acwfuPayload :: !Folder
    , _acwfuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesFoldersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfuXgafv'
--
-- * 'acwfuUploadProtocol'
--
-- * 'acwfuPath'
--
-- * 'acwfuFingerprint'
--
-- * 'acwfuAccessToken'
--
-- * 'acwfuUploadType'
--
-- * 'acwfuPayload'
--
-- * 'acwfuCallback'
accountsContainersWorkspacesFoldersUpdate
    :: Text -- ^ 'acwfuPath'
    -> Folder -- ^ 'acwfuPayload'
    -> AccountsContainersWorkspacesFoldersUpdate
accountsContainersWorkspacesFoldersUpdate pAcwfuPath_ pAcwfuPayload_ =
  AccountsContainersWorkspacesFoldersUpdate'
    { _acwfuXgafv = Nothing
    , _acwfuUploadProtocol = Nothing
    , _acwfuPath = pAcwfuPath_
    , _acwfuFingerprint = Nothing
    , _acwfuAccessToken = Nothing
    , _acwfuUploadType = Nothing
    , _acwfuPayload = pAcwfuPayload_
    , _acwfuCallback = Nothing
    }


-- | V1 error format.
acwfuXgafv :: Lens' AccountsContainersWorkspacesFoldersUpdate (Maybe Xgafv)
acwfuXgafv
  = lens _acwfuXgafv (\ s a -> s{_acwfuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwfuUploadProtocol :: Lens' AccountsContainersWorkspacesFoldersUpdate (Maybe Text)
acwfuUploadProtocol
  = lens _acwfuUploadProtocol
      (\ s a -> s{_acwfuUploadProtocol = a})

-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfuPath :: Lens' AccountsContainersWorkspacesFoldersUpdate Text
acwfuPath
  = lens _acwfuPath (\ s a -> s{_acwfuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the folder
-- in storage.
acwfuFingerprint :: Lens' AccountsContainersWorkspacesFoldersUpdate (Maybe Text)
acwfuFingerprint
  = lens _acwfuFingerprint
      (\ s a -> s{_acwfuFingerprint = a})

-- | OAuth access token.
acwfuAccessToken :: Lens' AccountsContainersWorkspacesFoldersUpdate (Maybe Text)
acwfuAccessToken
  = lens _acwfuAccessToken
      (\ s a -> s{_acwfuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwfuUploadType :: Lens' AccountsContainersWorkspacesFoldersUpdate (Maybe Text)
acwfuUploadType
  = lens _acwfuUploadType
      (\ s a -> s{_acwfuUploadType = a})

-- | Multipart request metadata.
acwfuPayload :: Lens' AccountsContainersWorkspacesFoldersUpdate Folder
acwfuPayload
  = lens _acwfuPayload (\ s a -> s{_acwfuPayload = a})

-- | JSONP
acwfuCallback :: Lens' AccountsContainersWorkspacesFoldersUpdate (Maybe Text)
acwfuCallback
  = lens _acwfuCallback
      (\ s a -> s{_acwfuCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersUpdate
         where
        type Rs AccountsContainersWorkspacesFoldersUpdate =
             Folder
        type Scopes AccountsContainersWorkspacesFoldersUpdate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesFoldersUpdate'{..}
          = go _acwfuPath _acwfuXgafv _acwfuUploadProtocol
              _acwfuFingerprint
              _acwfuAccessToken
              _acwfuUploadType
              _acwfuCallback
              (Just AltJSON)
              _acwfuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersUpdateResource)
                      mempty
