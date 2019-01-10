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
-- Module      : Network.Google.Resource.Calendar.Events.QuickAdd
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an event based on a simple text string.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.quickAdd@.
module Network.Google.Resource.Calendar.Events.QuickAdd
    (
    -- * REST Resource
      EventsQuickAddResource

    -- * Creating a Request
    , eventsQuickAdd
    , EventsQuickAdd

    -- * Request Lenses
    , eqaCalendarId
    , eqaText
    , eqaSendNotifications
    , eqaSendUpdates
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.events.quickAdd@ method which the
-- 'EventsQuickAdd' request conforms to.
type EventsQuickAddResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               "quickAdd" :>
                 QueryParam "text" Text :>
                   QueryParam "sendNotifications" Bool :>
                     QueryParam "sendUpdates" EventsQuickAddSendUpdates :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Event

-- | Creates an event based on a simple text string.
--
-- /See:/ 'eventsQuickAdd' smart constructor.
data EventsQuickAdd = EventsQuickAdd'
    { _eqaCalendarId        :: !Text
    , _eqaText              :: !Text
    , _eqaSendNotifications :: !(Maybe Bool)
    , _eqaSendUpdates       :: !(Maybe EventsQuickAddSendUpdates)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsQuickAdd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eqaCalendarId'
--
-- * 'eqaText'
--
-- * 'eqaSendNotifications'
--
-- * 'eqaSendUpdates'
eventsQuickAdd
    :: Text -- ^ 'eqaCalendarId'
    -> Text -- ^ 'eqaText'
    -> EventsQuickAdd
eventsQuickAdd pEqaCalendarId_ pEqaText_ =
    EventsQuickAdd'
    { _eqaCalendarId = pEqaCalendarId_
    , _eqaText = pEqaText_
    , _eqaSendNotifications = Nothing
    , _eqaSendUpdates = Nothing
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eqaCalendarId :: Lens' EventsQuickAdd Text
eqaCalendarId
  = lens _eqaCalendarId
      (\ s a -> s{_eqaCalendarId = a})

-- | The text describing the event to be created.
eqaText :: Lens' EventsQuickAdd Text
eqaText = lens _eqaText (\ s a -> s{_eqaText = a})

-- | Deprecated. Please use sendUpdates instead. Whether to send
-- notifications about the creation of the event. Note that some emails
-- might still be sent even if you set the value to false. The default is
-- false.
eqaSendNotifications :: Lens' EventsQuickAdd (Maybe Bool)
eqaSendNotifications
  = lens _eqaSendNotifications
      (\ s a -> s{_eqaSendNotifications = a})

-- | Guests who should receive notifications about the creation of the new
-- event.
eqaSendUpdates :: Lens' EventsQuickAdd (Maybe EventsQuickAddSendUpdates)
eqaSendUpdates
  = lens _eqaSendUpdates
      (\ s a -> s{_eqaSendUpdates = a})

instance GoogleRequest EventsQuickAdd where
        type Rs EventsQuickAdd = Event
        type Scopes EventsQuickAdd =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.events"]
        requestClient EventsQuickAdd'{..}
          = go _eqaCalendarId (Just _eqaText)
              _eqaSendNotifications
              _eqaSendUpdates
              (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsQuickAddResource)
                      mempty
