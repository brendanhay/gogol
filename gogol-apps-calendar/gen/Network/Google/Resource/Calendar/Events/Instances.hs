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
-- Module      : Network.Google.Resource.Calendar.Events.Instances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns instances of the specified recurring event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.instances@.
module Network.Google.Resource.Calendar.Events.Instances
    (
    -- * REST Resource
      EventsInstancesResource

    -- * Creating a Request
    , eventsInstances
    , EventsInstances

    -- * Request Lenses
    , eCalendarId
    , eTimeMin
    , eShowDeleted
    , eOriginalStart
    , eMaxAttendees
    , ePageToken
    , eTimeZone
    , eMaxResults
    , eAlwaysIncludeEmail
    , eTimeMax
    , eEventId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.events.instances@ method which the
-- 'EventsInstances' request conforms to.
type EventsInstancesResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 "instances" :>
                   QueryParam "timeMin" DateTime' :>
                     QueryParam "showDeleted" Bool :>
                       QueryParam "originalStart" Text :>
                         QueryParam "maxAttendees" (Textual Int32) :>
                           QueryParam "pageToken" Text :>
                             QueryParam "timeZone" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "alwaysIncludeEmail" Bool :>
                                   QueryParam "timeMax" DateTime' :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Events

-- | Returns instances of the specified recurring event.
--
-- /See:/ 'eventsInstances' smart constructor.
data EventsInstances =
  EventsInstances'
    { _eCalendarId         :: !Text
    , _eTimeMin            :: !(Maybe DateTime')
    , _eShowDeleted        :: !(Maybe Bool)
    , _eOriginalStart      :: !(Maybe Text)
    , _eMaxAttendees       :: !(Maybe (Textual Int32))
    , _ePageToken          :: !(Maybe Text)
    , _eTimeZone           :: !(Maybe Text)
    , _eMaxResults         :: !(Maybe (Textual Int32))
    , _eAlwaysIncludeEmail :: !(Maybe Bool)
    , _eTimeMax            :: !(Maybe DateTime')
    , _eEventId            :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventsInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eCalendarId'
--
-- * 'eTimeMin'
--
-- * 'eShowDeleted'
--
-- * 'eOriginalStart'
--
-- * 'eMaxAttendees'
--
-- * 'ePageToken'
--
-- * 'eTimeZone'
--
-- * 'eMaxResults'
--
-- * 'eAlwaysIncludeEmail'
--
-- * 'eTimeMax'
--
-- * 'eEventId'
eventsInstances
    :: Text -- ^ 'eCalendarId'
    -> Text -- ^ 'eEventId'
    -> EventsInstances
eventsInstances pECalendarId_ pEEventId_ =
  EventsInstances'
    { _eCalendarId = pECalendarId_
    , _eTimeMin = Nothing
    , _eShowDeleted = Nothing
    , _eOriginalStart = Nothing
    , _eMaxAttendees = Nothing
    , _ePageToken = Nothing
    , _eTimeZone = Nothing
    , _eMaxResults = Nothing
    , _eAlwaysIncludeEmail = Nothing
    , _eTimeMax = Nothing
    , _eEventId = pEEventId_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eCalendarId :: Lens' EventsInstances Text
eCalendarId
  = lens _eCalendarId (\ s a -> s{_eCalendarId = a})

-- | Lower bound (inclusive) for an event\'s end time to filter by. Optional.
-- The default is not to filter by end time. Must be an RFC3339 timestamp
-- with mandatory time zone offset.
eTimeMin :: Lens' EventsInstances (Maybe UTCTime)
eTimeMin
  = lens _eTimeMin (\ s a -> s{_eTimeMin = a}) .
      mapping _DateTime

-- | Whether to include deleted events (with status equals \"cancelled\") in
-- the result. Cancelled instances of recurring events will still be
-- included if singleEvents is False. Optional. The default is False.
eShowDeleted :: Lens' EventsInstances (Maybe Bool)
eShowDeleted
  = lens _eShowDeleted (\ s a -> s{_eShowDeleted = a})

-- | The original start time of the instance in the result. Optional.
eOriginalStart :: Lens' EventsInstances (Maybe Text)
eOriginalStart
  = lens _eOriginalStart
      (\ s a -> s{_eOriginalStart = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
eMaxAttendees :: Lens' EventsInstances (Maybe Int32)
eMaxAttendees
  = lens _eMaxAttendees
      (\ s a -> s{_eMaxAttendees = a})
      . mapping _Coerce

-- | Token specifying which result page to return. Optional.
ePageToken :: Lens' EventsInstances (Maybe Text)
ePageToken
  = lens _ePageToken (\ s a -> s{_ePageToken = a})

-- | Time zone used in the response. Optional. The default is the time zone
-- of the calendar.
eTimeZone :: Lens' EventsInstances (Maybe Text)
eTimeZone
  = lens _eTimeZone (\ s a -> s{_eTimeZone = a})

-- | Maximum number of events returned on one result page. By default the
-- value is 250 events. The page size can never be larger than 2500 events.
-- Optional.
eMaxResults :: Lens' EventsInstances (Maybe Int32)
eMaxResults
  = lens _eMaxResults (\ s a -> s{_eMaxResults = a}) .
      mapping _Coerce

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
eAlwaysIncludeEmail :: Lens' EventsInstances (Maybe Bool)
eAlwaysIncludeEmail
  = lens _eAlwaysIncludeEmail
      (\ s a -> s{_eAlwaysIncludeEmail = a})

-- | Upper bound (exclusive) for an event\'s start time to filter by.
-- Optional. The default is not to filter by start time. Must be an RFC3339
-- timestamp with mandatory time zone offset.
eTimeMax :: Lens' EventsInstances (Maybe UTCTime)
eTimeMax
  = lens _eTimeMax (\ s a -> s{_eTimeMax = a}) .
      mapping _DateTime

-- | Recurring event identifier.
eEventId :: Lens' EventsInstances Text
eEventId = lens _eEventId (\ s a -> s{_eEventId = a})

instance GoogleRequest EventsInstances where
        type Rs EventsInstances = Events
        type Scopes EventsInstances =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.events",
               "https://www.googleapis.com/auth/calendar.events.readonly",
               "https://www.googleapis.com/auth/calendar.readonly"]
        requestClient EventsInstances'{..}
          = go _eCalendarId _eEventId _eTimeMin _eShowDeleted
              _eOriginalStart
              _eMaxAttendees
              _ePageToken
              _eTimeZone
              _eMaxResults
              _eAlwaysIncludeEmail
              _eTimeMax
              (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy EventsInstancesResource)
                      mempty
