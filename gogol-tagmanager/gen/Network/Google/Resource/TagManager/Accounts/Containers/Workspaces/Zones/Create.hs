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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Zone.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Zones.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesZonesCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesZonesCreate
    , AccountsContainersWorkspacesZonesCreate

    -- * Request Lenses
    , acwzcParent
    , acwzcXgafv
    , acwzcUploadProtocol
    , acwzcAccessToken
    , acwzcUploadType
    , acwzcPayload
    , acwzcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.create@ method which the
-- 'AccountsContainersWorkspacesZonesCreate' request conforms to.
type AccountsContainersWorkspacesZonesCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "zones" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Zone :> Post '[JSON] Zone

-- | Creates a GTM Zone.
--
-- /See:/ 'accountsContainersWorkspacesZonesCreate' smart constructor.
data AccountsContainersWorkspacesZonesCreate =
  AccountsContainersWorkspacesZonesCreate'
    { _acwzcParent :: !Text
    , _acwzcXgafv :: !(Maybe Xgafv)
    , _acwzcUploadProtocol :: !(Maybe Text)
    , _acwzcAccessToken :: !(Maybe Text)
    , _acwzcUploadType :: !(Maybe Text)
    , _acwzcPayload :: !Zone
    , _acwzcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesZonesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwzcParent'
--
-- * 'acwzcXgafv'
--
-- * 'acwzcUploadProtocol'
--
-- * 'acwzcAccessToken'
--
-- * 'acwzcUploadType'
--
-- * 'acwzcPayload'
--
-- * 'acwzcCallback'
accountsContainersWorkspacesZonesCreate
    :: Text -- ^ 'acwzcParent'
    -> Zone -- ^ 'acwzcPayload'
    -> AccountsContainersWorkspacesZonesCreate
accountsContainersWorkspacesZonesCreate pAcwzcParent_ pAcwzcPayload_ =
  AccountsContainersWorkspacesZonesCreate'
    { _acwzcParent = pAcwzcParent_
    , _acwzcXgafv = Nothing
    , _acwzcUploadProtocol = Nothing
    , _acwzcAccessToken = Nothing
    , _acwzcUploadType = Nothing
    , _acwzcPayload = pAcwzcPayload_
    , _acwzcCallback = Nothing
    }


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
acwzcParent :: Lens' AccountsContainersWorkspacesZonesCreate Text
acwzcParent
  = lens _acwzcParent (\ s a -> s{_acwzcParent = a})

-- | V1 error format.
acwzcXgafv :: Lens' AccountsContainersWorkspacesZonesCreate (Maybe Xgafv)
acwzcXgafv
  = lens _acwzcXgafv (\ s a -> s{_acwzcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwzcUploadProtocol :: Lens' AccountsContainersWorkspacesZonesCreate (Maybe Text)
acwzcUploadProtocol
  = lens _acwzcUploadProtocol
      (\ s a -> s{_acwzcUploadProtocol = a})

-- | OAuth access token.
acwzcAccessToken :: Lens' AccountsContainersWorkspacesZonesCreate (Maybe Text)
acwzcAccessToken
  = lens _acwzcAccessToken
      (\ s a -> s{_acwzcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwzcUploadType :: Lens' AccountsContainersWorkspacesZonesCreate (Maybe Text)
acwzcUploadType
  = lens _acwzcUploadType
      (\ s a -> s{_acwzcUploadType = a})

-- | Multipart request metadata.
acwzcPayload :: Lens' AccountsContainersWorkspacesZonesCreate Zone
acwzcPayload
  = lens _acwzcPayload (\ s a -> s{_acwzcPayload = a})

-- | JSONP
acwzcCallback :: Lens' AccountsContainersWorkspacesZonesCreate (Maybe Text)
acwzcCallback
  = lens _acwzcCallback
      (\ s a -> s{_acwzcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesZonesCreate
         where
        type Rs AccountsContainersWorkspacesZonesCreate =
             Zone
        type Scopes AccountsContainersWorkspacesZonesCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesZonesCreate'{..}
          = go _acwzcParent _acwzcXgafv _acwzcUploadProtocol
              _acwzcAccessToken
              _acwzcUploadType
              _acwzcCallback
              (Just AltJSON)
              _acwzcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesZonesCreateResource)
                      mempty
