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
-- Module      : Network.Google.Resource.Directory.Users.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user. This method supports patch semantics, meaning you only
-- need to include the fields you wish to update. Fields that are not
-- present in the request will be preserved, and fields set to \`null\`
-- will be cleared.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.update@.
module Network.Google.Resource.Directory.Users.Update
    (
    -- * REST Resource
      UsersUpdateResource

    -- * Creating a Request
    , usersUpdate
    , UsersUpdate

    -- * Request Lenses
    , uXgafv
    , uUploadProtocol
    , uAccessToken
    , uUploadType
    , uPayload
    , uUserKey
    , uCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.update@ method which the
-- 'UsersUpdate' request conforms to.
type UsersUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] User :> Put '[JSON] User

-- | Updates a user. This method supports patch semantics, meaning you only
-- need to include the fields you wish to update. Fields that are not
-- present in the request will be preserved, and fields set to \`null\`
-- will be cleared.
--
-- /See:/ 'usersUpdate' smart constructor.
data UsersUpdate =
  UsersUpdate'
    { _uXgafv :: !(Maybe Xgafv)
    , _uUploadProtocol :: !(Maybe Text)
    , _uAccessToken :: !(Maybe Text)
    , _uUploadType :: !(Maybe Text)
    , _uPayload :: !User
    , _uUserKey :: !Text
    , _uCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uXgafv'
--
-- * 'uUploadProtocol'
--
-- * 'uAccessToken'
--
-- * 'uUploadType'
--
-- * 'uPayload'
--
-- * 'uUserKey'
--
-- * 'uCallback'
usersUpdate
    :: User -- ^ 'uPayload'
    -> Text -- ^ 'uUserKey'
    -> UsersUpdate
usersUpdate pUPayload_ pUUserKey_ =
  UsersUpdate'
    { _uXgafv = Nothing
    , _uUploadProtocol = Nothing
    , _uAccessToken = Nothing
    , _uUploadType = Nothing
    , _uPayload = pUPayload_
    , _uUserKey = pUUserKey_
    , _uCallback = Nothing
    }


-- | V1 error format.
uXgafv :: Lens' UsersUpdate (Maybe Xgafv)
uXgafv = lens _uXgafv (\ s a -> s{_uXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uUploadProtocol :: Lens' UsersUpdate (Maybe Text)
uUploadProtocol
  = lens _uUploadProtocol
      (\ s a -> s{_uUploadProtocol = a})

-- | OAuth access token.
uAccessToken :: Lens' UsersUpdate (Maybe Text)
uAccessToken
  = lens _uAccessToken (\ s a -> s{_uAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uUploadType :: Lens' UsersUpdate (Maybe Text)
uUploadType
  = lens _uUploadType (\ s a -> s{_uUploadType = a})

-- | Multipart request metadata.
uPayload :: Lens' UsersUpdate User
uPayload = lens _uPayload (\ s a -> s{_uPayload = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
uUserKey :: Lens' UsersUpdate Text
uUserKey = lens _uUserKey (\ s a -> s{_uUserKey = a})

-- | JSONP
uCallback :: Lens' UsersUpdate (Maybe Text)
uCallback
  = lens _uCallback (\ s a -> s{_uCallback = a})

instance GoogleRequest UsersUpdate where
        type Rs UsersUpdate = User
        type Scopes UsersUpdate =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersUpdate'{..}
          = go _uUserKey _uXgafv _uUploadProtocol _uAccessToken
              _uUploadType
              _uCallback
              (Just AltJSON)
              _uPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersUpdateResource)
                      mempty
