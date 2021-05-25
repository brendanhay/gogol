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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsGet
    , AccountsContainersWorkspacesTagsGet

    -- * Request Lenses
    , acwtgXgafv
    , acwtgUploadProtocol
    , acwtgPath
    , acwtgAccessToken
    , acwtgUploadType
    , acwtgCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.get@ method which the
-- 'AccountsContainersWorkspacesTagsGet' request conforms to.
type AccountsContainersWorkspacesTagsGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Tag

-- | Gets a GTM Tag.
--
-- /See:/ 'accountsContainersWorkspacesTagsGet' smart constructor.
data AccountsContainersWorkspacesTagsGet =
  AccountsContainersWorkspacesTagsGet'
    { _acwtgXgafv :: !(Maybe Xgafv)
    , _acwtgUploadProtocol :: !(Maybe Text)
    , _acwtgPath :: !Text
    , _acwtgAccessToken :: !(Maybe Text)
    , _acwtgUploadType :: !(Maybe Text)
    , _acwtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTagsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtgXgafv'
--
-- * 'acwtgUploadProtocol'
--
-- * 'acwtgPath'
--
-- * 'acwtgAccessToken'
--
-- * 'acwtgUploadType'
--
-- * 'acwtgCallback'
accountsContainersWorkspacesTagsGet
    :: Text -- ^ 'acwtgPath'
    -> AccountsContainersWorkspacesTagsGet
accountsContainersWorkspacesTagsGet pAcwtgPath_ =
  AccountsContainersWorkspacesTagsGet'
    { _acwtgXgafv = Nothing
    , _acwtgUploadProtocol = Nothing
    , _acwtgPath = pAcwtgPath_
    , _acwtgAccessToken = Nothing
    , _acwtgUploadType = Nothing
    , _acwtgCallback = Nothing
    }


-- | V1 error format.
acwtgXgafv :: Lens' AccountsContainersWorkspacesTagsGet (Maybe Xgafv)
acwtgXgafv
  = lens _acwtgXgafv (\ s a -> s{_acwtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtgUploadProtocol :: Lens' AccountsContainersWorkspacesTagsGet (Maybe Text)
acwtgUploadProtocol
  = lens _acwtgUploadProtocol
      (\ s a -> s{_acwtgUploadProtocol = a})

-- | GTM Tag\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/tags\/{tag_id}
acwtgPath :: Lens' AccountsContainersWorkspacesTagsGet Text
acwtgPath
  = lens _acwtgPath (\ s a -> s{_acwtgPath = a})

-- | OAuth access token.
acwtgAccessToken :: Lens' AccountsContainersWorkspacesTagsGet (Maybe Text)
acwtgAccessToken
  = lens _acwtgAccessToken
      (\ s a -> s{_acwtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtgUploadType :: Lens' AccountsContainersWorkspacesTagsGet (Maybe Text)
acwtgUploadType
  = lens _acwtgUploadType
      (\ s a -> s{_acwtgUploadType = a})

-- | JSONP
acwtgCallback :: Lens' AccountsContainersWorkspacesTagsGet (Maybe Text)
acwtgCallback
  = lens _acwtgCallback
      (\ s a -> s{_acwtgCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsGet
         where
        type Rs AccountsContainersWorkspacesTagsGet = Tag
        type Scopes AccountsContainersWorkspacesTagsGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTagsGet'{..}
          = go _acwtgPath _acwtgXgafv _acwtgUploadProtocol
              _acwtgAccessToken
              _acwtgUploadType
              _acwtgCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsGetResource)
                      mempty
