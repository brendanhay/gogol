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
-- Module      : Network.Google.Resource.Calendar.Calendars.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendars.get@.
module Network.Google.Resource.Calendar.Calendars.Get
    (
    -- * REST Resource
      CalendarsGetResource

    -- * Creating a Request
    , calendarsGet
    , CalendarsGet

    -- * Request Lenses
    , cgCalendarId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.calendars.get@ method which the
-- 'CalendarsGet' request conforms to.
type CalendarsGetResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Calendar

-- | Returns metadata for a calendar.
--
-- /See:/ 'calendarsGet' smart constructor.
newtype CalendarsGet = CalendarsGet
    { _cgCalendarId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgCalendarId'
calendarsGet
    :: Text -- ^ 'cgCalendarId'
    -> CalendarsGet
calendarsGet pCgCalendarId_ =
    CalendarsGet
    { _cgCalendarId = pCgCalendarId_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cgCalendarId :: Lens' CalendarsGet Text
cgCalendarId
  = lens _cgCalendarId (\ s a -> s{_cgCalendarId = a})

instance GoogleRequest CalendarsGet where
        type Rs CalendarsGet = Calendar
        type Scopes CalendarsGet =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.readonly"]
        requestClient CalendarsGet{..}
          = go _cgCalendarId (Just AltJSON) appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy CalendarsGetResource)
                      mempty
