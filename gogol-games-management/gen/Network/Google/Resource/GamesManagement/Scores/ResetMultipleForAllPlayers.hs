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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for the leaderboards with the given IDs for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards may be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.scores.resetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      ScoresResetMultipleForAllPlayersResource

    -- * Creating a Request
    , scoresResetMultipleForAllPlayers
    , ScoresResetMultipleForAllPlayers

    -- * Request Lenses
    , srmfapPayload
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.scores.resetMultipleForAllPlayers@ method which the
-- 'ScoresResetMultipleForAllPlayers' request conforms to.
type ScoresResetMultipleForAllPlayersResource =
     "games" :>
       "v1management" :>
         "scores" :>
           "resetMultipleForAllPlayers" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] ScoresResetMultipleForAllRequest :>
                 Post '[JSON] ()

-- | Resets scores for the leaderboards with the given IDs for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards may be reset.
--
-- /See:/ 'scoresResetMultipleForAllPlayers' smart constructor.
newtype ScoresResetMultipleForAllPlayers =
  ScoresResetMultipleForAllPlayers'
    { _srmfapPayload :: ScoresResetMultipleForAllRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoresResetMultipleForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srmfapPayload'
scoresResetMultipleForAllPlayers
    :: ScoresResetMultipleForAllRequest -- ^ 'srmfapPayload'
    -> ScoresResetMultipleForAllPlayers
scoresResetMultipleForAllPlayers pSrmfapPayload_ =
  ScoresResetMultipleForAllPlayers' {_srmfapPayload = pSrmfapPayload_}


-- | Multipart request metadata.
srmfapPayload :: Lens' ScoresResetMultipleForAllPlayers ScoresResetMultipleForAllRequest
srmfapPayload
  = lens _srmfapPayload
      (\ s a -> s{_srmfapPayload = a})

instance GoogleRequest
           ScoresResetMultipleForAllPlayers
         where
        type Rs ScoresResetMultipleForAllPlayers = ()
        type Scopes ScoresResetMultipleForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient ScoresResetMultipleForAllPlayers'{..}
          = go (Just AltJSON) _srmfapPayload
              gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ScoresResetMultipleForAllPlayersResource)
                      mempty
