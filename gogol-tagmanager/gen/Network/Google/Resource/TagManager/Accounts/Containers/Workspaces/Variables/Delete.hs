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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesDelete
    , AccountsContainersWorkspacesVariablesDelete

    -- * Request Lenses
    , acwvdXgafv
    , acwvdUploadProtocol
    , acwvdPath
    , acwvdAccessToken
    , acwvdUploadType
    , acwvdCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.delete@ method which the
-- 'AccountsContainersWorkspacesVariablesDelete' request conforms to.
type AccountsContainersWorkspacesVariablesDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Variable.
--
-- /See:/ 'accountsContainersWorkspacesVariablesDelete' smart constructor.
data AccountsContainersWorkspacesVariablesDelete =
  AccountsContainersWorkspacesVariablesDelete'
    { _acwvdXgafv :: !(Maybe Xgafv)
    , _acwvdUploadProtocol :: !(Maybe Text)
    , _acwvdPath :: !Text
    , _acwvdAccessToken :: !(Maybe Text)
    , _acwvdUploadType :: !(Maybe Text)
    , _acwvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesVariablesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvdXgafv'
--
-- * 'acwvdUploadProtocol'
--
-- * 'acwvdPath'
--
-- * 'acwvdAccessToken'
--
-- * 'acwvdUploadType'
--
-- * 'acwvdCallback'
accountsContainersWorkspacesVariablesDelete
    :: Text -- ^ 'acwvdPath'
    -> AccountsContainersWorkspacesVariablesDelete
accountsContainersWorkspacesVariablesDelete pAcwvdPath_ =
  AccountsContainersWorkspacesVariablesDelete'
    { _acwvdXgafv = Nothing
    , _acwvdUploadProtocol = Nothing
    , _acwvdPath = pAcwvdPath_
    , _acwvdAccessToken = Nothing
    , _acwvdUploadType = Nothing
    , _acwvdCallback = Nothing
    }


-- | V1 error format.
acwvdXgafv :: Lens' AccountsContainersWorkspacesVariablesDelete (Maybe Xgafv)
acwvdXgafv
  = lens _acwvdXgafv (\ s a -> s{_acwvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwvdUploadProtocol :: Lens' AccountsContainersWorkspacesVariablesDelete (Maybe Text)
acwvdUploadProtocol
  = lens _acwvdUploadProtocol
      (\ s a -> s{_acwvdUploadProtocol = a})

-- | GTM Variable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/variables\/{variable_id}
acwvdPath :: Lens' AccountsContainersWorkspacesVariablesDelete Text
acwvdPath
  = lens _acwvdPath (\ s a -> s{_acwvdPath = a})

-- | OAuth access token.
acwvdAccessToken :: Lens' AccountsContainersWorkspacesVariablesDelete (Maybe Text)
acwvdAccessToken
  = lens _acwvdAccessToken
      (\ s a -> s{_acwvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwvdUploadType :: Lens' AccountsContainersWorkspacesVariablesDelete (Maybe Text)
acwvdUploadType
  = lens _acwvdUploadType
      (\ s a -> s{_acwvdUploadType = a})

-- | JSONP
acwvdCallback :: Lens' AccountsContainersWorkspacesVariablesDelete (Maybe Text)
acwvdCallback
  = lens _acwvdCallback
      (\ s a -> s{_acwvdCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesDelete
         where
        type Rs AccountsContainersWorkspacesVariablesDelete =
             ()
        type Scopes
               AccountsContainersWorkspacesVariablesDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesVariablesDelete'{..}
          = go _acwvdPath _acwvdXgafv _acwvdUploadProtocol
              _acwvdAccessToken
              _acwvdUploadType
              _acwvdCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesDeleteResource)
                      mempty
