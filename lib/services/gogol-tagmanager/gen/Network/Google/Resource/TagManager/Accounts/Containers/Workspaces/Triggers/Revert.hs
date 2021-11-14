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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Revert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Trigger in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersRevert
    , AccountsContainersWorkspacesTriggersRevert

    -- * Request Lenses
    , acwtrcXgafv
    , acwtrcUploadProtocol
    , acwtrcPath
    , acwtrcFingerprint
    , acwtrcAccessToken
    , acwtrcUploadType
    , acwtrcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.revert@ method which the
-- 'AccountsContainersWorkspacesTriggersRevert' request conforms to.
type AccountsContainersWorkspacesTriggersRevertResource
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
                         Post '[JSON] RevertTriggerResponse

-- | Reverts changes to a GTM Trigger in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesTriggersRevert' smart constructor.
data AccountsContainersWorkspacesTriggersRevert =
  AccountsContainersWorkspacesTriggersRevert'
    { _acwtrcXgafv :: !(Maybe Xgafv)
    , _acwtrcUploadProtocol :: !(Maybe Text)
    , _acwtrcPath :: !Text
    , _acwtrcFingerprint :: !(Maybe Text)
    , _acwtrcAccessToken :: !(Maybe Text)
    , _acwtrcUploadType :: !(Maybe Text)
    , _acwtrcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTriggersRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtrcXgafv'
--
-- * 'acwtrcUploadProtocol'
--
-- * 'acwtrcPath'
--
-- * 'acwtrcFingerprint'
--
-- * 'acwtrcAccessToken'
--
-- * 'acwtrcUploadType'
--
-- * 'acwtrcCallback'
accountsContainersWorkspacesTriggersRevert
    :: Text -- ^ 'acwtrcPath'
    -> AccountsContainersWorkspacesTriggersRevert
accountsContainersWorkspacesTriggersRevert pAcwtrcPath_ =
  AccountsContainersWorkspacesTriggersRevert'
    { _acwtrcXgafv = Nothing
    , _acwtrcUploadProtocol = Nothing
    , _acwtrcPath = pAcwtrcPath_
    , _acwtrcFingerprint = Nothing
    , _acwtrcAccessToken = Nothing
    , _acwtrcUploadType = Nothing
    , _acwtrcCallback = Nothing
    }


-- | V1 error format.
acwtrcXgafv :: Lens' AccountsContainersWorkspacesTriggersRevert (Maybe Xgafv)
acwtrcXgafv
  = lens _acwtrcXgafv (\ s a -> s{_acwtrcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtrcUploadProtocol :: Lens' AccountsContainersWorkspacesTriggersRevert (Maybe Text)
acwtrcUploadProtocol
  = lens _acwtrcUploadProtocol
      (\ s a -> s{_acwtrcUploadProtocol = a})

-- | GTM Trigger\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/triggers\/{trigger_id}
acwtrcPath :: Lens' AccountsContainersWorkspacesTriggersRevert Text
acwtrcPath
  = lens _acwtrcPath (\ s a -> s{_acwtrcPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- trigger in storage.
acwtrcFingerprint :: Lens' AccountsContainersWorkspacesTriggersRevert (Maybe Text)
acwtrcFingerprint
  = lens _acwtrcFingerprint
      (\ s a -> s{_acwtrcFingerprint = a})

-- | OAuth access token.
acwtrcAccessToken :: Lens' AccountsContainersWorkspacesTriggersRevert (Maybe Text)
acwtrcAccessToken
  = lens _acwtrcAccessToken
      (\ s a -> s{_acwtrcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtrcUploadType :: Lens' AccountsContainersWorkspacesTriggersRevert (Maybe Text)
acwtrcUploadType
  = lens _acwtrcUploadType
      (\ s a -> s{_acwtrcUploadType = a})

-- | JSONP
acwtrcCallback :: Lens' AccountsContainersWorkspacesTriggersRevert (Maybe Text)
acwtrcCallback
  = lens _acwtrcCallback
      (\ s a -> s{_acwtrcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTriggersRevert
         where
        type Rs AccountsContainersWorkspacesTriggersRevert =
             RevertTriggerResponse
        type Scopes
               AccountsContainersWorkspacesTriggersRevert
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTriggersRevert'{..}
          = go _acwtrcPath _acwtrcXgafv _acwtrcUploadProtocol
              _acwtrcFingerprint
              _acwtrcAccessToken
              _acwtrcUploadType
              _acwtrcCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersRevertResource)
                      mempty
