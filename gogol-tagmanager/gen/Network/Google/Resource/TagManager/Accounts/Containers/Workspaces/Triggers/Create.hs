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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersCreate
    , AccountsContainersWorkspacesTriggersCreate

    -- * Request Lenses
    , acwtcParent
    , acwtcXgafv
    , acwtcUploadProtocol
    , acwtcAccessToken
    , acwtcUploadType
    , acwtcPayload
    , acwtcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.create@ method which the
-- 'AccountsContainersWorkspacesTriggersCreate' request conforms to.
type AccountsContainersWorkspacesTriggersCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "triggers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Trigger :> Post '[JSON] Trigger

-- | Creates a GTM Trigger.
--
-- /See:/ 'accountsContainersWorkspacesTriggersCreate' smart constructor.
data AccountsContainersWorkspacesTriggersCreate =
  AccountsContainersWorkspacesTriggersCreate'
    { _acwtcParent :: !Text
    , _acwtcXgafv :: !(Maybe Xgafv)
    , _acwtcUploadProtocol :: !(Maybe Text)
    , _acwtcAccessToken :: !(Maybe Text)
    , _acwtcUploadType :: !(Maybe Text)
    , _acwtcPayload :: !Trigger
    , _acwtcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTriggersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtcParent'
--
-- * 'acwtcXgafv'
--
-- * 'acwtcUploadProtocol'
--
-- * 'acwtcAccessToken'
--
-- * 'acwtcUploadType'
--
-- * 'acwtcPayload'
--
-- * 'acwtcCallback'
accountsContainersWorkspacesTriggersCreate
    :: Text -- ^ 'acwtcParent'
    -> Trigger -- ^ 'acwtcPayload'
    -> AccountsContainersWorkspacesTriggersCreate
accountsContainersWorkspacesTriggersCreate pAcwtcParent_ pAcwtcPayload_ =
  AccountsContainersWorkspacesTriggersCreate'
    { _acwtcParent = pAcwtcParent_
    , _acwtcXgafv = Nothing
    , _acwtcUploadProtocol = Nothing
    , _acwtcAccessToken = Nothing
    , _acwtcUploadType = Nothing
    , _acwtcPayload = pAcwtcPayload_
    , _acwtcCallback = Nothing
    }


-- | GTM Workspaces\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwtcParent :: Lens' AccountsContainersWorkspacesTriggersCreate Text
acwtcParent
  = lens _acwtcParent (\ s a -> s{_acwtcParent = a})

-- | V1 error format.
acwtcXgafv :: Lens' AccountsContainersWorkspacesTriggersCreate (Maybe Xgafv)
acwtcXgafv
  = lens _acwtcXgafv (\ s a -> s{_acwtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtcUploadProtocol :: Lens' AccountsContainersWorkspacesTriggersCreate (Maybe Text)
acwtcUploadProtocol
  = lens _acwtcUploadProtocol
      (\ s a -> s{_acwtcUploadProtocol = a})

-- | OAuth access token.
acwtcAccessToken :: Lens' AccountsContainersWorkspacesTriggersCreate (Maybe Text)
acwtcAccessToken
  = lens _acwtcAccessToken
      (\ s a -> s{_acwtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtcUploadType :: Lens' AccountsContainersWorkspacesTriggersCreate (Maybe Text)
acwtcUploadType
  = lens _acwtcUploadType
      (\ s a -> s{_acwtcUploadType = a})

-- | Multipart request metadata.
acwtcPayload :: Lens' AccountsContainersWorkspacesTriggersCreate Trigger
acwtcPayload
  = lens _acwtcPayload (\ s a -> s{_acwtcPayload = a})

-- | JSONP
acwtcCallback :: Lens' AccountsContainersWorkspacesTriggersCreate (Maybe Text)
acwtcCallback
  = lens _acwtcCallback
      (\ s a -> s{_acwtcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTriggersCreate
         where
        type Rs AccountsContainersWorkspacesTriggersCreate =
             Trigger
        type Scopes
               AccountsContainersWorkspacesTriggersCreate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTriggersCreate'{..}
          = go _acwtcParent _acwtcXgafv _acwtcUploadProtocol
              _acwtcAccessToken
              _acwtcUploadType
              _acwtcCallback
              (Just AltJSON)
              _acwtcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersCreateResource)
                      mempty
