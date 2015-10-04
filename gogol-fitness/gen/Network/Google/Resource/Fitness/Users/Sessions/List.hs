{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Fitness.Users.Sessions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists sessions previously created.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersSessionsList@.
module Network.Google.Resource.Fitness.Users.Sessions.List
    (
    -- * REST Resource
      UsersSessionsListResource

    -- * Creating a Request
    , usersSessionsList'
    , UsersSessionsList'

    -- * Request Lenses
    , uslQuotaUser
    , uslPrettyPrint
    , uslStartTime
    , uslUserIP
    , uslUserId
    , uslKey
    , uslEndTime
    , uslPageToken
    , uslOAuthToken
    , uslIncludeDeleted
    , uslFields
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersSessionsList@ which the
-- 'UsersSessionsList'' request conforms to.
type UsersSessionsListResource =
     Capture "userId" Text :>
       "sessions" :>
         QueryParam "startTime" Text :>
           QueryParam "endTime" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "includeDeleted" Bool :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListSessionsResponse

-- | Lists sessions previously created.
--
-- /See:/ 'usersSessionsList'' smart constructor.
data UsersSessionsList' = UsersSessionsList'
    { _uslQuotaUser      :: !(Maybe Text)
    , _uslPrettyPrint    :: !Bool
    , _uslStartTime      :: !(Maybe Text)
    , _uslUserIP         :: !(Maybe Text)
    , _uslUserId         :: !Text
    , _uslKey            :: !(Maybe Key)
    , _uslEndTime        :: !(Maybe Text)
    , _uslPageToken      :: !(Maybe Text)
    , _uslOAuthToken     :: !(Maybe OAuthToken)
    , _uslIncludeDeleted :: !(Maybe Bool)
    , _uslFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSessionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uslQuotaUser'
--
-- * 'uslPrettyPrint'
--
-- * 'uslStartTime'
--
-- * 'uslUserIP'
--
-- * 'uslUserId'
--
-- * 'uslKey'
--
-- * 'uslEndTime'
--
-- * 'uslPageToken'
--
-- * 'uslOAuthToken'
--
-- * 'uslIncludeDeleted'
--
-- * 'uslFields'
usersSessionsList'
    :: Text -- ^ 'userId'
    -> UsersSessionsList'
usersSessionsList' pUslUserId_ =
    UsersSessionsList'
    { _uslQuotaUser = Nothing
    , _uslPrettyPrint = True
    , _uslStartTime = Nothing
    , _uslUserIP = Nothing
    , _uslUserId = pUslUserId_
    , _uslKey = Nothing
    , _uslEndTime = Nothing
    , _uslPageToken = Nothing
    , _uslOAuthToken = Nothing
    , _uslIncludeDeleted = Nothing
    , _uslFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uslQuotaUser :: Lens' UsersSessionsList' (Maybe Text)
uslQuotaUser
  = lens _uslQuotaUser (\ s a -> s{_uslQuotaUser = a})

-- | Returns response with indentations and line breaks.
uslPrettyPrint :: Lens' UsersSessionsList' Bool
uslPrettyPrint
  = lens _uslPrettyPrint
      (\ s a -> s{_uslPrettyPrint = a})

-- | An RFC3339 timestamp. Only sessions ending between the start and end
-- times will be included in the response.
uslStartTime :: Lens' UsersSessionsList' (Maybe Text)
uslStartTime
  = lens _uslStartTime (\ s a -> s{_uslStartTime = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uslUserIP :: Lens' UsersSessionsList' (Maybe Text)
uslUserIP
  = lens _uslUserIP (\ s a -> s{_uslUserIP = a})

-- | List sessions for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
uslUserId :: Lens' UsersSessionsList' Text
uslUserId
  = lens _uslUserId (\ s a -> s{_uslUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uslKey :: Lens' UsersSessionsList' (Maybe Key)
uslKey = lens _uslKey (\ s a -> s{_uslKey = a})

-- | An RFC3339 timestamp. Only sessions ending between the start and end
-- times will be included in the response.
uslEndTime :: Lens' UsersSessionsList' (Maybe Text)
uslEndTime
  = lens _uslEndTime (\ s a -> s{_uslEndTime = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
uslPageToken :: Lens' UsersSessionsList' (Maybe Text)
uslPageToken
  = lens _uslPageToken (\ s a -> s{_uslPageToken = a})

-- | OAuth 2.0 token for the current user.
uslOAuthToken :: Lens' UsersSessionsList' (Maybe OAuthToken)
uslOAuthToken
  = lens _uslOAuthToken
      (\ s a -> s{_uslOAuthToken = a})

-- | If true, deleted sessions will be returned. When set to true, sessions
-- returned in this response will only have an ID and will not have any
-- other fields.
uslIncludeDeleted :: Lens' UsersSessionsList' (Maybe Bool)
uslIncludeDeleted
  = lens _uslIncludeDeleted
      (\ s a -> s{_uslIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
uslFields :: Lens' UsersSessionsList' (Maybe Text)
uslFields
  = lens _uslFields (\ s a -> s{_uslFields = a})

instance GoogleAuth UsersSessionsList' where
        authKey = uslKey . _Just
        authToken = uslOAuthToken . _Just

instance GoogleRequest UsersSessionsList' where
        type Rs UsersSessionsList' = ListSessionsResponse
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersSessionsList'{..}
          = go _uslUserId _uslStartTime _uslEndTime
              _uslPageToken
              _uslIncludeDeleted
              _uslQuotaUser
              (Just _uslPrettyPrint)
              _uslUserIP
              _uslFields
              _uslKey
              _uslOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersSessionsListResource)
                      r
                      u
