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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Decline
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Decline an invitation to play a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesDecline@.
module Network.Google.Resource.Games.TurnBasedMatches.Decline
    (
    -- * REST Resource
      TurnBasedMatchesDeclineResource

    -- * Creating a Request
    , turnBasedMatchesDecline'
    , TurnBasedMatchesDecline'

    -- * Request Lenses
    , tLanguage
    , tMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesDecline@ method which the
-- 'TurnBasedMatchesDecline'' request conforms to.
type TurnBasedMatchesDeclineResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "decline" :>
           QueryParam "language" Text :>
             QueryParam "alt" AltJSON :>
               Put '[JSON] TurnBasedMatch

-- | Decline an invitation to play a turn-based match.
--
-- /See:/ 'turnBasedMatchesDecline'' smart constructor.
data TurnBasedMatchesDecline' = TurnBasedMatchesDecline'
    { _tLanguage :: !(Maybe Text)
    , _tMatchId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesDecline'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tLanguage'
--
-- * 'tMatchId'
turnBasedMatchesDecline'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesDecline'
turnBasedMatchesDecline' pTMatchId_ =
    TurnBasedMatchesDecline'
    { _tLanguage = Nothing
    , _tMatchId = pTMatchId_
    }

-- | The preferred language to use for strings returned by this method.
tLanguage :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tLanguage
  = lens _tLanguage (\ s a -> s{_tLanguage = a})

-- | The ID of the match.
tMatchId :: Lens' TurnBasedMatchesDecline' Text
tMatchId = lens _tMatchId (\ s a -> s{_tMatchId = a})

instance GoogleRequest TurnBasedMatchesDecline' where
        type Rs TurnBasedMatchesDecline' = TurnBasedMatch
        requestClient TurnBasedMatchesDecline'{..}
          = go _tMatchId _tLanguage (Just AltJSON) games
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesDeclineResource)
                      mempty
