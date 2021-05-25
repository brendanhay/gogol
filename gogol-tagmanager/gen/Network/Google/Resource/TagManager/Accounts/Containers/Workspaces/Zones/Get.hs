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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Zone.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesGet
    , AccountsContainersWorkspacesZonesGet

    -- * Request Lenses
    , acwzgXgafv
    , acwzgUploadProtocol
    , acwzgPath
    , acwzgAccessToken
    , acwzgUploadType
    , acwzgCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.get@ method which the
-- 'AccountsContainersWorkspacesZonesGet' request conforms to.
type AccountsContainersWorkspacesZonesGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Zone

-- | Gets a GTM Zone.
--
-- /See:/ 'accountsContainersWorkspacesZonesGet' smart constructor.
data AccountsContainersWorkspacesZonesGet =
  AccountsContainersWorkspacesZonesGet'
    { _acwzgXgafv :: !(Maybe Xgafv)
    , _acwzgUploadProtocol :: !(Maybe Text)
    , _acwzgPath :: !Text
    , _acwzgAccessToken :: !(Maybe Text)
    , _acwzgUploadType :: !(Maybe Text)
    , _acwzgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzgXgafv'
--
-- * 'acwzgUploadProtocol'
--
-- * 'acwzgPath'
--
-- * 'acwzgAccessToken'
--
-- * 'acwzgUploadType'
--
-- * 'acwzgCallback'
accountsContainersWorkspacesZonesGet
    :: Text -- ^ 'acwzgPath'
    -> AccountsContainersWorkspacesZonesGet
accountsContainersWorkspacesZonesGet pAcwzgPath_ =
  AccountsContainersWorkspacesZonesGet'
    { _acwzgXgafv = Nothing
    , _acwzgUploadProtocol = Nothing
    , _acwzgPath = pAcwzgPath_
    , _acwzgAccessToken = Nothing
    , _acwzgUploadType = Nothing
    , _acwzgCallback = Nothing
    }


-- | V1 error format.
acwzgXgafv :: Lens' AccountsContainersWorkspacesZonesGet (Maybe Xgafv)
acwzgXgafv
  = lens _acwzgXgafv (\ s a -> s{_acwzgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwzgUploadProtocol :: Lens' AccountsContainersWorkspacesZonesGet (Maybe Text)
acwzgUploadProtocol
  = lens _acwzgUploadProtocol
      (\ s a -> s{_acwzgUploadProtocol = a})

-- | GTM Zone\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/zones\/{zone_id}
acwzgPath :: Lens' AccountsContainersWorkspacesZonesGet Text
acwzgPath
  = lens _acwzgPath (\ s a -> s{_acwzgPath = a})

-- | OAuth access token.
acwzgAccessToken :: Lens' AccountsContainersWorkspacesZonesGet (Maybe Text)
acwzgAccessToken
  = lens _acwzgAccessToken
      (\ s a -> s{_acwzgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwzgUploadType :: Lens' AccountsContainersWorkspacesZonesGet (Maybe Text)
acwzgUploadType
  = lens _acwzgUploadType
      (\ s a -> s{_acwzgUploadType = a})

-- | JSONP
acwzgCallback :: Lens' AccountsContainersWorkspacesZonesGet (Maybe Text)
acwzgCallback
  = lens _acwzgCallback
      (\ s a -> s{_acwzgCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesGet
         where
        type Rs AccountsContainersWorkspacesZonesGet = Zone
        type Scopes AccountsContainersWorkspacesZonesGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesZonesGet'{..}
          = go _acwzgPath _acwzgXgafv _acwzgUploadProtocol
              _acwzgAccessToken
              _acwzgUploadType
              _acwzgCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesZonesGetResource)
                      mempty
