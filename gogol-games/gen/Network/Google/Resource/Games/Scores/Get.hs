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
module Network.Google.Resource.Games.Scores.Get
    (
    -- * REST Resource
      ScoresGetResource

    -- * Creating a Request
    , scoresGet'
    , ScoresGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIP
    , sgTimeSpan
    , sgLeaderboardId
    , sgKey
    , sgIncludeRankType
    , sgLanguage
    , sgPageToken
    , sgOAuthToken
    , sgPlayerId
    , sgMaxResults
    , sgFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresGet@ which the
-- 'ScoresGet'' request conforms to.
type ScoresGetResource =
     "players" :>
       Capture "playerId" Text :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "scores" :>
               Capture "timeSpan" GamesScoresGetTimeSpan :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "includeRankType"
                           GamesScoresGetIncludeRankType
                           :>
                           QueryParam "language" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "maxResults" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON]
                                         PlayerLeaderboardScoreListResponse

-- | Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, leaderboardId can be set
-- to ALL to retrieve data for all leaderboards in a given time span. NOTE:
-- You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the
-- same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ 'scoresGet'' smart constructor.
data ScoresGet' = ScoresGet'
    { _sgQuotaUser       :: !(Maybe Text)
    , _sgPrettyPrint     :: !Bool
    , _sgUserIP          :: !(Maybe Text)
    , _sgTimeSpan        :: !GamesScoresGetTimeSpan
    , _sgLeaderboardId   :: !Text
    , _sgKey             :: !(Maybe Key)
    , _sgIncludeRankType :: !(Maybe GamesScoresGetIncludeRankType)
    , _sgLanguage        :: !(Maybe Text)
    , _sgPageToken       :: !(Maybe Text)
    , _sgOAuthToken      :: !(Maybe OAuthToken)
    , _sgPlayerId        :: !Text
    , _sgMaxResults      :: !(Maybe Int32)
    , _sgFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIP'
--
-- * 'sgTimeSpan'
--
-- * 'sgLeaderboardId'
--
-- * 'sgKey'
--
-- * 'sgIncludeRankType'
--
-- * 'sgLanguage'
--
-- * 'sgPageToken'
--
-- * 'sgOAuthToken'
--
-- * 'sgPlayerId'
--
-- * 'sgMaxResults'
--
-- * 'sgFields'
scoresGet'
    :: GamesScoresGetTimeSpan -- ^ 'timeSpan'
    -> Text -- ^ 'leaderboardId'
    -> Text -- ^ 'playerId'
    -> ScoresGet'
scoresGet' pSgTimeSpan_ pSgLeaderboardId_ pSgPlayerId_ =
    ScoresGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIP = Nothing
    , _sgTimeSpan = pSgTimeSpan_
    , _sgLeaderboardId = pSgLeaderboardId_
    , _sgKey = Nothing
    , _sgIncludeRankType = Nothing
    , _sgLanguage = Nothing
    , _sgPageToken = Nothing
    , _sgOAuthToken = Nothing
    , _sgPlayerId = pSgPlayerId_
    , _sgMaxResults = Nothing
    , _sgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' ScoresGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' ScoresGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIP :: Lens' ScoresGet' (Maybe Text)
sgUserIP = lens _sgUserIP (\ s a -> s{_sgUserIP = a})

-- | The time span for the scores and ranks you\'re requesting.
sgTimeSpan :: Lens' ScoresGet' GamesScoresGetTimeSpan
sgTimeSpan
  = lens _sgTimeSpan (\ s a -> s{_sgTimeSpan = a})

-- | The ID of the leaderboard. Can be set to \'ALL\' to retrieve data for
-- all leaderboards for this application.
sgLeaderboardId :: Lens' ScoresGet' Text
sgLeaderboardId
  = lens _sgLeaderboardId
      (\ s a -> s{_sgLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' ScoresGet' (Maybe Key)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | The types of ranks to return. If the parameter is omitted, no ranks will
-- be returned.
sgIncludeRankType :: Lens' ScoresGet' (Maybe GamesScoresGetIncludeRankType)
sgIncludeRankType
  = lens _sgIncludeRankType
      (\ s a -> s{_sgIncludeRankType = a})

-- | The preferred language to use for strings returned by this method.
sgLanguage :: Lens' ScoresGet' (Maybe Text)
sgLanguage
  = lens _sgLanguage (\ s a -> s{_sgLanguage = a})

-- | The token returned by the previous request.
sgPageToken :: Lens' ScoresGet' (Maybe Text)
sgPageToken
  = lens _sgPageToken (\ s a -> s{_sgPageToken = a})

-- | OAuth 2.0 token for the current user.
sgOAuthToken :: Lens' ScoresGet' (Maybe OAuthToken)
sgOAuthToken
  = lens _sgOAuthToken (\ s a -> s{_sgOAuthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
sgPlayerId :: Lens' ScoresGet' Text
sgPlayerId
  = lens _sgPlayerId (\ s a -> s{_sgPlayerId = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
sgMaxResults :: Lens' ScoresGet' (Maybe Int32)
sgMaxResults
  = lens _sgMaxResults (\ s a -> s{_sgMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' ScoresGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

instance GoogleAuth ScoresGet' where
        authKey = sgKey . _Just
        authToken = sgOAuthToken . _Just

instance GoogleRequest ScoresGet' where
        type Rs ScoresGet' =
             PlayerLeaderboardScoreListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresGet'{..}
          = go _sgQuotaUser (Just _sgPrettyPrint) _sgUserIP
              _sgTimeSpan
              _sgLeaderboardId
              _sgKey
              _sgIncludeRankType
              _sgLanguage
              _sgPageToken
              _sgOAuthToken
              _sgPlayerId
              _sgMaxResults
              _sgFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ScoresGetResource)
                      r
                      u
