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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | change admin status of a user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersMakeAdmin@.
module Network.Google.Resource.Directory.Users.MakeAdmin
    (
    -- * REST Resource
      UsersMakeAdminResource

    -- * Creating a Request
    , usersMakeAdmin'
    , UsersMakeAdmin'

    -- * Request Lenses
    , umaQuotaUser
    , umaPrettyPrint
    , umaUserIP
    , umaPayload
    , umaKey
    , umaOAuthToken
    , umaUserKey
    , umaFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersMakeAdmin@ which the
-- 'UsersMakeAdmin'' request conforms to.
type UsersMakeAdminResource =
     "users" :>
       Capture "userKey" Text :>
         "makeAdmin" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UserMakeAdmin :> Post '[JSON] ()

-- | change admin status of a user
--
-- /See:/ 'usersMakeAdmin'' smart constructor.
data UsersMakeAdmin' = UsersMakeAdmin'
    { _umaQuotaUser   :: !(Maybe Text)
    , _umaPrettyPrint :: !Bool
    , _umaUserIP      :: !(Maybe Text)
    , _umaPayload     :: !UserMakeAdmin
    , _umaKey         :: !(Maybe AuthKey)
    , _umaOAuthToken  :: !(Maybe OAuthToken)
    , _umaUserKey     :: !Text
    , _umaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMakeAdmin'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umaQuotaUser'
--
-- * 'umaPrettyPrint'
--
-- * 'umaUserIP'
--
-- * 'umaPayload'
--
-- * 'umaKey'
--
-- * 'umaOAuthToken'
--
-- * 'umaUserKey'
--
-- * 'umaFields'
usersMakeAdmin'
    :: UserMakeAdmin -- ^ 'payload'
    -> Text -- ^ 'userKey'
    -> UsersMakeAdmin'
usersMakeAdmin' pUmaPayload_ pUmaUserKey_ =
    UsersMakeAdmin'
    { _umaQuotaUser = Nothing
    , _umaPrettyPrint = True
    , _umaUserIP = Nothing
    , _umaPayload = pUmaPayload_
    , _umaKey = Nothing
    , _umaOAuthToken = Nothing
    , _umaUserKey = pUmaUserKey_
    , _umaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umaQuotaUser :: Lens' UsersMakeAdmin' (Maybe Text)
umaQuotaUser
  = lens _umaQuotaUser (\ s a -> s{_umaQuotaUser = a})

-- | Returns response with indentations and line breaks.
umaPrettyPrint :: Lens' UsersMakeAdmin' Bool
umaPrettyPrint
  = lens _umaPrettyPrint
      (\ s a -> s{_umaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umaUserIP :: Lens' UsersMakeAdmin' (Maybe Text)
umaUserIP
  = lens _umaUserIP (\ s a -> s{_umaUserIP = a})

-- | Multipart request metadata.
umaPayload :: Lens' UsersMakeAdmin' UserMakeAdmin
umaPayload
  = lens _umaPayload (\ s a -> s{_umaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umaKey :: Lens' UsersMakeAdmin' (Maybe AuthKey)
umaKey = lens _umaKey (\ s a -> s{_umaKey = a})

-- | OAuth 2.0 token for the current user.
umaOAuthToken :: Lens' UsersMakeAdmin' (Maybe OAuthToken)
umaOAuthToken
  = lens _umaOAuthToken
      (\ s a -> s{_umaOAuthToken = a})

-- | Email or immutable Id of the user as admin
umaUserKey :: Lens' UsersMakeAdmin' Text
umaUserKey
  = lens _umaUserKey (\ s a -> s{_umaUserKey = a})

-- | Selector specifying which fields to include in a partial response.
umaFields :: Lens' UsersMakeAdmin' (Maybe Text)
umaFields
  = lens _umaFields (\ s a -> s{_umaFields = a})

instance GoogleAuth UsersMakeAdmin' where
        authKey = umaKey . _Just
        authToken = umaOAuthToken . _Just

instance GoogleRequest UsersMakeAdmin' where
        type Rs UsersMakeAdmin' = ()
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u UsersMakeAdmin'{..}
          = go _umaUserKey _umaQuotaUser (Just _umaPrettyPrint)
              _umaUserIP
              _umaFields
              _umaKey
              _umaOAuthToken
              (Just AltJSON)
              _umaPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMakeAdminResource)
                      r
                      u
