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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Leave
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Leave a turn-based match when it is not the current player\'s turn,
-- without canceling the match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.leave@.
module Network.Google.Resource.Games.TurnBasedMatches.Leave
    (
    -- * REST Resource
      TurnBasedMatchesLeaveResource

    -- * Creating a Request
    , turnBasedMatchesLeave'
    , TurnBasedMatchesLeave'

    -- * Request Lenses
    , turLanguage
    , turMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.leave@ method which the
-- 'TurnBasedMatchesLeave'' request conforms to.
type TurnBasedMatchesLeaveResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "leave" :>
           QueryParam "language" Text :>
             QueryParam "alt" AltJSON :>
               Put '[JSON] TurnBasedMatch

-- | Leave a turn-based match when it is not the current player\'s turn,
-- without canceling the match.
--
-- /See:/ 'turnBasedMatchesLeave'' smart constructor.
data TurnBasedMatchesLeave' = TurnBasedMatchesLeave'
    { _turLanguage :: !(Maybe Text)
    , _turMatchId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesLeave'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'turLanguage'
--
-- * 'turMatchId'
turnBasedMatchesLeave'
    :: Text -- ^ 'turMatchId'
    -> TurnBasedMatchesLeave'
turnBasedMatchesLeave' pTurMatchId_ =
    TurnBasedMatchesLeave'
    { _turLanguage = Nothing
    , _turMatchId = pTurMatchId_
    }

-- | The preferred language to use for strings returned by this method.
turLanguage :: Lens' TurnBasedMatchesLeave' (Maybe Text)
turLanguage
  = lens _turLanguage (\ s a -> s{_turLanguage = a})

-- | The ID of the match.
turMatchId :: Lens' TurnBasedMatchesLeave' Text
turMatchId
  = lens _turMatchId (\ s a -> s{_turMatchId = a})

instance GoogleRequest TurnBasedMatchesLeave' where
        type Rs TurnBasedMatchesLeave' = TurnBasedMatch
        requestClient TurnBasedMatchesLeave'{..}
          = go _turMatchId _turLanguage (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesLeaveResource)
                      mempty
