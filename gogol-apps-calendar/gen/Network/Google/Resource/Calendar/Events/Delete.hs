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
-- Module      : Network.Google.Resource.Calendar.Events.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.delete@.
module Network.Google.Resource.Calendar.Events.Delete
    (
    -- * REST Resource
      EventsDeleteResource

    -- * Creating a Request
    , eventsDelete
    , EventsDelete

    -- * Request Lenses
    , edCalendarId
    , edSendNotifications
    , edSendUpdates
    , edEventId
    ) where

import Network.Google.AppsCalendar.Types
import Network.Google.Prelude

-- | A resource alias for @calendar.events.delete@ method which the
-- 'EventsDelete' request conforms to.
type EventsDeleteResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 QueryParam "sendNotifications" Bool :>
                   QueryParam "sendUpdates" EventsDeleteSendUpdates :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an event.
--
-- /See:/ 'eventsDelete' smart constructor.
data EventsDelete =
  EventsDelete'
    { _edCalendarId :: !Text
    , _edSendNotifications :: !(Maybe Bool)
    , _edSendUpdates :: !(Maybe EventsDeleteSendUpdates)
    , _edEventId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edCalendarId'
--
-- * 'edSendNotifications'
--
-- * 'edSendUpdates'
--
-- * 'edEventId'
eventsDelete
    :: Text -- ^ 'edCalendarId'
    -> Text -- ^ 'edEventId'
    -> EventsDelete
eventsDelete pEdCalendarId_ pEdEventId_ =
  EventsDelete'
    { _edCalendarId = pEdCalendarId_
    , _edSendNotifications = Nothing
    , _edSendUpdates = Nothing
    , _edEventId = pEdEventId_
    }


-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
edCalendarId :: Lens' EventsDelete Text
edCalendarId
  = lens _edCalendarId (\ s a -> s{_edCalendarId = a})

-- | Deprecated. Please use sendUpdates instead. Whether to send
-- notifications about the deletion of the event. Note that some emails
-- might still be sent even if you set the value to false. The default is
-- false.
edSendNotifications :: Lens' EventsDelete (Maybe Bool)
edSendNotifications
  = lens _edSendNotifications
      (\ s a -> s{_edSendNotifications = a})

-- | Guests who should receive notifications about the deletion of the event.
edSendUpdates :: Lens' EventsDelete (Maybe EventsDeleteSendUpdates)
edSendUpdates
  = lens _edSendUpdates
      (\ s a -> s{_edSendUpdates = a})

-- | Event identifier.
edEventId :: Lens' EventsDelete Text
edEventId
  = lens _edEventId (\ s a -> s{_edEventId = a})

instance GoogleRequest EventsDelete where
        type Rs EventsDelete = ()
        type Scopes EventsDelete =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.events"]
        requestClient EventsDelete'{..}
          = go _edCalendarId _edEventId _edSendNotifications
              _edSendUpdates
              (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsDeleteResource)
                      mempty
