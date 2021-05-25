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
-- Module      : Network.Google.Resource.Directory.Users.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.delete@.
module Network.Google.Resource.Directory.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete
    , UsersDelete

    -- * Request Lenses
    , udXgafv
    , udUploadProtocol
    , udAccessToken
    , udUploadType
    , udUserKey
    , udCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.delete@ method which the
-- 'UsersDelete' request conforms to.
type UsersDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a user.
--
-- /See:/ 'usersDelete' smart constructor.
data UsersDelete =
  UsersDelete'
    { _udXgafv :: !(Maybe Xgafv)
    , _udUploadProtocol :: !(Maybe Text)
    , _udAccessToken :: !(Maybe Text)
    , _udUploadType :: !(Maybe Text)
    , _udUserKey :: !Text
    , _udCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udXgafv'
--
-- * 'udUploadProtocol'
--
-- * 'udAccessToken'
--
-- * 'udUploadType'
--
-- * 'udUserKey'
--
-- * 'udCallback'
usersDelete
    :: Text -- ^ 'udUserKey'
    -> UsersDelete
usersDelete pUdUserKey_ =
  UsersDelete'
    { _udXgafv = Nothing
    , _udUploadProtocol = Nothing
    , _udAccessToken = Nothing
    , _udUploadType = Nothing
    , _udUserKey = pUdUserKey_
    , _udCallback = Nothing
    }


-- | V1 error format.
udXgafv :: Lens' UsersDelete (Maybe Xgafv)
udXgafv = lens _udXgafv (\ s a -> s{_udXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udUploadProtocol :: Lens' UsersDelete (Maybe Text)
udUploadProtocol
  = lens _udUploadProtocol
      (\ s a -> s{_udUploadProtocol = a})

-- | OAuth access token.
udAccessToken :: Lens' UsersDelete (Maybe Text)
udAccessToken
  = lens _udAccessToken
      (\ s a -> s{_udAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udUploadType :: Lens' UsersDelete (Maybe Text)
udUploadType
  = lens _udUploadType (\ s a -> s{_udUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
udUserKey :: Lens' UsersDelete Text
udUserKey
  = lens _udUserKey (\ s a -> s{_udUserKey = a})

-- | JSONP
udCallback :: Lens' UsersDelete (Maybe Text)
udCallback
  = lens _udCallback (\ s a -> s{_udCallback = a})

instance GoogleRequest UsersDelete where
        type Rs UsersDelete = ()
        type Scopes UsersDelete =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersDelete'{..}
          = go _udUserKey _udXgafv _udUploadProtocol
              _udAccessToken
              _udUploadType
              _udCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersDeleteResource)
                      mempty
