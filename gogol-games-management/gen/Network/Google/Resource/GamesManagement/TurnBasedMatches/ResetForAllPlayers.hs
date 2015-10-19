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
-- Module      : Network.Google.Resource.GamesManagement.TurnBasedMatches.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes turn-based matches where the only match participants are from
-- whitelisted tester accounts for your application. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.turnBasedMatches.resetForAllPlayers@.
module Network.Google.Resource.GamesManagement.TurnBasedMatches.ResetForAllPlayers
    (
    -- * REST Resource
      TurnBasedMatchesResetForAllPlayersResource

    -- * Creating a Request
    , turnBasedMatchesResetForAllPlayers'
    , TurnBasedMatchesResetForAllPlayers'

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.turnBasedMatches.resetForAllPlayers@ method which the
-- 'TurnBasedMatchesResetForAllPlayers'' request conforms to.
type TurnBasedMatchesResetForAllPlayersResource =
     "turnbasedmatches" :>
       "resetForAllPlayers" :>
         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Deletes turn-based matches where the only match participants are from
-- whitelisted tester accounts for your application. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ 'turnBasedMatchesResetForAllPlayers'' smart constructor.
data TurnBasedMatchesResetForAllPlayers' =
    TurnBasedMatchesResetForAllPlayers'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesResetForAllPlayers'' with the minimum fields required to make a request.
--
turnBasedMatchesResetForAllPlayers'
    :: TurnBasedMatchesResetForAllPlayers'
turnBasedMatchesResetForAllPlayers' = TurnBasedMatchesResetForAllPlayers'

instance GoogleRequest
         TurnBasedMatchesResetForAllPlayers' where
        type Rs TurnBasedMatchesResetForAllPlayers' = ()
        requestClient TurnBasedMatchesResetForAllPlayers'{}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TurnBasedMatchesResetForAllPlayersResource)
                      mempty
