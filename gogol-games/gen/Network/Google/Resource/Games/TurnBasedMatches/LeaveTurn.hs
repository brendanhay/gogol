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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.LeaveTurn
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Leave a turn-based match during the current player\'s turn, without
-- canceling the match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.leaveTurn@.
module Network.Google.Resource.Games.TurnBasedMatches.LeaveTurn
    (
    -- * REST Resource
      TurnBasedMatchesLeaveTurnResource

    -- * Creating a Request
    , turnBasedMatchesLeaveTurn
    , TurnBasedMatchesLeaveTurn

    -- * Request Lenses
    , tbmltLanguage
    , tbmltPendingParticipantId
    , tbmltMatchId
    , tbmltMatchVersion
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.leaveTurn@ method which the
-- 'TurnBasedMatchesLeaveTurn' request conforms to.
type TurnBasedMatchesLeaveTurnResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "leaveTurn" :>
           QueryParam "matchVersion" Int32 :>
             QueryParam "language" Text :>
               QueryParam "pendingParticipantId" Text :>
                 QueryParam "alt" AltJSON :>
                   Put '[JSON] TurnBasedMatch

-- | Leave a turn-based match during the current player\'s turn, without
-- canceling the match.
--
-- /See:/ 'turnBasedMatchesLeaveTurn' smart constructor.
data TurnBasedMatchesLeaveTurn = TurnBasedMatchesLeaveTurn
    { _tbmltLanguage             :: !(Maybe Text)
    , _tbmltPendingParticipantId :: !(Maybe Text)
    , _tbmltMatchId              :: !Text
    , _tbmltMatchVersion         :: !Int32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesLeaveTurn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmltLanguage'
--
-- * 'tbmltPendingParticipantId'
--
-- * 'tbmltMatchId'
--
-- * 'tbmltMatchVersion'
turnBasedMatchesLeaveTurn
    :: Text -- ^ 'tbmltMatchId'
    -> Int32 -- ^ 'tbmltMatchVersion'
    -> TurnBasedMatchesLeaveTurn
turnBasedMatchesLeaveTurn pTbmltMatchId_ pTbmltMatchVersion_ =
    TurnBasedMatchesLeaveTurn
    { _tbmltLanguage = Nothing
    , _tbmltPendingParticipantId = Nothing
    , _tbmltMatchId = pTbmltMatchId_
    , _tbmltMatchVersion = pTbmltMatchVersion_
    }

-- | The preferred language to use for strings returned by this method.
tbmltLanguage :: Lens' TurnBasedMatchesLeaveTurn (Maybe Text)
tbmltLanguage
  = lens _tbmltLanguage
      (\ s a -> s{_tbmltLanguage = a})

-- | The ID of another participant who should take their turn next. If not
-- set, the match will wait for other player(s) to join via automatching;
-- this is only valid if automatch criteria is set on the match with
-- remaining slots for automatched players.
tbmltPendingParticipantId :: Lens' TurnBasedMatchesLeaveTurn (Maybe Text)
tbmltPendingParticipantId
  = lens _tbmltPendingParticipantId
      (\ s a -> s{_tbmltPendingParticipantId = a})

-- | The ID of the match.
tbmltMatchId :: Lens' TurnBasedMatchesLeaveTurn Text
tbmltMatchId
  = lens _tbmltMatchId (\ s a -> s{_tbmltMatchId = a})

-- | The version of the match being updated.
tbmltMatchVersion :: Lens' TurnBasedMatchesLeaveTurn Int32
tbmltMatchVersion
  = lens _tbmltMatchVersion
      (\ s a -> s{_tbmltMatchVersion = a})

instance GoogleRequest TurnBasedMatchesLeaveTurn
         where
        type Rs TurnBasedMatchesLeaveTurn = TurnBasedMatch
        requestClient TurnBasedMatchesLeaveTurn{..}
          = go _tbmltMatchId (Just _tbmltMatchVersion)
              _tbmltLanguage
              _tbmltPendingParticipantId
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesLeaveTurnResource)
                      mempty
