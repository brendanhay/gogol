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
-- Module      : Network.Google.Resource.Calendar.Calendars.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a secondary calendar. Use calendars.clear for clearing all
-- events on primary calendars.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsDelete@.
module Network.Google.Resource.Calendar.Calendars.Delete
    (
    -- * REST Resource
      CalendarsDeleteResource

    -- * Creating a Request
    , calendarsDelete'
    , CalendarsDelete'

    -- * Request Lenses
    , cdCalendarId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsDelete@ method which the
-- 'CalendarsDelete'' request conforms to.
type CalendarsDeleteResource =
     "calendars" :>
       Capture "calendarId" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a secondary calendar. Use calendars.clear for clearing all
-- events on primary calendars.
--
-- /See:/ 'calendarsDelete'' smart constructor.
newtype CalendarsDelete' = CalendarsDelete'
    { _cdCalendarId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdCalendarId'
calendarsDelete'
    :: Text -- ^ 'calendarId'
    -> CalendarsDelete'
calendarsDelete' pCdCalendarId_ =
    CalendarsDelete'
    { _cdCalendarId = pCdCalendarId_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cdCalendarId :: Lens' CalendarsDelete' Text
cdCalendarId
  = lens _cdCalendarId (\ s a -> s{_cdCalendarId = a})

instance GoogleRequest CalendarsDelete' where
        type Rs CalendarsDelete' = ()
        requestClient CalendarsDelete'{..}
          = go _cdCalendarId (Just AltJSON) appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarsDeleteResource)
                      mempty
