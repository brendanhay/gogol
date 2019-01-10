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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetAll
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all player progress on all events for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application. All quests for this player will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.events.resetAll@.
module Network.Google.Resource.GamesManagement.Events.ResetAll
    (
    -- * REST Resource
      EventsResetAllResource

    -- * Creating a Request
    , eventsResetAll
    , EventsResetAll

    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesManagement.events.resetAll@ method which the
-- 'EventsResetAll' request conforms to.
type EventsResetAllResource =
     "games" :>
       "v1management" :>
         "events" :>
           "reset" :>
             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on all events for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application. All quests for this player will also be reset.
--
-- /See:/ 'eventsResetAll' smart constructor.
data EventsResetAll =
    EventsResetAll'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetAll' with the minimum fields required to make a request.
--
eventsResetAll
    :: EventsResetAll
eventsResetAll = EventsResetAll'

instance GoogleRequest EventsResetAll where
        type Rs EventsResetAll = ()
        type Scopes EventsResetAll =
             '["https://www.googleapis.com/auth/games"]
        requestClient EventsResetAll'{}
          = go (Just AltJSON) gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy EventsResetAllResource)
                      mempty
