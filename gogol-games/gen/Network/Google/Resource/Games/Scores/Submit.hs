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
-- Module      : Network.Google.Resource.Games.Scores.Submit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submits a score to the specified leaderboard.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesScoresSubmit@.
module Network.Google.Resource.Games.Scores.Submit
    (
    -- * REST Resource
      ScoresSubmitResource

    -- * Creating a Request
    , scoresSubmit'
    , ScoresSubmit'

    -- * Request Lenses
    , ssScoreTag
    , ssScore
    , ssLeaderboardId
    , ssLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesScoresSubmit@ method which the
-- 'ScoresSubmit'' request conforms to.
type ScoresSubmitResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         "scores" :>
           QueryParam "score" Int64 :>
             QueryParam "scoreTag" Text :>
               QueryParam "language" Text :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] PlayerScoreResponse

-- | Submits a score to the specified leaderboard.
--
-- /See:/ 'scoresSubmit'' smart constructor.
data ScoresSubmit' = ScoresSubmit'
    { _ssScoreTag      :: !(Maybe Text)
    , _ssScore         :: !Int64
    , _ssLeaderboardId :: !Text
    , _ssLanguage      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresSubmit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssScoreTag'
--
-- * 'ssScore'
--
-- * 'ssLeaderboardId'
--
-- * 'ssLanguage'
scoresSubmit'
    :: Int64 -- ^ 'score'
    -> Text -- ^ 'leaderboardId'
    -> ScoresSubmit'
scoresSubmit' pSsScore_ pSsLeaderboardId_ =
    ScoresSubmit'
    { _ssScoreTag = Nothing
    , _ssScore = pSsScore_
    , _ssLeaderboardId = pSsLeaderboardId_
    , _ssLanguage = Nothing
    }

-- | Additional information about the score you\'re submitting. Values must
-- contain no more than 64 URI-safe characters as defined by section 2.3 of
-- RFC 3986.
ssScoreTag :: Lens' ScoresSubmit' (Maybe Text)
ssScoreTag
  = lens _ssScoreTag (\ s a -> s{_ssScoreTag = a})

-- | The score you\'re submitting. The submitted score is ignored if it is
-- worse than a previously submitted score, where worse depends on the
-- leaderboard sort order. The meaning of the score value depends on the
-- leaderboard format type. For fixed-point, the score represents the raw
-- value. For time, the score represents elapsed time in milliseconds. For
-- currency, the score represents a value in micro units.
ssScore :: Lens' ScoresSubmit' Int64
ssScore = lens _ssScore (\ s a -> s{_ssScore = a})

-- | The ID of the leaderboard.
ssLeaderboardId :: Lens' ScoresSubmit' Text
ssLeaderboardId
  = lens _ssLeaderboardId
      (\ s a -> s{_ssLeaderboardId = a})

-- | The preferred language to use for strings returned by this method.
ssLanguage :: Lens' ScoresSubmit' (Maybe Text)
ssLanguage
  = lens _ssLanguage (\ s a -> s{_ssLanguage = a})

instance GoogleRequest ScoresSubmit' where
        type Rs ScoresSubmit' = PlayerScoreResponse
        requestClient ScoresSubmit'{..}
          = go _ssLeaderboardId (Just _ssScore) _ssScoreTag
              _ssLanguage
              (Just AltJSON)
              games
          where go
                  = buildClient (Proxy :: Proxy ScoresSubmitResource)
                      mempty
