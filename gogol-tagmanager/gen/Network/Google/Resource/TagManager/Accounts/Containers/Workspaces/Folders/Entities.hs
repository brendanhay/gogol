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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Entities
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all entities in a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.entities@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Entities
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersEntitiesResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersEntities
    , AccountsContainersWorkspacesFoldersEntities

    -- * Request Lenses
    , acwfeXgafv
    , acwfeUploadProtocol
    , acwfePath
    , acwfeAccessToken
    , acwfeUploadType
    , acwfePageToken
    , acwfeCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.entities@ method which the
-- 'AccountsContainersWorkspacesFoldersEntities' request conforms to.
type AccountsContainersWorkspacesFoldersEntitiesResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "entities" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] FolderEntities

-- | List all entities in a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersEntities' smart constructor.
data AccountsContainersWorkspacesFoldersEntities =
  AccountsContainersWorkspacesFoldersEntities'
    { _acwfeXgafv :: !(Maybe Xgafv)
    , _acwfeUploadProtocol :: !(Maybe Text)
    , _acwfePath :: !Text
    , _acwfeAccessToken :: !(Maybe Text)
    , _acwfeUploadType :: !(Maybe Text)
    , _acwfePageToken :: !(Maybe Text)
    , _acwfeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesFoldersEntities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfeXgafv'
--
-- * 'acwfeUploadProtocol'
--
-- * 'acwfePath'
--
-- * 'acwfeAccessToken'
--
-- * 'acwfeUploadType'
--
-- * 'acwfePageToken'
--
-- * 'acwfeCallback'
accountsContainersWorkspacesFoldersEntities
    :: Text -- ^ 'acwfePath'
    -> AccountsContainersWorkspacesFoldersEntities
accountsContainersWorkspacesFoldersEntities pAcwfePath_ =
  AccountsContainersWorkspacesFoldersEntities'
    { _acwfeXgafv = Nothing
    , _acwfeUploadProtocol = Nothing
    , _acwfePath = pAcwfePath_
    , _acwfeAccessToken = Nothing
    , _acwfeUploadType = Nothing
    , _acwfePageToken = Nothing
    , _acwfeCallback = Nothing
    }


-- | V1 error format.
acwfeXgafv :: Lens' AccountsContainersWorkspacesFoldersEntities (Maybe Xgafv)
acwfeXgafv
  = lens _acwfeXgafv (\ s a -> s{_acwfeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwfeUploadProtocol :: Lens' AccountsContainersWorkspacesFoldersEntities (Maybe Text)
acwfeUploadProtocol
  = lens _acwfeUploadProtocol
      (\ s a -> s{_acwfeUploadProtocol = a})

-- | GTM Folder\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/folders\/{folder_id}
acwfePath :: Lens' AccountsContainersWorkspacesFoldersEntities Text
acwfePath
  = lens _acwfePath (\ s a -> s{_acwfePath = a})

-- | OAuth access token.
acwfeAccessToken :: Lens' AccountsContainersWorkspacesFoldersEntities (Maybe Text)
acwfeAccessToken
  = lens _acwfeAccessToken
      (\ s a -> s{_acwfeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwfeUploadType :: Lens' AccountsContainersWorkspacesFoldersEntities (Maybe Text)
acwfeUploadType
  = lens _acwfeUploadType
      (\ s a -> s{_acwfeUploadType = a})

-- | Continuation token for fetching the next page of results.
acwfePageToken :: Lens' AccountsContainersWorkspacesFoldersEntities (Maybe Text)
acwfePageToken
  = lens _acwfePageToken
      (\ s a -> s{_acwfePageToken = a})

-- | JSONP
acwfeCallback :: Lens' AccountsContainersWorkspacesFoldersEntities (Maybe Text)
acwfeCallback
  = lens _acwfeCallback
      (\ s a -> s{_acwfeCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersEntities
         where
        type Rs AccountsContainersWorkspacesFoldersEntities =
             FolderEntities
        type Scopes
               AccountsContainersWorkspacesFoldersEntities
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesFoldersEntities'{..}
          = go _acwfePath _acwfeXgafv _acwfeUploadProtocol
              _acwfeAccessToken
              _acwfeUploadType
              _acwfePageToken
              _acwfeCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersEntitiesResource)
                      mempty
