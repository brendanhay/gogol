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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more GTM Built-In Variables.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesBuiltInVariablesCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesBuiltInVariablesCreate
    , AccountsContainersWorkspacesBuiltInVariablesCreate

    -- * Request Lenses
    , acwbivcParent
    , acwbivcXgafv
    , acwbivcUploadProtocol
    , acwbivcAccessToken
    , acwbivcUploadType
    , acwbivcType
    , acwbivcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.create@ method which the
-- 'AccountsContainersWorkspacesBuiltInVariablesCreate' request conforms to.
type AccountsContainersWorkspacesBuiltInVariablesCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "built_in_variables" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParams "type"
                       AccountsContainersWorkspacesBuilt_in_variablesCreateType
                       :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] CreateBuiltInVariableResponse

-- | Creates one or more GTM Built-In Variables.
--
-- /See:/ 'accountsContainersWorkspacesBuiltInVariablesCreate' smart constructor.
data AccountsContainersWorkspacesBuiltInVariablesCreate =
  AccountsContainersWorkspacesBuiltInVariablesCreate'
    { _acwbivcParent :: !Text
    , _acwbivcXgafv :: !(Maybe Xgafv)
    , _acwbivcUploadProtocol :: !(Maybe Text)
    , _acwbivcAccessToken :: !(Maybe Text)
    , _acwbivcUploadType :: !(Maybe Text)
    , _acwbivcType :: !(Maybe [AccountsContainersWorkspacesBuilt_in_variablesCreateType])
    , _acwbivcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesBuiltInVariablesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwbivcParent'
--
-- * 'acwbivcXgafv'
--
-- * 'acwbivcUploadProtocol'
--
-- * 'acwbivcAccessToken'
--
-- * 'acwbivcUploadType'
--
-- * 'acwbivcType'
--
-- * 'acwbivcCallback'
accountsContainersWorkspacesBuiltInVariablesCreate
    :: Text -- ^ 'acwbivcParent'
    -> AccountsContainersWorkspacesBuiltInVariablesCreate
accountsContainersWorkspacesBuiltInVariablesCreate pAcwbivcParent_ =
  AccountsContainersWorkspacesBuiltInVariablesCreate'
    { _acwbivcParent = pAcwbivcParent_
    , _acwbivcXgafv = Nothing
    , _acwbivcUploadProtocol = Nothing
    , _acwbivcAccessToken = Nothing
    , _acwbivcUploadType = Nothing
    , _acwbivcType = Nothing
    , _acwbivcCallback = Nothing
    }


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwbivcParent :: Lens' AccountsContainersWorkspacesBuiltInVariablesCreate Text
acwbivcParent
  = lens _acwbivcParent
      (\ s a -> s{_acwbivcParent = a})

-- | V1 error format.
acwbivcXgafv :: Lens' AccountsContainersWorkspacesBuiltInVariablesCreate (Maybe Xgafv)
acwbivcXgafv
  = lens _acwbivcXgafv (\ s a -> s{_acwbivcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwbivcUploadProtocol :: Lens' AccountsContainersWorkspacesBuiltInVariablesCreate (Maybe Text)
acwbivcUploadProtocol
  = lens _acwbivcUploadProtocol
      (\ s a -> s{_acwbivcUploadProtocol = a})

-- | OAuth access token.
acwbivcAccessToken :: Lens' AccountsContainersWorkspacesBuiltInVariablesCreate (Maybe Text)
acwbivcAccessToken
  = lens _acwbivcAccessToken
      (\ s a -> s{_acwbivcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwbivcUploadType :: Lens' AccountsContainersWorkspacesBuiltInVariablesCreate (Maybe Text)
acwbivcUploadType
  = lens _acwbivcUploadType
      (\ s a -> s{_acwbivcUploadType = a})

-- | The types of built-in variables to enable.
acwbivcType :: Lens' AccountsContainersWorkspacesBuiltInVariablesCreate [AccountsContainersWorkspacesBuilt_in_variablesCreateType]
acwbivcType
  = lens _acwbivcType (\ s a -> s{_acwbivcType = a}) .
      _Default
      . _Coerce

-- | JSONP
acwbivcCallback :: Lens' AccountsContainersWorkspacesBuiltInVariablesCreate (Maybe Text)
acwbivcCallback
  = lens _acwbivcCallback
      (\ s a -> s{_acwbivcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesBuiltInVariablesCreate
         where
        type Rs
               AccountsContainersWorkspacesBuiltInVariablesCreate
             = CreateBuiltInVariableResponse
        type Scopes
               AccountsContainersWorkspacesBuiltInVariablesCreate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesBuiltInVariablesCreate'{..}
          = go _acwbivcParent _acwbivcXgafv
              _acwbivcUploadProtocol
              _acwbivcAccessToken
              _acwbivcUploadType
              (_acwbivcType ^. _Default)
              _acwbivcCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesBuiltInVariablesCreateResource)
                      mempty
