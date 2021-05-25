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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Triggers.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesTriggersDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesTriggersDelete
    , AccountsContainersWorkspacesTriggersDelete

    -- * Request Lenses
    , acwtdXgafv
    , acwtdUploadProtocol
    , acwtdPath
    , acwtdAccessToken
    , acwtdUploadType
    , acwtdCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.delete@ method which the
-- 'AccountsContainersWorkspacesTriggersDelete' request conforms to.
type AccountsContainersWorkspacesTriggersDeleteResource
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

-- | Deletes a GTM Trigger.
--
-- /See:/ 'accountsContainersWorkspacesTriggersDelete' smart constructor.
data AccountsContainersWorkspacesTriggersDelete =
  AccountsContainersWorkspacesTriggersDelete'
    { _acwtdXgafv :: !(Maybe Xgafv)
    , _acwtdUploadProtocol :: !(Maybe Text)
    , _acwtdPath :: !Text
    , _acwtdAccessToken :: !(Maybe Text)
    , _acwtdUploadType :: !(Maybe Text)
    , _acwtdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTriggersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtdXgafv'
--
-- * 'acwtdUploadProtocol'
--
-- * 'acwtdPath'
--
-- * 'acwtdAccessToken'
--
-- * 'acwtdUploadType'
--
-- * 'acwtdCallback'
accountsContainersWorkspacesTriggersDelete
    :: Text -- ^ 'acwtdPath'
    -> AccountsContainersWorkspacesTriggersDelete
accountsContainersWorkspacesTriggersDelete pAcwtdPath_ =
  AccountsContainersWorkspacesTriggersDelete'
    { _acwtdXgafv = Nothing
    , _acwtdUploadProtocol = Nothing
    , _acwtdPath = pAcwtdPath_
    , _acwtdAccessToken = Nothing
    , _acwtdUploadType = Nothing
    , _acwtdCallback = Nothing
    }


-- | V1 error format.
acwtdXgafv :: Lens' AccountsContainersWorkspacesTriggersDelete (Maybe Xgafv)
acwtdXgafv
  = lens _acwtdXgafv (\ s a -> s{_acwtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtdUploadProtocol :: Lens' AccountsContainersWorkspacesTriggersDelete (Maybe Text)
acwtdUploadProtocol
  = lens _acwtdUploadProtocol
      (\ s a -> s{_acwtdUploadProtocol = a})

-- | GTM Trigger\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/triggers\/{trigger_id}
acwtdPath :: Lens' AccountsContainersWorkspacesTriggersDelete Text
acwtdPath
  = lens _acwtdPath (\ s a -> s{_acwtdPath = a})

-- | OAuth access token.
acwtdAccessToken :: Lens' AccountsContainersWorkspacesTriggersDelete (Maybe Text)
acwtdAccessToken
  = lens _acwtdAccessToken
      (\ s a -> s{_acwtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtdUploadType :: Lens' AccountsContainersWorkspacesTriggersDelete (Maybe Text)
acwtdUploadType
  = lens _acwtdUploadType
      (\ s a -> s{_acwtdUploadType = a})

-- | JSONP
acwtdCallback :: Lens' AccountsContainersWorkspacesTriggersDelete (Maybe Text)
acwtdCallback
  = lens _acwtdCallback
      (\ s a -> s{_acwtdCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTriggersDelete
         where
        type Rs AccountsContainersWorkspacesTriggersDelete =
             ()
        type Scopes
               AccountsContainersWorkspacesTriggersDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTriggersDelete'{..}
          = go _acwtdPath _acwtdXgafv _acwtdUploadProtocol
              _acwtdAccessToken
              _acwtdUploadType
              _acwtdCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTriggersDeleteResource)
                      mempty
