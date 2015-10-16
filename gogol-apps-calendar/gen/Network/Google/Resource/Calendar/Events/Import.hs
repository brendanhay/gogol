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
-- Module      : Network.Google.Resource.Calendar.Events.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsImport@.
module Network.Google.Resource.Calendar.Events.Import
    (
    -- * REST Resource
      EventsImportResource

    -- * Creating a Request
    , eventsImport'
    , EventsImport'

    -- * Request Lenses
    , eCalendarId
    , ePayload
    , eSupportsAttachments
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsImport@ method which the
-- 'EventsImport'' request conforms to.
type EventsImportResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           "import" :>
             QueryParam "supportsAttachments" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Event :> Post '[JSON] Event

-- | Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
--
-- /See:/ 'eventsImport'' smart constructor.
data EventsImport' = EventsImport'
    { _eCalendarId          :: !Text
    , _ePayload             :: !Event
    , _eSupportsAttachments :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eCalendarId'
--
-- * 'ePayload'
--
-- * 'eSupportsAttachments'
eventsImport'
    :: Text -- ^ 'calendarId'
    -> Event -- ^ 'payload'
    -> EventsImport'
eventsImport' pECalendarId_ pEPayload_ =
    EventsImport'
    { _eCalendarId = pECalendarId_
    , _ePayload = pEPayload_
    , _eSupportsAttachments = Nothing
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eCalendarId :: Lens' EventsImport' Text
eCalendarId
  = lens _eCalendarId (\ s a -> s{_eCalendarId = a})

-- | Multipart request metadata.
ePayload :: Lens' EventsImport' Event
ePayload = lens _ePayload (\ s a -> s{_ePayload = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
eSupportsAttachments :: Lens' EventsImport' (Maybe Bool)
eSupportsAttachments
  = lens _eSupportsAttachments
      (\ s a -> s{_eSupportsAttachments = a})

instance GoogleRequest EventsImport' where
        type Rs EventsImport' = Event
        requestClient EventsImport'{..}
          = go _eCalendarId _eSupportsAttachments
              (Just AltJSON)
              _ePayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsImportResource)
                      mempty
