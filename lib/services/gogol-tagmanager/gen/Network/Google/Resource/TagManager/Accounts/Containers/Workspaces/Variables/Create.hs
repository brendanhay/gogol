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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesCreate
    , AccountsContainersWorkspacesVariablesCreate

    -- * Request Lenses
    , acwvcParent
    , acwvcXgafv
    , acwvcUploadProtocol
    , acwvcAccessToken
    , acwvcUploadType
    , acwvcPayload
    , acwvcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.create@ method which the
-- 'AccountsContainersWorkspacesVariablesCreate' request conforms to.
type AccountsContainersWorkspacesVariablesCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "variables" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Variable :> Post '[JSON] Variable

-- | Creates a GTM Variable.
--
-- /See:/ 'accountsContainersWorkspacesVariablesCreate' smart constructor.
data AccountsContainersWorkspacesVariablesCreate =
  AccountsContainersWorkspacesVariablesCreate'
    { _acwvcParent :: !Text
    , _acwvcXgafv :: !(Maybe Xgafv)
    , _acwvcUploadProtocol :: !(Maybe Text)
    , _acwvcAccessToken :: !(Maybe Text)
    , _acwvcUploadType :: !(Maybe Text)
    , _acwvcPayload :: !Variable
    , _acwvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesVariablesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvcParent'
--
-- * 'acwvcXgafv'
--
-- * 'acwvcUploadProtocol'
--
-- * 'acwvcAccessToken'
--
-- * 'acwvcUploadType'
--
-- * 'acwvcPayload'
--
-- * 'acwvcCallback'
accountsContainersWorkspacesVariablesCreate
    :: Text -- ^ 'acwvcParent'
    -> Variable -- ^ 'acwvcPayload'
    -> AccountsContainersWorkspacesVariablesCreate
accountsContainersWorkspacesVariablesCreate pAcwvcParent_ pAcwvcPayload_ =
  AccountsContainersWorkspacesVariablesCreate'
    { _acwvcParent = pAcwvcParent_
    , _acwvcXgafv = Nothing
    , _acwvcUploadProtocol = Nothing
    , _acwvcAccessToken = Nothing
    , _acwvcUploadType = Nothing
    , _acwvcPayload = pAcwvcPayload_
    , _acwvcCallback = Nothing
    }


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwvcParent :: Lens' AccountsContainersWorkspacesVariablesCreate Text
acwvcParent
  = lens _acwvcParent (\ s a -> s{_acwvcParent = a})

-- | V1 error format.
acwvcXgafv :: Lens' AccountsContainersWorkspacesVariablesCreate (Maybe Xgafv)
acwvcXgafv
  = lens _acwvcXgafv (\ s a -> s{_acwvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwvcUploadProtocol :: Lens' AccountsContainersWorkspacesVariablesCreate (Maybe Text)
acwvcUploadProtocol
  = lens _acwvcUploadProtocol
      (\ s a -> s{_acwvcUploadProtocol = a})

-- | OAuth access token.
acwvcAccessToken :: Lens' AccountsContainersWorkspacesVariablesCreate (Maybe Text)
acwvcAccessToken
  = lens _acwvcAccessToken
      (\ s a -> s{_acwvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwvcUploadType :: Lens' AccountsContainersWorkspacesVariablesCreate (Maybe Text)
acwvcUploadType
  = lens _acwvcUploadType
      (\ s a -> s{_acwvcUploadType = a})

-- | Multipart request metadata.
acwvcPayload :: Lens' AccountsContainersWorkspacesVariablesCreate Variable
acwvcPayload
  = lens _acwvcPayload (\ s a -> s{_acwvcPayload = a})

-- | JSONP
acwvcCallback :: Lens' AccountsContainersWorkspacesVariablesCreate (Maybe Text)
acwvcCallback
  = lens _acwvcCallback
      (\ s a -> s{_acwvcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesCreate
         where
        type Rs AccountsContainersWorkspacesVariablesCreate =
             Variable
        type Scopes
               AccountsContainersWorkspacesVariablesCreate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesVariablesCreate'{..}
          = go _acwvcParent _acwvcXgafv _acwvcUploadProtocol
              _acwvcAccessToken
              _acwvcUploadType
              _acwvcCallback
              (Just AltJSON)
              _acwvcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesCreateResource)
                      mempty
