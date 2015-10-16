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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancel a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesCancel@.
module Network.Google.Resource.Games.TurnBasedMatches.Cancel
    (
    -- * REST Resource
      TurnBasedMatchesCancelResource

    -- * Creating a Request
    , turnBasedMatchesCancel'
    , TurnBasedMatchesCancel'

    -- * Request Lenses
    , tbmcMatchId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesCancel@ method which the
-- 'TurnBasedMatchesCancel'' request conforms to.
type TurnBasedMatchesCancelResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "cancel" :>
           QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Cancel a turn-based match.
--
-- /See:/ 'turnBasedMatchesCancel'' smart constructor.
newtype TurnBasedMatchesCancel' = TurnBasedMatchesCancel'
    { _tbmcMatchId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmcMatchId'
turnBasedMatchesCancel'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesCancel'
turnBasedMatchesCancel' pTbmcMatchId_ =
    TurnBasedMatchesCancel'
    { _tbmcMatchId = pTbmcMatchId_
    }

-- | The ID of the match.
tbmcMatchId :: Lens' TurnBasedMatchesCancel' Text
tbmcMatchId
  = lens _tbmcMatchId (\ s a -> s{_tbmcMatchId = a})

instance GoogleRequest TurnBasedMatchesCancel' where
        type Rs TurnBasedMatchesCancel' = ()
        requestClient TurnBasedMatchesCancel'{..}
          = go _tbmcMatchId (Just AltJSON) gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesCancelResource)
                      mempty
