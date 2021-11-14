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
-- Module      : Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an SSH public key and returns the profile information. This
-- method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.sshPublicKeys.patch@.
module Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Patch
    (
    -- * REST Resource
      UsersSSHPublicKeysPatchResource

    -- * Creating a Request
    , usersSSHPublicKeysPatch
    , UsersSSHPublicKeysPatch

    -- * Request Lenses
    , uspkpXgafv
    , uspkpUploadProtocol
    , uspkpUpdateMask
    , uspkpAccessToken
    , uspkpUploadType
    , uspkpPayload
    , uspkpName
    , uspkpCallback
    ) where

import Network.Google.OSLogin.Types
import Network.Google.Prelude

-- | A resource alias for @oslogin.users.sshPublicKeys.patch@ method which the
-- 'UsersSSHPublicKeysPatch' request conforms to.
type UsersSSHPublicKeysPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SSHPublicKey :>
                         Patch '[JSON] SSHPublicKey

-- | Updates an SSH public key and returns the profile information. This
-- method supports patch semantics.
--
-- /See:/ 'usersSSHPublicKeysPatch' smart constructor.
data UsersSSHPublicKeysPatch =
  UsersSSHPublicKeysPatch'
    { _uspkpXgafv :: !(Maybe Xgafv)
    , _uspkpUploadProtocol :: !(Maybe Text)
    , _uspkpUpdateMask :: !(Maybe GFieldMask)
    , _uspkpAccessToken :: !(Maybe Text)
    , _uspkpUploadType :: !(Maybe Text)
    , _uspkpPayload :: !SSHPublicKey
    , _uspkpName :: !Text
    , _uspkpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSSHPublicKeysPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uspkpXgafv'
--
-- * 'uspkpUploadProtocol'
--
-- * 'uspkpUpdateMask'
--
-- * 'uspkpAccessToken'
--
-- * 'uspkpUploadType'
--
-- * 'uspkpPayload'
--
-- * 'uspkpName'
--
-- * 'uspkpCallback'
usersSSHPublicKeysPatch
    :: SSHPublicKey -- ^ 'uspkpPayload'
    -> Text -- ^ 'uspkpName'
    -> UsersSSHPublicKeysPatch
usersSSHPublicKeysPatch pUspkpPayload_ pUspkpName_ =
  UsersSSHPublicKeysPatch'
    { _uspkpXgafv = Nothing
    , _uspkpUploadProtocol = Nothing
    , _uspkpUpdateMask = Nothing
    , _uspkpAccessToken = Nothing
    , _uspkpUploadType = Nothing
    , _uspkpPayload = pUspkpPayload_
    , _uspkpName = pUspkpName_
    , _uspkpCallback = Nothing
    }


-- | V1 error format.
uspkpXgafv :: Lens' UsersSSHPublicKeysPatch (Maybe Xgafv)
uspkpXgafv
  = lens _uspkpXgafv (\ s a -> s{_uspkpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uspkpUploadProtocol :: Lens' UsersSSHPublicKeysPatch (Maybe Text)
uspkpUploadProtocol
  = lens _uspkpUploadProtocol
      (\ s a -> s{_uspkpUploadProtocol = a})

-- | Mask to control which fields get updated. Updates all if not present.
uspkpUpdateMask :: Lens' UsersSSHPublicKeysPatch (Maybe GFieldMask)
uspkpUpdateMask
  = lens _uspkpUpdateMask
      (\ s a -> s{_uspkpUpdateMask = a})

-- | OAuth access token.
uspkpAccessToken :: Lens' UsersSSHPublicKeysPatch (Maybe Text)
uspkpAccessToken
  = lens _uspkpAccessToken
      (\ s a -> s{_uspkpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uspkpUploadType :: Lens' UsersSSHPublicKeysPatch (Maybe Text)
uspkpUploadType
  = lens _uspkpUploadType
      (\ s a -> s{_uspkpUploadType = a})

-- | Multipart request metadata.
uspkpPayload :: Lens' UsersSSHPublicKeysPatch SSHPublicKey
uspkpPayload
  = lens _uspkpPayload (\ s a -> s{_uspkpPayload = a})

-- | Required. The fingerprint of the public key to update. Public keys are
-- identified by their SHA-256 fingerprint. The fingerprint of the public
-- key is in format \`users\/{user}\/sshPublicKeys\/{fingerprint}\`.
uspkpName :: Lens' UsersSSHPublicKeysPatch Text
uspkpName
  = lens _uspkpName (\ s a -> s{_uspkpName = a})

-- | JSONP
uspkpCallback :: Lens' UsersSSHPublicKeysPatch (Maybe Text)
uspkpCallback
  = lens _uspkpCallback
      (\ s a -> s{_uspkpCallback = a})

instance GoogleRequest UsersSSHPublicKeysPatch where
        type Rs UsersSSHPublicKeysPatch = SSHPublicKey
        type Scopes UsersSSHPublicKeysPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient UsersSSHPublicKeysPatch'{..}
          = go _uspkpName _uspkpXgafv _uspkpUploadProtocol
              _uspkpUpdateMask
              _uspkpAccessToken
              _uspkpUploadType
              _uspkpCallback
              (Just AltJSON)
              _uspkpPayload
              oSLoginService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSSHPublicKeysPatchResource)
                      mempty
