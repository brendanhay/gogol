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
-- Module      : Network.Google.Resource.Calendar.Events.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.insert@.
module Network.Google.Resource.Calendar.Events.Insert
    (
    -- * REST Resource
      EventsInsertResource

    -- * Creating a Request
    , eventsInsert
    , EventsInsert

    -- * Request Lenses
    , eveCalendarId
    , evePayload
    , eveMaxAttendees
    , eveSendNotifications
    , eveSupportsAttachments
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.events.insert@ method which the
-- 'EventsInsert' request conforms to.
type EventsInsertResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               QueryParam "maxAttendees" (Textual Int32) :>
                 QueryParam "sendNotifications" Bool :>
                   QueryParam "supportsAttachments" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Event :> Post '[JSON] Event

-- | Creates an event.
--
-- /See:/ 'eventsInsert' smart constructor.
data EventsInsert = EventsInsert
    { _eveCalendarId          :: !Text
    , _evePayload             :: !Event
    , _eveMaxAttendees        :: !(Maybe (Textual Int32))
    , _eveSendNotifications   :: !(Maybe Bool)
    , _eveSupportsAttachments :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eveCalendarId'
--
-- * 'evePayload'
--
-- * 'eveMaxAttendees'
--
-- * 'eveSendNotifications'
--
-- * 'eveSupportsAttachments'
eventsInsert
    :: Text -- ^ 'eveCalendarId'
    -> Event -- ^ 'evePayload'
    -> EventsInsert
eventsInsert pEveCalendarId_ pEvePayload_ =
    EventsInsert
    { _eveCalendarId = pEveCalendarId_
    , _evePayload = pEvePayload_
    , _eveMaxAttendees = Nothing
    , _eveSendNotifications = Nothing
    , _eveSupportsAttachments = Nothing
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eveCalendarId :: Lens' EventsInsert Text
eveCalendarId
  = lens _eveCalendarId
      (\ s a -> s{_eveCalendarId = a})

-- | Multipart request metadata.
evePayload :: Lens' EventsInsert Event
evePayload
  = lens _evePayload (\ s a -> s{_evePayload = a})

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
eveMaxAttendees :: Lens' EventsInsert (Maybe Int32)
eveMaxAttendees
  = lens _eveMaxAttendees
      (\ s a -> s{_eveMaxAttendees = a})
      . mapping _Coerce

-- | Whether to send notifications about the creation of the new event.
-- Optional. The default is False.
eveSendNotifications :: Lens' EventsInsert (Maybe Bool)
eveSendNotifications
  = lens _eveSendNotifications
      (\ s a -> s{_eveSendNotifications = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
eveSupportsAttachments :: Lens' EventsInsert (Maybe Bool)
eveSupportsAttachments
  = lens _eveSupportsAttachments
      (\ s a -> s{_eveSupportsAttachments = a})

instance GoogleRequest EventsInsert where
        type Rs EventsInsert = Event
        requestClient EventsInsert{..}
          = go _eveCalendarId _eveMaxAttendees
              _eveSendNotifications
              _eveSupportsAttachments
              (Just AltJSON)
              _evePayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsInsertResource)
                      mempty
