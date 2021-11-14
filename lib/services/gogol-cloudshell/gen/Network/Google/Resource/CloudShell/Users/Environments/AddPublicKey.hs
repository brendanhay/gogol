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
-- Module      : Network.Google.Resource.CloudShell.Users.Environments.AddPublicKey
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a public SSH key to an environment, allowing clients with the
-- corresponding private key to connect to that environment via SSH. If a
-- key with the same content already exists, this will error with
-- ALREADY_EXISTS.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.addPublicKey@.
module Network.Google.Resource.CloudShell.Users.Environments.AddPublicKey
    (
    -- * REST Resource
      UsersEnvironmentsAddPublicKeyResource

    -- * Creating a Request
    , usersEnvironmentsAddPublicKey
    , UsersEnvironmentsAddPublicKey

    -- * Request Lenses
    , ueapkXgafv
    , ueapkUploadProtocol
    , ueapkEnvironment
    , ueapkAccessToken
    , ueapkUploadType
    , ueapkPayload
    , ueapkCallback
    ) where

import Network.Google.CloudShell.Types
import Network.Google.Prelude

-- | A resource alias for @cloudshell.users.environments.addPublicKey@ method which the
-- 'UsersEnvironmentsAddPublicKey' request conforms to.
type UsersEnvironmentsAddPublicKeyResource =
     "v1" :>
       CaptureMode "environment" "addPublicKey" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AddPublicKeyRequest :>
                       Post '[JSON] Operation

-- | Adds a public SSH key to an environment, allowing clients with the
-- corresponding private key to connect to that environment via SSH. If a
-- key with the same content already exists, this will error with
-- ALREADY_EXISTS.
--
-- /See:/ 'usersEnvironmentsAddPublicKey' smart constructor.
data UsersEnvironmentsAddPublicKey =
  UsersEnvironmentsAddPublicKey'
    { _ueapkXgafv :: !(Maybe Xgafv)
    , _ueapkUploadProtocol :: !(Maybe Text)
    , _ueapkEnvironment :: !Text
    , _ueapkAccessToken :: !(Maybe Text)
    , _ueapkUploadType :: !(Maybe Text)
    , _ueapkPayload :: !AddPublicKeyRequest
    , _ueapkCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersEnvironmentsAddPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueapkXgafv'
--
-- * 'ueapkUploadProtocol'
--
-- * 'ueapkEnvironment'
--
-- * 'ueapkAccessToken'
--
-- * 'ueapkUploadType'
--
-- * 'ueapkPayload'
--
-- * 'ueapkCallback'
usersEnvironmentsAddPublicKey
    :: Text -- ^ 'ueapkEnvironment'
    -> AddPublicKeyRequest -- ^ 'ueapkPayload'
    -> UsersEnvironmentsAddPublicKey
usersEnvironmentsAddPublicKey pUeapkEnvironment_ pUeapkPayload_ =
  UsersEnvironmentsAddPublicKey'
    { _ueapkXgafv = Nothing
    , _ueapkUploadProtocol = Nothing
    , _ueapkEnvironment = pUeapkEnvironment_
    , _ueapkAccessToken = Nothing
    , _ueapkUploadType = Nothing
    , _ueapkPayload = pUeapkPayload_
    , _ueapkCallback = Nothing
    }


-- | V1 error format.
ueapkXgafv :: Lens' UsersEnvironmentsAddPublicKey (Maybe Xgafv)
ueapkXgafv
  = lens _ueapkXgafv (\ s a -> s{_ueapkXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ueapkUploadProtocol :: Lens' UsersEnvironmentsAddPublicKey (Maybe Text)
ueapkUploadProtocol
  = lens _ueapkUploadProtocol
      (\ s a -> s{_ueapkUploadProtocol = a})

-- | Environment this key should be added to, e.g.
-- \`users\/me\/environments\/default\`.
ueapkEnvironment :: Lens' UsersEnvironmentsAddPublicKey Text
ueapkEnvironment
  = lens _ueapkEnvironment
      (\ s a -> s{_ueapkEnvironment = a})

-- | OAuth access token.
ueapkAccessToken :: Lens' UsersEnvironmentsAddPublicKey (Maybe Text)
ueapkAccessToken
  = lens _ueapkAccessToken
      (\ s a -> s{_ueapkAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ueapkUploadType :: Lens' UsersEnvironmentsAddPublicKey (Maybe Text)
ueapkUploadType
  = lens _ueapkUploadType
      (\ s a -> s{_ueapkUploadType = a})

-- | Multipart request metadata.
ueapkPayload :: Lens' UsersEnvironmentsAddPublicKey AddPublicKeyRequest
ueapkPayload
  = lens _ueapkPayload (\ s a -> s{_ueapkPayload = a})

-- | JSONP
ueapkCallback :: Lens' UsersEnvironmentsAddPublicKey (Maybe Text)
ueapkCallback
  = lens _ueapkCallback
      (\ s a -> s{_ueapkCallback = a})

instance GoogleRequest UsersEnvironmentsAddPublicKey
         where
        type Rs UsersEnvironmentsAddPublicKey = Operation
        type Scopes UsersEnvironmentsAddPublicKey =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient UsersEnvironmentsAddPublicKey'{..}
          = go _ueapkEnvironment _ueapkXgafv
              _ueapkUploadProtocol
              _ueapkAccessToken
              _ueapkUploadType
              _ueapkCallback
              (Just AltJSON)
              _ueapkPayload
              cloudShellService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersEnvironmentsAddPublicKeyResource)
                      mempty
