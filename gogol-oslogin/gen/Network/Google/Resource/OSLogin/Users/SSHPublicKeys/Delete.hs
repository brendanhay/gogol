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
-- Module      : Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an SSH public key.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/rest/ Cloud OS Login API Reference> for @oslogin.users.sshPublicKeys.delete@.
module Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Delete
    (
    -- * REST Resource
      UsersSSHPublicKeysDeleteResource

    -- * Creating a Request
    , usersSSHPublicKeysDelete
    , UsersSSHPublicKeysDelete

    -- * Request Lenses
    , uspkdXgafv
    , uspkdUploadProtocol
    , uspkdAccessToken
    , uspkdUploadType
    , uspkdName
    , uspkdCallback
    ) where

import           Network.Google.OSLogin.Types
import           Network.Google.Prelude

-- | A resource alias for @oslogin.users.sshPublicKeys.delete@ method which the
-- 'UsersSSHPublicKeysDelete' request conforms to.
type UsersSSHPublicKeysDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an SSH public key.
--
-- /See:/ 'usersSSHPublicKeysDelete' smart constructor.
data UsersSSHPublicKeysDelete = UsersSSHPublicKeysDelete'
    { _uspkdXgafv          :: !(Maybe Xgafv)
    , _uspkdUploadProtocol :: !(Maybe Text)
    , _uspkdAccessToken    :: !(Maybe Text)
    , _uspkdUploadType     :: !(Maybe Text)
    , _uspkdName           :: !Text
    , _uspkdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSSHPublicKeysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uspkdXgafv'
--
-- * 'uspkdUploadProtocol'
--
-- * 'uspkdAccessToken'
--
-- * 'uspkdUploadType'
--
-- * 'uspkdName'
--
-- * 'uspkdCallback'
usersSSHPublicKeysDelete
    :: Text -- ^ 'uspkdName'
    -> UsersSSHPublicKeysDelete
usersSSHPublicKeysDelete pUspkdName_ =
    UsersSSHPublicKeysDelete'
    { _uspkdXgafv = Nothing
    , _uspkdUploadProtocol = Nothing
    , _uspkdAccessToken = Nothing
    , _uspkdUploadType = Nothing
    , _uspkdName = pUspkdName_
    , _uspkdCallback = Nothing
    }

-- | V1 error format.
uspkdXgafv :: Lens' UsersSSHPublicKeysDelete (Maybe Xgafv)
uspkdXgafv
  = lens _uspkdXgafv (\ s a -> s{_uspkdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uspkdUploadProtocol :: Lens' UsersSSHPublicKeysDelete (Maybe Text)
uspkdUploadProtocol
  = lens _uspkdUploadProtocol
      (\ s a -> s{_uspkdUploadProtocol = a})

-- | OAuth access token.
uspkdAccessToken :: Lens' UsersSSHPublicKeysDelete (Maybe Text)
uspkdAccessToken
  = lens _uspkdAccessToken
      (\ s a -> s{_uspkdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uspkdUploadType :: Lens' UsersSSHPublicKeysDelete (Maybe Text)
uspkdUploadType
  = lens _uspkdUploadType
      (\ s a -> s{_uspkdUploadType = a})

-- | The fingerprint of the public key to update. Public keys are identified
-- by their SHA-256 fingerprint. The fingerprint of the public key is in
-- format \`users\/{user}\/sshPublicKeys\/{fingerprint}\`.
uspkdName :: Lens' UsersSSHPublicKeysDelete Text
uspkdName
  = lens _uspkdName (\ s a -> s{_uspkdName = a})

-- | JSONP
uspkdCallback :: Lens' UsersSSHPublicKeysDelete (Maybe Text)
uspkdCallback
  = lens _uspkdCallback
      (\ s a -> s{_uspkdCallback = a})

instance GoogleRequest UsersSSHPublicKeysDelete where
        type Rs UsersSSHPublicKeysDelete = Empty
        type Scopes UsersSSHPublicKeysDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient UsersSSHPublicKeysDelete'{..}
          = go _uspkdName _uspkdXgafv _uspkdUploadProtocol
              _uspkdAccessToken
              _uspkdUploadType
              _uspkdCallback
              (Just AltJSON)
              oSLoginService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSSHPublicKeysDeleteResource)
                      mempty
