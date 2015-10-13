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
-- Module      : Network.Google.Resource.Games.Scores.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesScoresList@.
module Network.Google.Resource.Games.Scores.List
    (
    -- * REST Resource
      ScoresListResource

    -- * Creating a Request
    , scoresList'
    , ScoresList'

    -- * Request Lenses
    , sllCollection
    , sllTimeSpan
    , sllLeaderboardId
    , sllLanguage
    , sllPageToken
    , sllMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresList@ method which the
-- 'ScoresList'' request conforms to.
type ScoresListResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           Capture "collection" ScoresListCollection :>
             QueryParam "timeSpan" ScoresListTimeSpan :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] LeaderboardScores

-- | Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ 'scoresList'' smart constructor.
data ScoresList' = ScoresList'
    { _sllCollection    :: !ScoresListCollection
    , _sllTimeSpan      :: !ScoresListTimeSpan
    , _sllLeaderboardId :: !Text
    , _sllLanguage      :: !(Maybe Text)
    , _sllPageToken     :: !(Maybe Text)
    , _sllMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sllCollection'
--
-- * 'sllTimeSpan'
--
-- * 'sllLeaderboardId'
--
-- * 'sllLanguage'
--
-- * 'sllPageToken'
--
-- * 'sllMaxResults'
scoresList'
    :: ScoresListCollection -- ^ 'collection'
    -> ScoresListTimeSpan -- ^ 'timeSpan'
    -> Text -- ^ 'leaderboardId'
    -> ScoresList'
scoresList' pSllCollection_ pSllTimeSpan_ pSllLeaderboardId_ =
    ScoresList'
    { _sllCollection = pSllCollection_
    , _sllTimeSpan = pSllTimeSpan_
    , _sllLeaderboardId = pSllLeaderboardId_
    , _sllLanguage = Nothing
    , _sllPageToken = Nothing
    , _sllMaxResults = Nothing
    }

-- | The collection of scores you\'re requesting.
sllCollection :: Lens' ScoresList' ScoresListCollection
sllCollection
  = lens _sllCollection
      (\ s a -> s{_sllCollection = a})

-- | The time span for the scores and ranks you\'re requesting.
sllTimeSpan :: Lens' ScoresList' ScoresListTimeSpan
sllTimeSpan
  = lens _sllTimeSpan (\ s a -> s{_sllTimeSpan = a})

-- | The ID of the leaderboard.
sllLeaderboardId :: Lens' ScoresList' Text
sllLeaderboardId
  = lens _sllLeaderboardId
      (\ s a -> s{_sllLeaderboardId = a})

-- | The preferred language to use for strings returned by this method.
sllLanguage :: Lens' ScoresList' (Maybe Text)
sllLanguage
  = lens _sllLanguage (\ s a -> s{_sllLanguage = a})

-- | The token returned by the previous request.
sllPageToken :: Lens' ScoresList' (Maybe Text)
sllPageToken
  = lens _sllPageToken (\ s a -> s{_sllPageToken = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
sllMaxResults :: Lens' ScoresList' (Maybe Int32)
sllMaxResults
  = lens _sllMaxResults
      (\ s a -> s{_sllMaxResults = a})

instance GoogleRequest ScoresList' where
        type Rs ScoresList' = LeaderboardScores
        requestClient ScoresList'{..}
          = go _sllLeaderboardId _sllCollection
              (Just _sllTimeSpan)
              _sllLanguage
              _sllPageToken
              _sllMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy ScoresListResource)
                      mempty
