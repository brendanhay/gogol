{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsCalendar.Calendar.Calendars.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a secondary calendar. Use calendars.clear for clearing all events on primary calendars.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendars.delete@.
module Gogol.AppsCalendar.Calendar.Calendars.Delete
  ( -- * Resource
    CalendarCalendarsDeleteResource,

    -- ** Constructing a Request
    CalendarCalendarsDelete (..),
    newCalendarCalendarsDelete,
  )
where

import Gogol.AppsCalendar.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @calendar.calendars.delete@ method which the
-- 'CalendarCalendarsDelete' request conforms to.
type CalendarCalendarsDeleteResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a secondary calendar. Use calendars.clear for clearing all events on primary calendars.
--
-- /See:/ 'newCalendarCalendarsDelete' smart constructor.
newtype CalendarCalendarsDelete = CalendarCalendarsDelete
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarCalendarsDelete' with the minimum fields required to make a request.
newCalendarCalendarsDelete ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  CalendarCalendarsDelete
newCalendarCalendarsDelete calendarId =
  CalendarCalendarsDelete {calendarId = calendarId}

instance Core.GoogleRequest CalendarCalendarsDelete where
  type Rs CalendarCalendarsDelete = ()
  type
    Scopes CalendarCalendarsDelete =
      '[Calendar'FullControl]
  requestClient CalendarCalendarsDelete {..} =
    go
      calendarId
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarCalendarsDeleteResource
          )
          Core.mempty
