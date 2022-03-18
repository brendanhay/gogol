{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsCalendar.Calendar.Calendars.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendars.get@.
module Gogol.AppsCalendar.Calendar.Calendars.Get
    (
    -- * Resource
      CalendarCalendarsGetResource

    -- ** Constructing a Request
    , newCalendarCalendarsGet
    , CalendarCalendarsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsCalendar.Types

-- | A resource alias for @calendar.calendars.get@ method which the
-- 'CalendarCalendarsGet' request conforms to.
type CalendarCalendarsGetResource =
     "calendar" Core.:>
       "v3" Core.:>
         "calendars" Core.:>
           Core.Capture "calendarId" Core.Text Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.Get '[Core.JSON] Calendar

-- | Returns metadata for a calendar.
--
-- /See:/ 'newCalendarCalendarsGet' smart constructor.
newtype CalendarCalendarsGet = CalendarCalendarsGet
    {
      -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
      calendarId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarCalendarsGet' with the minimum fields required to make a request.
newCalendarCalendarsGet 
    ::  Core.Text
       -- ^  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
    -> CalendarCalendarsGet
newCalendarCalendarsGet calendarId =
  CalendarCalendarsGet {calendarId = calendarId}

instance Core.GoogleRequest CalendarCalendarsGet
         where
        type Rs CalendarCalendarsGet = Calendar
        type Scopes CalendarCalendarsGet =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.readonly"]
        requestClient CalendarCalendarsGet{..}
          = go calendarId (Core.Just Core.AltJSON)
              appsCalendarService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CalendarCalendarsGetResource)
                      Core.mempty

