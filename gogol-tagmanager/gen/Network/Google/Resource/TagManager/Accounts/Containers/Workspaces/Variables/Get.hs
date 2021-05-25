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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesGet
    , AccountsContainersWorkspacesVariablesGet

    -- * Request Lenses
    , acwvgXgafv
    , acwvgUploadProtocol
    , acwvgPath
    , acwvgAccessToken
    , acwvgUploadType
    , acwvgCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.get@ method which the
-- 'AccountsContainersWorkspacesVariablesGet' request conforms to.
type AccountsContainersWorkspacesVariablesGetResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Variable

-- | Gets a GTM Variable.
--
-- /See:/ 'accountsContainersWorkspacesVariablesGet' smart constructor.
data AccountsContainersWorkspacesVariablesGet =
  AccountsContainersWorkspacesVariablesGet'
    { _acwvgXgafv :: !(Maybe Xgafv)
    , _acwvgUploadProtocol :: !(Maybe Text)
    , _acwvgPath :: !Text
    , _acwvgAccessToken :: !(Maybe Text)
    , _acwvgUploadType :: !(Maybe Text)
    , _acwvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesVariablesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvgXgafv'
--
-- * 'acwvgUploadProtocol'
--
-- * 'acwvgPath'
--
-- * 'acwvgAccessToken'
--
-- * 'acwvgUploadType'
--
-- * 'acwvgCallback'
accountsContainersWorkspacesVariablesGet
    :: Text -- ^ 'acwvgPath'
    -> AccountsContainersWorkspacesVariablesGet
accountsContainersWorkspacesVariablesGet pAcwvgPath_ =
  AccountsContainersWorkspacesVariablesGet'
    { _acwvgXgafv = Nothing
    , _acwvgUploadProtocol = Nothing
    , _acwvgPath = pAcwvgPath_
    , _acwvgAccessToken = Nothing
    , _acwvgUploadType = Nothing
    , _acwvgCallback = Nothing
    }


-- | V1 error format.
acwvgXgafv :: Lens' AccountsContainersWorkspacesVariablesGet (Maybe Xgafv)
acwvgXgafv
  = lens _acwvgXgafv (\ s a -> s{_acwvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwvgUploadProtocol :: Lens' AccountsContainersWorkspacesVariablesGet (Maybe Text)
acwvgUploadProtocol
  = lens _acwvgUploadProtocol
      (\ s a -> s{_acwvgUploadProtocol = a})

-- | GTM Variable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/variables\/{variable_id}
acwvgPath :: Lens' AccountsContainersWorkspacesVariablesGet Text
acwvgPath
  = lens _acwvgPath (\ s a -> s{_acwvgPath = a})

-- | OAuth access token.
acwvgAccessToken :: Lens' AccountsContainersWorkspacesVariablesGet (Maybe Text)
acwvgAccessToken
  = lens _acwvgAccessToken
      (\ s a -> s{_acwvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwvgUploadType :: Lens' AccountsContainersWorkspacesVariablesGet (Maybe Text)
acwvgUploadType
  = lens _acwvgUploadType
      (\ s a -> s{_acwvgUploadType = a})

-- | JSONP
acwvgCallback :: Lens' AccountsContainersWorkspacesVariablesGet (Maybe Text)
acwvgCallback
  = lens _acwvgCallback
      (\ s a -> s{_acwvgCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesGet
         where
        type Rs AccountsContainersWorkspacesVariablesGet =
             Variable
        type Scopes AccountsContainersWorkspacesVariablesGet
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesVariablesGet'{..}
          = go _acwvgPath _acwvgXgafv _acwvgUploadProtocol
              _acwvgAccessToken
              _acwvgUploadType
              _acwvgCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesGetResource)
                      mempty
