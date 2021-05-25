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
-- Module      : Network.Google.Resource.CloudShell.Users.Environments.RemovePublicKey
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a public SSH key from an environment. Clients will no longer be
-- able to connect to the environment using the corresponding private key.
-- If a key with the same content is not present, this will error with
-- NOT_FOUND.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.removePublicKey@.
module Network.Google.Resource.CloudShell.Users.Environments.RemovePublicKey
    (
    -- * REST Resource
      UsersEnvironmentsRemovePublicKeyResource

    -- * Creating a Request
    , usersEnvironmentsRemovePublicKey
    , UsersEnvironmentsRemovePublicKey

    -- * Request Lenses
    , uerpkXgafv
    , uerpkUploadProtocol
    , uerpkEnvironment
    , uerpkAccessToken
    , uerpkUploadType
    , uerpkPayload
    , uerpkCallback
    ) where

import Network.Google.CloudShell.Types
import Network.Google.Prelude

-- | A resource alias for @cloudshell.users.environments.removePublicKey@ method which the
-- 'UsersEnvironmentsRemovePublicKey' request conforms to.
type UsersEnvironmentsRemovePublicKeyResource =
     "v1" :>
       CaptureMode "environment" "removePublicKey" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RemovePublicKeyRequest :>
                       Post '[JSON] Operation

-- | Removes a public SSH key from an environment. Clients will no longer be
-- able to connect to the environment using the corresponding private key.
-- If a key with the same content is not present, this will error with
-- NOT_FOUND.
--
-- /See:/ 'usersEnvironmentsRemovePublicKey' smart constructor.
data UsersEnvironmentsRemovePublicKey =
  UsersEnvironmentsRemovePublicKey'
    { _uerpkXgafv :: !(Maybe Xgafv)
    , _uerpkUploadProtocol :: !(Maybe Text)
    , _uerpkEnvironment :: !Text
    , _uerpkAccessToken :: !(Maybe Text)
    , _uerpkUploadType :: !(Maybe Text)
    , _uerpkPayload :: !RemovePublicKeyRequest
    , _uerpkCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersEnvironmentsRemovePublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uerpkXgafv'
--
-- * 'uerpkUploadProtocol'
--
-- * 'uerpkEnvironment'
--
-- * 'uerpkAccessToken'
--
-- * 'uerpkUploadType'
--
-- * 'uerpkPayload'
--
-- * 'uerpkCallback'
usersEnvironmentsRemovePublicKey
    :: Text -- ^ 'uerpkEnvironment'
    -> RemovePublicKeyRequest -- ^ 'uerpkPayload'
    -> UsersEnvironmentsRemovePublicKey
usersEnvironmentsRemovePublicKey pUerpkEnvironment_ pUerpkPayload_ =
  UsersEnvironmentsRemovePublicKey'
    { _uerpkXgafv = Nothing
    , _uerpkUploadProtocol = Nothing
    , _uerpkEnvironment = pUerpkEnvironment_
    , _uerpkAccessToken = Nothing
    , _uerpkUploadType = Nothing
    , _uerpkPayload = pUerpkPayload_
    , _uerpkCallback = Nothing
    }


-- | V1 error format.
uerpkXgafv :: Lens' UsersEnvironmentsRemovePublicKey (Maybe Xgafv)
uerpkXgafv
  = lens _uerpkXgafv (\ s a -> s{_uerpkXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uerpkUploadProtocol :: Lens' UsersEnvironmentsRemovePublicKey (Maybe Text)
uerpkUploadProtocol
  = lens _uerpkUploadProtocol
      (\ s a -> s{_uerpkUploadProtocol = a})

-- | Environment this key should be removed from, e.g.
-- \`users\/me\/environments\/default\`.
uerpkEnvironment :: Lens' UsersEnvironmentsRemovePublicKey Text
uerpkEnvironment
  = lens _uerpkEnvironment
      (\ s a -> s{_uerpkEnvironment = a})

-- | OAuth access token.
uerpkAccessToken :: Lens' UsersEnvironmentsRemovePublicKey (Maybe Text)
uerpkAccessToken
  = lens _uerpkAccessToken
      (\ s a -> s{_uerpkAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uerpkUploadType :: Lens' UsersEnvironmentsRemovePublicKey (Maybe Text)
uerpkUploadType
  = lens _uerpkUploadType
      (\ s a -> s{_uerpkUploadType = a})

-- | Multipart request metadata.
uerpkPayload :: Lens' UsersEnvironmentsRemovePublicKey RemovePublicKeyRequest
uerpkPayload
  = lens _uerpkPayload (\ s a -> s{_uerpkPayload = a})

-- | JSONP
uerpkCallback :: Lens' UsersEnvironmentsRemovePublicKey (Maybe Text)
uerpkCallback
  = lens _uerpkCallback
      (\ s a -> s{_uerpkCallback = a})

instance GoogleRequest
           UsersEnvironmentsRemovePublicKey
         where
        type Rs UsersEnvironmentsRemovePublicKey = Operation
        type Scopes UsersEnvironmentsRemovePublicKey =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient UsersEnvironmentsRemovePublicKey'{..}
          = go _uerpkEnvironment _uerpkXgafv
              _uerpkUploadProtocol
              _uerpkAccessToken
              _uerpkUploadType
              _uerpkCallback
              (Just AltJSON)
              _uerpkPayload
              cloudShellService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersEnvironmentsRemovePublicKeyResource)
                      mempty
