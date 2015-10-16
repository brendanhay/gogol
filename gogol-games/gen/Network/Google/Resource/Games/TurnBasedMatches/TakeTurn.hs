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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.TakeTurn
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Commit the results of a player turn.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesTakeTurn@.
module Network.Google.Resource.Games.TurnBasedMatches.TakeTurn
    (
    -- * REST Resource
      TurnBasedMatchesTakeTurnResource

    -- * Creating a Request
    , turnBasedMatchesTakeTurn'
    , TurnBasedMatchesTakeTurn'

    -- * Request Lenses
    , tbmttPayload
    , tbmttLanguage
    , tbmttMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesTakeTurn@ method which the
-- 'TurnBasedMatchesTakeTurn'' request conforms to.
type TurnBasedMatchesTakeTurnResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "turn" :>
           QueryParam "language" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] TurnBasedMatchTurn :>
                 Put '[JSON] TurnBasedMatch

-- | Commit the results of a player turn.
--
-- /See:/ 'turnBasedMatchesTakeTurn'' smart constructor.
data TurnBasedMatchesTakeTurn' = TurnBasedMatchesTakeTurn'
    { _tbmttPayload  :: !TurnBasedMatchTurn
    , _tbmttLanguage :: !(Maybe Text)
    , _tbmttMatchId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesTakeTurn'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmttPayload'
--
-- * 'tbmttLanguage'
--
-- * 'tbmttMatchId'
turnBasedMatchesTakeTurn'
    :: TurnBasedMatchTurn -- ^ 'payload'
    -> Text -- ^ 'matchId'
    -> TurnBasedMatchesTakeTurn'
turnBasedMatchesTakeTurn' pTbmttPayload_ pTbmttMatchId_ =
    TurnBasedMatchesTakeTurn'
    { _tbmttPayload = pTbmttPayload_
    , _tbmttLanguage = Nothing
    , _tbmttMatchId = pTbmttMatchId_
    }

-- | Multipart request metadata.
tbmttPayload :: Lens' TurnBasedMatchesTakeTurn' TurnBasedMatchTurn
tbmttPayload
  = lens _tbmttPayload (\ s a -> s{_tbmttPayload = a})

-- | The preferred language to use for strings returned by this method.
tbmttLanguage :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttLanguage
  = lens _tbmttLanguage
      (\ s a -> s{_tbmttLanguage = a})

-- | The ID of the match.
tbmttMatchId :: Lens' TurnBasedMatchesTakeTurn' Text
tbmttMatchId
  = lens _tbmttMatchId (\ s a -> s{_tbmttMatchId = a})

instance GoogleRequest TurnBasedMatchesTakeTurn'
         where
        type Rs TurnBasedMatchesTakeTurn' = TurnBasedMatch
        requestClient TurnBasedMatchesTakeTurn'{..}
          = go _tbmttMatchId _tbmttLanguage (Just AltJSON)
              _tbmttPayload
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesTakeTurnResource)
                      mempty
