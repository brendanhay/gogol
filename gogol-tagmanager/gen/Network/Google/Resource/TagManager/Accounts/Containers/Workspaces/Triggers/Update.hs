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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersUpdate
    , AccountsContainersWorkspacesTriggersUpdate

    -- * Request Lenses
    , acwtuXgafv
    , acwtuUploadProtocol
    , acwtuPath
    , acwtuFingerprint
    , acwtuAccessToken
    , acwtuUploadType
    , acwtuPayload
    , acwtuCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.update@ method which the
-- 'AccountsContainersWorkspacesTriggersUpdate' request conforms to.
type AccountsContainersWorkspacesTriggersUpdateResource
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
                         ReqBody '[JSON] Trigger :> Put '[JSON] Trigger

-- | Updates a GTM Trigger.
--
-- /See:/ 'accountsContainersWorkspacesTriggersUpdate' smart constructor.
data AccountsContainersWorkspacesTriggersUpdate =
  AccountsContainersWorkspacesTriggersUpdate'
    { _acwtuXgafv :: !(Maybe Xgafv)
    , _acwtuUploadProtocol :: !(Maybe Text)
    , _acwtuPath :: !Text
    , _acwtuFingerprint :: !(Maybe Text)
    , _acwtuAccessToken :: !(Maybe Text)
    , _acwtuUploadType :: !(Maybe Text)
    , _acwtuPayload :: !Trigger
    , _acwtuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTriggersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtuXgafv'
--
-- * 'acwtuUploadProtocol'
--
-- * 'acwtuPath'
--
-- * 'acwtuFingerprint'
--
-- * 'acwtuAccessToken'
--
-- * 'acwtuUploadType'
--
-- * 'acwtuPayload'
--
-- * 'acwtuCallback'
accountsContainersWorkspacesTriggersUpdate
    :: Text -- ^ 'acwtuPath'
    -> Trigger -- ^ 'acwtuPayload'
    -> AccountsContainersWorkspacesTriggersUpdate
accountsContainersWorkspacesTriggersUpdate pAcwtuPath_ pAcwtuPayload_ =
  AccountsContainersWorkspacesTriggersUpdate'
    { _acwtuXgafv = Nothing
    , _acwtuUploadProtocol = Nothing
    , _acwtuPath = pAcwtuPath_
    , _acwtuFingerprint = Nothing
    , _acwtuAccessToken = Nothing
    , _acwtuUploadType = Nothing
    , _acwtuPayload = pAcwtuPayload_
    , _acwtuCallback = Nothing
    }


-- | V1 error format.
acwtuXgafv :: Lens' AccountsContainersWorkspacesTriggersUpdate (Maybe Xgafv)
acwtuXgafv
  = lens _acwtuXgafv (\ s a -> s{_acwtuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtuUploadProtocol :: Lens' AccountsContainersWorkspacesTriggersUpdate (Maybe Text)
acwtuUploadProtocol
  = lens _acwtuUploadProtocol
      (\ s a -> s{_acwtuUploadProtocol = a})

-- | GTM Trigger\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/triggers\/{trigger_id}
acwtuPath :: Lens' AccountsContainersWorkspacesTriggersUpdate Text
acwtuPath
  = lens _acwtuPath (\ s a -> s{_acwtuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- trigger in storage.
acwtuFingerprint :: Lens' AccountsContainersWorkspacesTriggersUpdate (Maybe Text)
acwtuFingerprint
  = lens _acwtuFingerprint
      (\ s a -> s{_acwtuFingerprint = a})

-- | OAuth access token.
acwtuAccessToken :: Lens' AccountsContainersWorkspacesTriggersUpdate (Maybe Text)
acwtuAccessToken
  = lens _acwtuAccessToken
      (\ s a -> s{_acwtuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtuUploadType :: Lens' AccountsContainersWorkspacesTriggersUpdate (Maybe Text)
acwtuUploadType
  = lens _acwtuUploadType
      (\ s a -> s{_acwtuUploadType = a})

-- | Multipart request metadata.
acwtuPayload :: Lens' AccountsContainersWorkspacesTriggersUpdate Trigger
acwtuPayload
  = lens _acwtuPayload (\ s a -> s{_acwtuPayload = a})

-- | JSONP
acwtuCallback :: Lens' AccountsContainersWorkspacesTriggersUpdate (Maybe Text)
acwtuCallback
  = lens _acwtuCallback
      (\ s a -> s{_acwtuCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTriggersUpdate
         where
        type Rs AccountsContainersWorkspacesTriggersUpdate =
             Trigger
        type Scopes
               AccountsContainersWorkspacesTriggersUpdate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTriggersUpdate'{..}
          = go _acwtuPath _acwtuXgafv _acwtuUploadProtocol
              _acwtuFingerprint
              _acwtuAccessToken
              _acwtuUploadType
              _acwtuCallback
              (Just AltJSON)
              _acwtuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersUpdateResource)
                      mempty
