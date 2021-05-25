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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Revert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Variable in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesRevert
    , AccountsContainersWorkspacesVariablesRevert

    -- * Request Lenses
    , acwvrXgafv
    , acwvrUploadProtocol
    , acwvrPath
    , acwvrFingerprint
    , acwvrAccessToken
    , acwvrUploadType
    , acwvrCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.revert@ method which the
-- 'AccountsContainersWorkspacesVariablesRevert' request conforms to.
type AccountsContainersWorkspacesVariablesRevertResource
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
                         Post '[JSON] RevertVariableResponse

-- | Reverts changes to a GTM Variable in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesVariablesRevert' smart constructor.
data AccountsContainersWorkspacesVariablesRevert =
  AccountsContainersWorkspacesVariablesRevert'
    { _acwvrXgafv :: !(Maybe Xgafv)
    , _acwvrUploadProtocol :: !(Maybe Text)
    , _acwvrPath :: !Text
    , _acwvrFingerprint :: !(Maybe Text)
    , _acwvrAccessToken :: !(Maybe Text)
    , _acwvrUploadType :: !(Maybe Text)
    , _acwvrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesVariablesRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvrXgafv'
--
-- * 'acwvrUploadProtocol'
--
-- * 'acwvrPath'
--
-- * 'acwvrFingerprint'
--
-- * 'acwvrAccessToken'
--
-- * 'acwvrUploadType'
--
-- * 'acwvrCallback'
accountsContainersWorkspacesVariablesRevert
    :: Text -- ^ 'acwvrPath'
    -> AccountsContainersWorkspacesVariablesRevert
accountsContainersWorkspacesVariablesRevert pAcwvrPath_ =
  AccountsContainersWorkspacesVariablesRevert'
    { _acwvrXgafv = Nothing
    , _acwvrUploadProtocol = Nothing
    , _acwvrPath = pAcwvrPath_
    , _acwvrFingerprint = Nothing
    , _acwvrAccessToken = Nothing
    , _acwvrUploadType = Nothing
    , _acwvrCallback = Nothing
    }


-- | V1 error format.
acwvrXgafv :: Lens' AccountsContainersWorkspacesVariablesRevert (Maybe Xgafv)
acwvrXgafv
  = lens _acwvrXgafv (\ s a -> s{_acwvrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwvrUploadProtocol :: Lens' AccountsContainersWorkspacesVariablesRevert (Maybe Text)
acwvrUploadProtocol
  = lens _acwvrUploadProtocol
      (\ s a -> s{_acwvrUploadProtocol = a})

-- | GTM Variable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/variables\/{variable_id}
acwvrPath :: Lens' AccountsContainersWorkspacesVariablesRevert Text
acwvrPath
  = lens _acwvrPath (\ s a -> s{_acwvrPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- variable in storage.
acwvrFingerprint :: Lens' AccountsContainersWorkspacesVariablesRevert (Maybe Text)
acwvrFingerprint
  = lens _acwvrFingerprint
      (\ s a -> s{_acwvrFingerprint = a})

-- | OAuth access token.
acwvrAccessToken :: Lens' AccountsContainersWorkspacesVariablesRevert (Maybe Text)
acwvrAccessToken
  = lens _acwvrAccessToken
      (\ s a -> s{_acwvrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwvrUploadType :: Lens' AccountsContainersWorkspacesVariablesRevert (Maybe Text)
acwvrUploadType
  = lens _acwvrUploadType
      (\ s a -> s{_acwvrUploadType = a})

-- | JSONP
acwvrCallback :: Lens' AccountsContainersWorkspacesVariablesRevert (Maybe Text)
acwvrCallback
  = lens _acwvrCallback
      (\ s a -> s{_acwvrCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesRevert
         where
        type Rs AccountsContainersWorkspacesVariablesRevert =
             RevertVariableResponse
        type Scopes
               AccountsContainersWorkspacesVariablesRevert
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesVariablesRevert'{..}
          = go _acwvrPath _acwvrXgafv _acwvrUploadProtocol
              _acwvrFingerprint
              _acwvrAccessToken
              _acwvrUploadType
              _acwvrCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesRevertResource)
                      mempty
