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
-- Module      : Network.Google.Resource.Directory.Users.Undelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a deleted user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.undelete@.
module Network.Google.Resource.Directory.Users.Undelete
    (
    -- * REST Resource
      UsersUndeleteResource

    -- * Creating a Request
    , usersUndelete
    , UsersUndelete

    -- * Request Lenses
    , uuXgafv
    , uuUploadProtocol
    , uuAccessToken
    , uuUploadType
    , uuPayload
    , uuUserKey
    , uuCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.undelete@ method which the
-- 'UsersUndelete' request conforms to.
type UsersUndeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "undelete" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] UserUndelete :> Post '[JSON] ()

-- | Undeletes a deleted user.
--
-- /See:/ 'usersUndelete' smart constructor.
data UsersUndelete =
  UsersUndelete'
    { _uuXgafv :: !(Maybe Xgafv)
    , _uuUploadProtocol :: !(Maybe Text)
    , _uuAccessToken :: !(Maybe Text)
    , _uuUploadType :: !(Maybe Text)
    , _uuPayload :: !UserUndelete
    , _uuUserKey :: !Text
    , _uuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuXgafv'
--
-- * 'uuUploadProtocol'
--
-- * 'uuAccessToken'
--
-- * 'uuUploadType'
--
-- * 'uuPayload'
--
-- * 'uuUserKey'
--
-- * 'uuCallback'
usersUndelete
    :: UserUndelete -- ^ 'uuPayload'
    -> Text -- ^ 'uuUserKey'
    -> UsersUndelete
usersUndelete pUuPayload_ pUuUserKey_ =
  UsersUndelete'
    { _uuXgafv = Nothing
    , _uuUploadProtocol = Nothing
    , _uuAccessToken = Nothing
    , _uuUploadType = Nothing
    , _uuPayload = pUuPayload_
    , _uuUserKey = pUuUserKey_
    , _uuCallback = Nothing
    }


-- | V1 error format.
uuXgafv :: Lens' UsersUndelete (Maybe Xgafv)
uuXgafv = lens _uuXgafv (\ s a -> s{_uuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uuUploadProtocol :: Lens' UsersUndelete (Maybe Text)
uuUploadProtocol
  = lens _uuUploadProtocol
      (\ s a -> s{_uuUploadProtocol = a})

-- | OAuth access token.
uuAccessToken :: Lens' UsersUndelete (Maybe Text)
uuAccessToken
  = lens _uuAccessToken
      (\ s a -> s{_uuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uuUploadType :: Lens' UsersUndelete (Maybe Text)
uuUploadType
  = lens _uuUploadType (\ s a -> s{_uuUploadType = a})

-- | Multipart request metadata.
uuPayload :: Lens' UsersUndelete UserUndelete
uuPayload
  = lens _uuPayload (\ s a -> s{_uuPayload = a})

-- | The immutable id of the user
uuUserKey :: Lens' UsersUndelete Text
uuUserKey
  = lens _uuUserKey (\ s a -> s{_uuUserKey = a})

-- | JSONP
uuCallback :: Lens' UsersUndelete (Maybe Text)
uuCallback
  = lens _uuCallback (\ s a -> s{_uuCallback = a})

instance GoogleRequest UsersUndelete where
        type Rs UsersUndelete = ()
        type Scopes UsersUndelete =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersUndelete'{..}
          = go _uuUserKey _uuXgafv _uuUploadProtocol
              _uuAccessToken
              _uuUploadType
              _uuCallback
              (Just AltJSON)
              _uuPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersUndeleteResource)
                      mempty
