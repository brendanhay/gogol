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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Revert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Tag in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsRevert
    , AccountsContainersWorkspacesTagsRevert

    -- * Request Lenses
    , acwtr1Xgafv
    , acwtr1UploadProtocol
    , acwtr1Path
    , acwtr1Fingerprint
    , acwtr1AccessToken
    , acwtr1UploadType
    , acwtr1Callback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.revert@ method which the
-- 'AccountsContainersWorkspacesTagsRevert' request conforms to.
type AccountsContainersWorkspacesTagsRevertResource =
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
                         Post '[JSON] RevertTagResponse

-- | Reverts changes to a GTM Tag in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesTagsRevert' smart constructor.
data AccountsContainersWorkspacesTagsRevert =
  AccountsContainersWorkspacesTagsRevert'
    { _acwtr1Xgafv :: !(Maybe Xgafv)
    , _acwtr1UploadProtocol :: !(Maybe Text)
    , _acwtr1Path :: !Text
    , _acwtr1Fingerprint :: !(Maybe Text)
    , _acwtr1AccessToken :: !(Maybe Text)
    , _acwtr1UploadType :: !(Maybe Text)
    , _acwtr1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTagsRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtr1Xgafv'
--
-- * 'acwtr1UploadProtocol'
--
-- * 'acwtr1Path'
--
-- * 'acwtr1Fingerprint'
--
-- * 'acwtr1AccessToken'
--
-- * 'acwtr1UploadType'
--
-- * 'acwtr1Callback'
accountsContainersWorkspacesTagsRevert
    :: Text -- ^ 'acwtr1Path'
    -> AccountsContainersWorkspacesTagsRevert
accountsContainersWorkspacesTagsRevert pAcwtr1Path_ =
  AccountsContainersWorkspacesTagsRevert'
    { _acwtr1Xgafv = Nothing
    , _acwtr1UploadProtocol = Nothing
    , _acwtr1Path = pAcwtr1Path_
    , _acwtr1Fingerprint = Nothing
    , _acwtr1AccessToken = Nothing
    , _acwtr1UploadType = Nothing
    , _acwtr1Callback = Nothing
    }


-- | V1 error format.
acwtr1Xgafv :: Lens' AccountsContainersWorkspacesTagsRevert (Maybe Xgafv)
acwtr1Xgafv
  = lens _acwtr1Xgafv (\ s a -> s{_acwtr1Xgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtr1UploadProtocol :: Lens' AccountsContainersWorkspacesTagsRevert (Maybe Text)
acwtr1UploadProtocol
  = lens _acwtr1UploadProtocol
      (\ s a -> s{_acwtr1UploadProtocol = a})

-- | GTM Tag\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/tags\/{tag_id}
acwtr1Path :: Lens' AccountsContainersWorkspacesTagsRevert Text
acwtr1Path
  = lens _acwtr1Path (\ s a -> s{_acwtr1Path = a})

-- | When provided, this fingerprint must match the fingerprint of thetag in
-- storage.
acwtr1Fingerprint :: Lens' AccountsContainersWorkspacesTagsRevert (Maybe Text)
acwtr1Fingerprint
  = lens _acwtr1Fingerprint
      (\ s a -> s{_acwtr1Fingerprint = a})

-- | OAuth access token.
acwtr1AccessToken :: Lens' AccountsContainersWorkspacesTagsRevert (Maybe Text)
acwtr1AccessToken
  = lens _acwtr1AccessToken
      (\ s a -> s{_acwtr1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtr1UploadType :: Lens' AccountsContainersWorkspacesTagsRevert (Maybe Text)
acwtr1UploadType
  = lens _acwtr1UploadType
      (\ s a -> s{_acwtr1UploadType = a})

-- | JSONP
acwtr1Callback :: Lens' AccountsContainersWorkspacesTagsRevert (Maybe Text)
acwtr1Callback
  = lens _acwtr1Callback
      (\ s a -> s{_acwtr1Callback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsRevert
         where
        type Rs AccountsContainersWorkspacesTagsRevert =
             RevertTagResponse
        type Scopes AccountsContainersWorkspacesTagsRevert =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTagsRevert'{..}
          = go _acwtr1Path _acwtr1Xgafv _acwtr1UploadProtocol
              _acwtr1Fingerprint
              _acwtr1AccessToken
              _acwtr1UploadType
              _acwtr1Callback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsRevertResource)
                      mempty
