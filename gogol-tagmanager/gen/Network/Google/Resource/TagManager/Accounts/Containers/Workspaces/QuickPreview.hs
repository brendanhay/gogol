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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.QuickPreview
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Quick previews a workspace by creating a fake container version from all
-- entities in the provided workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.quick_preview@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.QuickPreview
    (
    -- * REST Resource
      AccountsContainersWorkspacesQuickPreviewResource

    -- * Creating a Request
    , accountsContainersWorkspacesQuickPreview
    , AccountsContainersWorkspacesQuickPreview

    -- * Request Lenses
    , acwqpXgafv
    , acwqpUploadProtocol
    , acwqpPath
    , acwqpAccessToken
    , acwqpUploadType
    , acwqpCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.quick_preview@ method which the
-- 'AccountsContainersWorkspacesQuickPreview' request conforms to.
type AccountsContainersWorkspacesQuickPreviewResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "quick_preview" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Post '[JSON] QuickPreviewResponse

-- | Quick previews a workspace by creating a fake container version from all
-- entities in the provided workspace.
--
-- /See:/ 'accountsContainersWorkspacesQuickPreview' smart constructor.
data AccountsContainersWorkspacesQuickPreview =
  AccountsContainersWorkspacesQuickPreview'
    { _acwqpXgafv :: !(Maybe Xgafv)
    , _acwqpUploadProtocol :: !(Maybe Text)
    , _acwqpPath :: !Text
    , _acwqpAccessToken :: !(Maybe Text)
    , _acwqpUploadType :: !(Maybe Text)
    , _acwqpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesQuickPreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwqpXgafv'
--
-- * 'acwqpUploadProtocol'
--
-- * 'acwqpPath'
--
-- * 'acwqpAccessToken'
--
-- * 'acwqpUploadType'
--
-- * 'acwqpCallback'
accountsContainersWorkspacesQuickPreview
    :: Text -- ^ 'acwqpPath'
    -> AccountsContainersWorkspacesQuickPreview
accountsContainersWorkspacesQuickPreview pAcwqpPath_ =
  AccountsContainersWorkspacesQuickPreview'
    { _acwqpXgafv = Nothing
    , _acwqpUploadProtocol = Nothing
    , _acwqpPath = pAcwqpPath_
    , _acwqpAccessToken = Nothing
    , _acwqpUploadType = Nothing
    , _acwqpCallback = Nothing
    }


-- | V1 error format.
acwqpXgafv :: Lens' AccountsContainersWorkspacesQuickPreview (Maybe Xgafv)
acwqpXgafv
  = lens _acwqpXgafv (\ s a -> s{_acwqpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwqpUploadProtocol :: Lens' AccountsContainersWorkspacesQuickPreview (Maybe Text)
acwqpUploadProtocol
  = lens _acwqpUploadProtocol
      (\ s a -> s{_acwqpUploadProtocol = a})

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwqpPath :: Lens' AccountsContainersWorkspacesQuickPreview Text
acwqpPath
  = lens _acwqpPath (\ s a -> s{_acwqpPath = a})

-- | OAuth access token.
acwqpAccessToken :: Lens' AccountsContainersWorkspacesQuickPreview (Maybe Text)
acwqpAccessToken
  = lens _acwqpAccessToken
      (\ s a -> s{_acwqpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwqpUploadType :: Lens' AccountsContainersWorkspacesQuickPreview (Maybe Text)
acwqpUploadType
  = lens _acwqpUploadType
      (\ s a -> s{_acwqpUploadType = a})

-- | JSONP
acwqpCallback :: Lens' AccountsContainersWorkspacesQuickPreview (Maybe Text)
acwqpCallback
  = lens _acwqpCallback
      (\ s a -> s{_acwqpCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesQuickPreview
         where
        type Rs AccountsContainersWorkspacesQuickPreview =
             QuickPreviewResponse
        type Scopes AccountsContainersWorkspacesQuickPreview
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient
          AccountsContainersWorkspacesQuickPreview'{..}
          = go _acwqpPath _acwqpXgafv _acwqpUploadProtocol
              _acwqpAccessToken
              _acwqpUploadType
              _acwqpCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesQuickPreviewResource)
                      mempty
