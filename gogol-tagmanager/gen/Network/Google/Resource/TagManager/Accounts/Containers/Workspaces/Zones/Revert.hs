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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Revert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Zone in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesRevert
    , AccountsContainersWorkspacesZonesRevert

    -- * Request Lenses
    , acwzrXgafv
    , acwzrUploadProtocol
    , acwzrPath
    , acwzrFingerprint
    , acwzrAccessToken
    , acwzrUploadType
    , acwzrCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.revert@ method which the
-- 'AccountsContainersWorkspacesZonesRevert' request conforms to.
type AccountsContainersWorkspacesZonesRevertResource
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
                         Post '[JSON] RevertZoneResponse

-- | Reverts changes to a GTM Zone in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesZonesRevert' smart constructor.
data AccountsContainersWorkspacesZonesRevert =
  AccountsContainersWorkspacesZonesRevert'
    { _acwzrXgafv :: !(Maybe Xgafv)
    , _acwzrUploadProtocol :: !(Maybe Text)
    , _acwzrPath :: !Text
    , _acwzrFingerprint :: !(Maybe Text)
    , _acwzrAccessToken :: !(Maybe Text)
    , _acwzrUploadType :: !(Maybe Text)
    , _acwzrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzrXgafv'
--
-- * 'acwzrUploadProtocol'
--
-- * 'acwzrPath'
--
-- * 'acwzrFingerprint'
--
-- * 'acwzrAccessToken'
--
-- * 'acwzrUploadType'
--
-- * 'acwzrCallback'
accountsContainersWorkspacesZonesRevert
    :: Text -- ^ 'acwzrPath'
    -> AccountsContainersWorkspacesZonesRevert
accountsContainersWorkspacesZonesRevert pAcwzrPath_ =
  AccountsContainersWorkspacesZonesRevert'
    { _acwzrXgafv = Nothing
    , _acwzrUploadProtocol = Nothing
    , _acwzrPath = pAcwzrPath_
    , _acwzrFingerprint = Nothing
    , _acwzrAccessToken = Nothing
    , _acwzrUploadType = Nothing
    , _acwzrCallback = Nothing
    }


-- | V1 error format.
acwzrXgafv :: Lens' AccountsContainersWorkspacesZonesRevert (Maybe Xgafv)
acwzrXgafv
  = lens _acwzrXgafv (\ s a -> s{_acwzrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwzrUploadProtocol :: Lens' AccountsContainersWorkspacesZonesRevert (Maybe Text)
acwzrUploadProtocol
  = lens _acwzrUploadProtocol
      (\ s a -> s{_acwzrUploadProtocol = a})

-- | GTM Zone\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/zones\/{zone_id}
acwzrPath :: Lens' AccountsContainersWorkspacesZonesRevert Text
acwzrPath
  = lens _acwzrPath (\ s a -> s{_acwzrPath = a})

-- | When provided, this fingerprint must match the fingerprint of the zone
-- in storage.
acwzrFingerprint :: Lens' AccountsContainersWorkspacesZonesRevert (Maybe Text)
acwzrFingerprint
  = lens _acwzrFingerprint
      (\ s a -> s{_acwzrFingerprint = a})

-- | OAuth access token.
acwzrAccessToken :: Lens' AccountsContainersWorkspacesZonesRevert (Maybe Text)
acwzrAccessToken
  = lens _acwzrAccessToken
      (\ s a -> s{_acwzrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwzrUploadType :: Lens' AccountsContainersWorkspacesZonesRevert (Maybe Text)
acwzrUploadType
  = lens _acwzrUploadType
      (\ s a -> s{_acwzrUploadType = a})

-- | JSONP
acwzrCallback :: Lens' AccountsContainersWorkspacesZonesRevert (Maybe Text)
acwzrCallback
  = lens _acwzrCallback
      (\ s a -> s{_acwzrCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesRevert
         where
        type Rs AccountsContainersWorkspacesZonesRevert =
             RevertZoneResponse
        type Scopes AccountsContainersWorkspacesZonesRevert =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesZonesRevert'{..}
          = go _acwzrPath _acwzrXgafv _acwzrUploadProtocol
              _acwzrFingerprint
              _acwzrAccessToken
              _acwzrUploadType
              _acwzrCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesZonesRevertResource)
                      mempty
