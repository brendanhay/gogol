{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsCalendar.Calendar.Calendars.Clear
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears a primary calendar. This operation deletes all events associated with the primary calendar of an account.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendars.clear@.
module Gogol.AppsCalendar.Calendar.Calendars.Clear
  ( -- * Resource
    CalendarCalendarsClearResource,

    -- ** Constructing a Request
    CalendarCalendarsClear (..),
    newCalendarCalendarsClear,
  )
where

import Gogol.AppsCalendar.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @calendar.calendars.clear@ method which the
-- 'CalendarCalendarsClear' request conforms to.
type CalendarCalendarsClearResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> "clear"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Clears a primary calendar. This operation deletes all events associated with the primary calendar of an account.
--
-- /See:/ 'newCalendarCalendarsClear' smart constructor.
newtype CalendarCalendarsClear = CalendarCalendarsClear
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarCalendarsClear' with the minimum fields required to make a request.
newCalendarCalendarsClear ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  CalendarCalendarsClear
newCalendarCalendarsClear calendarId =
  CalendarCalendarsClear {calendarId = calendarId}

instance Core.GoogleRequest CalendarCalendarsClear where
  type Rs CalendarCalendarsClear = ()
  type
    Scopes CalendarCalendarsClear =
      '[Calendar'FullControl, Calendar'Calendars]
  requestClient CalendarCalendarsClear {..} =
    go calendarId (Core.Just Core.AltJSON) appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarCalendarsClearResource)
          Core.mempty
