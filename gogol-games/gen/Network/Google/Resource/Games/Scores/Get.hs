{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Games.Scores.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, leaderboardId can be set
-- to ALL to retrieve data for all leaderboards in a given time span. NOTE:
-- You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the
-- same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.scores.get@.
module Network.Google.Resource.Games.Scores.Get
    (
    -- * REST Resource
      ScoresGetResource

    -- * Creating a Request
    , scoresGet
    , ScoresGet

    -- * Request Lenses
    , sgTimeSpan
    , sgLeaderboardId
    , sgIncludeRankType
    , sgLanguage
    , sgPageToken
    , sgPlayerId
    , sgMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.scores.get@ method which the
-- 'ScoresGet' request conforms to.
type ScoresGetResource =
     "games" :>
       "v1" :>
         "players" :>
           Capture "playerId" Text :>
             "leaderboards" :>
               Capture "leaderboardId" Text :>
                 "scores" :>
                   Capture "timeSpan" ScoresGetTimeSpan :>
                     QueryParam "includeRankType" ScoresGetIncludeRankType
                       :>
                       QueryParam "language" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] PlayerLeaderboardScoreListResponse

-- | Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, leaderboardId can be set
-- to ALL to retrieve data for all leaderboards in a given time span. NOTE:
-- You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the
-- same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ 'scoresGet' smart constructor.
data ScoresGet =
  ScoresGet'
    { _sgTimeSpan        :: !ScoresGetTimeSpan
    , _sgLeaderboardId   :: !Text
    , _sgIncludeRankType :: !(Maybe ScoresGetIncludeRankType)
    , _sgLanguage        :: !(Maybe Text)
    , _sgPageToken       :: !(Maybe Text)
    , _sgPlayerId        :: !Text
    , _sgMaxResults      :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgTimeSpan'
--
-- * 'sgLeaderboardId'
--
-- * 'sgIncludeRankType'
--
-- * 'sgLanguage'
--
-- * 'sgPageToken'
--
-- * 'sgPlayerId'
--
-- * 'sgMaxResults'
scoresGet
    :: ScoresGetTimeSpan -- ^ 'sgTimeSpan'
    -> Text -- ^ 'sgLeaderboardId'
    -> Text -- ^ 'sgPlayerId'
    -> ScoresGet
scoresGet pSgTimeSpan_ pSgLeaderboardId_ pSgPlayerId_ =
  ScoresGet'
    { _sgTimeSpan = pSgTimeSpan_
    , _sgLeaderboardId = pSgLeaderboardId_
    , _sgIncludeRankType = Nothing
    , _sgLanguage = Nothing
    , _sgPageToken = Nothing
    , _sgPlayerId = pSgPlayerId_
    , _sgMaxResults = Nothing
    }


-- | The time span for the scores and ranks you\'re requesting.
sgTimeSpan :: Lens' ScoresGet ScoresGetTimeSpan
sgTimeSpan
  = lens _sgTimeSpan (\ s a -> s{_sgTimeSpan = a})

-- | The ID of the leaderboard. Can be set to \'ALL\' to retrieve data for
-- all leaderboards for this application.
sgLeaderboardId :: Lens' ScoresGet Text
sgLeaderboardId
  = lens _sgLeaderboardId
      (\ s a -> s{_sgLeaderboardId = a})

-- | The types of ranks to return. If the parameter is omitted, no ranks will
-- be returned.
sgIncludeRankType :: Lens' ScoresGet (Maybe ScoresGetIncludeRankType)
sgIncludeRankType
  = lens _sgIncludeRankType
      (\ s a -> s{_sgIncludeRankType = a})

-- | The preferred language to use for strings returned by this method.
sgLanguage :: Lens' ScoresGet (Maybe Text)
sgLanguage
  = lens _sgLanguage (\ s a -> s{_sgLanguage = a})

-- | The token returned by the previous request.
sgPageToken :: Lens' ScoresGet (Maybe Text)
sgPageToken
  = lens _sgPageToken (\ s a -> s{_sgPageToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
sgPlayerId :: Lens' ScoresGet Text
sgPlayerId
  = lens _sgPlayerId (\ s a -> s{_sgPlayerId = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
sgMaxResults :: Lens' ScoresGet (Maybe Int32)
sgMaxResults
  = lens _sgMaxResults (\ s a -> s{_sgMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ScoresGet where
        type Rs ScoresGet =
             PlayerLeaderboardScoreListResponse
        type Scopes ScoresGet =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient ScoresGet'{..}
          = go _sgPlayerId _sgLeaderboardId _sgTimeSpan
              _sgIncludeRankType
              _sgLanguage
              _sgPageToken
              _sgMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy ScoresGetResource)
                      mempty
