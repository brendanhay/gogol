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
-- Module      : Network.Google.Resource.Fitness.Users.Sessions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a session specified by the given session ID.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersSessionsDelete@.
module Network.Google.Resource.Fitness.Users.Sessions.Delete
    (
    -- * REST Resource
      UsersSessionsDeleteResource

    -- * Creating a Request
    , usersSessionsDelete'
    , UsersSessionsDelete'

    -- * Request Lenses
    , usdQuotaUser
    , usdPrettyPrint
    , usdUserIP
    , usdUserId
    , usdKey
    , usdCurrentTimeMillis
    , usdOAuthToken
    , usdSessionId
    , usdFields
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersSessionsDelete@ which the
-- 'UsersSessionsDelete'' request conforms to.
type UsersSessionsDeleteResource =
     Capture "userId" Text :>
       "sessions" :>
         Capture "sessionId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "currentTimeMillis" Int64 :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a session specified by the given session ID.
--
-- /See:/ 'usersSessionsDelete'' smart constructor.
data UsersSessionsDelete' = UsersSessionsDelete'
    { _usdQuotaUser         :: !(Maybe Text)
    , _usdPrettyPrint       :: !Bool
    , _usdUserIP            :: !(Maybe Text)
    , _usdUserId            :: !Text
    , _usdKey               :: !(Maybe Key)
    , _usdCurrentTimeMillis :: !(Maybe Int64)
    , _usdOAuthToken        :: !(Maybe OAuthToken)
    , _usdSessionId         :: !Text
    , _usdFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSessionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdQuotaUser'
--
-- * 'usdPrettyPrint'
--
-- * 'usdUserIP'
--
-- * 'usdUserId'
--
-- * 'usdKey'
--
-- * 'usdCurrentTimeMillis'
--
-- * 'usdOAuthToken'
--
-- * 'usdSessionId'
--
-- * 'usdFields'
usersSessionsDelete'
    :: Text -- ^ 'userId'
    -> Text -- ^ 'sessionId'
    -> UsersSessionsDelete'
usersSessionsDelete' pUsdUserId_ pUsdSessionId_ =
    UsersSessionsDelete'
    { _usdQuotaUser = Nothing
    , _usdPrettyPrint = True
    , _usdUserIP = Nothing
    , _usdUserId = pUsdUserId_
    , _usdKey = Nothing
    , _usdCurrentTimeMillis = Nothing
    , _usdOAuthToken = Nothing
    , _usdSessionId = pUsdSessionId_
    , _usdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
usdQuotaUser :: Lens' UsersSessionsDelete' (Maybe Text)
usdQuotaUser
  = lens _usdQuotaUser (\ s a -> s{_usdQuotaUser = a})

-- | Returns response with indentations and line breaks.
usdPrettyPrint :: Lens' UsersSessionsDelete' Bool
usdPrettyPrint
  = lens _usdPrettyPrint
      (\ s a -> s{_usdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
usdUserIP :: Lens' UsersSessionsDelete' (Maybe Text)
usdUserIP
  = lens _usdUserIP (\ s a -> s{_usdUserIP = a})

-- | Delete a session for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
usdUserId :: Lens' UsersSessionsDelete' Text
usdUserId
  = lens _usdUserId (\ s a -> s{_usdUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
usdKey :: Lens' UsersSessionsDelete' (Maybe Key)
usdKey = lens _usdKey (\ s a -> s{_usdKey = a})

-- | The client\'s current time in milliseconds since epoch.
usdCurrentTimeMillis :: Lens' UsersSessionsDelete' (Maybe Int64)
usdCurrentTimeMillis
  = lens _usdCurrentTimeMillis
      (\ s a -> s{_usdCurrentTimeMillis = a})

-- | OAuth 2.0 token for the current user.
usdOAuthToken :: Lens' UsersSessionsDelete' (Maybe OAuthToken)
usdOAuthToken
  = lens _usdOAuthToken
      (\ s a -> s{_usdOAuthToken = a})

-- | The ID of the session to be deleted.
usdSessionId :: Lens' UsersSessionsDelete' Text
usdSessionId
  = lens _usdSessionId (\ s a -> s{_usdSessionId = a})

-- | Selector specifying which fields to include in a partial response.
usdFields :: Lens' UsersSessionsDelete' (Maybe Text)
usdFields
  = lens _usdFields (\ s a -> s{_usdFields = a})

instance GoogleAuth UsersSessionsDelete' where
        authKey = usdKey . _Just
        authToken = usdOAuthToken . _Just

instance GoogleRequest UsersSessionsDelete' where
        type Rs UsersSessionsDelete' = ()
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersSessionsDelete'{..}
          = go _usdQuotaUser (Just _usdPrettyPrint) _usdUserIP
              _usdUserId
              _usdKey
              _usdCurrentTimeMillis
              _usdOAuthToken
              _usdSessionId
              _usdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersSessionsDeleteResource)
                      r
                      u
