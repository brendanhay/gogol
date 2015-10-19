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
-- Module      : Network.Google.Resource.Calendar.Calendars.Clear
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears a primary calendar. This operation deletes all events associated
-- with the primary calendar of an account.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarCalendarsClear@.
module Network.Google.Resource.Calendar.Calendars.Clear
    (
    -- * REST Resource
      CalendarsClearResource

    -- * Creating a Request
    , calendarsClear'
    , CalendarsClear'

    -- * Request Lenses
    , ccCalendarId
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarCalendarsClear@ method which the
-- 'CalendarsClear'' request conforms to.
type CalendarsClearResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "clear" :>
           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Clears a primary calendar. This operation deletes all events associated
-- with the primary calendar of an account.
--
-- /See:/ 'calendarsClear'' smart constructor.
newtype CalendarsClear' = CalendarsClear'
    { _ccCalendarId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarsClear'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccCalendarId'
calendarsClear'
    :: Text -- ^ 'calendarId'
    -> CalendarsClear'
calendarsClear' pCcCalendarId_ =
    CalendarsClear'
    { _ccCalendarId = pCcCalendarId_
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
ccCalendarId :: Lens' CalendarsClear' Text
ccCalendarId
  = lens _ccCalendarId (\ s a -> s{_ccCalendarId = a})

instance GoogleRequest CalendarsClear' where
        type Rs CalendarsClear' = ()
        requestClient CalendarsClear'{..}
          = go _ccCalendarId (Just AltJSON) appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy CalendarsClearResource)
                      mempty
