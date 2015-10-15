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
-- Module      : Network.Google.Resource.Calendar.Calendars.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates metadata for a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsUpdate@.
module Network.Google.Resource.Calendar.Calendars.Update
    (
    -- * REST Resource
      CalendarsUpdateResource

    -- * Creating a Request
    , calendarsUpdate'
    , CalendarsUpdate'

    -- * Request Lenses
    , cuCalendarId
    , cuPayload
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsUpdate@ method which the
-- 'CalendarsUpdate'' request conforms to.
type CalendarsUpdateResource =
     "calendars" :>
       Capture "calendarId" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Calendar :> Put '[JSON] Calendar

-- | Updates metadata for a calendar.
--
-- /See:/ 'calendarsUpdate'' smart constructor.
data CalendarsUpdate' = CalendarsUpdate'
    { _cuCalendarId :: !Text
    , _cuPayload    :: !Calendar
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuCalendarId'
--
-- * 'cuPayload'
calendarsUpdate'
    :: Text -- ^ 'calendarId'
    -> Calendar -- ^ 'payload'
    -> CalendarsUpdate'
calendarsUpdate' pCuCalendarId_ pCuPayload_ =
    CalendarsUpdate'
    { _cuCalendarId = pCuCalendarId_
    , _cuPayload = pCuPayload_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cuCalendarId :: Lens' CalendarsUpdate' Text
cuCalendarId
  = lens _cuCalendarId (\ s a -> s{_cuCalendarId = a})

-- | Multipart request metadata.
cuPayload :: Lens' CalendarsUpdate' Calendar
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

instance GoogleRequest CalendarsUpdate' where
        type Rs CalendarsUpdate' = Calendar
        requestClient CalendarsUpdate'{..}
          = go _cuCalendarId (Just AltJSON) _cuPayload
              appsCalendar
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarsUpdateResource)
                      mempty
