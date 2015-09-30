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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets scores for the leaderboard with the given ID for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards can be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementScoresResetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Scores.ResetForAllPlayers
    (
    -- * REST Resource
      ScoresResetForAllPlayersResource

    -- * Creating a Request
    , scoresResetForAllPlayers'
    , ScoresResetForAllPlayers'

    -- * Request Lenses
    , srfapQuotaUser
    , srfapPrettyPrint
    , srfapUserIp
    , srfapLeaderboardId
    , srfapKey
    , srfapOauthToken
    , srfapFields
    , srfapAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementScoresResetForAllPlayers@ which the
-- 'ScoresResetForAllPlayers'' request conforms to.
type ScoresResetForAllPlayersResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           "resetForAllPlayers" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] ()

-- | Resets scores for the leaderboard with the given ID for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards can be reset.
--
-- /See:/ 'scoresResetForAllPlayers'' smart constructor.
data ScoresResetForAllPlayers' = ScoresResetForAllPlayers'
    { _srfapQuotaUser     :: !(Maybe Text)
    , _srfapPrettyPrint   :: !Bool
    , _srfapUserIp        :: !(Maybe Text)
    , _srfapLeaderboardId :: !Text
    , _srfapKey           :: !(Maybe Text)
    , _srfapOauthToken    :: !(Maybe Text)
    , _srfapFields        :: !(Maybe Text)
    , _srfapAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srfapQuotaUser'
--
-- * 'srfapPrettyPrint'
--
-- * 'srfapUserIp'
--
-- * 'srfapLeaderboardId'
--
-- * 'srfapKey'
--
-- * 'srfapOauthToken'
--
-- * 'srfapFields'
--
-- * 'srfapAlt'
scoresResetForAllPlayers'
    :: Text -- ^ 'leaderboardId'
    -> ScoresResetForAllPlayers'
scoresResetForAllPlayers' pSrfapLeaderboardId_ =
    ScoresResetForAllPlayers'
    { _srfapQuotaUser = Nothing
    , _srfapPrettyPrint = True
    , _srfapUserIp = Nothing
    , _srfapLeaderboardId = pSrfapLeaderboardId_
    , _srfapKey = Nothing
    , _srfapOauthToken = Nothing
    , _srfapFields = Nothing
    , _srfapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
srfapQuotaUser :: Lens' ScoresResetForAllPlayers' (Maybe Text)
srfapQuotaUser
  = lens _srfapQuotaUser
      (\ s a -> s{_srfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
srfapPrettyPrint :: Lens' ScoresResetForAllPlayers' Bool
srfapPrettyPrint
  = lens _srfapPrettyPrint
      (\ s a -> s{_srfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
srfapUserIp :: Lens' ScoresResetForAllPlayers' (Maybe Text)
srfapUserIp
  = lens _srfapUserIp (\ s a -> s{_srfapUserIp = a})

-- | The ID of the leaderboard.
srfapLeaderboardId :: Lens' ScoresResetForAllPlayers' Text
srfapLeaderboardId
  = lens _srfapLeaderboardId
      (\ s a -> s{_srfapLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
srfapKey :: Lens' ScoresResetForAllPlayers' (Maybe Text)
srfapKey = lens _srfapKey (\ s a -> s{_srfapKey = a})

-- | OAuth 2.0 token for the current user.
srfapOauthToken :: Lens' ScoresResetForAllPlayers' (Maybe Text)
srfapOauthToken
  = lens _srfapOauthToken
      (\ s a -> s{_srfapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
srfapFields :: Lens' ScoresResetForAllPlayers' (Maybe Text)
srfapFields
  = lens _srfapFields (\ s a -> s{_srfapFields = a})

-- | Data format for the response.
srfapAlt :: Lens' ScoresResetForAllPlayers' Alt
srfapAlt = lens _srfapAlt (\ s a -> s{_srfapAlt = a})

instance GoogleRequest ScoresResetForAllPlayers'
         where
        type Rs ScoresResetForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u ScoresResetForAllPlayers'{..}
          = go _srfapQuotaUser (Just _srfapPrettyPrint)
              _srfapUserIp
              _srfapLeaderboardId
              _srfapKey
              _srfapOauthToken
              _srfapFields
              (Just _srfapAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ScoresResetForAllPlayersResource)
                      r
                      u
