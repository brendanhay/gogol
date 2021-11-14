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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Revert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Built-In Variables in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.revert@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Revert
    (
    -- * REST Resource
      AccountsContainersWorkspacesBuiltInVariablesRevertResource

    -- * Creating a Request
    , accountsContainersWorkspacesBuiltInVariablesRevert
    , AccountsContainersWorkspacesBuiltInVariablesRevert

    -- * Request Lenses
    , acwbivrXgafv
    , acwbivrUploadProtocol
    , acwbivrPath
    , acwbivrAccessToken
    , acwbivrUploadType
    , acwbivrType
    , acwbivrCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.revert@ method which the
-- 'AccountsContainersWorkspacesBuiltInVariablesRevert' request conforms to.
type AccountsContainersWorkspacesBuiltInVariablesRevertResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           "built_in_variables:revert" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "type"
                       AccountsContainersWorkspacesBuilt_in_variablesRevertType
                       :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] RevertBuiltInVariableResponse

-- | Reverts changes to a GTM Built-In Variables in a GTM Workspace.
--
-- /See:/ 'accountsContainersWorkspacesBuiltInVariablesRevert' smart constructor.
data AccountsContainersWorkspacesBuiltInVariablesRevert =
  AccountsContainersWorkspacesBuiltInVariablesRevert'
    { _acwbivrXgafv :: !(Maybe Xgafv)
    , _acwbivrUploadProtocol :: !(Maybe Text)
    , _acwbivrPath :: !Text
    , _acwbivrAccessToken :: !(Maybe Text)
    , _acwbivrUploadType :: !(Maybe Text)
    , _acwbivrType :: !(Maybe AccountsContainersWorkspacesBuilt_in_variablesRevertType)
    , _acwbivrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesBuiltInVariablesRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwbivrXgafv'
--
-- * 'acwbivrUploadProtocol'
--
-- * 'acwbivrPath'
--
-- * 'acwbivrAccessToken'
--
-- * 'acwbivrUploadType'
--
-- * 'acwbivrType'
--
-- * 'acwbivrCallback'
accountsContainersWorkspacesBuiltInVariablesRevert
    :: Text -- ^ 'acwbivrPath'
    -> AccountsContainersWorkspacesBuiltInVariablesRevert
accountsContainersWorkspacesBuiltInVariablesRevert pAcwbivrPath_ =
  AccountsContainersWorkspacesBuiltInVariablesRevert'
    { _acwbivrXgafv = Nothing
    , _acwbivrUploadProtocol = Nothing
    , _acwbivrPath = pAcwbivrPath_
    , _acwbivrAccessToken = Nothing
    , _acwbivrUploadType = Nothing
    , _acwbivrType = Nothing
    , _acwbivrCallback = Nothing
    }


-- | V1 error format.
acwbivrXgafv :: Lens' AccountsContainersWorkspacesBuiltInVariablesRevert (Maybe Xgafv)
acwbivrXgafv
  = lens _acwbivrXgafv (\ s a -> s{_acwbivrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwbivrUploadProtocol :: Lens' AccountsContainersWorkspacesBuiltInVariablesRevert (Maybe Text)
acwbivrUploadProtocol
  = lens _acwbivrUploadProtocol
      (\ s a -> s{_acwbivrUploadProtocol = a})

-- | GTM BuiltInVariable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/built_in_variables
acwbivrPath :: Lens' AccountsContainersWorkspacesBuiltInVariablesRevert Text
acwbivrPath
  = lens _acwbivrPath (\ s a -> s{_acwbivrPath = a})

-- | OAuth access token.
acwbivrAccessToken :: Lens' AccountsContainersWorkspacesBuiltInVariablesRevert (Maybe Text)
acwbivrAccessToken
  = lens _acwbivrAccessToken
      (\ s a -> s{_acwbivrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwbivrUploadType :: Lens' AccountsContainersWorkspacesBuiltInVariablesRevert (Maybe Text)
acwbivrUploadType
  = lens _acwbivrUploadType
      (\ s a -> s{_acwbivrUploadType = a})

-- | The type of built-in variable to revert.
acwbivrType :: Lens' AccountsContainersWorkspacesBuiltInVariablesRevert (Maybe AccountsContainersWorkspacesBuilt_in_variablesRevertType)
acwbivrType
  = lens _acwbivrType (\ s a -> s{_acwbivrType = a})

-- | JSONP
acwbivrCallback :: Lens' AccountsContainersWorkspacesBuiltInVariablesRevert (Maybe Text)
acwbivrCallback
  = lens _acwbivrCallback
      (\ s a -> s{_acwbivrCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesBuiltInVariablesRevert
         where
        type Rs
               AccountsContainersWorkspacesBuiltInVariablesRevert
             = RevertBuiltInVariableResponse
        type Scopes
               AccountsContainersWorkspacesBuiltInVariablesRevert
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesBuiltInVariablesRevert'{..}
          = go _acwbivrPath _acwbivrXgafv
              _acwbivrUploadProtocol
              _acwbivrAccessToken
              _acwbivrUploadType
              _acwbivrType
              _acwbivrCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesBuiltInVariablesRevertResource)
                      mempty
