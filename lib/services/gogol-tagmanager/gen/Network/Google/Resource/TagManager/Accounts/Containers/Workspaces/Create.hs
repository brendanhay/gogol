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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesCreate
    , AccountsContainersWorkspacesCreate

    -- * Request Lenses
    , acwcParent
    , acwcXgafv
    , acwcUploadProtocol
    , acwcAccessToken
    , acwcUploadType
    , acwcPayload
    , acwcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.create@ method which the
-- 'AccountsContainersWorkspacesCreate' request conforms to.
type AccountsContainersWorkspacesCreateResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "workspaces" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Workspace :> Post '[JSON] Workspace

-- | Creates a Workspace.
--
-- /See:/ 'accountsContainersWorkspacesCreate' smart constructor.
data AccountsContainersWorkspacesCreate =
  AccountsContainersWorkspacesCreate'
    { _acwcParent :: !Text
    , _acwcXgafv :: !(Maybe Xgafv)
    , _acwcUploadProtocol :: !(Maybe Text)
    , _acwcAccessToken :: !(Maybe Text)
    , _acwcUploadType :: !(Maybe Text)
    , _acwcPayload :: !Workspace
    , _acwcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwcParent'
--
-- * 'acwcXgafv'
--
-- * 'acwcUploadProtocol'
--
-- * 'acwcAccessToken'
--
-- * 'acwcUploadType'
--
-- * 'acwcPayload'
--
-- * 'acwcCallback'
accountsContainersWorkspacesCreate
    :: Text -- ^ 'acwcParent'
    -> Workspace -- ^ 'acwcPayload'
    -> AccountsContainersWorkspacesCreate
accountsContainersWorkspacesCreate pAcwcParent_ pAcwcPayload_ =
  AccountsContainersWorkspacesCreate'
    { _acwcParent = pAcwcParent_
    , _acwcXgafv = Nothing
    , _acwcUploadProtocol = Nothing
    , _acwcAccessToken = Nothing
    , _acwcUploadType = Nothing
    , _acwcPayload = pAcwcPayload_
    , _acwcCallback = Nothing
    }


-- | GTM parent Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acwcParent :: Lens' AccountsContainersWorkspacesCreate Text
acwcParent
  = lens _acwcParent (\ s a -> s{_acwcParent = a})

-- | V1 error format.
acwcXgafv :: Lens' AccountsContainersWorkspacesCreate (Maybe Xgafv)
acwcXgafv
  = lens _acwcXgafv (\ s a -> s{_acwcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwcUploadProtocol :: Lens' AccountsContainersWorkspacesCreate (Maybe Text)
acwcUploadProtocol
  = lens _acwcUploadProtocol
      (\ s a -> s{_acwcUploadProtocol = a})

-- | OAuth access token.
acwcAccessToken :: Lens' AccountsContainersWorkspacesCreate (Maybe Text)
acwcAccessToken
  = lens _acwcAccessToken
      (\ s a -> s{_acwcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwcUploadType :: Lens' AccountsContainersWorkspacesCreate (Maybe Text)
acwcUploadType
  = lens _acwcUploadType
      (\ s a -> s{_acwcUploadType = a})

-- | Multipart request metadata.
acwcPayload :: Lens' AccountsContainersWorkspacesCreate Workspace
acwcPayload
  = lens _acwcPayload (\ s a -> s{_acwcPayload = a})

-- | JSONP
acwcCallback :: Lens' AccountsContainersWorkspacesCreate (Maybe Text)
acwcCallback
  = lens _acwcCallback (\ s a -> s{_acwcCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesCreate
         where
        type Rs AccountsContainersWorkspacesCreate =
             Workspace
        type Scopes AccountsContainersWorkspacesCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersWorkspacesCreate'{..}
          = go _acwcParent _acwcXgafv _acwcUploadProtocol
              _acwcAccessToken
              _acwcUploadType
              _acwcCallback
              (Just AltJSON)
              _acwcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesCreateResource)
                      mempty
