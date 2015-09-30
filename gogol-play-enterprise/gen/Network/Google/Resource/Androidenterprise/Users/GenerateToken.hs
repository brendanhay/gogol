{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Users.GenerateToken
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generates a token (activation code) to allow this user to configure
-- their work account in the Android Setup Wizard. Revokes any previously
-- generated token.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseUsersGenerateToken@.
module Network.Google.Resource.Androidenterprise.Users.GenerateToken
    (
    -- * REST Resource
      UsersGenerateTokenResource

    -- * Creating a Request
    , usersGenerateToken'
    , UsersGenerateToken'

    -- * Request Lenses
    , ugtQuotaUser
    , ugtPrettyPrint
    , ugtEnterpriseId
    , ugtUserIp
    , ugtUserId
    , ugtKey
    , ugtOauthToken
    , ugtFields
    , ugtAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseUsersGenerateToken@ which the
-- 'UsersGenerateToken'' request conforms to.
type UsersGenerateTokenResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "token" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] UserToken

-- | Generates a token (activation code) to allow this user to configure
-- their work account in the Android Setup Wizard. Revokes any previously
-- generated token.
--
-- /See:/ 'usersGenerateToken'' smart constructor.
data UsersGenerateToken' = UsersGenerateToken'
    { _ugtQuotaUser    :: !(Maybe Text)
    , _ugtPrettyPrint  :: !Bool
    , _ugtEnterpriseId :: !Text
    , _ugtUserIp       :: !(Maybe Text)
    , _ugtUserId       :: !Text
    , _ugtKey          :: !(Maybe Text)
    , _ugtOauthToken   :: !(Maybe Text)
    , _ugtFields       :: !(Maybe Text)
    , _ugtAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGenerateToken'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugtQuotaUser'
--
-- * 'ugtPrettyPrint'
--
-- * 'ugtEnterpriseId'
--
-- * 'ugtUserIp'
--
-- * 'ugtUserId'
--
-- * 'ugtKey'
--
-- * 'ugtOauthToken'
--
-- * 'ugtFields'
--
-- * 'ugtAlt'
usersGenerateToken'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> UsersGenerateToken'
usersGenerateToken' pUgtEnterpriseId_ pUgtUserId_ =
    UsersGenerateToken'
    { _ugtQuotaUser = Nothing
    , _ugtPrettyPrint = True
    , _ugtEnterpriseId = pUgtEnterpriseId_
    , _ugtUserIp = Nothing
    , _ugtUserId = pUgtUserId_
    , _ugtKey = Nothing
    , _ugtOauthToken = Nothing
    , _ugtFields = Nothing
    , _ugtAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugtQuotaUser :: Lens' UsersGenerateToken' (Maybe Text)
ugtQuotaUser
  = lens _ugtQuotaUser (\ s a -> s{_ugtQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugtPrettyPrint :: Lens' UsersGenerateToken' Bool
ugtPrettyPrint
  = lens _ugtPrettyPrint
      (\ s a -> s{_ugtPrettyPrint = a})

-- | The ID of the enterprise.
ugtEnterpriseId :: Lens' UsersGenerateToken' Text
ugtEnterpriseId
  = lens _ugtEnterpriseId
      (\ s a -> s{_ugtEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugtUserIp :: Lens' UsersGenerateToken' (Maybe Text)
ugtUserIp
  = lens _ugtUserIp (\ s a -> s{_ugtUserIp = a})

-- | The ID of the user.
ugtUserId :: Lens' UsersGenerateToken' Text
ugtUserId
  = lens _ugtUserId (\ s a -> s{_ugtUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugtKey :: Lens' UsersGenerateToken' (Maybe Text)
ugtKey = lens _ugtKey (\ s a -> s{_ugtKey = a})

-- | OAuth 2.0 token for the current user.
ugtOauthToken :: Lens' UsersGenerateToken' (Maybe Text)
ugtOauthToken
  = lens _ugtOauthToken
      (\ s a -> s{_ugtOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugtFields :: Lens' UsersGenerateToken' (Maybe Text)
ugtFields
  = lens _ugtFields (\ s a -> s{_ugtFields = a})

-- | Data format for the response.
ugtAlt :: Lens' UsersGenerateToken' Alt
ugtAlt = lens _ugtAlt (\ s a -> s{_ugtAlt = a})

instance GoogleRequest UsersGenerateToken' where
        type Rs UsersGenerateToken' = UserToken
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u UsersGenerateToken'{..}
          = go _ugtQuotaUser (Just _ugtPrettyPrint)
              _ugtEnterpriseId
              _ugtUserIp
              _ugtUserId
              _ugtKey
              _ugtOauthToken
              _ugtFields
              (Just _ugtAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersGenerateTokenResource)
                      r
                      u
