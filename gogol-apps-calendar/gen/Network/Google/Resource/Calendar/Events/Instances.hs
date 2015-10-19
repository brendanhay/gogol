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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns instances of the specified recurring event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsInstances@.
module Network.Google.Resource.Calendar.Events.Instances
    (
    -- * REST Resource
      EventsInstancesResource

    -- * Creating a Request
    , eventsInstances'
    , EventsInstances'

    -- * Request Lenses
    , eiCalendarId
    , eiTimeMin
    , eiShowDeleted
    , eiOriginalStart
    , eiMaxAttendees
    , eiPageToken
    , eiTimeZone
    , eiMaxResults
    , eiAlwaysIncludeEmail
    , eiTimeMax
    , eiEventId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsInstances@ method which the
-- 'EventsInstances'' request conforms to.
type EventsInstancesResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             "instances" :>
               QueryParam "timeMin" DateTime' :>
                 QueryParam "showDeleted" Bool :>
                   QueryParam "originalStart" Text :>
                     QueryParam "maxAttendees" Int32 :>
                       QueryParam "pageToken" Text :>
                         QueryParam "timeZone" Text :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "alwaysIncludeEmail" Bool :>
                               QueryParam "timeMax" DateTime' :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Events

-- | Returns instances of the specified recurring event.
--
-- /See:/ 'eventsInstances'' smart constructor.
data EventsInstances' = EventsInstances'
    { _eiCalendarId         :: !Text
    , _eiTimeMin            :: !(Maybe DateTime')
    , _eiShowDeleted        :: !(Maybe Bool)
    , _eiOriginalStart      :: !(Maybe Text)
    , _eiMaxAttendees       :: !(Maybe Int32)
    , _eiPageToken          :: !(Maybe Text)
    , _eiTimeZone           :: !(Maybe Text)
    , _eiMaxResults         :: !(Maybe Int32)
    , _eiAlwaysIncludeEmail :: !(Maybe Bool)
    , _eiTimeMax            :: !(Maybe DateTime')
    , _eiEventId            :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiCalendarId'
--
-- * 'eiTimeMin'
--
-- * 'eiShowDeleted'
--
-- * 'eiOriginalStart'
--
-- * 'eiMaxAttendees'
--
-- * 'eiPageToken'
--
-- * 'eiTimeZone'
--
-- * 'eiMaxResults'
--
-- * 'eiAlwaysIncludeEmail'
--
-- * 'eiTimeMax'
--
-- * 'eiEventId'
eventsInstances'
    :: Text -- ^ 'calendarId'
    -> Text -- ^ 'eventId'
    -> EventsInstances'
eventsInstances' pEiCalendarId_ pEiEventId_ =
    EventsInstances'
    { _eiCalendarId = pEiCalendarId_
    , _eiTimeMin = Nothing
    , _eiShowDeleted = Nothing
    , _eiOriginalStart = Nothing
    , _eiMaxAttendees = Nothing
    , _eiPageToken = Nothing
    , _eiTimeZone = Nothing
    , _eiMaxResults = Nothing
    , _eiAlwaysIncludeEmail = Nothing
    , _eiTimeMax = Nothing
    , _eiEventId = pEiEventId_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eiCalendarId :: Lens' EventsInstances' Text
eiCalendarId
  = lens _eiCalendarId (\ s a -> s{_eiCalendarId = a})

-- | Lower bound (inclusive) for an event\'s end time to filter by. Optional.
-- The default is not to filter by end time. Must be an RFC3339 timestamp
-- with mandatory time zone offset.
eiTimeMin :: Lens' EventsInstances' (Maybe UTCTime)
eiTimeMin
  = lens _eiTimeMin (\ s a -> s{_eiTimeMin = a}) .
      mapping _DateTime

-- | Whether to include deleted events (with status equals \"cancelled\") in
-- the result. Cancelled instances of recurring events will still be
-- included if singleEvents is False. Optional. The default is False.
eiShowDeleted :: Lens' EventsInstances' (Maybe Bool)
eiShowDeleted
  = lens _eiShowDeleted
      (\ s a -> s{_eiShowDeleted = a})

-- | The original start time of the instance in the result. Optional.
eiOriginalStart :: Lens' EventsInstances' (Maybe Text)
eiOriginalStart
  = lens _eiOriginalStart
      (\ s a -> s{_eiOriginalStart = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
eiMaxAttendees :: Lens' EventsInstances' (Maybe Int32)
eiMaxAttendees
  = lens _eiMaxAttendees
      (\ s a -> s{_eiMaxAttendees = a})

-- | Token specifying which result page to return. Optional.
eiPageToken :: Lens' EventsInstances' (Maybe Text)
eiPageToken
  = lens _eiPageToken (\ s a -> s{_eiPageToken = a})

-- | Time zone used in the response. Optional. The default is the time zone
-- of the calendar.
eiTimeZone :: Lens' EventsInstances' (Maybe Text)
eiTimeZone
  = lens _eiTimeZone (\ s a -> s{_eiTimeZone = a})

-- | Maximum number of events returned on one result page. By default the
-- value is 250 events. The page size can never be larger than 2500 events.
-- Optional.
eiMaxResults :: Lens' EventsInstances' (Maybe Int32)
eiMaxResults
  = lens _eiMaxResults (\ s a -> s{_eiMaxResults = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
eiAlwaysIncludeEmail :: Lens' EventsInstances' (Maybe Bool)
eiAlwaysIncludeEmail
  = lens _eiAlwaysIncludeEmail
      (\ s a -> s{_eiAlwaysIncludeEmail = a})

-- | Upper bound (exclusive) for an event\'s start time to filter by.
-- Optional. The default is not to filter by start time. Must be an RFC3339
-- timestamp with mandatory time zone offset.
eiTimeMax :: Lens' EventsInstances' (Maybe UTCTime)
eiTimeMax
  = lens _eiTimeMax (\ s a -> s{_eiTimeMax = a}) .
      mapping _DateTime

-- | Recurring event identifier.
eiEventId :: Lens' EventsInstances' Text
eiEventId
  = lens _eiEventId (\ s a -> s{_eiEventId = a})

instance GoogleRequest EventsInstances' where
        type Rs EventsInstances' = Events
        requestClient EventsInstances'{..}
          = go _eiCalendarId _eiEventId _eiTimeMin
              _eiShowDeleted
              _eiOriginalStart
              _eiMaxAttendees
              _eiPageToken
              _eiTimeZone
              _eiMaxResults
              _eiAlwaysIncludeEmail
              _eiTimeMax
              (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy EventsInstancesResource)
                      mempty
