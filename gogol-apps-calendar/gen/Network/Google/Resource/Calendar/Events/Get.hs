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
-- Module      : Network.Google.Resource.Calendar.Events.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.get@.
module Network.Google.Resource.Calendar.Events.Get
    (
    -- * REST Resource
      EventsGetResource

    -- * Creating a Request
    , eventsGet
    , EventsGet

    -- * Request Lenses
    , egCalendarId
    , egMaxAttendees
    , egTimeZone
    , egAlwaysIncludeEmail
    , egEventId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.events.get@ method which the
-- 'EventsGet' request conforms to.
type EventsGetResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             QueryParam "maxAttendees" Int32 :>
               QueryParam "timeZone" Text :>
                 QueryParam "alwaysIncludeEmail" Bool :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Event

-- | Returns an event.
--
-- /See:/ 'eventsGet' smart constructor.
data EventsGet = EventsGet
    { _egCalendarId         :: !Text
    , _egMaxAttendees       :: !(Maybe Int32)
    , _egTimeZone           :: !(Maybe Text)
    , _egAlwaysIncludeEmail :: !(Maybe Bool)
    , _egEventId            :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egCalendarId'
--
-- * 'egMaxAttendees'
--
-- * 'egTimeZone'
--
-- * 'egAlwaysIncludeEmail'
--
-- * 'egEventId'
eventsGet
    :: Text -- ^ 'egCalendarId'
    -> Text -- ^ 'egEventId'
    -> EventsGet
eventsGet pEgCalendarId_ pEgEventId_ =
    EventsGet
    { _egCalendarId = pEgCalendarId_
    , _egMaxAttendees = Nothing
    , _egTimeZone = Nothing
    , _egAlwaysIncludeEmail = Nothing
    , _egEventId = pEgEventId_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
egCalendarId :: Lens' EventsGet Text
egCalendarId
  = lens _egCalendarId (\ s a -> s{_egCalendarId = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
egMaxAttendees :: Lens' EventsGet (Maybe Int32)
egMaxAttendees
  = lens _egMaxAttendees
      (\ s a -> s{_egMaxAttendees = a})

-- | Time zone used in the response. Optional. The default is the time zone
-- of the calendar.
egTimeZone :: Lens' EventsGet (Maybe Text)
egTimeZone
  = lens _egTimeZone (\ s a -> s{_egTimeZone = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
egAlwaysIncludeEmail :: Lens' EventsGet (Maybe Bool)
egAlwaysIncludeEmail
  = lens _egAlwaysIncludeEmail
      (\ s a -> s{_egAlwaysIncludeEmail = a})

-- | Event identifier.
egEventId :: Lens' EventsGet Text
egEventId
  = lens _egEventId (\ s a -> s{_egEventId = a})

instance GoogleRequest EventsGet where
        type Rs EventsGet = Event
        requestClient EventsGet{..}
          = go _egCalendarId _egEventId _egMaxAttendees
              _egTimeZone
              _egAlwaysIncludeEmail
              (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsGetResource)
                      mempty
