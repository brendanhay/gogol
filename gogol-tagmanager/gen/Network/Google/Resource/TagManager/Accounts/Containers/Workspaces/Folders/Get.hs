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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersGet
    , AccountsContainersWorkspacesFoldersGet

    -- * Request Lenses
    , acwfgXgafv
    , acwfgUploadProtocol
    , acwfgPath
    , acwfgAccessToken
    , acwfgUploadType
    , acwfgCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.get@ method which the
-- 'AccountsContainersWorkspacesFoldersGet' request conforms to.
type AccountsContainersWorkspacesFoldersGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Folder

-- | Gets a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersGet' smart constructor.
data AccountsContainersWorkspacesFoldersGet =
  AccountsContainersWorkspacesFoldersGet'
    { _acwfgXgafv :: !(Maybe Xgafv)
    , _acwfgUploadProtocol :: !(Maybe Text)
    , _acwfgPath :: !Text
    , _acwfgAccessToken :: !(Maybe Text)
    , _acwfgUploadType :: !(Maybe Text)
    , _acwfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesFoldersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfgXgafv'
--
-- * 'acwfgUploadProtocol'
--
-- * 'acwfgPath'
--
-- * 'acwfgAccessToken'
--
-- * 'acwfgUploadType'
--
-- * 'acwfgCallback'
accountsContainersWorkspacesFoldersGet
    :: Text -- ^ 'acwfgPath'
    -> AccountsContainersWorkspacesFoldersGet
accountsContainersWorkspacesFoldersGet pAcwfgPath_ =
  AccountsContainersWorkspacesFoldersGet'
    { _acwfgXgafv = Nothing
    , _acwfgUploadProtocol = Nothing
    , _acwfgPath = pAcwfgPath_
    , _acwfgAccessToken = Nothing
    , _acwfgUploadType = Nothing
    , _acwfgCallback = Nothing
    }


-- | V1 error format.
acwfgXgafv :: Lens' AccountsContainersWorkspacesFoldersGet (Maybe Xgafv)
acwfgXgafv
  = lens _acwfgXgafv (\ s a -> s{_acwfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwfgUploadProtocol :: Lens' AccountsContainersWorkspacesFoldersGet (Maybe Text)
acwfgUploadProtocol
  = lens _acwfgUploadProtocol
      (\ s a -> s{_acwfgUploadProtocol = a})

-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfgPath :: Lens' AccountsContainersWorkspacesFoldersGet Text
acwfgPath
  = lens _acwfgPath (\ s a -> s{_acwfgPath = a})

-- | OAuth access token.
acwfgAccessToken :: Lens' AccountsContainersWorkspacesFoldersGet (Maybe Text)
acwfgAccessToken
  = lens _acwfgAccessToken
      (\ s a -> s{_acwfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwfgUploadType :: Lens' AccountsContainersWorkspacesFoldersGet (Maybe Text)
acwfgUploadType
  = lens _acwfgUploadType
      (\ s a -> s{_acwfgUploadType = a})

-- | JSONP
acwfgCallback :: Lens' AccountsContainersWorkspacesFoldersGet (Maybe Text)
acwfgCallback
  = lens _acwfgCallback
      (\ s a -> s{_acwfgCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersGet
         where
        type Rs AccountsContainersWorkspacesFoldersGet =
             Folder
        type Scopes AccountsContainersWorkspacesFoldersGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesFoldersGet'{..}
          = go _acwfgPath _acwfgXgafv _acwfgUploadProtocol
              _acwfgAccessToken
              _acwfgUploadType
              _acwfgCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesFoldersGetResource)
                      mempty
