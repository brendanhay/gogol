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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing calendar on the user\'s calendar list. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.patch@.
module Network.Google.Resource.Calendar.CalendarList.Patch
    (
    -- * REST Resource
      CalendarListPatchResource

    -- * Creating a Request
    , calendarListPatch
    , CalendarListPatch

    -- * Request Lenses
    , clpCalendarId
    , clpPayload
    , clpColorRgbFormat
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.calendarList.patch@ method which the
-- 'CalendarListPatch' request conforms to.
type CalendarListPatchResource =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               Capture "calendarId" Text :>
                 QueryParam "colorRgbFormat" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CalendarListEntry :>
                       Patch '[JSON] CalendarListEntry

-- | Updates an existing calendar on the user\'s calendar list. This method
-- supports patch semantics.
--
-- /See:/ 'calendarListPatch' smart constructor.
data CalendarListPatch = CalendarListPatch'
    { _clpCalendarId     :: !Text
    , _clpPayload        :: !CalendarListEntry
    , _clpColorRgbFormat :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clpCalendarId'
--
-- * 'clpPayload'
--
-- * 'clpColorRgbFormat'
calendarListPatch
    :: Text -- ^ 'clpCalendarId'
    -> CalendarListEntry -- ^ 'clpPayload'
    -> CalendarListPatch
calendarListPatch pClpCalendarId_ pClpPayload_ =
    CalendarListPatch'
    { _clpCalendarId = pClpCalendarId_
    , _clpPayload = pClpPayload_
    , _clpColorRgbFormat = Nothing
    }

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
clpCalendarId :: Lens' CalendarListPatch Text
clpCalendarId
  = lens _clpCalendarId
      (\ s a -> s{_clpCalendarId = a})

-- | Multipart request metadata.
clpPayload :: Lens' CalendarListPatch CalendarListEntry
clpPayload
  = lens _clpPayload (\ s a -> s{_clpPayload = a})

-- | Whether to use the foregroundColor and backgroundColor fields to write
-- the calendar colors (RGB). If this feature is used, the index-based
-- colorId field will be set to the best matching option automatically.
-- Optional. The default is False.
clpColorRgbFormat :: Lens' CalendarListPatch (Maybe Bool)
clpColorRgbFormat
  = lens _clpColorRgbFormat
      (\ s a -> s{_clpColorRgbFormat = a})

instance GoogleRequest CalendarListPatch where
        type Rs CalendarListPatch = CalendarListEntry
        type Scopes CalendarListPatch =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient CalendarListPatch'{..}
          = go _clpCalendarId _clpColorRgbFormat (Just AltJSON)
              _clpPayload
              appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarListPatchResource)
                      mempty
