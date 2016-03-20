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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.import@.
module Network.Google.Resource.Calendar.Events.Import
    (
    -- * REST Resource
      EventsImportResource

    -- * Creating a Request
    , eventsImport
    , EventsImport

    -- * Request Lenses
    , eiCalendarId
    , eiPayload
    , eiSupportsAttachments
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.events.import@ method which the
-- 'EventsImport' request conforms to.
type EventsImportResource =
     "calendar" :>
       "v3" :>
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
-- /See:/ 'eventsImport' smart constructor.
data EventsImport = EventsImport
    { _eiCalendarId          :: !Text
    , _eiPayload             :: !Event
    , _eiSupportsAttachments :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiCalendarId'
--
-- * 'eiPayload'
--
-- * 'eiSupportsAttachments'
eventsImport
    :: Text -- ^ 'eiCalendarId'
    -> Event -- ^ 'eiPayload'
    -> EventsImport
eventsImport pEiCalendarId_ pEiPayload_ =
    EventsImport
    { _eiCalendarId = pEiCalendarId_
    , _eiPayload = pEiPayload_
    , _eiSupportsAttachments = Nothing
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
eiCalendarId :: Lens' EventsImport Text
eiCalendarId
  = lens _eiCalendarId (\ s a -> s{_eiCalendarId = a})

-- | Multipart request metadata.
eiPayload :: Lens' EventsImport Event
eiPayload
  = lens _eiPayload (\ s a -> s{_eiPayload = a})

-- | Whether API client performing operation supports event attachments.
-- Optional. The default is False.
eiSupportsAttachments :: Lens' EventsImport (Maybe Bool)
eiSupportsAttachments
  = lens _eiSupportsAttachments
      (\ s a -> s{_eiSupportsAttachments = a})

instance GoogleRequest EventsImport where
        type Rs EventsImport = Event
        requestClient EventsImport{..}
          = go _eiCalendarId _eiSupportsAttachments
              (Just AltJSON)
              _eiPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsImportResource)
                      mempty
