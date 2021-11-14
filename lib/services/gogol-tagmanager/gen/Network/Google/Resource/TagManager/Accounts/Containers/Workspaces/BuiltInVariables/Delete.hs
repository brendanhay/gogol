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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more GTM Built-In Variables.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.BuiltInVariables.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesBuiltInVariablesDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesBuiltInVariablesDelete
    , AccountsContainersWorkspacesBuiltInVariablesDelete

    -- * Request Lenses
    , acwbivdXgafv
    , acwbivdUploadProtocol
    , acwbivdPath
    , acwbivdAccessToken
    , acwbivdUploadType
    , acwbivdType
    , acwbivdCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.delete@ method which the
-- 'AccountsContainersWorkspacesBuiltInVariablesDelete' request conforms to.
type AccountsContainersWorkspacesBuiltInVariablesDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParams "type"
                     AccountsContainersWorkspacesBuilt_in_variablesDeleteType
                     :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes one or more GTM Built-In Variables.
--
-- /See:/ 'accountsContainersWorkspacesBuiltInVariablesDelete' smart constructor.
data AccountsContainersWorkspacesBuiltInVariablesDelete =
  AccountsContainersWorkspacesBuiltInVariablesDelete'
    { _acwbivdXgafv :: !(Maybe Xgafv)
    , _acwbivdUploadProtocol :: !(Maybe Text)
    , _acwbivdPath :: !Text
    , _acwbivdAccessToken :: !(Maybe Text)
    , _acwbivdUploadType :: !(Maybe Text)
    , _acwbivdType :: !(Maybe [AccountsContainersWorkspacesBuilt_in_variablesDeleteType])
    , _acwbivdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesBuiltInVariablesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwbivdXgafv'
--
-- * 'acwbivdUploadProtocol'
--
-- * 'acwbivdPath'
--
-- * 'acwbivdAccessToken'
--
-- * 'acwbivdUploadType'
--
-- * 'acwbivdType'
--
-- * 'acwbivdCallback'
accountsContainersWorkspacesBuiltInVariablesDelete
    :: Text -- ^ 'acwbivdPath'
    -> AccountsContainersWorkspacesBuiltInVariablesDelete
accountsContainersWorkspacesBuiltInVariablesDelete pAcwbivdPath_ =
  AccountsContainersWorkspacesBuiltInVariablesDelete'
    { _acwbivdXgafv = Nothing
    , _acwbivdUploadProtocol = Nothing
    , _acwbivdPath = pAcwbivdPath_
    , _acwbivdAccessToken = Nothing
    , _acwbivdUploadType = Nothing
    , _acwbivdType = Nothing
    , _acwbivdCallback = Nothing
    }


-- | V1 error format.
acwbivdXgafv :: Lens' AccountsContainersWorkspacesBuiltInVariablesDelete (Maybe Xgafv)
acwbivdXgafv
  = lens _acwbivdXgafv (\ s a -> s{_acwbivdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwbivdUploadProtocol :: Lens' AccountsContainersWorkspacesBuiltInVariablesDelete (Maybe Text)
acwbivdUploadProtocol
  = lens _acwbivdUploadProtocol
      (\ s a -> s{_acwbivdUploadProtocol = a})

-- | GTM BuiltInVariable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/built_in_variables
acwbivdPath :: Lens' AccountsContainersWorkspacesBuiltInVariablesDelete Text
acwbivdPath
  = lens _acwbivdPath (\ s a -> s{_acwbivdPath = a})

-- | OAuth access token.
acwbivdAccessToken :: Lens' AccountsContainersWorkspacesBuiltInVariablesDelete (Maybe Text)
acwbivdAccessToken
  = lens _acwbivdAccessToken
      (\ s a -> s{_acwbivdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwbivdUploadType :: Lens' AccountsContainersWorkspacesBuiltInVariablesDelete (Maybe Text)
acwbivdUploadType
  = lens _acwbivdUploadType
      (\ s a -> s{_acwbivdUploadType = a})

-- | The types of built-in variables to delete.
acwbivdType :: Lens' AccountsContainersWorkspacesBuiltInVariablesDelete [AccountsContainersWorkspacesBuilt_in_variablesDeleteType]
acwbivdType
  = lens _acwbivdType (\ s a -> s{_acwbivdType = a}) .
      _Default
      . _Coerce

-- | JSONP
acwbivdCallback :: Lens' AccountsContainersWorkspacesBuiltInVariablesDelete (Maybe Text)
acwbivdCallback
  = lens _acwbivdCallback
      (\ s a -> s{_acwbivdCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesBuiltInVariablesDelete
         where
        type Rs
               AccountsContainersWorkspacesBuiltInVariablesDelete
             = ()
        type Scopes
               AccountsContainersWorkspacesBuiltInVariablesDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesBuiltInVariablesDelete'{..}
          = go _acwbivdPath _acwbivdXgafv
              _acwbivdUploadProtocol
              _acwbivdAccessToken
              _acwbivdUploadType
              (_acwbivdType ^. _Default)
              _acwbivdCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesBuiltInVariablesDeleteResource)
                      mempty
