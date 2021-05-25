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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesUpdate
    , AccountsContainersWorkspacesVariablesUpdate

    -- * Request Lenses
    , acwvuXgafv
    , acwvuUploadProtocol
    , acwvuPath
    , acwvuFingerprint
    , acwvuAccessToken
    , acwvuUploadType
    , acwvuPayload
    , acwvuCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.update@ method which the
-- 'AccountsContainersWorkspacesVariablesUpdate' request conforms to.
type AccountsContainersWorkspacesVariablesUpdateResource
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
                         ReqBody '[JSON] Variable :> Put '[JSON] Variable

-- | Updates a GTM Variable.
--
-- /See:/ 'accountsContainersWorkspacesVariablesUpdate' smart constructor.
data AccountsContainersWorkspacesVariablesUpdate =
  AccountsContainersWorkspacesVariablesUpdate'
    { _acwvuXgafv :: !(Maybe Xgafv)
    , _acwvuUploadProtocol :: !(Maybe Text)
    , _acwvuPath :: !Text
    , _acwvuFingerprint :: !(Maybe Text)
    , _acwvuAccessToken :: !(Maybe Text)
    , _acwvuUploadType :: !(Maybe Text)
    , _acwvuPayload :: !Variable
    , _acwvuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesVariablesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvuXgafv'
--
-- * 'acwvuUploadProtocol'
--
-- * 'acwvuPath'
--
-- * 'acwvuFingerprint'
--
-- * 'acwvuAccessToken'
--
-- * 'acwvuUploadType'
--
-- * 'acwvuPayload'
--
-- * 'acwvuCallback'
accountsContainersWorkspacesVariablesUpdate
    :: Text -- ^ 'acwvuPath'
    -> Variable -- ^ 'acwvuPayload'
    -> AccountsContainersWorkspacesVariablesUpdate
accountsContainersWorkspacesVariablesUpdate pAcwvuPath_ pAcwvuPayload_ =
  AccountsContainersWorkspacesVariablesUpdate'
    { _acwvuXgafv = Nothing
    , _acwvuUploadProtocol = Nothing
    , _acwvuPath = pAcwvuPath_
    , _acwvuFingerprint = Nothing
    , _acwvuAccessToken = Nothing
    , _acwvuUploadType = Nothing
    , _acwvuPayload = pAcwvuPayload_
    , _acwvuCallback = Nothing
    }


-- | V1 error format.
acwvuXgafv :: Lens' AccountsContainersWorkspacesVariablesUpdate (Maybe Xgafv)
acwvuXgafv
  = lens _acwvuXgafv (\ s a -> s{_acwvuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwvuUploadProtocol :: Lens' AccountsContainersWorkspacesVariablesUpdate (Maybe Text)
acwvuUploadProtocol
  = lens _acwvuUploadProtocol
      (\ s a -> s{_acwvuUploadProtocol = a})

-- | GTM Variable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/variables\/{variable_id}
acwvuPath :: Lens' AccountsContainersWorkspacesVariablesUpdate Text
acwvuPath
  = lens _acwvuPath (\ s a -> s{_acwvuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- variable in storage.
acwvuFingerprint :: Lens' AccountsContainersWorkspacesVariablesUpdate (Maybe Text)
acwvuFingerprint
  = lens _acwvuFingerprint
      (\ s a -> s{_acwvuFingerprint = a})

-- | OAuth access token.
acwvuAccessToken :: Lens' AccountsContainersWorkspacesVariablesUpdate (Maybe Text)
acwvuAccessToken
  = lens _acwvuAccessToken
      (\ s a -> s{_acwvuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwvuUploadType :: Lens' AccountsContainersWorkspacesVariablesUpdate (Maybe Text)
acwvuUploadType
  = lens _acwvuUploadType
      (\ s a -> s{_acwvuUploadType = a})

-- | Multipart request metadata.
acwvuPayload :: Lens' AccountsContainersWorkspacesVariablesUpdate Variable
acwvuPayload
  = lens _acwvuPayload (\ s a -> s{_acwvuPayload = a})

-- | JSONP
acwvuCallback :: Lens' AccountsContainersWorkspacesVariablesUpdate (Maybe Text)
acwvuCallback
  = lens _acwvuCallback
      (\ s a -> s{_acwvuCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesUpdate
         where
        type Rs AccountsContainersWorkspacesVariablesUpdate =
             Variable
        type Scopes
               AccountsContainersWorkspacesVariablesUpdate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesVariablesUpdate'{..}
          = go _acwvuPath _acwvuXgafv _acwvuUploadProtocol
              _acwvuFingerprint
              _acwvuAccessToken
              _acwvuUploadType
              _acwvuCallback
              (Just AltJSON)
              _acwvuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesUpdateResource)
                      mempty
