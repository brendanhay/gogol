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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesDelete
    , AccountsContainersWorkspacesDelete

    -- * Request Lenses
    , acwdXgafv
    , acwdUploadProtocol
    , acwdPath
    , acwdAccessToken
    , acwdUploadType
    , acwdCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.delete@ method which the
-- 'AccountsContainersWorkspacesDelete' request conforms to.
type AccountsContainersWorkspacesDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Workspace.
--
-- /See:/ 'accountsContainersWorkspacesDelete' smart constructor.
data AccountsContainersWorkspacesDelete =
  AccountsContainersWorkspacesDelete'
    { _acwdXgafv :: !(Maybe Xgafv)
    , _acwdUploadProtocol :: !(Maybe Text)
    , _acwdPath :: !Text
    , _acwdAccessToken :: !(Maybe Text)
    , _acwdUploadType :: !(Maybe Text)
    , _acwdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwdXgafv'
--
-- * 'acwdUploadProtocol'
--
-- * 'acwdPath'
--
-- * 'acwdAccessToken'
--
-- * 'acwdUploadType'
--
-- * 'acwdCallback'
accountsContainersWorkspacesDelete
    :: Text -- ^ 'acwdPath'
    -> AccountsContainersWorkspacesDelete
accountsContainersWorkspacesDelete pAcwdPath_ =
  AccountsContainersWorkspacesDelete'
    { _acwdXgafv = Nothing
    , _acwdUploadProtocol = Nothing
    , _acwdPath = pAcwdPath_
    , _acwdAccessToken = Nothing
    , _acwdUploadType = Nothing
    , _acwdCallback = Nothing
    }


-- | V1 error format.
acwdXgafv :: Lens' AccountsContainersWorkspacesDelete (Maybe Xgafv)
acwdXgafv
  = lens _acwdXgafv (\ s a -> s{_acwdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwdUploadProtocol :: Lens' AccountsContainersWorkspacesDelete (Maybe Text)
acwdUploadProtocol
  = lens _acwdUploadProtocol
      (\ s a -> s{_acwdUploadProtocol = a})

-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwdPath :: Lens' AccountsContainersWorkspacesDelete Text
acwdPath = lens _acwdPath (\ s a -> s{_acwdPath = a})

-- | OAuth access token.
acwdAccessToken :: Lens' AccountsContainersWorkspacesDelete (Maybe Text)
acwdAccessToken
  = lens _acwdAccessToken
      (\ s a -> s{_acwdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwdUploadType :: Lens' AccountsContainersWorkspacesDelete (Maybe Text)
acwdUploadType
  = lens _acwdUploadType
      (\ s a -> s{_acwdUploadType = a})

-- | JSONP
acwdCallback :: Lens' AccountsContainersWorkspacesDelete (Maybe Text)
acwdCallback
  = lens _acwdCallback (\ s a -> s{_acwdCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesDelete
         where
        type Rs AccountsContainersWorkspacesDelete = ()
        type Scopes AccountsContainersWorkspacesDelete =
             '["https://www.googleapis.com/auth/tagmanager.delete.containers"]
        requestClient AccountsContainersWorkspacesDelete'{..}
          = go _acwdPath _acwdXgafv _acwdUploadProtocol
              _acwdAccessToken
              _acwdUploadType
              _acwdCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesDeleteResource)
                      mempty
