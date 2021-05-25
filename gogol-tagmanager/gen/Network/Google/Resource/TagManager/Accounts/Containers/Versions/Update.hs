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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
    (
    -- * REST Resource
      AccountsContainersVersionsUpdateResource

    -- * Creating a Request
    , accountsContainersVersionsUpdate
    , AccountsContainersVersionsUpdate

    -- * Request Lenses
    , acvucXgafv
    , acvucUploadProtocol
    , acvucPath
    , acvucFingerprint
    , acvucAccessToken
    , acvucUploadType
    , acvucPayload
    , acvucCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.update@ method which the
-- 'AccountsContainersVersionsUpdate' request conforms to.
type AccountsContainersVersionsUpdateResource =
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
                         ReqBody '[JSON] ContainerVersion :>
                           Put '[JSON] ContainerVersion

-- | Updates a Container Version.
--
-- /See:/ 'accountsContainersVersionsUpdate' smart constructor.
data AccountsContainersVersionsUpdate =
  AccountsContainersVersionsUpdate'
    { _acvucXgafv :: !(Maybe Xgafv)
    , _acvucUploadProtocol :: !(Maybe Text)
    , _acvucPath :: !Text
    , _acvucFingerprint :: !(Maybe Text)
    , _acvucAccessToken :: !(Maybe Text)
    , _acvucUploadType :: !(Maybe Text)
    , _acvucPayload :: !ContainerVersion
    , _acvucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvucXgafv'
--
-- * 'acvucUploadProtocol'
--
-- * 'acvucPath'
--
-- * 'acvucFingerprint'
--
-- * 'acvucAccessToken'
--
-- * 'acvucUploadType'
--
-- * 'acvucPayload'
--
-- * 'acvucCallback'
accountsContainersVersionsUpdate
    :: Text -- ^ 'acvucPath'
    -> ContainerVersion -- ^ 'acvucPayload'
    -> AccountsContainersVersionsUpdate
accountsContainersVersionsUpdate pAcvucPath_ pAcvucPayload_ =
  AccountsContainersVersionsUpdate'
    { _acvucXgafv = Nothing
    , _acvucUploadProtocol = Nothing
    , _acvucPath = pAcvucPath_
    , _acvucFingerprint = Nothing
    , _acvucAccessToken = Nothing
    , _acvucUploadType = Nothing
    , _acvucPayload = pAcvucPayload_
    , _acvucCallback = Nothing
    }


-- | V1 error format.
acvucXgafv :: Lens' AccountsContainersVersionsUpdate (Maybe Xgafv)
acvucXgafv
  = lens _acvucXgafv (\ s a -> s{_acvucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acvucUploadProtocol :: Lens' AccountsContainersVersionsUpdate (Maybe Text)
acvucUploadProtocol
  = lens _acvucUploadProtocol
      (\ s a -> s{_acvucUploadProtocol = a})

-- | GTM ContainerVersion\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/versions\/{version_id}
acvucPath :: Lens' AccountsContainersVersionsUpdate Text
acvucPath
  = lens _acvucPath (\ s a -> s{_acvucPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container version in storage.
acvucFingerprint :: Lens' AccountsContainersVersionsUpdate (Maybe Text)
acvucFingerprint
  = lens _acvucFingerprint
      (\ s a -> s{_acvucFingerprint = a})

-- | OAuth access token.
acvucAccessToken :: Lens' AccountsContainersVersionsUpdate (Maybe Text)
acvucAccessToken
  = lens _acvucAccessToken
      (\ s a -> s{_acvucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acvucUploadType :: Lens' AccountsContainersVersionsUpdate (Maybe Text)
acvucUploadType
  = lens _acvucUploadType
      (\ s a -> s{_acvucUploadType = a})

-- | Multipart request metadata.
acvucPayload :: Lens' AccountsContainersVersionsUpdate ContainerVersion
acvucPayload
  = lens _acvucPayload (\ s a -> s{_acvucPayload = a})

-- | JSONP
acvucCallback :: Lens' AccountsContainersVersionsUpdate (Maybe Text)
acvucCallback
  = lens _acvucCallback
      (\ s a -> s{_acvucCallback = a})

instance GoogleRequest
           AccountsContainersVersionsUpdate
         where
        type Rs AccountsContainersVersionsUpdate =
             ContainerVersion
        type Scopes AccountsContainersVersionsUpdate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient AccountsContainersVersionsUpdate'{..}
          = go _acvucPath _acvucXgafv _acvucUploadProtocol
              _acvucFingerprint
              _acvucAccessToken
              _acvucUploadType
              _acvucCallback
              (Just AltJSON)
              _acvucPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsUpdateResource)
                      mempty
