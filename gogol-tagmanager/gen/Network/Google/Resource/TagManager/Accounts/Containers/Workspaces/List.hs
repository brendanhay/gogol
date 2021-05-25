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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Workspaces that belong to a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesListResource

    -- * Creating a Request
    , accountsContainersWorkspacesList
    , AccountsContainersWorkspacesList

    -- * Request Lenses
    , acwlParent
    , acwlXgafv
    , acwlUploadProtocol
    , acwlAccessToken
    , acwlUploadType
    , acwlPageToken
    , acwlCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.list@ method which the
-- 'AccountsContainersWorkspacesList' request conforms to.
type AccountsContainersWorkspacesListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "workspaces" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListWorkspacesResponse

-- | Lists all Workspaces that belong to a GTM Container.
--
-- /See:/ 'accountsContainersWorkspacesList' smart constructor.
data AccountsContainersWorkspacesList =
  AccountsContainersWorkspacesList'
    { _acwlParent :: !Text
    , _acwlXgafv :: !(Maybe Xgafv)
    , _acwlUploadProtocol :: !(Maybe Text)
    , _acwlAccessToken :: !(Maybe Text)
    , _acwlUploadType :: !(Maybe Text)
    , _acwlPageToken :: !(Maybe Text)
    , _acwlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwlParent'
--
-- * 'acwlXgafv'
--
-- * 'acwlUploadProtocol'
--
-- * 'acwlAccessToken'
--
-- * 'acwlUploadType'
--
-- * 'acwlPageToken'
--
-- * 'acwlCallback'
accountsContainersWorkspacesList
    :: Text -- ^ 'acwlParent'
    -> AccountsContainersWorkspacesList
accountsContainersWorkspacesList pAcwlParent_ =
  AccountsContainersWorkspacesList'
    { _acwlParent = pAcwlParent_
    , _acwlXgafv = Nothing
    , _acwlUploadProtocol = Nothing
    , _acwlAccessToken = Nothing
    , _acwlUploadType = Nothing
    , _acwlPageToken = Nothing
    , _acwlCallback = Nothing
    }


-- | GTM parent Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acwlParent :: Lens' AccountsContainersWorkspacesList Text
acwlParent
  = lens _acwlParent (\ s a -> s{_acwlParent = a})

-- | V1 error format.
acwlXgafv :: Lens' AccountsContainersWorkspacesList (Maybe Xgafv)
acwlXgafv
  = lens _acwlXgafv (\ s a -> s{_acwlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwlUploadProtocol :: Lens' AccountsContainersWorkspacesList (Maybe Text)
acwlUploadProtocol
  = lens _acwlUploadProtocol
      (\ s a -> s{_acwlUploadProtocol = a})

-- | OAuth access token.
acwlAccessToken :: Lens' AccountsContainersWorkspacesList (Maybe Text)
acwlAccessToken
  = lens _acwlAccessToken
      (\ s a -> s{_acwlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwlUploadType :: Lens' AccountsContainersWorkspacesList (Maybe Text)
acwlUploadType
  = lens _acwlUploadType
      (\ s a -> s{_acwlUploadType = a})

-- | Continuation token for fetching the next page of results.
acwlPageToken :: Lens' AccountsContainersWorkspacesList (Maybe Text)
acwlPageToken
  = lens _acwlPageToken
      (\ s a -> s{_acwlPageToken = a})

-- | JSONP
acwlCallback :: Lens' AccountsContainersWorkspacesList (Maybe Text)
acwlCallback
  = lens _acwlCallback (\ s a -> s{_acwlCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesList
         where
        type Rs AccountsContainersWorkspacesList =
             ListWorkspacesResponse
        type Scopes AccountsContainersWorkspacesList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersWorkspacesList'{..}
          = go _acwlParent _acwlXgafv _acwlUploadProtocol
              _acwlAccessToken
              _acwlUploadType
              _acwlPageToken
              _acwlCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesListResource)
                      mempty
