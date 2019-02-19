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
-- Module      : Network.Google.Resource.GamesManagement.Scores.Reset
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for the leaderboard with the given ID for the currently
-- authenticated player. This method is only accessible to whitelisted
-- tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.scores.reset@.
module Network.Google.Resource.GamesManagement.Scores.Reset
    (
    -- * REST Resource
      ScoresResetResource

    -- * Creating a Request
    , scoresReset
    , ScoresReset

    -- * Request Lenses
    , srLeaderboardId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.scores.reset@ method which the
-- 'ScoresReset' request conforms to.
type ScoresResetResource =
     "games" :>
       "v1management" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "scores" :>
               "reset" :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] PlayerScoreResetResponse

-- | Resets scores for the leaderboard with the given ID for the currently
-- authenticated player. This method is only accessible to whitelisted
-- tester accounts for your application.
--
-- /See:/ 'scoresReset' smart constructor.
newtype ScoresReset =
  ScoresReset'
    { _srLeaderboardId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ScoresReset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srLeaderboardId'
scoresReset
    :: Text -- ^ 'srLeaderboardId'
    -> ScoresReset
scoresReset pSrLeaderboardId_ =
  ScoresReset' {_srLeaderboardId = pSrLeaderboardId_}

-- | The ID of the leaderboard.
srLeaderboardId :: Lens' ScoresReset Text
srLeaderboardId
  = lens _srLeaderboardId
      (\ s a -> s{_srLeaderboardId = a})

instance GoogleRequest ScoresReset where
        type Rs ScoresReset = PlayerScoreResetResponse
        type Scopes ScoresReset =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresReset'{..}
          = go _srLeaderboardId (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy ScoresResetResource)
                      mempty
