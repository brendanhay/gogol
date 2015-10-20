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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets events with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- may be reset. All quests that use any of the events will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.events.resetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Events.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      EventsResetMultipleForAllPlayersResource

    -- * Creating a Request
    , eventsResetMultipleForAllPlayers
    , EventsResetMultipleForAllPlayers

    -- * Request Lenses
    , ermfapPayload
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.events.resetMultipleForAllPlayers@ method which the
-- 'EventsResetMultipleForAllPlayers' request conforms to.
type EventsResetMultipleForAllPlayersResource =
     "events" :>
       "resetMultipleForAllPlayers" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] EventsResetMultipleForAllRequest :>
             Post '[JSON] ()

-- | Resets events with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- may be reset. All quests that use any of the events will also be reset.
--
-- /See:/ 'eventsResetMultipleForAllPlayers' smart constructor.
newtype EventsResetMultipleForAllPlayers = EventsResetMultipleForAllPlayers
    { _ermfapPayload :: EventsResetMultipleForAllRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetMultipleForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ermfapPayload'
eventsResetMultipleForAllPlayers
    :: EventsResetMultipleForAllRequest -- ^ 'ermfapPayload'
    -> EventsResetMultipleForAllPlayers
eventsResetMultipleForAllPlayers pErmfapPayload_ =
    EventsResetMultipleForAllPlayers
    { _ermfapPayload = pErmfapPayload_
    }

-- | Multipart request metadata.
ermfapPayload :: Lens' EventsResetMultipleForAllPlayers EventsResetMultipleForAllRequest
ermfapPayload
  = lens _ermfapPayload
      (\ s a -> s{_ermfapPayload = a})

instance GoogleRequest
         EventsResetMultipleForAllPlayers where
        type Rs EventsResetMultipleForAllPlayers = ()
        requestClient EventsResetMultipleForAllPlayers{..}
          = go (Just AltJSON) _ermfapPayload
              gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EventsResetMultipleForAllPlayersResource)
                      mempty
