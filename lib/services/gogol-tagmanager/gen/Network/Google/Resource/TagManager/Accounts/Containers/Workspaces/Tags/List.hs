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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Tags of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsListResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsList
    , AccountsContainersWorkspacesTagsList

    -- * Request Lenses
    , acwtlParent
    , acwtlXgafv
    , acwtlUploadProtocol
    , acwtlAccessToken
    , acwtlUploadType
    , acwtlPageToken
    , acwtlCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.list@ method which the
-- 'AccountsContainersWorkspacesTagsList' request conforms to.
type AccountsContainersWorkspacesTagsListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "tags" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTagsResponse

-- | Lists all GTM Tags of a Container.
--
-- /See:/ 'accountsContainersWorkspacesTagsList' smart constructor.
data AccountsContainersWorkspacesTagsList =
  AccountsContainersWorkspacesTagsList'
    { _acwtlParent :: !Text
    , _acwtlXgafv :: !(Maybe Xgafv)
    , _acwtlUploadProtocol :: !(Maybe Text)
    , _acwtlAccessToken :: !(Maybe Text)
    , _acwtlUploadType :: !(Maybe Text)
    , _acwtlPageToken :: !(Maybe Text)
    , _acwtlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTagsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtlParent'
--
-- * 'acwtlXgafv'
--
-- * 'acwtlUploadProtocol'
--
-- * 'acwtlAccessToken'
--
-- * 'acwtlUploadType'
--
-- * 'acwtlPageToken'
--
-- * 'acwtlCallback'
accountsContainersWorkspacesTagsList
    :: Text -- ^ 'acwtlParent'
    -> AccountsContainersWorkspacesTagsList
accountsContainersWorkspacesTagsList pAcwtlParent_ =
  AccountsContainersWorkspacesTagsList'
    { _acwtlParent = pAcwtlParent_
    , _acwtlXgafv = Nothing
    , _acwtlUploadProtocol = Nothing
    , _acwtlAccessToken = Nothing
    , _acwtlUploadType = Nothing
    , _acwtlPageToken = Nothing
    , _acwtlCallback = Nothing
    }


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwtlParent :: Lens' AccountsContainersWorkspacesTagsList Text
acwtlParent
  = lens _acwtlParent (\ s a -> s{_acwtlParent = a})

-- | V1 error format.
acwtlXgafv :: Lens' AccountsContainersWorkspacesTagsList (Maybe Xgafv)
acwtlXgafv
  = lens _acwtlXgafv (\ s a -> s{_acwtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtlUploadProtocol :: Lens' AccountsContainersWorkspacesTagsList (Maybe Text)
acwtlUploadProtocol
  = lens _acwtlUploadProtocol
      (\ s a -> s{_acwtlUploadProtocol = a})

-- | OAuth access token.
acwtlAccessToken :: Lens' AccountsContainersWorkspacesTagsList (Maybe Text)
acwtlAccessToken
  = lens _acwtlAccessToken
      (\ s a -> s{_acwtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtlUploadType :: Lens' AccountsContainersWorkspacesTagsList (Maybe Text)
acwtlUploadType
  = lens _acwtlUploadType
      (\ s a -> s{_acwtlUploadType = a})

-- | Continuation token for fetching the next page of results.
acwtlPageToken :: Lens' AccountsContainersWorkspacesTagsList (Maybe Text)
acwtlPageToken
  = lens _acwtlPageToken
      (\ s a -> s{_acwtlPageToken = a})

-- | JSONP
acwtlCallback :: Lens' AccountsContainersWorkspacesTagsList (Maybe Text)
acwtlCallback
  = lens _acwtlCallback
      (\ s a -> s{_acwtlCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsList
         where
        type Rs AccountsContainersWorkspacesTagsList =
             ListTagsResponse
        type Scopes AccountsContainersWorkspacesTagsList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTagsList'{..}
          = go _acwtlParent _acwtlXgafv _acwtlUploadProtocol
              _acwtlAccessToken
              _acwtlUploadType
              _acwtlPageToken
              _acwtlCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsListResource)
                      mempty
