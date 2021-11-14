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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a calendar from the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.delete@.
module Network.Google.Resource.Calendar.CalendarList.Delete
    (
    -- * REST Resource
      CalendarListDeleteResource

    -- * Creating a Request
    , calendarListDelete
    , CalendarListDelete

    -- * Request Lenses
    , cldCalendarId
    ) where

import Network.Google.AppsCalendar.Types
import Network.Google.Prelude

-- | A resource alias for @calendar.calendarList.delete@ method which the
-- 'CalendarListDelete' request conforms to.
type CalendarListDeleteResource =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               Capture "calendarId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a calendar from the user\'s calendar list.
--
-- /See:/ 'calendarListDelete' smart constructor.
newtype CalendarListDelete =
  CalendarListDelete'
    { _cldCalendarId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CalendarListDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldCalendarId'
calendarListDelete
    :: Text -- ^ 'cldCalendarId'
    -> CalendarListDelete
calendarListDelete pCldCalendarId_ =
  CalendarListDelete' {_cldCalendarId = pCldCalendarId_}


-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cldCalendarId :: Lens' CalendarListDelete Text
cldCalendarId
  = lens _cldCalendarId
      (\ s a -> s{_cldCalendarId = a})

instance GoogleRequest CalendarListDelete where
        type Rs CalendarListDelete = ()
        type Scopes CalendarListDelete =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient CalendarListDelete'{..}
          = go _cldCalendarId (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarListDeleteResource)
                      mempty
