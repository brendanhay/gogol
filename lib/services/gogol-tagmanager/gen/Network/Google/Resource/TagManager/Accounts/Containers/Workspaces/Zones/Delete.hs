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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Zone.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesDelete
    , AccountsContainersWorkspacesZonesDelete

    -- * Request Lenses
    , acwzdXgafv
    , acwzdUploadProtocol
    , acwzdPath
    , acwzdAccessToken
    , acwzdUploadType
    , acwzdCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.delete@ method which the
-- 'AccountsContainersWorkspacesZonesDelete' request conforms to.
type AccountsContainersWorkspacesZonesDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Zone.
--
-- /See:/ 'accountsContainersWorkspacesZonesDelete' smart constructor.
data AccountsContainersWorkspacesZonesDelete =
  AccountsContainersWorkspacesZonesDelete'
    { _acwzdXgafv :: !(Maybe Xgafv)
    , _acwzdUploadProtocol :: !(Maybe Text)
    , _acwzdPath :: !Text
    , _acwzdAccessToken :: !(Maybe Text)
    , _acwzdUploadType :: !(Maybe Text)
    , _acwzdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzdXgafv'
--
-- * 'acwzdUploadProtocol'
--
-- * 'acwzdPath'
--
-- * 'acwzdAccessToken'
--
-- * 'acwzdUploadType'
--
-- * 'acwzdCallback'
accountsContainersWorkspacesZonesDelete
    :: Text -- ^ 'acwzdPath'
    -> AccountsContainersWorkspacesZonesDelete
accountsContainersWorkspacesZonesDelete pAcwzdPath_ =
  AccountsContainersWorkspacesZonesDelete'
    { _acwzdXgafv = Nothing
    , _acwzdUploadProtocol = Nothing
    , _acwzdPath = pAcwzdPath_
    , _acwzdAccessToken = Nothing
    , _acwzdUploadType = Nothing
    , _acwzdCallback = Nothing
    }


-- | V1 error format.
acwzdXgafv :: Lens' AccountsContainersWorkspacesZonesDelete (Maybe Xgafv)
acwzdXgafv
  = lens _acwzdXgafv (\ s a -> s{_acwzdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwzdUploadProtocol :: Lens' AccountsContainersWorkspacesZonesDelete (Maybe Text)
acwzdUploadProtocol
  = lens _acwzdUploadProtocol
      (\ s a -> s{_acwzdUploadProtocol = a})

-- | GTM Zone\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/zones\/{zone_id}
acwzdPath :: Lens' AccountsContainersWorkspacesZonesDelete Text
acwzdPath
  = lens _acwzdPath (\ s a -> s{_acwzdPath = a})

-- | OAuth access token.
acwzdAccessToken :: Lens' AccountsContainersWorkspacesZonesDelete (Maybe Text)
acwzdAccessToken
  = lens _acwzdAccessToken
      (\ s a -> s{_acwzdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwzdUploadType :: Lens' AccountsContainersWorkspacesZonesDelete (Maybe Text)
acwzdUploadType
  = lens _acwzdUploadType
      (\ s a -> s{_acwzdUploadType = a})

-- | JSONP
acwzdCallback :: Lens' AccountsContainersWorkspacesZonesDelete (Maybe Text)
acwzdCallback
  = lens _acwzdCallback
      (\ s a -> s{_acwzdCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesDelete
         where
        type Rs AccountsContainersWorkspacesZonesDelete = ()
        type Scopes AccountsContainersWorkspacesZonesDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesZonesDelete'{..}
          = go _acwzdPath _acwzdXgafv _acwzdUploadProtocol
              _acwzdAccessToken
              _acwzdUploadType
              _acwzdCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesZonesDeleteResource)
                      mempty
