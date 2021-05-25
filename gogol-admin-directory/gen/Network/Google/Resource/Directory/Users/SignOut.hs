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
-- Module      : Network.Google.Resource.Directory.Users.SignOut
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs a user out of all web and device sessions and reset their sign-in
-- cookies. User will have to sign in by authenticating again.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.signOut@.
module Network.Google.Resource.Directory.Users.SignOut
    (
    -- * REST Resource
      UsersSignOutResource

    -- * Creating a Request
    , usersSignOut
    , UsersSignOut

    -- * Request Lenses
    , usoXgafv
    , usoUploadProtocol
    , usoAccessToken
    , usoUploadType
    , usoUserKey
    , usoCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.signOut@ method which the
-- 'UsersSignOut' request conforms to.
type UsersSignOutResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "signOut" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Signs a user out of all web and device sessions and reset their sign-in
-- cookies. User will have to sign in by authenticating again.
--
-- /See:/ 'usersSignOut' smart constructor.
data UsersSignOut =
  UsersSignOut'
    { _usoXgafv :: !(Maybe Xgafv)
    , _usoUploadProtocol :: !(Maybe Text)
    , _usoAccessToken :: !(Maybe Text)
    , _usoUploadType :: !(Maybe Text)
    , _usoUserKey :: !Text
    , _usoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSignOut' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usoXgafv'
--
-- * 'usoUploadProtocol'
--
-- * 'usoAccessToken'
--
-- * 'usoUploadType'
--
-- * 'usoUserKey'
--
-- * 'usoCallback'
usersSignOut
    :: Text -- ^ 'usoUserKey'
    -> UsersSignOut
usersSignOut pUsoUserKey_ =
  UsersSignOut'
    { _usoXgafv = Nothing
    , _usoUploadProtocol = Nothing
    , _usoAccessToken = Nothing
    , _usoUploadType = Nothing
    , _usoUserKey = pUsoUserKey_
    , _usoCallback = Nothing
    }


-- | V1 error format.
usoXgafv :: Lens' UsersSignOut (Maybe Xgafv)
usoXgafv = lens _usoXgafv (\ s a -> s{_usoXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usoUploadProtocol :: Lens' UsersSignOut (Maybe Text)
usoUploadProtocol
  = lens _usoUploadProtocol
      (\ s a -> s{_usoUploadProtocol = a})

-- | OAuth access token.
usoAccessToken :: Lens' UsersSignOut (Maybe Text)
usoAccessToken
  = lens _usoAccessToken
      (\ s a -> s{_usoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usoUploadType :: Lens' UsersSignOut (Maybe Text)
usoUploadType
  = lens _usoUploadType
      (\ s a -> s{_usoUploadType = a})

-- | Identifies the target user in the API request. The value can be the
-- user\'s primary email address, alias email address, or unique user ID.
usoUserKey :: Lens' UsersSignOut Text
usoUserKey
  = lens _usoUserKey (\ s a -> s{_usoUserKey = a})

-- | JSONP
usoCallback :: Lens' UsersSignOut (Maybe Text)
usoCallback
  = lens _usoCallback (\ s a -> s{_usoCallback = a})

instance GoogleRequest UsersSignOut where
        type Rs UsersSignOut = ()
        type Scopes UsersSignOut =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient UsersSignOut'{..}
          = go _usoUserKey _usoXgafv _usoUploadProtocol
              _usoAccessToken
              _usoUploadType
              _usoCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersSignOutResource)
                      mempty
