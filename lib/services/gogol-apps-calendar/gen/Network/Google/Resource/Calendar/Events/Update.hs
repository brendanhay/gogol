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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.update@.
module Network.Google.Resource.Calendar.Events.Update
    (
    -- * REST Resource
      EventsUpdateResource

    -- * Creating a Request
    , eventsUpdate
    , EventsUpdate

    -- * Request Lenses
    , euConferenceDataVersion
    , euCalendarId
    , euPayload
    , euMaxAttendees
    , euSendNotifications
    , euSupportsAttachments
    , euSendUpdates
    , euAlwaysIncludeEmail
    , euEventId
    ) where

import Network.Google.AppsCalendar.Types
import Network.Google.Prelude

-- | A resource alias for @calendar.events.update@ method which the
-- 'EventsUpdate' request conforms to.
type EventsUpdateResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 QueryParam "conferenceDataVersion" (Textual Int32) :>
                   QueryParam "maxAttendees" (Textual Int32) :>
                     QueryParam "sendNotifications" Bool :>
                       QueryParam "supportsAttachments" Bool :>
                         QueryParam "sendUpdates" EventsUpdateSendUpdates :>
                           QueryParam "alwaysIncludeEmail" Bool :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Event :> Put '[JSON] Event

-- | Updates an event.
--
-- /See:/ 'eventsUpdate' smart constructor.
data EventsUpdate =
  EventsUpdate'
    { _euConferenceDataVersion :: !(Maybe (Textual Int32))
    , _euCalendarId :: !Text
    , _euPayload :: !Event
    , _euMaxAttendees :: !(Maybe (Textual Int32))
    , _euSendNotifications :: !(Maybe Bool)
    , _euSupportsAttachments :: !(Maybe Bool)
    , _euSendUpdates :: !(Maybe EventsUpdateSendUpdates)
    , _euAlwaysIncludeEmail :: !(Maybe Bool)
    , _euEventId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euConferenceDataVersion'
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
-- * 'euSendUpdates'
--
-- * 'euAlwaysIncludeEmail'
--
-- * 'euEventId'
eventsUpdate
    :: Text -- ^ 'euCalendarId'
    -> Event -- ^ 'euPayload'
    -> Text -- ^ 'euEventId'
    -> EventsUpdate
eventsUpdate pEuCalendarId_ pEuPayload_ pEuEventId_ =
  EventsUpdate'
    { _euConferenceDataVersion = Nothing
    , _euCalendarId = pEuCalendarId_
    , _euPayload = pEuPayload_
    , _euMaxAttendees = Nothing
    , _euSendNotifications = Nothing
    , _euSupportsAttachments = Nothing
    , _euSendUpdates = Nothing
    , _euAlwaysIncludeEmail = Nothing
    , _euEventId = pEuEventId_
    }


-- | Version number of conference data supported by the API client. Version 0
-- assumes no conference data support and ignores conference data in the
-- event\'s body. Version 1 enables support for copying of ConferenceData
-- as well as for creating new conferences using the createRequest field of
-- conferenceData. The default is 0.
euConferenceDataVersion :: Lens' EventsUpdate (Maybe Int32)
euConferenceDataVersion
  = lens _euConferenceDataVersion
      (\ s a -> s{_euConferenceDataVersion = a})
      . mapping _Coerce

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
euCalendarId :: Lens' EventsUpdate Text
euCalendarId
  = lens _euCalendarId (\ s a -> s{_euCalendarId = a})

-- | Multipart request metadata.
euPayload :: Lens' EventsUpdate Event
euPayload
  = lens _euPayload (\ s a -> s{_euPayload = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
euMaxAttendees :: Lens' EventsUpdate (Maybe Int32)
euMaxAttendees
  = lens _euMaxAttendees
      (\ s a -> s{_euMaxAttendees = a})
      . mapping _Coerce

-- | Deprecated. Please use sendUpdates instead. Whether to send
-- notifications about the event update (for example, description changes,
-- etc.). Note that some emails might still be sent even if you set the
-- value to false. The default is false.
euSendNotifications :: Lens' EventsUpdate (Maybe Bool)
euSendNotifications
  = lens _euSendNotifications
      (\ s a -> s{_euSendNotifications = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
euSupportsAttachments :: Lens' EventsUpdate (Maybe Bool)
euSupportsAttachments
  = lens _euSupportsAttachments
      (\ s a -> s{_euSupportsAttachments = a})

-- | Guests who should receive notifications about the event update (for
-- example, title changes, etc.).
euSendUpdates :: Lens' EventsUpdate (Maybe EventsUpdateSendUpdates)
euSendUpdates
  = lens _euSendUpdates
      (\ s a -> s{_euSendUpdates = a})

-- | Deprecated and ignored. A value will always be returned in the email
-- field for the organizer, creator and attendees, even if no real email
-- address is available (i.e. a generated, non-working value will be
-- provided).
euAlwaysIncludeEmail :: Lens' EventsUpdate (Maybe Bool)
euAlwaysIncludeEmail
  = lens _euAlwaysIncludeEmail
      (\ s a -> s{_euAlwaysIncludeEmail = a})

-- | Event identifier.
euEventId :: Lens' EventsUpdate Text
euEventId
  = lens _euEventId (\ s a -> s{_euEventId = a})

instance GoogleRequest EventsUpdate where
        type Rs EventsUpdate = Event
        type Scopes EventsUpdate =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.events"]
        requestClient EventsUpdate'{..}
          = go _euCalendarId _euEventId
              _euConferenceDataVersion
              _euMaxAttendees
              _euSendNotifications
              _euSupportsAttachments
              _euSendUpdates
              _euAlwaysIncludeEmail
              (Just AltJSON)
              _euPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsUpdateResource)
                      mempty
