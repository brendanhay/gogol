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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Join
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Join a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.join@.
module Network.Google.Resource.Games.TurnBasedMatches.Join
    (
    -- * REST Resource
      TurnBasedMatchesJoinResource

    -- * Creating a Request
    , turnBasedMatchesJoin
    , TurnBasedMatchesJoin

    -- * Request Lenses
    , tbmjLanguage
    , tbmjMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.join@ method which the
-- 'TurnBasedMatchesJoin' request conforms to.
type TurnBasedMatchesJoinResource =
     "games" :>
       "v1" :>
         "turnbasedmatches" :>
           Capture "matchId" Text :>
             "join" :>
               QueryParam "language" Text :>
                 QueryParam "alt" AltJSON :>
                   Put '[JSON] TurnBasedMatch

-- | Join a turn-based match.
--
-- /See:/ 'turnBasedMatchesJoin' smart constructor.
data TurnBasedMatchesJoin = TurnBasedMatchesJoin
    { _tbmjLanguage :: !(Maybe Text)
    , _tbmjMatchId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesJoin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmjLanguage'
--
-- * 'tbmjMatchId'
turnBasedMatchesJoin
    :: Text -- ^ 'tbmjMatchId'
    -> TurnBasedMatchesJoin
turnBasedMatchesJoin pTbmjMatchId_ =
    TurnBasedMatchesJoin
    { _tbmjLanguage = Nothing
    , _tbmjMatchId = pTbmjMatchId_
    }

-- | The preferred language to use for strings returned by this method.
tbmjLanguage :: Lens' TurnBasedMatchesJoin (Maybe Text)
tbmjLanguage
  = lens _tbmjLanguage (\ s a -> s{_tbmjLanguage = a})

-- | The ID of the match.
tbmjMatchId :: Lens' TurnBasedMatchesJoin Text
tbmjMatchId
  = lens _tbmjMatchId (\ s a -> s{_tbmjMatchId = a})

instance GoogleRequest TurnBasedMatchesJoin where
        type Rs TurnBasedMatchesJoin = TurnBasedMatch
        requestClient TurnBasedMatchesJoin{..}
          = go _tbmjMatchId _tbmjLanguage (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesJoinResource)
                      mempty
