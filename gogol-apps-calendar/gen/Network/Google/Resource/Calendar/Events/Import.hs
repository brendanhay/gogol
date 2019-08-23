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
    , eiConferenceDataVersion
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
                 QueryParam "conferenceDataVersion" (Textual Int32) :>
                   QueryParam "supportsAttachments" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Event :> Post '[JSON] Event

-- | Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
--
-- /See:/ 'eventsImport' smart constructor.
data EventsImport =
  EventsImport'
    { _eiConferenceDataVersion :: !(Maybe (Textual Int32))
    , _eiCalendarId            :: !Text
    , _eiPayload               :: !Event
    , _eiSupportsAttachments   :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiConferenceDataVersion'
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
  EventsImport'
    { _eiConferenceDataVersion = Nothing
    , _eiCalendarId = pEiCalendarId_
    , _eiPayload = pEiPayload_
    , _eiSupportsAttachments = Nothing
    }


-- | Version number of conference data supported by the API client. Version 0
-- assumes no conference data support and ignores conference data in the
-- event\'s body. Version 1 enables support for copying of ConferenceData
-- as well as for creating new conferences using the createRequest field of
-- conferenceData. The default is 0.
eiConferenceDataVersion :: Lens' EventsImport (Maybe Int32)
eiConferenceDataVersion
  = lens _eiConferenceDataVersion
      (\ s a -> s{_eiConferenceDataVersion = a})
      . mapping _Coerce

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
        type Scopes EventsImport =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.events"]
        requestClient EventsImport'{..}
          = go _eiCalendarId _eiConferenceDataVersion
              _eiSupportsAttachments
              (Just AltJSON)
              _eiPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy EventsImportResource)
                      mempty
