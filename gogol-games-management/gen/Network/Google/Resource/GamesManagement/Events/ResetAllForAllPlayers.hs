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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetAllForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all draft events for all players. This method is only available
-- to user accounts for your developer console. All quests that use any of
-- these events will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.events.resetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Events.ResetAllForAllPlayers
    (
    -- * REST Resource
      EventsResetAllForAllPlayersResource

    -- * Creating a Request
    , eventsResetAllForAllPlayers
    , EventsResetAllForAllPlayers

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.events.resetAllForAllPlayers@ method which the
-- 'EventsResetAllForAllPlayers' request conforms to.
type EventsResetAllForAllPlayersResource =
     "events" :>
       "resetAllForAllPlayers" :>
         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all draft events for all players. This method is only available
-- to user accounts for your developer console. All quests that use any of
-- these events will also be reset.
--
-- /See:/ 'eventsResetAllForAllPlayers' smart constructor.
data EventsResetAllForAllPlayers =
    EventsResetAllForAllPlayers
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetAllForAllPlayers' with the minimum fields required to make a request.
--
eventsResetAllForAllPlayers
    :: EventsResetAllForAllPlayers
eventsResetAllForAllPlayers = EventsResetAllForAllPlayers

instance GoogleRequest EventsResetAllForAllPlayers
         where
        type Rs EventsResetAllForAllPlayers = ()
        requestClient EventsResetAllForAllPlayers{}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EventsResetAllForAllPlayersResource)
                      mempty
