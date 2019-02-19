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
-- Module      : Network.Google.Resource.Calendar.Calendars.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a secondary calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendars.insert@.
module Network.Google.Resource.Calendar.Calendars.Insert
    (
    -- * REST Resource
      CalendarsInsertResource

    -- * Creating a Request
    , calendarsInsert
    , CalendarsInsert

    -- * Request Lenses
    , ciPayload
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.calendars.insert@ method which the
-- 'CalendarsInsert' request conforms to.
type CalendarsInsertResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Calendar :> Post '[JSON] Calendar

-- | Creates a secondary calendar.
--
-- /See:/ 'calendarsInsert' smart constructor.
newtype CalendarsInsert =
  CalendarsInsert'
    { _ciPayload :: Calendar
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CalendarsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciPayload'
calendarsInsert
    :: Calendar -- ^ 'ciPayload'
    -> CalendarsInsert
calendarsInsert pCiPayload_ = CalendarsInsert' {_ciPayload = pCiPayload_}

-- | Multipart request metadata.
ciPayload :: Lens' CalendarsInsert Calendar
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

instance GoogleRequest CalendarsInsert where
        type Rs CalendarsInsert = Calendar
        type Scopes CalendarsInsert =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient CalendarsInsert'{..}
          = go (Just AltJSON) _ciPayload appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarsInsertResource)
                      mempty
