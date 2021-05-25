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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Template.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.templates.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Templates.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesTemplatesUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesTemplatesUpdate
    , AccountsContainersWorkspacesTemplatesUpdate

    -- * Request Lenses
    , accXgafv
    , accUploadProtocol
    , accPath
    , accFingerprint
    , accAccessToken
    , accUploadType
    , accPayload
    , accCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.templates.update@ method which the
-- 'AccountsContainersWorkspacesTemplatesUpdate' request conforms to.
type AccountsContainersWorkspacesTemplatesUpdateResource
     =
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
                         ReqBody '[JSON] CustomTemplate :>
                           Put '[JSON] CustomTemplate

-- | Updates a GTM Template.
--
-- /See:/ 'accountsContainersWorkspacesTemplatesUpdate' smart constructor.
data AccountsContainersWorkspacesTemplatesUpdate =
  AccountsContainersWorkspacesTemplatesUpdate'
    { _accXgafv :: !(Maybe Xgafv)
    , _accUploadProtocol :: !(Maybe Text)
    , _accPath :: !Text
    , _accFingerprint :: !(Maybe Text)
    , _accAccessToken :: !(Maybe Text)
    , _accUploadType :: !(Maybe Text)
    , _accPayload :: !CustomTemplate
    , _accCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesTemplatesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accXgafv'
--
-- * 'accUploadProtocol'
--
-- * 'accPath'
--
-- * 'accFingerprint'
--
-- * 'accAccessToken'
--
-- * 'accUploadType'
--
-- * 'accPayload'
--
-- * 'accCallback'
accountsContainersWorkspacesTemplatesUpdate
    :: Text -- ^ 'accPath'
    -> CustomTemplate -- ^ 'accPayload'
    -> AccountsContainersWorkspacesTemplatesUpdate
accountsContainersWorkspacesTemplatesUpdate pAccPath_ pAccPayload_ =
  AccountsContainersWorkspacesTemplatesUpdate'
    { _accXgafv = Nothing
    , _accUploadProtocol = Nothing
    , _accPath = pAccPath_
    , _accFingerprint = Nothing
    , _accAccessToken = Nothing
    , _accUploadType = Nothing
    , _accPayload = pAccPayload_
    , _accCallback = Nothing
    }


-- | V1 error format.
accXgafv :: Lens' AccountsContainersWorkspacesTemplatesUpdate (Maybe Xgafv)
accXgafv = lens _accXgafv (\ s a -> s{_accXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
accUploadProtocol :: Lens' AccountsContainersWorkspacesTemplatesUpdate (Maybe Text)
accUploadProtocol
  = lens _accUploadProtocol
      (\ s a -> s{_accUploadProtocol = a})

-- | GTM Custom Template\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/templates\/{template_id}
accPath :: Lens' AccountsContainersWorkspacesTemplatesUpdate Text
accPath = lens _accPath (\ s a -> s{_accPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- templates in storage.
accFingerprint :: Lens' AccountsContainersWorkspacesTemplatesUpdate (Maybe Text)
accFingerprint
  = lens _accFingerprint
      (\ s a -> s{_accFingerprint = a})

-- | OAuth access token.
accAccessToken :: Lens' AccountsContainersWorkspacesTemplatesUpdate (Maybe Text)
accAccessToken
  = lens _accAccessToken
      (\ s a -> s{_accAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
accUploadType :: Lens' AccountsContainersWorkspacesTemplatesUpdate (Maybe Text)
accUploadType
  = lens _accUploadType
      (\ s a -> s{_accUploadType = a})

-- | Multipart request metadata.
accPayload :: Lens' AccountsContainersWorkspacesTemplatesUpdate CustomTemplate
accPayload
  = lens _accPayload (\ s a -> s{_accPayload = a})

-- | JSONP
accCallback :: Lens' AccountsContainersWorkspacesTemplatesUpdate (Maybe Text)
accCallback
  = lens _accCallback (\ s a -> s{_accCallback = a})

instance GoogleRequest
           AccountsContainersWorkspacesTemplatesUpdate
         where
        type Rs AccountsContainersWorkspacesTemplatesUpdate =
             CustomTemplate
        type Scopes
               AccountsContainersWorkspacesTemplatesUpdate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesTemplatesUpdate'{..}
          = go _accPath _accXgafv _accUploadProtocol
              _accFingerprint
              _accAccessToken
              _accUploadType
              _accCallback
              (Just AltJSON)
              _accPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesTemplatesUpdateResource)
                      mempty
