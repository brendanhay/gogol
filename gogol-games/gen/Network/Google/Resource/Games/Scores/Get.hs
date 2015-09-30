{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Scores.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, leaderboardId can be set
-- to ALL to retrieve data for all leaderboards in a given time span. NOTE:
-- You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the
-- same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesScoresGet@.
module Games.Scores.Get
    (
    -- * REST Resource
      ScoresGetAPI

    -- * Creating a Request
    , scoresGet
    , ScoresGet

    -- * Request Lenses
    , scoQuotaUser
    , scoPrettyPrint
    , scoUserIp
    , scoTimeSpan
    , scoLeaderboardId
    , scoKey
    , scoIncludeRankType
    , scoLanguage
    , scoPageToken
    , scoOauthToken
    , scoPlayerId
    , scoMaxResults
    , scoFields
    , scoAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresGet@ which the
-- 'ScoresGet' request conforms to.
type ScoresGetAPI =
     "players" :>
       Capture "playerId" Text :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "scores" :>
               Capture "timeSpan" Text :>
                 QueryParam "includeRankType" Text :>
                   QueryParam "language" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Int32 :>
                         Get '[JSON] PlayerLeaderboardScoreListResponse

-- | Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, leaderboardId can be set
-- to ALL to retrieve data for all leaderboards in a given time span. NOTE:
-- You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the
-- same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ 'scoresGet' smart constructor.
data ScoresGet = ScoresGet
    { _scoQuotaUser       :: !(Maybe Text)
    , _scoPrettyPrint     :: !Bool
    , _scoUserIp          :: !(Maybe Text)
    , _scoTimeSpan        :: !Text
    , _scoLeaderboardId   :: !Text
    , _scoKey             :: !(Maybe Text)
    , _scoIncludeRankType :: !(Maybe Text)
    , _scoLanguage        :: !(Maybe Text)
    , _scoPageToken       :: !(Maybe Text)
    , _scoOauthToken      :: !(Maybe Text)
    , _scoPlayerId        :: !Text
    , _scoMaxResults      :: !(Maybe Int32)
    , _scoFields          :: !(Maybe Text)
    , _scoAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scoQuotaUser'
--
-- * 'scoPrettyPrint'
--
-- * 'scoUserIp'
--
-- * 'scoTimeSpan'
--
-- * 'scoLeaderboardId'
--
-- * 'scoKey'
--
-- * 'scoIncludeRankType'
--
-- * 'scoLanguage'
--
-- * 'scoPageToken'
--
-- * 'scoOauthToken'
--
-- * 'scoPlayerId'
--
-- * 'scoMaxResults'
--
-- * 'scoFields'
--
-- * 'scoAlt'
scoresGet
    :: Text -- ^ 'timeSpan'
    -> Text -- ^ 'leaderboardId'
    -> Text -- ^ 'playerId'
    -> ScoresGet
scoresGet pScoTimeSpan_ pScoLeaderboardId_ pScoPlayerId_ =
    ScoresGet
    { _scoQuotaUser = Nothing
    , _scoPrettyPrint = True
    , _scoUserIp = Nothing
    , _scoTimeSpan = pScoTimeSpan_
    , _scoLeaderboardId = pScoLeaderboardId_
    , _scoKey = Nothing
    , _scoIncludeRankType = Nothing
    , _scoLanguage = Nothing
    , _scoPageToken = Nothing
    , _scoOauthToken = Nothing
    , _scoPlayerId = pScoPlayerId_
    , _scoMaxResults = Nothing
    , _scoFields = Nothing
    , _scoAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scoQuotaUser :: Lens' ScoresGet' (Maybe Text)
scoQuotaUser
  = lens _scoQuotaUser (\ s a -> s{_scoQuotaUser = a})

-- | Returns response with indentations and line breaks.
scoPrettyPrint :: Lens' ScoresGet' Bool
scoPrettyPrint
  = lens _scoPrettyPrint
      (\ s a -> s{_scoPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scoUserIp :: Lens' ScoresGet' (Maybe Text)
scoUserIp
  = lens _scoUserIp (\ s a -> s{_scoUserIp = a})

-- | The time span for the scores and ranks you\'re requesting.
scoTimeSpan :: Lens' ScoresGet' Text
scoTimeSpan
  = lens _scoTimeSpan (\ s a -> s{_scoTimeSpan = a})

-- | The ID of the leaderboard. Can be set to \'ALL\' to retrieve data for
-- all leaderboards for this application.
scoLeaderboardId :: Lens' ScoresGet' Text
scoLeaderboardId
  = lens _scoLeaderboardId
      (\ s a -> s{_scoLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scoKey :: Lens' ScoresGet' (Maybe Text)
scoKey = lens _scoKey (\ s a -> s{_scoKey = a})

-- | The types of ranks to return. If the parameter is omitted, no ranks will
-- be returned.
scoIncludeRankType :: Lens' ScoresGet' (Maybe Text)
scoIncludeRankType
  = lens _scoIncludeRankType
      (\ s a -> s{_scoIncludeRankType = a})

-- | The preferred language to use for strings returned by this method.
scoLanguage :: Lens' ScoresGet' (Maybe Text)
scoLanguage
  = lens _scoLanguage (\ s a -> s{_scoLanguage = a})

-- | The token returned by the previous request.
scoPageToken :: Lens' ScoresGet' (Maybe Text)
scoPageToken
  = lens _scoPageToken (\ s a -> s{_scoPageToken = a})

-- | OAuth 2.0 token for the current user.
scoOauthToken :: Lens' ScoresGet' (Maybe Text)
scoOauthToken
  = lens _scoOauthToken
      (\ s a -> s{_scoOauthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
scoPlayerId :: Lens' ScoresGet' Text
scoPlayerId
  = lens _scoPlayerId (\ s a -> s{_scoPlayerId = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
scoMaxResults :: Lens' ScoresGet' (Maybe Int32)
scoMaxResults
  = lens _scoMaxResults
      (\ s a -> s{_scoMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
scoFields :: Lens' ScoresGet' (Maybe Text)
scoFields
  = lens _scoFields (\ s a -> s{_scoFields = a})

-- | Data format for the response.
scoAlt :: Lens' ScoresGet' Text
scoAlt = lens _scoAlt (\ s a -> s{_scoAlt = a})

instance GoogleRequest ScoresGet' where
        type Rs ScoresGet' =
             PlayerLeaderboardScoreListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresGet{..}
          = go _scoQuotaUser _scoPrettyPrint _scoUserIp
              _scoTimeSpan
              _scoLeaderboardId
              _scoKey
              _scoIncludeRankType
              _scoLanguage
              _scoPageToken
              _scoOauthToken
              _scoPlayerId
              _scoMaxResults
              _scoFields
              _scoAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ScoresGetAPI) r u
