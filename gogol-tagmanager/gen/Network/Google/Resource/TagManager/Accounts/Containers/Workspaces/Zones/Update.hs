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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Zone.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesUpdate
    , AccountsContainersWorkspacesZonesUpdate

    -- * Request Lenses
    , acwzuXgafv
    , acwzuUploadProtocol
    , acwzuPath
    , acwzuFingerprint
    , acwzuAccessToken
    , acwzuUploadType
    , acwzuPayload
    , acwzuCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.update@ method which the
-- 'AccountsContainersWorkspacesZonesUpdate' request conforms to.
type AccountsContainersWorkspacesZonesUpdateResource
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
                         ReqBody '[JSON] Zone :> Put '[JSON] Zone

-- | Updates a GTM Zone.
--
-- /See:/ 'accountsContainersWorkspacesZonesUpdate' smart constructor.
data AccountsContainersWorkspacesZonesUpdate =
  AccountsContainersWorkspacesZonesUpdate'
    { _acwzuXgafv :: !(Maybe Xgafv)
    , _acwzuUploadProtocol :: !(Maybe Text)
    , _acwzuPath :: !Text
    , _acwzuFingerprint :: !(Maybe Text)
    , _acwzuAccessToken :: !(Maybe Text)
    , _acwzuUploadType :: !(Maybe Text)
    , _acwzuPayload :: !Zone
    , _acwzuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzuXgafv'
--
-- * 'acwzuUploadProtocol'
--
-- * 'acwzuPath'
--
-- * 'acwzuFingerprint'
--
-- * 'acwzuAccessToken'
--
-- * 'acwzuUploadType'
--
-- * 'acwzuPayload'
--
-- * 'acwzuCallback'
accountsContainersWorkspacesZonesUpdate
    :: Text -- ^ 'acwzuPath'
    -> Zone -- ^ 'acwzuPayload'
    -> AccountsContainersWorkspacesZonesUpdate
accountsContainersWorkspacesZonesUpdate pAcwzuPath_ pAcwzuPayload_ =
  AccountsContainersWorkspacesZonesUpdate'
    { _acwzuXgafv = Nothing
    , _acwzuUploadProtocol = Nothing
    , _acwzuPath = pAcwzuPath_
    , _acwzuFingerprint = Nothing
    , _acwzuAccessToken = Nothing
    , _acwzuUploadType = Nothing
    , _acwzuPayload = pAcwzuPayload_
    , _acwzuCallback = Nothing
    }


-- | V1 error format.
acwzuXgafv :: Lens' AccountsContainersWorkspacesZonesUpdate (Maybe Xgafv)
acwzuXgafv
  = lens _acwzuXgafv (\ s a -> s{_acwzuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwzuUploadProtocol :: Lens' AccountsContainersWorkspacesZonesUpdate (Maybe Text)
acwzuUploadProtocol
  = lens _acwzuUploadProtocol
      (\ s a -> s{_acwzuUploadProtocol = a})

-- | GTM Zone\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/zones\/{zone_id}
acwzuPath :: Lens' AccountsContainersWorkspacesZonesUpdate Text
acwzuPath
  = lens _acwzuPath (\ s a -> s{_acwzuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the zone
-- in storage.
acwzuFingerprint :: Lens' AccountsContainersWorkspacesZonesUpdate (Maybe Text)
acwzuFingerprint
  = lens _acwzuFingerprint
      (\ s a -> s{_acwzuFingerprint = a})

-- | OAuth access token.
acwzuAccessToken :: Lens' AccountsContainersWorkspacesZonesUpdate (Maybe Text)
acwzuAccessToken
  = lens _acwzuAccessToken
      (\ s a -> s{_acwzuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwzuUploadType :: Lens' AccountsContainersWorkspacesZonesUpdate (Maybe Text)
acwzuUploadType
  = lens _acwzuUploadType
      (\ s a -> s{_acwzuUploadType = a})

-- | Multipart request metadata.
acwzuPayload :: Lens' AccountsContainersWorkspacesZonesUpdate Zone
acwzuPayload
  = lens _acwzuPayload (\ s a -> s{_acwzuPayload = a})

-- | JSONP
acwzuCallback :: Lens' AccountsContainersWorkspacesZonesUpdate (Maybe Text)
acwzuCallback
  = lens _acwzuCallback
      (\ s a -> s{_acwzuCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesUpdate
         where
        type Rs AccountsContainersWorkspacesZonesUpdate =
             Zone
        type Scopes AccountsContainersWorkspacesZonesUpdate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesZonesUpdate'{..}
          = go _acwzuPath _acwzuXgafv _acwzuUploadProtocol
              _acwzuFingerprint
              _acwzuAccessToken
              _acwzuUploadType
              _acwzuCallback
              (Just AltJSON)
              _acwzuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesZonesUpdateResource)
                      mempty
