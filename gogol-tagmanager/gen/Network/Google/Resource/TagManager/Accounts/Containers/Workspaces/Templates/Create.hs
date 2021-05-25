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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Custom Template.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.templates.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesTemplatesCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesTemplatesCreate
    , AccountsContainersWorkspacesTemplatesCreate

    -- * Request Lenses
    , aParent
    , aXgafv
    , aUploadProtocol
    , aAccessToken
    , aUploadType
    , aPayload
    , aCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.templates.create@ method which the
-- 'AccountsContainersWorkspacesTemplatesCreate' request conforms to.
type AccountsContainersWorkspacesTemplatesCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "templates" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CustomTemplate :>
                           Post '[JSON] CustomTemplate

-- | Creates a GTM Custom Template.
--
-- /See:/ 'accountsContainersWorkspacesTemplatesCreate' smart constructor.
data AccountsContainersWorkspacesTemplatesCreate =
  AccountsContainersWorkspacesTemplatesCreate'
    { _aParent :: !Text
    , _aXgafv :: !(Maybe Xgafv)
    , _aUploadProtocol :: !(Maybe Text)
    , _aAccessToken :: !(Maybe Text)
    , _aUploadType :: !(Maybe Text)
    , _aPayload :: !CustomTemplate
    , _aCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aParent'
--
-- * 'aXgafv'
--
-- * 'aUploadProtocol'
--
-- * 'aAccessToken'
--
-- * 'aUploadType'
--
-- * 'aPayload'
--
-- * 'aCallback'
accountsContainersWorkspacesTemplatesCreate
    :: Text -- ^ 'aParent'
    -> CustomTemplate -- ^ 'aPayload'
    -> AccountsContainersWorkspacesTemplatesCreate
accountsContainersWorkspacesTemplatesCreate pAParent_ pAPayload_ =
  AccountsContainersWorkspacesTemplatesCreate'
    { _aParent = pAParent_
    , _aXgafv = Nothing
    , _aUploadProtocol = Nothing
    , _aAccessToken = Nothing
    , _aUploadType = Nothing
    , _aPayload = pAPayload_
    , _aCallback = Nothing
    }


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}
aParent :: Lens' AccountsContainersWorkspacesTemplatesCreate Text
aParent = lens _aParent (\ s a -> s{_aParent = a})

-- | V1 error format.
aXgafv :: Lens' AccountsContainersWorkspacesTemplatesCreate (Maybe Xgafv)
aXgafv = lens _aXgafv (\ s a -> s{_aXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aUploadProtocol :: Lens' AccountsContainersWorkspacesTemplatesCreate (Maybe Text)
aUploadProtocol
  = lens _aUploadProtocol
      (\ s a -> s{_aUploadProtocol = a})

-- | OAuth access token.
aAccessToken :: Lens' AccountsContainersWorkspacesTemplatesCreate (Maybe Text)
aAccessToken
  = lens _aAccessToken (\ s a -> s{_aAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aUploadType :: Lens' AccountsContainersWorkspacesTemplatesCreate (Maybe Text)
aUploadType
  = lens _aUploadType (\ s a -> s{_aUploadType = a})

-- | Multipart request metadata.
aPayload :: Lens' AccountsContainersWorkspacesTemplatesCreate CustomTemplate
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | JSONP
aCallback :: Lens' AccountsContainersWorkspacesTemplatesCreate (Maybe Text)
aCallback
  = lens _aCallback (\ s a -> s{_aCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTemplatesCreate
         where
        type Rs AccountsContainersWorkspacesTemplatesCreate =
             CustomTemplate
        type Scopes
               AccountsContainersWorkspacesTemplatesCreate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTemplatesCreate'{..}
          = go _aParent _aXgafv _aUploadProtocol _aAccessToken
              _aUploadType
              _aCallback
              (Just AltJSON)
              _aPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTemplatesCreateResource)
                      mempty
