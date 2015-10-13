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
-- Module      : Network.Google.Resource.Calendar.Events.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsUpdate@.
module Network.Google.Resource.Calendar.Events.Update
    (
    -- * REST Resource
      EventsUpdateResource

    -- * Creating a Request
    , eventsUpdate'
    , EventsUpdate'

    -- * Request Lenses
    , euCalendarId
    , euPayload
    , euMaxAttendees
    , euSendNotifications
    , euSupportsAttachments
    , euAlwaysIncludeEmail
    , euEventId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsUpdate@ method which the
-- 'EventsUpdate'' request conforms to.
type EventsUpdateResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           Capture "eventId" Text :>
             QueryParam "maxAttendees" Int32 :>
               QueryParam "sendNotifications" Bool :>
                 QueryParam "supportsAttachments" Bool :>
                   QueryParam "alwaysIncludeEmail" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Event :> Put '[JSON] Event

-- | Updates an event.
--
-- /See:/ 'eventsUpdate'' smart constructor.
data EventsUpdate' = EventsUpdate'
    { _euCalendarId          :: !Text
    , _euPayload             :: !Event
    , _euMaxAttendees        :: !(Maybe Int32)
    , _euSendNotifications   :: !(Maybe Bool)
    , _euSupportsAttachments :: !(Maybe Bool)
    , _euAlwaysIncludeEmail  :: !(Maybe Bool)
    , _euEventId             :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euCalendarId'
--
-- * 'euPayload'
--
-- * 'euMaxAttendees'
--
-- * 'euSendNotifications'
--
-- * 'euSupportsAttachments'
--
-- * 'euAlwaysIncludeEmail'
--
-- * 'euEventId'
eventsUpdate'
    :: Text -- ^ 'calendarId'
    -> Event -- ^ 'payload'
    -> Text -- ^ 'eventId'
    -> EventsUpdate'
eventsUpdate' pEuCalendarId_ pEuPayload_ pEuEventId_ =
    EventsUpdate'
    { _euCalendarId = pEuCalendarId_
    , _euPayload = pEuPayload_
    , _euMaxAttendees = Nothing
    , _euSendNotifications = Nothing
    , _euSupportsAttachments = Nothing
    , _euAlwaysIncludeEmail = Nothing
    , _euEventId = pEuEventId_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
euCalendarId :: Lens' EventsUpdate' Text
euCalendarId
  = lens _euCalendarId (\ s a -> s{_euCalendarId = a})

-- | Multipart request metadata.
euPayload :: Lens' EventsUpdate' Event
euPayload
  = lens _euPayload (\ s a -> s{_euPayload = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
euMaxAttendees :: Lens' EventsUpdate' (Maybe Int32)
euMaxAttendees
  = lens _euMaxAttendees
      (\ s a -> s{_euMaxAttendees = a})

-- | Whether to send notifications about the event update (e.g. attendee\'s
-- responses, title changes, etc.). Optional. The default is False.
euSendNotifications :: Lens' EventsUpdate' (Maybe Bool)
euSendNotifications
  = lens _euSendNotifications
      (\ s a -> s{_euSendNotifications = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
euSupportsAttachments :: Lens' EventsUpdate' (Maybe Bool)
euSupportsAttachments
  = lens _euSupportsAttachments
      (\ s a -> s{_euSupportsAttachments = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
euAlwaysIncludeEmail :: Lens' EventsUpdate' (Maybe Bool)
euAlwaysIncludeEmail
  = lens _euAlwaysIncludeEmail
      (\ s a -> s{_euAlwaysIncludeEmail = a})

-- | Event identifier.
euEventId :: Lens' EventsUpdate' Text
euEventId
  = lens _euEventId (\ s a -> s{_euEventId = a})

instance GoogleRequest EventsUpdate' where
        type Rs EventsUpdate' = Event
        requestClient EventsUpdate'{..}
          = go _euCalendarId _euEventId _euMaxAttendees
              _euSendNotifications
              _euSupportsAttachments
              _euAlwaysIncludeEmail
              (Just AltJSON)
              _euPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsUpdateResource)
                      mempty
