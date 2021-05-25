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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the enabled Built-In Variables of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesBuiltInVariablesListResource

    -- * Creating a Request
    , accountsContainersWorkspacesBuiltInVariablesList
    , AccountsContainersWorkspacesBuiltInVariablesList

    -- * Request Lenses
    , acwbivlParent
    , acwbivlXgafv
    , acwbivlUploadProtocol
    , acwbivlAccessToken
    , acwbivlUploadType
    , acwbivlPageToken
    , acwbivlCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.list@ method which the
-- 'AccountsContainersWorkspacesBuiltInVariablesList' request conforms to.
type AccountsContainersWorkspacesBuiltInVariablesListResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "built_in_variables" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListEnabledBuiltInVariablesResponse

-- | Lists all the enabled Built-In Variables of a GTM Container.
--
-- /See:/ 'accountsContainersWorkspacesBuiltInVariablesList' smart constructor.
data AccountsContainersWorkspacesBuiltInVariablesList =
  AccountsContainersWorkspacesBuiltInVariablesList'
    { _acwbivlParent :: !Text
    , _acwbivlXgafv :: !(Maybe Xgafv)
    , _acwbivlUploadProtocol :: !(Maybe Text)
    , _acwbivlAccessToken :: !(Maybe Text)
    , _acwbivlUploadType :: !(Maybe Text)
    , _acwbivlPageToken :: !(Maybe Text)
    , _acwbivlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesBuiltInVariablesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwbivlParent'
--
-- * 'acwbivlXgafv'
--
-- * 'acwbivlUploadProtocol'
--
-- * 'acwbivlAccessToken'
--
-- * 'acwbivlUploadType'
--
-- * 'acwbivlPageToken'
--
-- * 'acwbivlCallback'
accountsContainersWorkspacesBuiltInVariablesList
    :: Text -- ^ 'acwbivlParent'
    -> AccountsContainersWorkspacesBuiltInVariablesList
accountsContainersWorkspacesBuiltInVariablesList pAcwbivlParent_ =
  AccountsContainersWorkspacesBuiltInVariablesList'
    { _acwbivlParent = pAcwbivlParent_
    , _acwbivlXgafv = Nothing
    , _acwbivlUploadProtocol = Nothing
    , _acwbivlAccessToken = Nothing
    , _acwbivlUploadType = Nothing
    , _acwbivlPageToken = Nothing
    , _acwbivlCallback = Nothing
    }


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwbivlParent :: Lens' AccountsContainersWorkspacesBuiltInVariablesList Text
acwbivlParent
  = lens _acwbivlParent
      (\ s a -> s{_acwbivlParent = a})

-- | V1 error format.
acwbivlXgafv :: Lens' AccountsContainersWorkspacesBuiltInVariablesList (Maybe Xgafv)
acwbivlXgafv
  = lens _acwbivlXgafv (\ s a -> s{_acwbivlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwbivlUploadProtocol :: Lens' AccountsContainersWorkspacesBuiltInVariablesList (Maybe Text)
acwbivlUploadProtocol
  = lens _acwbivlUploadProtocol
      (\ s a -> s{_acwbivlUploadProtocol = a})

-- | OAuth access token.
acwbivlAccessToken :: Lens' AccountsContainersWorkspacesBuiltInVariablesList (Maybe Text)
acwbivlAccessToken
  = lens _acwbivlAccessToken
      (\ s a -> s{_acwbivlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwbivlUploadType :: Lens' AccountsContainersWorkspacesBuiltInVariablesList (Maybe Text)
acwbivlUploadType
  = lens _acwbivlUploadType
      (\ s a -> s{_acwbivlUploadType = a})

-- | Continuation token for fetching the next page of results.
acwbivlPageToken :: Lens' AccountsContainersWorkspacesBuiltInVariablesList (Maybe Text)
acwbivlPageToken
  = lens _acwbivlPageToken
      (\ s a -> s{_acwbivlPageToken = a})

-- | JSONP
acwbivlCallback :: Lens' AccountsContainersWorkspacesBuiltInVariablesList (Maybe Text)
acwbivlCallback
  = lens _acwbivlCallback
      (\ s a -> s{_acwbivlCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesBuiltInVariablesList
         where
        type Rs
               AccountsContainersWorkspacesBuiltInVariablesList
             = ListEnabledBuiltInVariablesResponse
        type Scopes
               AccountsContainersWorkspacesBuiltInVariablesList
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesBuiltInVariablesList'{..}
          = go _acwbivlParent _acwbivlXgafv
              _acwbivlUploadProtocol
              _acwbivlAccessToken
              _acwbivlUploadType
              _acwbivlPageToken
              _acwbivlCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesBuiltInVariablesListResource)
                      mempty
