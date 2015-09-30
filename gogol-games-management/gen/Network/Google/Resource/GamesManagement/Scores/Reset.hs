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
    , srUserIp
    , srLeaderboardId
    , srKey
    , srOauthToken
    , srFields
    , srAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] PlayerScoreResetResponse

-- | Resets scores for the leaderboard with the given ID for the currently
-- authenticated player. This method is only accessible to whitelisted
-- tester accounts for your application.
--
-- /See:/ 'scoresReset'' smart constructor.
data ScoresReset' = ScoresReset'
    { _srQuotaUser     :: !(Maybe Text)
    , _srPrettyPrint   :: !Bool
    , _srUserIp        :: !(Maybe Text)
    , _srLeaderboardId :: !Text
    , _srKey           :: !(Maybe Text)
    , _srOauthToken    :: !(Maybe Text)
    , _srFields        :: !(Maybe Text)
    , _srAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srQuotaUser'
--
-- * 'srPrettyPrint'
--
-- * 'srUserIp'
--
-- * 'srLeaderboardId'
--
-- * 'srKey'
--
-- * 'srOauthToken'
--
-- * 'srFields'
--
-- * 'srAlt'
scoresReset'
    :: Text -- ^ 'leaderboardId'
    -> ScoresReset'
scoresReset' pSrLeaderboardId_ =
    ScoresReset'
    { _srQuotaUser = Nothing
    , _srPrettyPrint = True
    , _srUserIp = Nothing
    , _srLeaderboardId = pSrLeaderboardId_
    , _srKey = Nothing
    , _srOauthToken = Nothing
    , _srFields = Nothing
    , _srAlt = JSON
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
srUserIp :: Lens' ScoresReset' (Maybe Text)
srUserIp = lens _srUserIp (\ s a -> s{_srUserIp = a})

-- | The ID of the leaderboard.
srLeaderboardId :: Lens' ScoresReset' Text
srLeaderboardId
  = lens _srLeaderboardId
      (\ s a -> s{_srLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
srKey :: Lens' ScoresReset' (Maybe Text)
srKey = lens _srKey (\ s a -> s{_srKey = a})

-- | OAuth 2.0 token for the current user.
srOauthToken :: Lens' ScoresReset' (Maybe Text)
srOauthToken
  = lens _srOauthToken (\ s a -> s{_srOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
srFields :: Lens' ScoresReset' (Maybe Text)
srFields = lens _srFields (\ s a -> s{_srFields = a})

-- | Data format for the response.
srAlt :: Lens' ScoresReset' Alt
srAlt = lens _srAlt (\ s a -> s{_srAlt = a})

instance GoogleRequest ScoresReset' where
        type Rs ScoresReset' = PlayerScoreResetResponse
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u ScoresReset'{..}
          = go _srQuotaUser (Just _srPrettyPrint) _srUserIp
              _srLeaderboardId
              _srKey
              _srOauthToken
              _srFields
              (Just _srAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresResetResource)
                      r
                      u
