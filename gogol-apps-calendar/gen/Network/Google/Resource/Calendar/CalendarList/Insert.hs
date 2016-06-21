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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an entry to the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.insert@.
module Network.Google.Resource.Calendar.CalendarList.Insert
    (
    -- * REST Resource
      CalendarListInsertResource

    -- * Creating a Request
    , calendarListInsert
    , CalendarListInsert

    -- * Request Lenses
    , cliPayload
    , cliColorRgbFormat
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.calendarList.insert@ method which the
-- 'CalendarListInsert' request conforms to.
type CalendarListInsertResource =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               QueryParam "colorRgbFormat" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] CalendarListEntry :>
                     Post '[JSON] CalendarListEntry

-- | Adds an entry to the user\'s calendar list.
--
-- /See:/ 'calendarListInsert' smart constructor.
data CalendarListInsert = CalendarListInsert'
    { _cliPayload        :: !CalendarListEntry
    , _cliColorRgbFormat :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cliPayload'
--
-- * 'cliColorRgbFormat'
calendarListInsert
    :: CalendarListEntry -- ^ 'cliPayload'
    -> CalendarListInsert
calendarListInsert pCliPayload_ =
    CalendarListInsert'
    { _cliPayload = pCliPayload_
    , _cliColorRgbFormat = Nothing
    }

-- | Multipart request metadata.
cliPayload :: Lens' CalendarListInsert CalendarListEntry
cliPayload
  = lens _cliPayload (\ s a -> s{_cliPayload = a})

-- | Whether to use the foregroundColor and backgroundColor fields to write
-- the calendar colors (RGB). If this feature is used, the index-based
-- colorId field will be set to the best matching option automatically.
-- Optional. The default is False.
cliColorRgbFormat :: Lens' CalendarListInsert (Maybe Bool)
cliColorRgbFormat
  = lens _cliColorRgbFormat
      (\ s a -> s{_cliColorRgbFormat = a})

instance GoogleRequest CalendarListInsert where
        type Rs CalendarListInsert = CalendarListEntry
        type Scopes CalendarListInsert =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient CalendarListInsert'{..}
          = go _cliColorRgbFormat (Just AltJSON) _cliPayload
              appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarListInsertResource)
                      mempty
