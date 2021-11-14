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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersDelete
    , AccountsContainersWorkspacesFoldersDelete

    -- * Request Lenses
    , acwfdXgafv
    , acwfdUploadProtocol
    , acwfdPath
    , acwfdAccessToken
    , acwfdUploadType
    , acwfdCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.delete@ method which the
-- 'AccountsContainersWorkspacesFoldersDelete' request conforms to.
type AccountsContainersWorkspacesFoldersDeleteResource
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

-- | Deletes a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersDelete' smart constructor.
data AccountsContainersWorkspacesFoldersDelete =
  AccountsContainersWorkspacesFoldersDelete'
    { _acwfdXgafv :: !(Maybe Xgafv)
    , _acwfdUploadProtocol :: !(Maybe Text)
    , _acwfdPath :: !Text
    , _acwfdAccessToken :: !(Maybe Text)
    , _acwfdUploadType :: !(Maybe Text)
    , _acwfdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesFoldersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfdXgafv'
--
-- * 'acwfdUploadProtocol'
--
-- * 'acwfdPath'
--
-- * 'acwfdAccessToken'
--
-- * 'acwfdUploadType'
--
-- * 'acwfdCallback'
accountsContainersWorkspacesFoldersDelete
    :: Text -- ^ 'acwfdPath'
    -> AccountsContainersWorkspacesFoldersDelete
accountsContainersWorkspacesFoldersDelete pAcwfdPath_ =
  AccountsContainersWorkspacesFoldersDelete'
    { _acwfdXgafv = Nothing
    , _acwfdUploadProtocol = Nothing
    , _acwfdPath = pAcwfdPath_
    , _acwfdAccessToken = Nothing
    , _acwfdUploadType = Nothing
    , _acwfdCallback = Nothing
    }


-- | V1 error format.
acwfdXgafv :: Lens' AccountsContainersWorkspacesFoldersDelete (Maybe Xgafv)
acwfdXgafv
  = lens _acwfdXgafv (\ s a -> s{_acwfdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwfdUploadProtocol :: Lens' AccountsContainersWorkspacesFoldersDelete (Maybe Text)
acwfdUploadProtocol
  = lens _acwfdUploadProtocol
      (\ s a -> s{_acwfdUploadProtocol = a})

-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfdPath :: Lens' AccountsContainersWorkspacesFoldersDelete Text
acwfdPath
  = lens _acwfdPath (\ s a -> s{_acwfdPath = a})

-- | OAuth access token.
acwfdAccessToken :: Lens' AccountsContainersWorkspacesFoldersDelete (Maybe Text)
acwfdAccessToken
  = lens _acwfdAccessToken
      (\ s a -> s{_acwfdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwfdUploadType :: Lens' AccountsContainersWorkspacesFoldersDelete (Maybe Text)
acwfdUploadType
  = lens _acwfdUploadType
      (\ s a -> s{_acwfdUploadType = a})

-- | JSONP
acwfdCallback :: Lens' AccountsContainersWorkspacesFoldersDelete (Maybe Text)
acwfdCallback
  = lens _acwfdCallback
      (\ s a -> s{_acwfdCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersDelete
         where
        type Rs AccountsContainersWorkspacesFoldersDelete =
             ()
        type Scopes AccountsContainersWorkspacesFoldersDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesFoldersDelete'{..}
          = go _acwfdPath _acwfdXgafv _acwfdUploadProtocol
              _acwfdAccessToken
              _acwfdUploadType
              _acwfdCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersDeleteResource)
                      mempty
