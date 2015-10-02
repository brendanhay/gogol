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
-- Module      : Network.Google.Resource.GamesManagement.Scores.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets scores for the leaderboard with the given ID for the currently
-- authenticated player. This method is only accessible to whitelisted
-- tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementScoresReset@.
module Network.Google.Resource.GamesManagement.Scores.Reset
    (
    -- * REST Resource
      ScoresResetResource

    -- * Creating a Request
    , scoresReset'
    , ScoresReset'

    -- * Request Lenses
    , srQuotaUser
    , srPrettyPrint
    , srUserIP
    , srLeaderboardId
    , srKey
    , srOAuthToken
    , srFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementScoresReset@ which the
-- 'ScoresReset'' request conforms to.
type ScoresResetResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           "reset" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] PlayerScoreResetResponse

-- | Resets scores for the leaderboard with the given ID for the currently
-- authenticated player. This method is only accessible to whitelisted
-- tester accounts for your application.
--
-- /See:/ 'scoresReset'' smart constructor.
data ScoresReset' = ScoresReset'
    { _srQuotaUser     :: !(Maybe Text)
    , _srPrettyPrint   :: !Bool
    , _srUserIP        :: !(Maybe Text)
    , _srLeaderboardId :: !Text
    , _srKey           :: !(Maybe Key)
    , _srOAuthToken    :: !(Maybe OAuthToken)
    , _srFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srQuotaUser'
--
-- * 'srPrettyPrint'
--
-- * 'srUserIP'
--
-- * 'srLeaderboardId'
--
-- * 'srKey'
--
-- * 'srOAuthToken'
--
-- * 'srFields'
scoresReset'
    :: Text -- ^ 'leaderboardId'
    -> ScoresReset'
scoresReset' pSrLeaderboardId_ =
    ScoresReset'
    { _srQuotaUser = Nothing
    , _srPrettyPrint = True
    , _srUserIP = Nothing
    , _srLeaderboardId = pSrLeaderboardId_
    , _srKey = Nothing
    , _srOAuthToken = Nothing
    , _srFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
srQuotaUser :: Lens' ScoresReset' (Maybe Text)
srQuotaUser
  = lens _srQuotaUser (\ s a -> s{_srQuotaUser = a})

-- | Returns response with indentations and line breaks.
srPrettyPrint :: Lens' ScoresReset' Bool
srPrettyPrint
  = lens _srPrettyPrint
      (\ s a -> s{_srPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
srUserIP :: Lens' ScoresReset' (Maybe Text)
srUserIP = lens _srUserIP (\ s a -> s{_srUserIP = a})

-- | The ID of the leaderboard.
srLeaderboardId :: Lens' ScoresReset' Text
srLeaderboardId
  = lens _srLeaderboardId
      (\ s a -> s{_srLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
srKey :: Lens' ScoresReset' (Maybe Key)
srKey = lens _srKey (\ s a -> s{_srKey = a})

-- | OAuth 2.0 token for the current user.
srOAuthToken :: Lens' ScoresReset' (Maybe OAuthToken)
srOAuthToken
  = lens _srOAuthToken (\ s a -> s{_srOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
srFields :: Lens' ScoresReset' (Maybe Text)
srFields = lens _srFields (\ s a -> s{_srFields = a})

instance GoogleAuth ScoresReset' where
        authKey = srKey . _Just
        authToken = srOAuthToken . _Just

instance GoogleRequest ScoresReset' where
        type Rs ScoresReset' = PlayerScoreResetResponse
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u ScoresReset'{..}
          = go _srLeaderboardId _srQuotaUser
              (Just _srPrettyPrint)
              _srUserIP
              _srFields
              _srKey
              _srOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresResetResource)
                      r
                      u
