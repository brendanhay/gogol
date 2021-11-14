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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Revert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Template in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.templates.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesTemplatesRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesTemplatesRevert
    , AccountsContainersWorkspacesTemplatesRevert

    -- * Request Lenses
    , acwtrXgafv
    , acwtrUploadProtocol
    , acwtrPath
    , acwtrFingerprint
    , acwtrAccessToken
    , acwtrUploadType
    , acwtrCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.templates.revert@ method which the
-- 'AccountsContainersWorkspacesTemplatesRevert' request conforms to.
type AccountsContainersWorkspacesTemplatesRevertResource
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
                         Post '[JSON] RevertTemplateResponse

-- | Reverts changes to a GTM Template in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesTemplatesRevert' smart constructor.
data AccountsContainersWorkspacesTemplatesRevert =
  AccountsContainersWorkspacesTemplatesRevert'
    { _acwtrXgafv :: !(Maybe Xgafv)
    , _acwtrUploadProtocol :: !(Maybe Text)
    , _acwtrPath :: !Text
    , _acwtrFingerprint :: !(Maybe Text)
    , _acwtrAccessToken :: !(Maybe Text)
    , _acwtrUploadType :: !(Maybe Text)
    , _acwtrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTemplatesRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtrXgafv'
--
-- * 'acwtrUploadProtocol'
--
-- * 'acwtrPath'
--
-- * 'acwtrFingerprint'
--
-- * 'acwtrAccessToken'
--
-- * 'acwtrUploadType'
--
-- * 'acwtrCallback'
accountsContainersWorkspacesTemplatesRevert
    :: Text -- ^ 'acwtrPath'
    -> AccountsContainersWorkspacesTemplatesRevert
accountsContainersWorkspacesTemplatesRevert pAcwtrPath_ =
  AccountsContainersWorkspacesTemplatesRevert'
    { _acwtrXgafv = Nothing
    , _acwtrUploadProtocol = Nothing
    , _acwtrPath = pAcwtrPath_
    , _acwtrFingerprint = Nothing
    , _acwtrAccessToken = Nothing
    , _acwtrUploadType = Nothing
    , _acwtrCallback = Nothing
    }


-- | V1 error format.
acwtrXgafv :: Lens' AccountsContainersWorkspacesTemplatesRevert (Maybe Xgafv)
acwtrXgafv
  = lens _acwtrXgafv (\ s a -> s{_acwtrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtrUploadProtocol :: Lens' AccountsContainersWorkspacesTemplatesRevert (Maybe Text)
acwtrUploadProtocol
  = lens _acwtrUploadProtocol
      (\ s a -> s{_acwtrUploadProtocol = a})

-- | GTM Custom Template\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/templates\/{template_id}
acwtrPath :: Lens' AccountsContainersWorkspacesTemplatesRevert Text
acwtrPath
  = lens _acwtrPath (\ s a -> s{_acwtrPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- template in storage.
acwtrFingerprint :: Lens' AccountsContainersWorkspacesTemplatesRevert (Maybe Text)
acwtrFingerprint
  = lens _acwtrFingerprint
      (\ s a -> s{_acwtrFingerprint = a})

-- | OAuth access token.
acwtrAccessToken :: Lens' AccountsContainersWorkspacesTemplatesRevert (Maybe Text)
acwtrAccessToken
  = lens _acwtrAccessToken
      (\ s a -> s{_acwtrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtrUploadType :: Lens' AccountsContainersWorkspacesTemplatesRevert (Maybe Text)
acwtrUploadType
  = lens _acwtrUploadType
      (\ s a -> s{_acwtrUploadType = a})

-- | JSONP
acwtrCallback :: Lens' AccountsContainersWorkspacesTemplatesRevert (Maybe Text)
acwtrCallback
  = lens _acwtrCallback
      (\ s a -> s{_acwtrCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTemplatesRevert
         where
        type Rs AccountsContainersWorkspacesTemplatesRevert =
             RevertTemplateResponse
        type Scopes
               AccountsContainersWorkspacesTemplatesRevert
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTemplatesRevert'{..}
          = go _acwtrPath _acwtrXgafv _acwtrUploadProtocol
              _acwtrFingerprint
              _acwtrAccessToken
              _acwtrUploadType
              _acwtrCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTemplatesRevertResource)
                      mempty
