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
-- Module      : Network.Google.Resource.Directory.Users.MakeAdmin
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Makes a user a super administrator.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.makeAdmin@.
module Network.Google.Resource.Directory.Users.MakeAdmin
    (
    -- * REST Resource
      UsersMakeAdminResource

    -- * Creating a Request
    , usersMakeAdmin
    , UsersMakeAdmin

    -- * Request Lenses
    , umaXgafv
    , umaUploadProtocol
    , umaAccessToken
    , umaUploadType
    , umaPayload
    , umaUserKey
    , umaCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.makeAdmin@ method which the
-- 'UsersMakeAdmin' request conforms to.
type UsersMakeAdminResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "makeAdmin" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] UserMakeAdmin :> Post '[JSON] ()

-- | Makes a user a super administrator.
--
-- /See:/ 'usersMakeAdmin' smart constructor.
data UsersMakeAdmin =
  UsersMakeAdmin'
    { _umaXgafv :: !(Maybe Xgafv)
    , _umaUploadProtocol :: !(Maybe Text)
    , _umaAccessToken :: !(Maybe Text)
    , _umaUploadType :: !(Maybe Text)
    , _umaPayload :: !UserMakeAdmin
    , _umaUserKey :: !Text
    , _umaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMakeAdmin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umaXgafv'
--
-- * 'umaUploadProtocol'
--
-- * 'umaAccessToken'
--
-- * 'umaUploadType'
--
-- * 'umaPayload'
--
-- * 'umaUserKey'
--
-- * 'umaCallback'
usersMakeAdmin
    :: UserMakeAdmin -- ^ 'umaPayload'
    -> Text -- ^ 'umaUserKey'
    -> UsersMakeAdmin
usersMakeAdmin pUmaPayload_ pUmaUserKey_ =
  UsersMakeAdmin'
    { _umaXgafv = Nothing
    , _umaUploadProtocol = Nothing
    , _umaAccessToken = Nothing
    , _umaUploadType = Nothing
    , _umaPayload = pUmaPayload_
    , _umaUserKey = pUmaUserKey_
    , _umaCallback = Nothing
    }


-- | V1 error format.
umaXgafv :: Lens' UsersMakeAdmin (Maybe Xgafv)
umaXgafv = lens _umaXgafv (\ s a -> s{_umaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umaUploadProtocol :: Lens' UsersMakeAdmin (Maybe Text)
umaUploadProtocol
  = lens _umaUploadProtocol
      (\ s a -> s{_umaUploadProtocol = a})

-- | OAuth access token.
umaAccessToken :: Lens' UsersMakeAdmin (Maybe Text)
umaAccessToken
  = lens _umaAccessToken
      (\ s a -> s{_umaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umaUploadType :: Lens' UsersMakeAdmin (Maybe Text)
umaUploadType
  = lens _umaUploadType
      (\ s a -> s{_umaUploadType = a})

-- | Multipart request metadata.
umaPayload :: Lens' UsersMakeAdmin UserMakeAdmin
umaPayload
  = lens _umaPayload (\ s a -> s{_umaPayload = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
umaUserKey :: Lens' UsersMakeAdmin Text
umaUserKey
  = lens _umaUserKey (\ s a -> s{_umaUserKey = a})

-- | JSONP
umaCallback :: Lens' UsersMakeAdmin (Maybe Text)
umaCallback
  = lens _umaCallback (\ s a -> s{_umaCallback = a})

instance GoogleRequest UsersMakeAdmin where
        type Rs UsersMakeAdmin = ()
        type Scopes UsersMakeAdmin =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersMakeAdmin'{..}
          = go _umaUserKey _umaXgafv _umaUploadProtocol
              _umaAccessToken
              _umaUploadType
              _umaCallback
              (Just AltJSON)
              _umaPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersMakeAdminResource)
                      mempty
