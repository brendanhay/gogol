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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesGet
    , AccountsContainersWorkspacesGet

    -- * Request Lenses
    , acwgXgafv
    , acwgUploadProtocol
    , acwgPath
    , acwgAccessToken
    , acwgUploadType
    , acwgCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.get@ method which the
-- 'AccountsContainersWorkspacesGet' request conforms to.
type AccountsContainersWorkspacesGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Workspace

-- | Gets a Workspace.
--
-- /See:/ 'accountsContainersWorkspacesGet' smart constructor.
data AccountsContainersWorkspacesGet =
  AccountsContainersWorkspacesGet'
    { _acwgXgafv :: !(Maybe Xgafv)
    , _acwgUploadProtocol :: !(Maybe Text)
    , _acwgPath :: !Text
    , _acwgAccessToken :: !(Maybe Text)
    , _acwgUploadType :: !(Maybe Text)
    , _acwgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwgXgafv'
--
-- * 'acwgUploadProtocol'
--
-- * 'acwgPath'
--
-- * 'acwgAccessToken'
--
-- * 'acwgUploadType'
--
-- * 'acwgCallback'
accountsContainersWorkspacesGet
    :: Text -- ^ 'acwgPath'
    -> AccountsContainersWorkspacesGet
accountsContainersWorkspacesGet pAcwgPath_ =
  AccountsContainersWorkspacesGet'
    { _acwgXgafv = Nothing
    , _acwgUploadProtocol = Nothing
    , _acwgPath = pAcwgPath_
    , _acwgAccessToken = Nothing
    , _acwgUploadType = Nothing
    , _acwgCallback = Nothing
    }


-- | V1 error format.
acwgXgafv :: Lens' AccountsContainersWorkspacesGet (Maybe Xgafv)
acwgXgafv
  = lens _acwgXgafv (\ s a -> s{_acwgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwgUploadProtocol :: Lens' AccountsContainersWorkspacesGet (Maybe Text)
acwgUploadProtocol
  = lens _acwgUploadProtocol
      (\ s a -> s{_acwgUploadProtocol = a})

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwgPath :: Lens' AccountsContainersWorkspacesGet Text
acwgPath = lens _acwgPath (\ s a -> s{_acwgPath = a})

-- | OAuth access token.
acwgAccessToken :: Lens' AccountsContainersWorkspacesGet (Maybe Text)
acwgAccessToken
  = lens _acwgAccessToken
      (\ s a -> s{_acwgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwgUploadType :: Lens' AccountsContainersWorkspacesGet (Maybe Text)
acwgUploadType
  = lens _acwgUploadType
      (\ s a -> s{_acwgUploadType = a})

-- | JSONP
acwgCallback :: Lens' AccountsContainersWorkspacesGet (Maybe Text)
acwgCallback
  = lens _acwgCallback (\ s a -> s{_acwgCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesGet
         where
        type Rs AccountsContainersWorkspacesGet = Workspace
        type Scopes AccountsContainersWorkspacesGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersWorkspacesGet'{..}
          = go _acwgPath _acwgXgafv _acwgUploadProtocol
              _acwgAccessToken
              _acwgUploadType
              _acwgCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesGetResource)
                      mempty
