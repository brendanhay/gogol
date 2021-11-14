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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Get
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersGetResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersGet
    , AccountsContainersWorkspacesTriggersGet

    -- * Request Lenses
    , acwtgcXgafv
    , acwtgcUploadProtocol
    , acwtgcPath
    , acwtgcAccessToken
    , acwtgcUploadType
    , acwtgcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.get@ method which the
-- 'AccountsContainersWorkspacesTriggersGet' request conforms to.
type AccountsContainersWorkspacesTriggersGetResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Trigger

-- | Gets a GTM Trigger.
--
-- /See:/ 'accountsContainersWorkspacesTriggersGet' smart constructor.
data AccountsContainersWorkspacesTriggersGet =
  AccountsContainersWorkspacesTriggersGet'
    { _acwtgcXgafv :: !(Maybe Xgafv)
    , _acwtgcUploadProtocol :: !(Maybe Text)
    , _acwtgcPath :: !Text
    , _acwtgcAccessToken :: !(Maybe Text)
    , _acwtgcUploadType :: !(Maybe Text)
    , _acwtgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTriggersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtgcXgafv'
--
-- * 'acwtgcUploadProtocol'
--
-- * 'acwtgcPath'
--
-- * 'acwtgcAccessToken'
--
-- * 'acwtgcUploadType'
--
-- * 'acwtgcCallback'
accountsContainersWorkspacesTriggersGet
    :: Text -- ^ 'acwtgcPath'
    -> AccountsContainersWorkspacesTriggersGet
accountsContainersWorkspacesTriggersGet pAcwtgcPath_ =
  AccountsContainersWorkspacesTriggersGet'
    { _acwtgcXgafv = Nothing
    , _acwtgcUploadProtocol = Nothing
    , _acwtgcPath = pAcwtgcPath_
    , _acwtgcAccessToken = Nothing
    , _acwtgcUploadType = Nothing
    , _acwtgcCallback = Nothing
    }


-- | V1 error format.
acwtgcXgafv :: Lens' AccountsContainersWorkspacesTriggersGet (Maybe Xgafv)
acwtgcXgafv
  = lens _acwtgcXgafv (\ s a -> s{_acwtgcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtgcUploadProtocol :: Lens' AccountsContainersWorkspacesTriggersGet (Maybe Text)
acwtgcUploadProtocol
  = lens _acwtgcUploadProtocol
      (\ s a -> s{_acwtgcUploadProtocol = a})

-- | GTM Trigger\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/triggers\/{trigger_id}
acwtgcPath :: Lens' AccountsContainersWorkspacesTriggersGet Text
acwtgcPath
  = lens _acwtgcPath (\ s a -> s{_acwtgcPath = a})

-- | OAuth access token.
acwtgcAccessToken :: Lens' AccountsContainersWorkspacesTriggersGet (Maybe Text)
acwtgcAccessToken
  = lens _acwtgcAccessToken
      (\ s a -> s{_acwtgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtgcUploadType :: Lens' AccountsContainersWorkspacesTriggersGet (Maybe Text)
acwtgcUploadType
  = lens _acwtgcUploadType
      (\ s a -> s{_acwtgcUploadType = a})

-- | JSONP
acwtgcCallback :: Lens' AccountsContainersWorkspacesTriggersGet (Maybe Text)
acwtgcCallback
  = lens _acwtgcCallback
      (\ s a -> s{_acwtgcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTriggersGet
         where
        type Rs AccountsContainersWorkspacesTriggersGet =
             Trigger
        type Scopes AccountsContainersWorkspacesTriggersGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersWorkspacesTriggersGet'{..}
          = go _acwtgcPath _acwtgcXgafv _acwtgcUploadProtocol
              _acwtgcAccessToken
              _acwtgcUploadType
              _acwtgcCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersGetResource)
                      mempty
