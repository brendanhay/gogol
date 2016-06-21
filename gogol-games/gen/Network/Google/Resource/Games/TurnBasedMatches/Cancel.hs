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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancel a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.cancel@.
module Network.Google.Resource.Games.TurnBasedMatches.Cancel
    (
    -- * REST Resource
      TurnBasedMatchesCancelResource

    -- * Creating a Request
    , turnBasedMatchesCancel
    , TurnBasedMatchesCancel

    -- * Request Lenses
    , tConsistencyToken
    , tMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.cancel@ method which the
-- 'TurnBasedMatchesCancel' request conforms to.
type TurnBasedMatchesCancelResource =
     "games" :>
       "v1" :>
         "turnbasedmatches" :>
           Capture "matchId" Text :>
             "cancel" :>
               QueryParam "consistencyToken" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Cancel a turn-based match.
--
-- /See:/ 'turnBasedMatchesCancel' smart constructor.
data TurnBasedMatchesCancel = TurnBasedMatchesCancel'
    { _tConsistencyToken :: !(Maybe (Textual Int64))
    , _tMatchId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tConsistencyToken'
--
-- * 'tMatchId'
turnBasedMatchesCancel
    :: Text -- ^ 'tMatchId'
    -> TurnBasedMatchesCancel
turnBasedMatchesCancel pTMatchId_ =
    TurnBasedMatchesCancel'
    { _tConsistencyToken = Nothing
    , _tMatchId = pTMatchId_
    }

-- | The last-seen mutation timestamp.
tConsistencyToken :: Lens' TurnBasedMatchesCancel (Maybe Int64)
tConsistencyToken
  = lens _tConsistencyToken
      (\ s a -> s{_tConsistencyToken = a})
      . mapping _Coerce

-- | The ID of the match.
tMatchId :: Lens' TurnBasedMatchesCancel Text
tMatchId = lens _tMatchId (\ s a -> s{_tMatchId = a})

instance GoogleRequest TurnBasedMatchesCancel where
        type Rs TurnBasedMatchesCancel = ()
        type Scopes TurnBasedMatchesCancel =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient TurnBasedMatchesCancel'{..}
          = go _tMatchId _tConsistencyToken (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesCancelResource)
                      mempty
