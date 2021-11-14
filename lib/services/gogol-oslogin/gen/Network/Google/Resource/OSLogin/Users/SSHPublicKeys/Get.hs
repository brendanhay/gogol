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
-- Module      : Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an SSH public key.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.sshPublicKeys.get@.
module Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Get
    (
    -- * REST Resource
      UsersSSHPublicKeysGetResource

    -- * Creating a Request
    , usersSSHPublicKeysGet
    , UsersSSHPublicKeysGet

    -- * Request Lenses
    , uspkgXgafv
    , uspkgUploadProtocol
    , uspkgAccessToken
    , uspkgUploadType
    , uspkgName
    , uspkgCallback
    ) where

import Network.Google.OSLogin.Types
import Network.Google.Prelude

-- | A resource alias for @oslogin.users.sshPublicKeys.get@ method which the
-- 'UsersSSHPublicKeysGet' request conforms to.
type UsersSSHPublicKeysGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] SSHPublicKey

-- | Retrieves an SSH public key.
--
-- /See:/ 'usersSSHPublicKeysGet' smart constructor.
data UsersSSHPublicKeysGet =
  UsersSSHPublicKeysGet'
    { _uspkgXgafv :: !(Maybe Xgafv)
    , _uspkgUploadProtocol :: !(Maybe Text)
    , _uspkgAccessToken :: !(Maybe Text)
    , _uspkgUploadType :: !(Maybe Text)
    , _uspkgName :: !Text
    , _uspkgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSSHPublicKeysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uspkgXgafv'
--
-- * 'uspkgUploadProtocol'
--
-- * 'uspkgAccessToken'
--
-- * 'uspkgUploadType'
--
-- * 'uspkgName'
--
-- * 'uspkgCallback'
usersSSHPublicKeysGet
    :: Text -- ^ 'uspkgName'
    -> UsersSSHPublicKeysGet
usersSSHPublicKeysGet pUspkgName_ =
  UsersSSHPublicKeysGet'
    { _uspkgXgafv = Nothing
    , _uspkgUploadProtocol = Nothing
    , _uspkgAccessToken = Nothing
    , _uspkgUploadType = Nothing
    , _uspkgName = pUspkgName_
    , _uspkgCallback = Nothing
    }


-- | V1 error format.
uspkgXgafv :: Lens' UsersSSHPublicKeysGet (Maybe Xgafv)
uspkgXgafv
  = lens _uspkgXgafv (\ s a -> s{_uspkgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uspkgUploadProtocol :: Lens' UsersSSHPublicKeysGet (Maybe Text)
uspkgUploadProtocol
  = lens _uspkgUploadProtocol
      (\ s a -> s{_uspkgUploadProtocol = a})

-- | OAuth access token.
uspkgAccessToken :: Lens' UsersSSHPublicKeysGet (Maybe Text)
uspkgAccessToken
  = lens _uspkgAccessToken
      (\ s a -> s{_uspkgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uspkgUploadType :: Lens' UsersSSHPublicKeysGet (Maybe Text)
uspkgUploadType
  = lens _uspkgUploadType
      (\ s a -> s{_uspkgUploadType = a})

-- | Required. The fingerprint of the public key to retrieve. Public keys are
-- identified by their SHA-256 fingerprint. The fingerprint of the public
-- key is in format \`users\/{user}\/sshPublicKeys\/{fingerprint}\`.
uspkgName :: Lens' UsersSSHPublicKeysGet Text
uspkgName
  = lens _uspkgName (\ s a -> s{_uspkgName = a})

-- | JSONP
uspkgCallback :: Lens' UsersSSHPublicKeysGet (Maybe Text)
uspkgCallback
  = lens _uspkgCallback
      (\ s a -> s{_uspkgCallback = a})

instance GoogleRequest UsersSSHPublicKeysGet where
        type Rs UsersSSHPublicKeysGet = SSHPublicKey
        type Scopes UsersSSHPublicKeysGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient UsersSSHPublicKeysGet'{..}
          = go _uspkgName _uspkgXgafv _uspkgUploadProtocol
              _uspkgAccessToken
              _uspkgUploadType
              _uspkgCallback
              (Just AltJSON)
              oSLoginService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSSHPublicKeysGetResource)
                      mempty
