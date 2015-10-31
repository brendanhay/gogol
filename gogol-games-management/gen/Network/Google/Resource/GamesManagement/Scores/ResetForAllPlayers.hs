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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetForAllPlayers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for the leaderboard with the given ID for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards can be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.scores.resetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Scores.ResetForAllPlayers
    (
    -- * REST Resource
      ScoresResetForAllPlayersResource

    -- * Creating a Request
    , scoresResetForAllPlayers
    , ScoresResetForAllPlayers

    -- * Request Lenses
    , srfapLeaderboardId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.scores.resetForAllPlayers@ method which the
-- 'ScoresResetForAllPlayers' request conforms to.
type ScoresResetForAllPlayersResource =
     "games" :>
       "v1management" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "scores" :>
               "resetForAllPlayers" :>
                 QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets scores for the leaderboard with the given ID for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards can be reset.
--
-- /See:/ 'scoresResetForAllPlayers' smart constructor.
newtype ScoresResetForAllPlayers = ScoresResetForAllPlayers
    { _srfapLeaderboardId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresResetForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srfapLeaderboardId'
scoresResetForAllPlayers
    :: Text -- ^ 'srfapLeaderboardId'
    -> ScoresResetForAllPlayers
scoresResetForAllPlayers pSrfapLeaderboardId_ =
    ScoresResetForAllPlayers
    { _srfapLeaderboardId = pSrfapLeaderboardId_
    }

-- | The ID of the leaderboard.
srfapLeaderboardId :: Lens' ScoresResetForAllPlayers Text
srfapLeaderboardId
  = lens _srfapLeaderboardId
      (\ s a -> s{_srfapLeaderboardId = a})

instance GoogleRequest ScoresResetForAllPlayers where
        type Rs ScoresResetForAllPlayers = ()
        type Scopes ScoresResetForAllPlayers =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient ScoresResetForAllPlayers{..}
          = go _srfapLeaderboardId (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ScoresResetForAllPlayersResource)
                      mempty
