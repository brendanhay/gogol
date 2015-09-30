{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Fitness.Users.Sessions.Update
    (
    -- * REST Resource
      UsersSessionsUpdateAPI

    -- * Creating a Request
    , usersSessionsUpdate
    , UsersSessionsUpdate

    -- * Request Lenses
    , usuQuotaUser
    , usuPrettyPrint
    , usuUserIp
    , usuUserId
    , usuKey
    , usuCurrentTimeMillis
    , usuOauthToken
    , usuSessionId
    , usuFields
    , usuAlt
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersSessionsUpdate@ which the
-- 'UsersSessionsUpdate' request conforms to.
type UsersSessionsUpdateAPI =
     Capture "userId" Text :>
       "sessions" :>
         Capture "sessionId" Text :>
           QueryParam "currentTimeMillis" Int64 :>
             Put '[JSON] Session

-- | Updates or insert a given session.
--
-- /See:/ 'usersSessionsUpdate' smart constructor.
data UsersSessionsUpdate = UsersSessionsUpdate
    { _usuQuotaUser         :: !(Maybe Text)
    , _usuPrettyPrint       :: !Bool
    , _usuUserIp            :: !(Maybe Text)
    , _usuUserId            :: !Text
    , _usuKey               :: !(Maybe Text)
    , _usuCurrentTimeMillis :: !(Maybe Int64)
    , _usuOauthToken        :: !(Maybe Text)
    , _usuSessionId         :: !Text
    , _usuFields            :: !(Maybe Text)
    , _usuAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSessionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usuQuotaUser'
--
-- * 'usuPrettyPrint'
--
-- * 'usuUserIp'
--
-- * 'usuUserId'
--
-- * 'usuKey'
--
-- * 'usuCurrentTimeMillis'
--
-- * 'usuOauthToken'
--
-- * 'usuSessionId'
--
-- * 'usuFields'
--
-- * 'usuAlt'
usersSessionsUpdate
    :: Text -- ^ 'userId'
    -> Text -- ^ 'sessionId'
    -> UsersSessionsUpdate
usersSessionsUpdate pUsuUserId_ pUsuSessionId_ =
    UsersSessionsUpdate
    { _usuQuotaUser = Nothing
    , _usuPrettyPrint = True
    , _usuUserIp = Nothing
    , _usuUserId = pUsuUserId_
    , _usuKey = Nothing
    , _usuCurrentTimeMillis = Nothing
    , _usuOauthToken = Nothing
    , _usuSessionId = pUsuSessionId_
    , _usuFields = Nothing
    , _usuAlt = "json"
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
usuUserIp :: Lens' UsersSessionsUpdate' (Maybe Text)
usuUserIp
  = lens _usuUserIp (\ s a -> s{_usuUserIp = a})

-- | Create sessions for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
usuUserId :: Lens' UsersSessionsUpdate' Text
usuUserId
  = lens _usuUserId (\ s a -> s{_usuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
usuKey :: Lens' UsersSessionsUpdate' (Maybe Text)
usuKey = lens _usuKey (\ s a -> s{_usuKey = a})

-- | The client\'s current time in milliseconds since epoch.
usuCurrentTimeMillis :: Lens' UsersSessionsUpdate' (Maybe Int64)
usuCurrentTimeMillis
  = lens _usuCurrentTimeMillis
      (\ s a -> s{_usuCurrentTimeMillis = a})

-- | OAuth 2.0 token for the current user.
usuOauthToken :: Lens' UsersSessionsUpdate' (Maybe Text)
usuOauthToken
  = lens _usuOauthToken
      (\ s a -> s{_usuOauthToken = a})

-- | The ID of the session to be created.
usuSessionId :: Lens' UsersSessionsUpdate' Text
usuSessionId
  = lens _usuSessionId (\ s a -> s{_usuSessionId = a})

-- | Selector specifying which fields to include in a partial response.
usuFields :: Lens' UsersSessionsUpdate' (Maybe Text)
usuFields
  = lens _usuFields (\ s a -> s{_usuFields = a})

-- | Data format for the response.
usuAlt :: Lens' UsersSessionsUpdate' Text
usuAlt = lens _usuAlt (\ s a -> s{_usuAlt = a})

instance GoogleRequest UsersSessionsUpdate' where
        type Rs UsersSessionsUpdate' = Session
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersSessionsUpdate{..}
          = go _usuQuotaUser _usuPrettyPrint _usuUserIp
              _usuUserId
              _usuKey
              _usuCurrentTimeMillis
              _usuOauthToken
              _usuSessionId
              _usuFields
              _usuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersSessionsUpdateAPI)
                      r
                      u
