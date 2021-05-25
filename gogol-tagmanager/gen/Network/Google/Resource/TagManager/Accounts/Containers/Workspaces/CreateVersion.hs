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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.CreateVersion
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Container Version from the entities present in the workspace,
-- deletes the workspace, and sets the base container version to the newly
-- created version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.create_version@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.CreateVersion
    (
    -- * REST Resource
      AccountsContainersWorkspacesCreateVersionResource

    -- * Creating a Request
    , accountsContainersWorkspacesCreateVersion
    , AccountsContainersWorkspacesCreateVersion

    -- * Request Lenses
    , acwcvXgafv
    , acwcvUploadProtocol
    , acwcvPath
    , acwcvAccessToken
    , acwcvUploadType
    , acwcvPayload
    , acwcvCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.create_version@ method which the
-- 'AccountsContainersWorkspacesCreateVersion' request conforms to.
type AccountsContainersWorkspacesCreateVersionResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "create_version" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         CreateContainerVersionRequestVersionOptions
                         :> Post '[JSON] CreateContainerVersionResponse

-- | Creates a Container Version from the entities present in the workspace,
-- deletes the workspace, and sets the base container version to the newly
-- created version.
--
-- /See:/ 'accountsContainersWorkspacesCreateVersion' smart constructor.
data AccountsContainersWorkspacesCreateVersion =
  AccountsContainersWorkspacesCreateVersion'
    { _acwcvXgafv :: !(Maybe Xgafv)
    , _acwcvUploadProtocol :: !(Maybe Text)
    , _acwcvPath :: !Text
    , _acwcvAccessToken :: !(Maybe Text)
    , _acwcvUploadType :: !(Maybe Text)
    , _acwcvPayload :: !CreateContainerVersionRequestVersionOptions
    , _acwcvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesCreateVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwcvXgafv'
--
-- * 'acwcvUploadProtocol'
--
-- * 'acwcvPath'
--
-- * 'acwcvAccessToken'
--
-- * 'acwcvUploadType'
--
-- * 'acwcvPayload'
--
-- * 'acwcvCallback'
accountsContainersWorkspacesCreateVersion
    :: Text -- ^ 'acwcvPath'
    -> CreateContainerVersionRequestVersionOptions -- ^ 'acwcvPayload'
    -> AccountsContainersWorkspacesCreateVersion
accountsContainersWorkspacesCreateVersion pAcwcvPath_ pAcwcvPayload_ =
  AccountsContainersWorkspacesCreateVersion'
    { _acwcvXgafv = Nothing
    , _acwcvUploadProtocol = Nothing
    , _acwcvPath = pAcwcvPath_
    , _acwcvAccessToken = Nothing
    , _acwcvUploadType = Nothing
    , _acwcvPayload = pAcwcvPayload_
    , _acwcvCallback = Nothing
    }


-- | V1 error format.
acwcvXgafv :: Lens' AccountsContainersWorkspacesCreateVersion (Maybe Xgafv)
acwcvXgafv
  = lens _acwcvXgafv (\ s a -> s{_acwcvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwcvUploadProtocol :: Lens' AccountsContainersWorkspacesCreateVersion (Maybe Text)
acwcvUploadProtocol
  = lens _acwcvUploadProtocol
      (\ s a -> s{_acwcvUploadProtocol = a})

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwcvPath :: Lens' AccountsContainersWorkspacesCreateVersion Text
acwcvPath
  = lens _acwcvPath (\ s a -> s{_acwcvPath = a})

-- | OAuth access token.
acwcvAccessToken :: Lens' AccountsContainersWorkspacesCreateVersion (Maybe Text)
acwcvAccessToken
  = lens _acwcvAccessToken
      (\ s a -> s{_acwcvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwcvUploadType :: Lens' AccountsContainersWorkspacesCreateVersion (Maybe Text)
acwcvUploadType
  = lens _acwcvUploadType
      (\ s a -> s{_acwcvUploadType = a})

-- | Multipart request metadata.
acwcvPayload :: Lens' AccountsContainersWorkspacesCreateVersion CreateContainerVersionRequestVersionOptions
acwcvPayload
  = lens _acwcvPayload (\ s a -> s{_acwcvPayload = a})

-- | JSONP
acwcvCallback :: Lens' AccountsContainersWorkspacesCreateVersion (Maybe Text)
acwcvCallback
  = lens _acwcvCallback
      (\ s a -> s{_acwcvCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesCreateVersion
         where
        type Rs AccountsContainersWorkspacesCreateVersion =
             CreateContainerVersionResponse
        type Scopes AccountsContainersWorkspacesCreateVersion
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient
          AccountsContainersWorkspacesCreateVersion'{..}
          = go _acwcvPath _acwcvXgafv _acwcvUploadProtocol
              _acwcvAccessToken
              _acwcvUploadType
              _acwcvCallback
              (Just AltJSON)
              _acwcvPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesCreateVersionResource)
                      mempty
