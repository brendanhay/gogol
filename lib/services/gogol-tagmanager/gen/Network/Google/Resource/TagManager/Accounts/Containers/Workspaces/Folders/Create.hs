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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Folders.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesFoldersCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesFoldersCreate
    , AccountsContainersWorkspacesFoldersCreate

    -- * Request Lenses
    , acwfcParent
    , acwfcXgafv
    , acwfcUploadProtocol
    , acwfcAccessToken
    , acwfcUploadType
    , acwfcPayload
    , acwfcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.create@ method which the
-- 'AccountsContainersWorkspacesFoldersCreate' request conforms to.
type AccountsContainersWorkspacesFoldersCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "folders" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Folder :> Post '[JSON] Folder

-- | Creates a GTM Folder.
--
-- /See:/ 'accountsContainersWorkspacesFoldersCreate' smart constructor.
data AccountsContainersWorkspacesFoldersCreate =
  AccountsContainersWorkspacesFoldersCreate'
    { _acwfcParent :: !Text
    , _acwfcXgafv :: !(Maybe Xgafv)
    , _acwfcUploadProtocol :: !(Maybe Text)
    , _acwfcAccessToken :: !(Maybe Text)
    , _acwfcUploadType :: !(Maybe Text)
    , _acwfcPayload :: !Folder
    , _acwfcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesFoldersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwfcParent'
--
-- * 'acwfcXgafv'
--
-- * 'acwfcUploadProtocol'
--
-- * 'acwfcAccessToken'
--
-- * 'acwfcUploadType'
--
-- * 'acwfcPayload'
--
-- * 'acwfcCallback'
accountsContainersWorkspacesFoldersCreate
    :: Text -- ^ 'acwfcParent'
    -> Folder -- ^ 'acwfcPayload'
    -> AccountsContainersWorkspacesFoldersCreate
accountsContainersWorkspacesFoldersCreate pAcwfcParent_ pAcwfcPayload_ =
  AccountsContainersWorkspacesFoldersCreate'
    { _acwfcParent = pAcwfcParent_
    , _acwfcXgafv = Nothing
    , _acwfcUploadProtocol = Nothing
    , _acwfcAccessToken = Nothing
    , _acwfcUploadType = Nothing
    , _acwfcPayload = pAcwfcPayload_
    , _acwfcCallback = Nothing
    }


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwfcParent :: Lens' AccountsContainersWorkspacesFoldersCreate Text
acwfcParent
  = lens _acwfcParent (\ s a -> s{_acwfcParent = a})

-- | V1 error format.
acwfcXgafv :: Lens' AccountsContainersWorkspacesFoldersCreate (Maybe Xgafv)
acwfcXgafv
  = lens _acwfcXgafv (\ s a -> s{_acwfcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwfcUploadProtocol :: Lens' AccountsContainersWorkspacesFoldersCreate (Maybe Text)
acwfcUploadProtocol
  = lens _acwfcUploadProtocol
      (\ s a -> s{_acwfcUploadProtocol = a})

-- | OAuth access token.
acwfcAccessToken :: Lens' AccountsContainersWorkspacesFoldersCreate (Maybe Text)
acwfcAccessToken
  = lens _acwfcAccessToken
      (\ s a -> s{_acwfcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwfcUploadType :: Lens' AccountsContainersWorkspacesFoldersCreate (Maybe Text)
acwfcUploadType
  = lens _acwfcUploadType
      (\ s a -> s{_acwfcUploadType = a})

-- | Multipart request metadata.
acwfcPayload :: Lens' AccountsContainersWorkspacesFoldersCreate Folder
acwfcPayload
  = lens _acwfcPayload (\ s a -> s{_acwfcPayload = a})

-- | JSONP
acwfcCallback :: Lens' AccountsContainersWorkspacesFoldersCreate (Maybe Text)
acwfcCallback
  = lens _acwfcCallback
      (\ s a -> s{_acwfcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesFoldersCreate
         where
        type Rs AccountsContainersWorkspacesFoldersCreate =
             Folder
        type Scopes AccountsContainersWorkspacesFoldersCreate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesFoldersCreate'{..}
          = go _acwfcParent _acwfcXgafv _acwfcUploadProtocol
              _acwfcAccessToken
              _acwfcUploadType
              _acwfcCallback
              (Just AltJSON)
              _acwfcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesFoldersCreateResource)
                      mempty
