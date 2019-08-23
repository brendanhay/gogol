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
-- Module      : Network.Google.Resource.Calendar.Events.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an event. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.patch@.
module Network.Google.Resource.Calendar.Events.Patch
    (
    -- * REST Resource
      EventsPatchResource

    -- * Creating a Request
    , eventsPatch
    , EventsPatch

    -- * Request Lenses
    , epConferenceDataVersion
    , epCalendarId
    , epPayload
    , epMaxAttendees
    , epSendNotifications
    , epSupportsAttachments
    , epSendUpdates
    , epAlwaysIncludeEmail
    , epEventId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.events.patch@ method which the
-- 'EventsPatch' request conforms to.
type EventsPatchResource =
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
                         QueryParam "sendUpdates" EventsPatchSendUpdates :>
                           QueryParam "alwaysIncludeEmail" Bool :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Event :> Patch '[JSON] Event

-- | Updates an event. This method supports patch semantics.
--
-- /See:/ 'eventsPatch' smart constructor.
data EventsPatch =
  EventsPatch'
    { _epConferenceDataVersion :: !(Maybe (Textual Int32))
    , _epCalendarId            :: !Text
    , _epPayload               :: !Event
    , _epMaxAttendees          :: !(Maybe (Textual Int32))
    , _epSendNotifications     :: !(Maybe Bool)
    , _epSupportsAttachments   :: !(Maybe Bool)
    , _epSendUpdates           :: !(Maybe EventsPatchSendUpdates)
    , _epAlwaysIncludeEmail    :: !(Maybe Bool)
    , _epEventId               :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epConferenceDataVersion'
--
-- * 'epCalendarId'
--
-- * 'epPayload'
--
-- * 'epMaxAttendees'
--
-- * 'epSendNotifications'
--
-- * 'epSupportsAttachments'
--
-- * 'epSendUpdates'
--
-- * 'epAlwaysIncludeEmail'
--
-- * 'epEventId'
eventsPatch
    :: Text -- ^ 'epCalendarId'
    -> Event -- ^ 'epPayload'
    -> Text -- ^ 'epEventId'
    -> EventsPatch
eventsPatch pEpCalendarId_ pEpPayload_ pEpEventId_ =
  EventsPatch'
    { _epConferenceDataVersion = Nothing
    , _epCalendarId = pEpCalendarId_
    , _epPayload = pEpPayload_
    , _epMaxAttendees = Nothing
    , _epSendNotifications = Nothing
    , _epSupportsAttachments = Nothing
    , _epSendUpdates = Nothing
    , _epAlwaysIncludeEmail = Nothing
    , _epEventId = pEpEventId_
    }


-- | Version number of conference data supported by the API client. Version 0
-- assumes no conference data support and ignores conference data in the
-- event\'s body. Version 1 enables support for copying of ConferenceData
-- as well as for creating new conferences using the createRequest field of
-- conferenceData. The default is 0.
epConferenceDataVersion :: Lens' EventsPatch (Maybe Int32)
epConferenceDataVersion
  = lens _epConferenceDataVersion
      (\ s a -> s{_epConferenceDataVersion = a})
      . mapping _Coerce

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
epCalendarId :: Lens' EventsPatch Text
epCalendarId
  = lens _epCalendarId (\ s a -> s{_epCalendarId = a})

-- | Multipart request metadata.
epPayload :: Lens' EventsPatch Event
epPayload
  = lens _epPayload (\ s a -> s{_epPayload = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
epMaxAttendees :: Lens' EventsPatch (Maybe Int32)
epMaxAttendees
  = lens _epMaxAttendees
      (\ s a -> s{_epMaxAttendees = a})
      . mapping _Coerce

-- | Deprecated. Please use sendUpdates instead. Whether to send
-- notifications about the event update (for example, description changes,
-- etc.). Note that some emails might still be sent even if you set the
-- value to false. The default is false.
epSendNotifications :: Lens' EventsPatch (Maybe Bool)
epSendNotifications
  = lens _epSendNotifications
      (\ s a -> s{_epSendNotifications = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
epSupportsAttachments :: Lens' EventsPatch (Maybe Bool)
epSupportsAttachments
  = lens _epSupportsAttachments
      (\ s a -> s{_epSupportsAttachments = a})

-- | Guests who should receive notifications about the event update (for
-- example, title changes, etc.).
epSendUpdates :: Lens' EventsPatch (Maybe EventsPatchSendUpdates)
epSendUpdates
  = lens _epSendUpdates
      (\ s a -> s{_epSendUpdates = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
epAlwaysIncludeEmail :: Lens' EventsPatch (Maybe Bool)
epAlwaysIncludeEmail
  = lens _epAlwaysIncludeEmail
      (\ s a -> s{_epAlwaysIncludeEmail = a})

-- | Event identifier.
epEventId :: Lens' EventsPatch Text
epEventId
  = lens _epEventId (\ s a -> s{_epEventId = a})

instance GoogleRequest EventsPatch where
        type Rs EventsPatch = Event
        type Scopes EventsPatch =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.events"]
        requestClient EventsPatch'{..}
          = go _epCalendarId _epEventId
              _epConferenceDataVersion
              _epMaxAttendees
              _epSendNotifications
              _epSupportsAttachments
              _epSendUpdates
              _epAlwaysIncludeEmail
              (Just AltJSON)
              _epPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsPatchResource)
                      mempty
