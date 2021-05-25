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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing calendar on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.update@.
module Network.Google.Resource.Calendar.CalendarList.Update
    (
    -- * REST Resource
      CalendarListUpdateResource

    -- * Creating a Request
    , calendarListUpdate
    , CalendarListUpdate

    -- * Request Lenses
    , cluCalendarId
    , cluPayload
    , cluColorRgbFormat
    ) where

import Network.Google.AppsCalendar.Types
import Network.Google.Prelude

-- | A resource alias for @calendar.calendarList.update@ method which the
-- 'CalendarListUpdate' request conforms to.
type CalendarListUpdateResource =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               Capture "calendarId" Text :>
                 QueryParam "colorRgbFormat" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CalendarListEntry :>
                       Put '[JSON] CalendarListEntry

-- | Updates an existing calendar on the user\'s calendar list.
--
-- /See:/ 'calendarListUpdate' smart constructor.
data CalendarListUpdate =
  CalendarListUpdate'
    { _cluCalendarId :: !Text
    , _cluPayload :: !CalendarListEntry
    , _cluColorRgbFormat :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CalendarListUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cluCalendarId'
--
-- * 'cluPayload'
--
-- * 'cluColorRgbFormat'
calendarListUpdate
    :: Text -- ^ 'cluCalendarId'
    -> CalendarListEntry -- ^ 'cluPayload'
    -> CalendarListUpdate
calendarListUpdate pCluCalendarId_ pCluPayload_ =
  CalendarListUpdate'
    { _cluCalendarId = pCluCalendarId_
    , _cluPayload = pCluPayload_
    , _cluColorRgbFormat = Nothing
    }


-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
cluCalendarId :: Lens' CalendarListUpdate Text
cluCalendarId
  = lens _cluCalendarId
      (\ s a -> s{_cluCalendarId = a})

-- | Multipart request metadata.
cluPayload :: Lens' CalendarListUpdate CalendarListEntry
cluPayload
  = lens _cluPayload (\ s a -> s{_cluPayload = a})

-- | Whether to use the foregroundColor and backgroundColor fields to write
-- the calendar colors (RGB). If this feature is used, the index-based
-- colorId field will be set to the best matching option automatically.
-- Optional. The default is False.
cluColorRgbFormat :: Lens' CalendarListUpdate (Maybe Bool)
cluColorRgbFormat
  = lens _cluColorRgbFormat
      (\ s a -> s{_cluColorRgbFormat = a})

instance GoogleRequest CalendarListUpdate where
        type Rs CalendarListUpdate = CalendarListEntry
        type Scopes CalendarListUpdate =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient CalendarListUpdate'{..}
          = go _cluCalendarId _cluColorRgbFormat (Just AltJSON)
              _cluPayload
              appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarListUpdateResource)
                      mempty
