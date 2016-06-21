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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetForAllPlayers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the event with the given ID for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- can be reset. All quests that use the event will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.events.resetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Events.ResetForAllPlayers
    (
    -- * REST Resource
      EventsResetForAllPlayersResource

    -- * Creating a Request
    , eventsResetForAllPlayers
    , EventsResetForAllPlayers

    -- * Request Lenses
    , erfapEventId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.events.resetForAllPlayers@ method which the
-- 'EventsResetForAllPlayers' request conforms to.
type EventsResetForAllPlayersResource =
     "games" :>
       "v1management" :>
         "events" :>
           Capture "eventId" Text :>
             "resetForAllPlayers" :>
               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets the event with the given ID for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- can be reset. All quests that use the event will also be reset.
--
-- /See:/ 'eventsResetForAllPlayers' smart constructor.
newtype EventsResetForAllPlayers = EventsResetForAllPlayers'
    { _erfapEventId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erfapEventId'
eventsResetForAllPlayers
    :: Text -- ^ 'erfapEventId'
    -> EventsResetForAllPlayers
eventsResetForAllPlayers pErfapEventId_ =
    EventsResetForAllPlayers'
    { _erfapEventId = pErfapEventId_
    }

-- | The ID of the event.
erfapEventId :: Lens' EventsResetForAllPlayers Text
erfapEventId
  = lens _erfapEventId (\ s a -> s{_erfapEventId = a})

instance GoogleRequest EventsResetForAllPlayers where
        type Rs EventsResetForAllPlayers = ()
        type Scopes EventsResetForAllPlayers =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient EventsResetForAllPlayers'{..}
          = go _erfapEventId (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EventsResetForAllPlayersResource)
                      mempty
