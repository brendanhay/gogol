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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesUpdate
    , AccountsContainersWorkspacesUpdate

    -- * Request Lenses
    , acwuXgafv
    , acwuUploadProtocol
    , acwuPath
    , acwuFingerprint
    , acwuAccessToken
    , acwuUploadType
    , acwuPayload
    , acwuCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.update@ method which the
-- 'AccountsContainersWorkspacesUpdate' request conforms to.
type AccountsContainersWorkspacesUpdateResource =
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
                         ReqBody '[JSON] Workspace :> Put '[JSON] Workspace

-- | Updates a Workspace.
--
-- /See:/ 'accountsContainersWorkspacesUpdate' smart constructor.
data AccountsContainersWorkspacesUpdate =
  AccountsContainersWorkspacesUpdate'
    { _acwuXgafv :: !(Maybe Xgafv)
    , _acwuUploadProtocol :: !(Maybe Text)
    , _acwuPath :: !Text
    , _acwuFingerprint :: !(Maybe Text)
    , _acwuAccessToken :: !(Maybe Text)
    , _acwuUploadType :: !(Maybe Text)
    , _acwuPayload :: !Workspace
    , _acwuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwuXgafv'
--
-- * 'acwuUploadProtocol'
--
-- * 'acwuPath'
--
-- * 'acwuFingerprint'
--
-- * 'acwuAccessToken'
--
-- * 'acwuUploadType'
--
-- * 'acwuPayload'
--
-- * 'acwuCallback'
accountsContainersWorkspacesUpdate
    :: Text -- ^ 'acwuPath'
    -> Workspace -- ^ 'acwuPayload'
    -> AccountsContainersWorkspacesUpdate
accountsContainersWorkspacesUpdate pAcwuPath_ pAcwuPayload_ =
  AccountsContainersWorkspacesUpdate'
    { _acwuXgafv = Nothing
    , _acwuUploadProtocol = Nothing
    , _acwuPath = pAcwuPath_
    , _acwuFingerprint = Nothing
    , _acwuAccessToken = Nothing
    , _acwuUploadType = Nothing
    , _acwuPayload = pAcwuPayload_
    , _acwuCallback = Nothing
    }


-- | V1 error format.
acwuXgafv :: Lens' AccountsContainersWorkspacesUpdate (Maybe Xgafv)
acwuXgafv
  = lens _acwuXgafv (\ s a -> s{_acwuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwuUploadProtocol :: Lens' AccountsContainersWorkspacesUpdate (Maybe Text)
acwuUploadProtocol
  = lens _acwuUploadProtocol
      (\ s a -> s{_acwuUploadProtocol = a})

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwuPath :: Lens' AccountsContainersWorkspacesUpdate Text
acwuPath = lens _acwuPath (\ s a -> s{_acwuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- workspace in storage.
acwuFingerprint :: Lens' AccountsContainersWorkspacesUpdate (Maybe Text)
acwuFingerprint
  = lens _acwuFingerprint
      (\ s a -> s{_acwuFingerprint = a})

-- | OAuth access token.
acwuAccessToken :: Lens' AccountsContainersWorkspacesUpdate (Maybe Text)
acwuAccessToken
  = lens _acwuAccessToken
      (\ s a -> s{_acwuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwuUploadType :: Lens' AccountsContainersWorkspacesUpdate (Maybe Text)
acwuUploadType
  = lens _acwuUploadType
      (\ s a -> s{_acwuUploadType = a})

-- | Multipart request metadata.
acwuPayload :: Lens' AccountsContainersWorkspacesUpdate Workspace
acwuPayload
  = lens _acwuPayload (\ s a -> s{_acwuPayload = a})

-- | JSONP
acwuCallback :: Lens' AccountsContainersWorkspacesUpdate (Maybe Text)
acwuCallback
  = lens _acwuCallback (\ s a -> s{_acwuCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesUpdate
         where
        type Rs AccountsContainersWorkspacesUpdate =
             Workspace
        type Scopes AccountsContainersWorkspacesUpdate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersWorkspacesUpdate'{..}
          = go _acwuPath _acwuXgafv _acwuUploadProtocol
              _acwuFingerprint
              _acwuAccessToken
              _acwuUploadType
              _acwuCallback
              (Just AltJSON)
              _acwuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesUpdateResource)
                      mempty
