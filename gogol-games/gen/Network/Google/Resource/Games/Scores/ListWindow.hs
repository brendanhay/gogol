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
-- Module      : Network.Google.Resource.Games.Scores.ListWindow
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the scores in a leaderboard around (and including) a player\'s
-- score.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.scores.listWindow@.
module Network.Google.Resource.Games.Scores.ListWindow
    (
    -- * REST Resource
      ScoresListWindowResource

    -- * Creating a Request
    , scoresListWindow
    , ScoresListWindow

    -- * Request Lenses
    , slwCollection
    , slwTimeSpan
    , slwReturnTopIfAbsent
    , slwLeaderboardId
    , slwLanguage
    , slwResultsAbove
    , slwPageToken
    , slwMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.scores.listWindow@ method which the
-- 'ScoresListWindow' request conforms to.
type ScoresListWindowResource =
     "games" :>
       "v1" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "window" :>
               Capture "collection" ScoresListWindowCollection :>
                 QueryParam "timeSpan" ScoresListWindowTimeSpan :>
                   QueryParam "returnTopIfAbsent" Bool :>
                     QueryParam "language" Text :>
                       QueryParam "resultsAbove" (Textual Int32) :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] LeaderboardScores

-- | Lists the scores in a leaderboard around (and including) a player\'s
-- score.
--
-- /See:/ 'scoresListWindow' smart constructor.
data ScoresListWindow = ScoresListWindow
    { _slwCollection        :: !ScoresListWindowCollection
    , _slwTimeSpan          :: !ScoresListWindowTimeSpan
    , _slwReturnTopIfAbsent :: !(Maybe Bool)
    , _slwLeaderboardId     :: !Text
    , _slwLanguage          :: !(Maybe Text)
    , _slwResultsAbove      :: !(Maybe (Textual Int32))
    , _slwPageToken         :: !(Maybe Text)
    , _slwMaxResults        :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresListWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slwCollection'
--
-- * 'slwTimeSpan'
--
-- * 'slwReturnTopIfAbsent'
--
-- * 'slwLeaderboardId'
--
-- * 'slwLanguage'
--
-- * 'slwResultsAbove'
--
-- * 'slwPageToken'
--
-- * 'slwMaxResults'
scoresListWindow
    :: ScoresListWindowCollection -- ^ 'slwCollection'
    -> ScoresListWindowTimeSpan -- ^ 'slwTimeSpan'
    -> Text -- ^ 'slwLeaderboardId'
    -> ScoresListWindow
scoresListWindow pSlwCollection_ pSlwTimeSpan_ pSlwLeaderboardId_ =
    ScoresListWindow
    { _slwCollection = pSlwCollection_
    , _slwTimeSpan = pSlwTimeSpan_
    , _slwReturnTopIfAbsent = Nothing
    , _slwLeaderboardId = pSlwLeaderboardId_
    , _slwLanguage = Nothing
    , _slwResultsAbove = Nothing
    , _slwPageToken = Nothing
    , _slwMaxResults = Nothing
    }

-- | The collection of scores you\'re requesting.
slwCollection :: Lens' ScoresListWindow ScoresListWindowCollection
slwCollection
  = lens _slwCollection
      (\ s a -> s{_slwCollection = a})

-- | The time span for the scores and ranks you\'re requesting.
slwTimeSpan :: Lens' ScoresListWindow ScoresListWindowTimeSpan
slwTimeSpan
  = lens _slwTimeSpan (\ s a -> s{_slwTimeSpan = a})

-- | True if the top scores should be returned when the player is not in the
-- leaderboard. Defaults to true.
slwReturnTopIfAbsent :: Lens' ScoresListWindow (Maybe Bool)
slwReturnTopIfAbsent
  = lens _slwReturnTopIfAbsent
      (\ s a -> s{_slwReturnTopIfAbsent = a})

-- | The ID of the leaderboard.
slwLeaderboardId :: Lens' ScoresListWindow Text
slwLeaderboardId
  = lens _slwLeaderboardId
      (\ s a -> s{_slwLeaderboardId = a})

-- | The preferred language to use for strings returned by this method.
slwLanguage :: Lens' ScoresListWindow (Maybe Text)
slwLanguage
  = lens _slwLanguage (\ s a -> s{_slwLanguage = a})

-- | The preferred number of scores to return above the player\'s score. More
-- scores may be returned if the player is at the bottom of the
-- leaderboard; fewer may be returned if the player is at the top. Must be
-- less than or equal to maxResults.
slwResultsAbove :: Lens' ScoresListWindow (Maybe Int32)
slwResultsAbove
  = lens _slwResultsAbove
      (\ s a -> s{_slwResultsAbove = a})
      . mapping _Coerce

-- | The token returned by the previous request.
slwPageToken :: Lens' ScoresListWindow (Maybe Text)
slwPageToken
  = lens _slwPageToken (\ s a -> s{_slwPageToken = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
slwMaxResults :: Lens' ScoresListWindow (Maybe Int32)
slwMaxResults
  = lens _slwMaxResults
      (\ s a -> s{_slwMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ScoresListWindow where
        type Rs ScoresListWindow = LeaderboardScores
        requestClient ScoresListWindow{..}
          = go _slwLeaderboardId _slwCollection
              (Just _slwTimeSpan)
              _slwReturnTopIfAbsent
              _slwLanguage
              _slwResultsAbove
              _slwPageToken
              _slwMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ScoresListWindowResource)
                      mempty
