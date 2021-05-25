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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Tags.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesTagsUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesTagsUpdate
    , AccountsContainersWorkspacesTagsUpdate

    -- * Request Lenses
    , acwtucXgafv
    , acwtucUploadProtocol
    , acwtucPath
    , acwtucFingerprint
    , acwtucAccessToken
    , acwtucUploadType
    , acwtucPayload
    , acwtucCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.update@ method which the
-- 'AccountsContainersWorkspacesTagsUpdate' request conforms to.
type AccountsContainersWorkspacesTagsUpdateResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "fingerprint" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Tag :> Put '[JSON] Tag

-- | Updates a GTM Tag.
--
-- /See:/ 'accountsContainersWorkspacesTagsUpdate' smart constructor.
data AccountsContainersWorkspacesTagsUpdate =
  AccountsContainersWorkspacesTagsUpdate'
    { _acwtucXgafv :: !(Maybe Xgafv)
    , _acwtucUploadProtocol :: !(Maybe Text)
    , _acwtucPath :: !Text
    , _acwtucFingerprint :: !(Maybe Text)
    , _acwtucAccessToken :: !(Maybe Text)
    , _acwtucUploadType :: !(Maybe Text)
    , _acwtucPayload :: !Tag
    , _acwtucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTagsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwtucXgafv'
--
-- * 'acwtucUploadProtocol'
--
-- * 'acwtucPath'
--
-- * 'acwtucFingerprint'
--
-- * 'acwtucAccessToken'
--
-- * 'acwtucUploadType'
--
-- * 'acwtucPayload'
--
-- * 'acwtucCallback'
accountsContainersWorkspacesTagsUpdate
    :: Text -- ^ 'acwtucPath'
    -> Tag -- ^ 'acwtucPayload'
    -> AccountsContainersWorkspacesTagsUpdate
accountsContainersWorkspacesTagsUpdate pAcwtucPath_ pAcwtucPayload_ =
  AccountsContainersWorkspacesTagsUpdate'
    { _acwtucXgafv = Nothing
    , _acwtucUploadProtocol = Nothing
    , _acwtucPath = pAcwtucPath_
    , _acwtucFingerprint = Nothing
    , _acwtucAccessToken = Nothing
    , _acwtucUploadType = Nothing
    , _acwtucPayload = pAcwtucPayload_
    , _acwtucCallback = Nothing
    }


-- | V1 error format.
acwtucXgafv :: Lens' AccountsContainersWorkspacesTagsUpdate (Maybe Xgafv)
acwtucXgafv
  = lens _acwtucXgafv (\ s a -> s{_acwtucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acwtucUploadProtocol :: Lens' AccountsContainersWorkspacesTagsUpdate (Maybe Text)
acwtucUploadProtocol
  = lens _acwtucUploadProtocol
      (\ s a -> s{_acwtucUploadProtocol = a})

-- | GTM Tag\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/tags\/{tag_id}
acwtucPath :: Lens' AccountsContainersWorkspacesTagsUpdate Text
acwtucPath
  = lens _acwtucPath (\ s a -> s{_acwtucPath = a})

-- | When provided, this fingerprint must match the fingerprint of the tag in
-- storage.
acwtucFingerprint :: Lens' AccountsContainersWorkspacesTagsUpdate (Maybe Text)
acwtucFingerprint
  = lens _acwtucFingerprint
      (\ s a -> s{_acwtucFingerprint = a})

-- | OAuth access token.
acwtucAccessToken :: Lens' AccountsContainersWorkspacesTagsUpdate (Maybe Text)
acwtucAccessToken
  = lens _acwtucAccessToken
      (\ s a -> s{_acwtucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acwtucUploadType :: Lens' AccountsContainersWorkspacesTagsUpdate (Maybe Text)
acwtucUploadType
  = lens _acwtucUploadType
      (\ s a -> s{_acwtucUploadType = a})

-- | Multipart request metadata.
acwtucPayload :: Lens' AccountsContainersWorkspacesTagsUpdate Tag
acwtucPayload
  = lens _acwtucPayload
      (\ s a -> s{_acwtucPayload = a})

-- | JSONP
acwtucCallback :: Lens' AccountsContainersWorkspacesTagsUpdate (Maybe Text)
acwtucCallback
  = lens _acwtucCallback
      (\ s a -> s{_acwtucCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTagsUpdate
         where
        type Rs AccountsContainersWorkspacesTagsUpdate = Tag
        type Scopes AccountsContainersWorkspacesTagsUpdate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTagsUpdate'{..}
          = go _acwtucPath _acwtucXgafv _acwtucUploadProtocol
              _acwtucFingerprint
              _acwtucAccessToken
              _acwtucUploadType
              _acwtucCallback
              (Just AltJSON)
              _acwtucPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersWorkspacesTagsUpdateResource)
                      mempty
