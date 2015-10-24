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
-- Module      : Network.Google.Resource.Calendar.Events.Move
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves an event to another calendar, i.e. changes an event\'s organizer.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.move@.
module Network.Google.Resource.Calendar.Events.Move
    (
    -- * REST Resource
      EventsMoveResource

    -- * Creating a Request
    , eventsMove
    , EventsMove

    -- * Request Lenses
    , emDestination
    , emCalendarId
    , emSendNotifications
    , emEventId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.events.move@ method which the
-- 'EventsMove' request conforms to.
type EventsMoveResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 "move" :>
                   QueryParam "destination" Text :>
                     QueryParam "sendNotifications" Bool :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Event

-- | Moves an event to another calendar, i.e. changes an event\'s organizer.
--
-- /See:/ 'eventsMove' smart constructor.
data EventsMove = EventsMove
    { _emDestination       :: !Text
    , _emCalendarId        :: !Text
    , _emSendNotifications :: !(Maybe Bool)
    , _emEventId           :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsMove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emDestination'
--
-- * 'emCalendarId'
--
-- * 'emSendNotifications'
--
-- * 'emEventId'
eventsMove
    :: Text -- ^ 'emDestination'
    -> Text -- ^ 'emCalendarId'
    -> Text -- ^ 'emEventId'
    -> EventsMove
eventsMove pEmDestination_ pEmCalendarId_ pEmEventId_ =
    EventsMove
    { _emDestination = pEmDestination_
    , _emCalendarId = pEmCalendarId_
    , _emSendNotifications = Nothing
    , _emEventId = pEmEventId_
    }

-- | Calendar identifier of the target calendar where the event is to be
-- moved to.
emDestination :: Lens' EventsMove Text
emDestination
  = lens _emDestination
      (\ s a -> s{_emDestination = a})

-- | Calendar identifier of the source calendar where the event currently is
-- on.
emCalendarId :: Lens' EventsMove Text
emCalendarId
  = lens _emCalendarId (\ s a -> s{_emCalendarId = a})

-- | Whether to send notifications about the change of the event\'s
-- organizer. Optional. The default is False.
emSendNotifications :: Lens' EventsMove (Maybe Bool)
emSendNotifications
  = lens _emSendNotifications
      (\ s a -> s{_emSendNotifications = a})

-- | Event identifier.
emEventId :: Lens' EventsMove Text
emEventId
  = lens _emEventId (\ s a -> s{_emEventId = a})

instance GoogleRequest EventsMove where
        type Rs EventsMove = Event
        requestClient EventsMove{..}
          = go _emCalendarId _emEventId (Just _emDestination)
              _emSendNotifications
              (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsMoveResource)
                      mempty
