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
-- Module      : Network.Google.Resource.Fitness.Users.Sessions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates or insert a given session.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersSessionsUpdate@.
module Network.Google.Resource.Fitness.Users.Sessions.Update
    (
    -- * REST Resource
      UsersSessionsUpdateResource

    -- * Creating a Request
    , usersSessionsUpdate'
    , UsersSessionsUpdate'

    -- * Request Lenses
    , usuQuotaUser
    , usuPrettyPrint
    , usuUserIP
    , usuUserId
    , usuKey
    , usuCurrentTimeMillis
    , usuOAuthToken
    , usuSessionId
    , usuSession
    , usuFields
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersSessionsUpdate@ which the
-- 'UsersSessionsUpdate'' request conforms to.
type UsersSessionsUpdateResource =
     Capture "userId" Text :>
       "sessions" :>
         Capture "sessionId" Text :>
           QueryParam "currentTimeMillis" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Session :> Put '[JSON] Session

-- | Updates or insert a given session.
--
-- /See:/ 'usersSessionsUpdate'' smart constructor.
data UsersSessionsUpdate' = UsersSessionsUpdate'
    { _usuQuotaUser         :: !(Maybe Text)
    , _usuPrettyPrint       :: !Bool
    , _usuUserIP            :: !(Maybe Text)
    , _usuUserId            :: !Text
    , _usuKey               :: !(Maybe Key)
    , _usuCurrentTimeMillis :: !(Maybe Int64)
    , _usuOAuthToken        :: !(Maybe OAuthToken)
    , _usuSessionId         :: !Text
    , _usuSession           :: !Session
    , _usuFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSessionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usuQuotaUser'
--
-- * 'usuPrettyPrint'
--
-- * 'usuUserIP'
--
-- * 'usuUserId'
--
-- * 'usuKey'
--
-- * 'usuCurrentTimeMillis'
--
-- * 'usuOAuthToken'
--
-- * 'usuSessionId'
--
-- * 'usuSession'
--
-- * 'usuFields'
usersSessionsUpdate'
    :: Text -- ^ 'userId'
    -> Text -- ^ 'sessionId'
    -> Session -- ^ 'Session'
    -> UsersSessionsUpdate'
usersSessionsUpdate' pUsuUserId_ pUsuSessionId_ pUsuSession_ =
    UsersSessionsUpdate'
    { _usuQuotaUser = Nothing
    , _usuPrettyPrint = True
    , _usuUserIP = Nothing
    , _usuUserId = pUsuUserId_
    , _usuKey = Nothing
    , _usuCurrentTimeMillis = Nothing
    , _usuOAuthToken = Nothing
    , _usuSessionId = pUsuSessionId_
    , _usuSession = pUsuSession_
    , _usuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
usuQuotaUser :: Lens' UsersSessionsUpdate' (Maybe Text)
usuQuotaUser
  = lens _usuQuotaUser (\ s a -> s{_usuQuotaUser = a})

-- | Returns response with indentations and line breaks.
usuPrettyPrint :: Lens' UsersSessionsUpdate' Bool
usuPrettyPrint
  = lens _usuPrettyPrint
      (\ s a -> s{_usuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
usuUserIP :: Lens' UsersSessionsUpdate' (Maybe Text)
usuUserIP
  = lens _usuUserIP (\ s a -> s{_usuUserIP = a})

-- | Create sessions for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
usuUserId :: Lens' UsersSessionsUpdate' Text
usuUserId
  = lens _usuUserId (\ s a -> s{_usuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
usuKey :: Lens' UsersSessionsUpdate' (Maybe Key)
usuKey = lens _usuKey (\ s a -> s{_usuKey = a})

-- | The client\'s current time in milliseconds since epoch.
usuCurrentTimeMillis :: Lens' UsersSessionsUpdate' (Maybe Int64)
usuCurrentTimeMillis
  = lens _usuCurrentTimeMillis
      (\ s a -> s{_usuCurrentTimeMillis = a})

-- | OAuth 2.0 token for the current user.
usuOAuthToken :: Lens' UsersSessionsUpdate' (Maybe OAuthToken)
usuOAuthToken
  = lens _usuOAuthToken
      (\ s a -> s{_usuOAuthToken = a})

-- | The ID of the session to be created.
usuSessionId :: Lens' UsersSessionsUpdate' Text
usuSessionId
  = lens _usuSessionId (\ s a -> s{_usuSessionId = a})

-- | Multipart request metadata.
usuSession :: Lens' UsersSessionsUpdate' Session
usuSession
  = lens _usuSession (\ s a -> s{_usuSession = a})

-- | Selector specifying which fields to include in a partial response.
usuFields :: Lens' UsersSessionsUpdate' (Maybe Text)
usuFields
  = lens _usuFields (\ s a -> s{_usuFields = a})

instance GoogleAuth UsersSessionsUpdate' where
        authKey = usuKey . _Just
        authToken = usuOAuthToken . _Just

instance GoogleRequest UsersSessionsUpdate' where
        type Rs UsersSessionsUpdate' = Session
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersSessionsUpdate'{..}
          = go _usuCurrentTimeMillis _usuUserId _usuSessionId
              _usuQuotaUser
              (Just _usuPrettyPrint)
              _usuUserIP
              _usuFields
              _usuKey
              _usuOAuthToken
              (Just AltJSON)
              _usuSession
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersSessionsUpdateResource)
                      r
                      u
