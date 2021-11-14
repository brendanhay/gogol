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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Update
    (
    -- * REST Resource
      AccountsContainersUpdateResource

    -- * Creating a Request
    , accountsContainersUpdate
    , AccountsContainersUpdate

    -- * Request Lenses
    , acuXgafv
    , acuUploadProtocol
    , acuPath
    , acuFingerprint
    , acuAccessToken
    , acuUploadType
    , acuPayload
    , acuCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.update@ method which the
-- 'AccountsContainersUpdate' request conforms to.
type AccountsContainersUpdateResource =
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
                         ReqBody '[JSON] Container :> Put '[JSON] Container

-- | Updates a Container.
--
-- /See:/ 'accountsContainersUpdate' smart constructor.
data AccountsContainersUpdate =
  AccountsContainersUpdate'
    { _acuXgafv :: !(Maybe Xgafv)
    , _acuUploadProtocol :: !(Maybe Text)
    , _acuPath :: !Text
    , _acuFingerprint :: !(Maybe Text)
    , _acuAccessToken :: !(Maybe Text)
    , _acuUploadType :: !(Maybe Text)
    , _acuPayload :: !Container
    , _acuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuXgafv'
--
-- * 'acuUploadProtocol'
--
-- * 'acuPath'
--
-- * 'acuFingerprint'
--
-- * 'acuAccessToken'
--
-- * 'acuUploadType'
--
-- * 'acuPayload'
--
-- * 'acuCallback'
accountsContainersUpdate
    :: Text -- ^ 'acuPath'
    -> Container -- ^ 'acuPayload'
    -> AccountsContainersUpdate
accountsContainersUpdate pAcuPath_ pAcuPayload_ =
  AccountsContainersUpdate'
    { _acuXgafv = Nothing
    , _acuUploadProtocol = Nothing
    , _acuPath = pAcuPath_
    , _acuFingerprint = Nothing
    , _acuAccessToken = Nothing
    , _acuUploadType = Nothing
    , _acuPayload = pAcuPayload_
    , _acuCallback = Nothing
    }


-- | V1 error format.
acuXgafv :: Lens' AccountsContainersUpdate (Maybe Xgafv)
acuXgafv = lens _acuXgafv (\ s a -> s{_acuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acuUploadProtocol :: Lens' AccountsContainersUpdate (Maybe Text)
acuUploadProtocol
  = lens _acuUploadProtocol
      (\ s a -> s{_acuUploadProtocol = a})

-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acuPath :: Lens' AccountsContainersUpdate Text
acuPath = lens _acuPath (\ s a -> s{_acuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container in storage.
acuFingerprint :: Lens' AccountsContainersUpdate (Maybe Text)
acuFingerprint
  = lens _acuFingerprint
      (\ s a -> s{_acuFingerprint = a})

-- | OAuth access token.
acuAccessToken :: Lens' AccountsContainersUpdate (Maybe Text)
acuAccessToken
  = lens _acuAccessToken
      (\ s a -> s{_acuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acuUploadType :: Lens' AccountsContainersUpdate (Maybe Text)
acuUploadType
  = lens _acuUploadType
      (\ s a -> s{_acuUploadType = a})

-- | Multipart request metadata.
acuPayload :: Lens' AccountsContainersUpdate Container
acuPayload
  = lens _acuPayload (\ s a -> s{_acuPayload = a})

-- | JSONP
acuCallback :: Lens' AccountsContainersUpdate (Maybe Text)
acuCallback
  = lens _acuCallback (\ s a -> s{_acuCallback = a})

instance GoogleRequest AccountsContainersUpdate where
        type Rs AccountsContainersUpdate = Container
        type Scopes AccountsContainersUpdate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersUpdate'{..}
          = go _acuPath _acuXgafv _acuUploadProtocol
              _acuFingerprint
              _acuAccessToken
              _acuUploadType
              _acuCallback
              (Just AltJSON)
              _acuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersUpdateResource)
                      mempty
