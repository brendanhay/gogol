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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Template.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.templates.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesTemplatesGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesTemplatesGet
    , AccountsContainersWorkspacesTemplatesGet

    -- * Request Lenses
    , aaXgafv
    , aaUploadProtocol
    , aaPath
    , aaAccessToken
    , aaUploadType
    , aaCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.templates.get@ method which the
-- 'AccountsContainersWorkspacesTemplatesGet' request conforms to.
type AccountsContainersWorkspacesTemplatesGetResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] CustomTemplate

-- | Gets a GTM Template.
--
-- /See:/ 'accountsContainersWorkspacesTemplatesGet' smart constructor.
data AccountsContainersWorkspacesTemplatesGet =
  AccountsContainersWorkspacesTemplatesGet'
    { _aaXgafv :: !(Maybe Xgafv)
    , _aaUploadProtocol :: !(Maybe Text)
    , _aaPath :: !Text
    , _aaAccessToken :: !(Maybe Text)
    , _aaUploadType :: !(Maybe Text)
    , _aaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaXgafv'
--
-- * 'aaUploadProtocol'
--
-- * 'aaPath'
--
-- * 'aaAccessToken'
--
-- * 'aaUploadType'
--
-- * 'aaCallback'
accountsContainersWorkspacesTemplatesGet
    :: Text -- ^ 'aaPath'
    -> AccountsContainersWorkspacesTemplatesGet
accountsContainersWorkspacesTemplatesGet pAaPath_ =
  AccountsContainersWorkspacesTemplatesGet'
    { _aaXgafv = Nothing
    , _aaUploadProtocol = Nothing
    , _aaPath = pAaPath_
    , _aaAccessToken = Nothing
    , _aaUploadType = Nothing
    , _aaCallback = Nothing
    }


-- | V1 error format.
aaXgafv :: Lens' AccountsContainersWorkspacesTemplatesGet (Maybe Xgafv)
aaXgafv = lens _aaXgafv (\ s a -> s{_aaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aaUploadProtocol :: Lens' AccountsContainersWorkspacesTemplatesGet (Maybe Text)
aaUploadProtocol
  = lens _aaUploadProtocol
      (\ s a -> s{_aaUploadProtocol = a})

-- | GTM Custom Template\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/templates\/{template_id}
aaPath :: Lens' AccountsContainersWorkspacesTemplatesGet Text
aaPath = lens _aaPath (\ s a -> s{_aaPath = a})

-- | OAuth access token.
aaAccessToken :: Lens' AccountsContainersWorkspacesTemplatesGet (Maybe Text)
aaAccessToken
  = lens _aaAccessToken
      (\ s a -> s{_aaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aaUploadType :: Lens' AccountsContainersWorkspacesTemplatesGet (Maybe Text)
aaUploadType
  = lens _aaUploadType (\ s a -> s{_aaUploadType = a})

-- | JSONP
aaCallback :: Lens' AccountsContainersWorkspacesTemplatesGet (Maybe Text)
aaCallback
  = lens _aaCallback (\ s a -> s{_aaCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTemplatesGet
         where
        type Rs AccountsContainersWorkspacesTemplatesGet =
             CustomTemplate
        type Scopes AccountsContainersWorkspacesTemplatesGet
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTemplatesGet'{..}
          = go _aaPath _aaXgafv _aaUploadProtocol
              _aaAccessToken
              _aaUploadType
              _aaCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTemplatesGetResource)
                      mempty
