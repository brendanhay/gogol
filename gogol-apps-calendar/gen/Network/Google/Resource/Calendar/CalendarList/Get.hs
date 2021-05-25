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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a calendar from the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.get@.
module Network.Google.Resource.Calendar.CalendarList.Get
    (
    -- * REST Resource
      CalendarListGetResource

    -- * Creating a Request
    , calendarListGet
    , CalendarListGet

    -- * Request Lenses
    , clgCalendarId
    ) where

import Network.Google.AppsCalendar.Types
import Network.Google.Prelude

-- | A resource alias for @calendar.calendarList.get@ method which the
-- 'CalendarListGet' request conforms to.
type CalendarListGetResource =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               Capture "calendarId" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] CalendarListEntry

-- | Returns a calendar from the user\'s calendar list.
--
-- /See:/ 'calendarListGet' smart constructor.
newtype CalendarListGet =
  CalendarListGet'
    { _clgCalendarId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CalendarListGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clgCalendarId'
calendarListGet
    :: Text -- ^ 'clgCalendarId'
    -> CalendarListGet
calendarListGet pClgCalendarId_ =
  CalendarListGet' {_clgCalendarId = pClgCalendarId_}


-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
clgCalendarId :: Lens' CalendarListGet Text
clgCalendarId
  = lens _clgCalendarId
      (\ s a -> s{_clgCalendarId = a})

instance GoogleRequest CalendarListGet where
        type Rs CalendarListGet = CalendarListEntry
        type Scopes CalendarListGet =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.readonly"]
        requestClient CalendarListGet'{..}
          = go _clgCalendarId (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarListGetResource)
                      mempty
