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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Triggers of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.List
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersListResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersList
    , AccountsContainersWorkspacesTriggersList

    -- * Request Lenses
    , acwtl1Parent
    , acwtl1Xgafv
    , acwtl1UploadProtocol
    , acwtl1AccessToken
    , acwtl1UploadType
    , acwtl1PageToken
    , acwtl1Callback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.list@ method which the
-- 'AccountsContainersWorkspacesTriggersList' request conforms to.
type AccountsContainersWorkspacesTriggersListResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "triggers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListTriggersResponse

-- | Lists all GTM Triggers of a Container.
--
-- /See:/ 'accountsContainersWorkspacesTriggersList' smart constructor.
data AccountsContainersWorkspacesTriggersList =
  AccountsContainersWorkspacesTriggersList'
    { _acwtl1Parent :: !Text
    , _acwtl1Xgafv :: !(Maybe Xgafv)
    , _acwtl1UploadProtocol :: !(Maybe Text)
    , _acwtl1AccessToken :: !(Maybe Text)
    , _acwtl1UploadType :: !(Maybe Text)
    , _acwtl1PageToken :: !(Maybe Text)
    , _acwtl1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTriggersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtl1Parent'
--
-- * 'acwtl1Xgafv'
--
-- * 'acwtl1UploadProtocol'
--
-- * 'acwtl1AccessToken'
--
-- * 'acwtl1UploadType'
--
-- * 'acwtl1PageToken'
--
-- * 'acwtl1Callback'
accountsContainersWorkspacesTriggersList
    :: Text -- ^ 'acwtl1Parent'
    -> AccountsContainersWorkspacesTriggersList
accountsContainersWorkspacesTriggersList pAcwtl1Parent_ =
  AccountsContainersWorkspacesTriggersList'
    { _acwtl1Parent = pAcwtl1Parent_
    , _acwtl1Xgafv = Nothing
    , _acwtl1UploadProtocol = Nothing
    , _acwtl1AccessToken = Nothing
    , _acwtl1UploadType = Nothing
    , _acwtl1PageToken = Nothing
    , _acwtl1Callback = Nothing
    }


-- | GTM Workspaces\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwtl1Parent :: Lens' AccountsContainersWorkspacesTriggersList Text
acwtl1Parent
  = lens _acwtl1Parent (\ s a -> s{_acwtl1Parent = a})

-- | V1 error format.
acwtl1Xgafv :: Lens' AccountsContainersWorkspacesTriggersList (Maybe Xgafv)
acwtl1Xgafv
  = lens _acwtl1Xgafv (\ s a -> s{_acwtl1Xgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtl1UploadProtocol :: Lens' AccountsContainersWorkspacesTriggersList (Maybe Text)
acwtl1UploadProtocol
  = lens _acwtl1UploadProtocol
      (\ s a -> s{_acwtl1UploadProtocol = a})

-- | OAuth access token.
acwtl1AccessToken :: Lens' AccountsContainersWorkspacesTriggersList (Maybe Text)
acwtl1AccessToken
  = lens _acwtl1AccessToken
      (\ s a -> s{_acwtl1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtl1UploadType :: Lens' AccountsContainersWorkspacesTriggersList (Maybe Text)
acwtl1UploadType
  = lens _acwtl1UploadType
      (\ s a -> s{_acwtl1UploadType = a})

-- | Continuation token for fetching the next page of results.
acwtl1PageToken :: Lens' AccountsContainersWorkspacesTriggersList (Maybe Text)
acwtl1PageToken
  = lens _acwtl1PageToken
      (\ s a -> s{_acwtl1PageToken = a})

-- | JSONP
acwtl1Callback :: Lens' AccountsContainersWorkspacesTriggersList (Maybe Text)
acwtl1Callback
  = lens _acwtl1Callback
      (\ s a -> s{_acwtl1Callback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTriggersList
         where
        type Rs AccountsContainersWorkspacesTriggersList =
             ListTriggersResponse
        type Scopes AccountsContainersWorkspacesTriggersList
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTriggersList'{..}
          = go _acwtl1Parent _acwtl1Xgafv _acwtl1UploadProtocol
              _acwtl1AccessToken
              _acwtl1UploadType
              _acwtl1PageToken
              _acwtl1Callback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersListResource)
                      mempty
