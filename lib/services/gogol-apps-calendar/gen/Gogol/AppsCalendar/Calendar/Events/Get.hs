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
-- Module      : Gogol.AppsCalendar.Calendar.Events.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an event based on its Google Calendar ID. To retrieve an event using its iCalendar ID, call the events.list method using the iCalUID parameter.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.get@.
module Gogol.AppsCalendar.Calendar.Events.Get
  ( -- * Resource
    CalendarEventsGetResource,

    -- ** Constructing a Request
    CalendarEventsGet (..),
    newCalendarEventsGet,
  )
where

import Gogol.AppsCalendar.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @calendar.events.get@ method which the
-- 'CalendarEventsGet' request conforms to.
type CalendarEventsGetResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> "events"
    Core.:> Core.Capture "eventId" Core.Text
    Core.:> Core.QueryParam "alwaysIncludeEmail" Core.Bool
    Core.:> Core.QueryParam "maxAttendees" Core.Int32
    Core.:> Core.QueryParam "timeZone" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Event

-- | Returns an event based on its Google Calendar ID. To retrieve an event using its iCalendar ID, call the events.list method using the iCalUID parameter.
--
-- /See:/ 'newCalendarEventsGet' smart constructor.
data CalendarEventsGet = CalendarEventsGet
  { -- | Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).
    alwaysIncludeEmail :: (Core.Maybe Core.Bool),
    -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text,
    -- | Event identifier.
    eventId :: Core.Text,
    -- | The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
    maxAttendees :: (Core.Maybe Core.Int32),
    -- | Time zone used in the response. Optional. The default is the time zone of the calendar.
    timeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarEventsGet' with the minimum fields required to make a request.
newCalendarEventsGet ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  -- |  Event identifier. See 'eventId'.
  Core.Text ->
  CalendarEventsGet
newCalendarEventsGet calendarId eventId =
  CalendarEventsGet
    { alwaysIncludeEmail = Core.Nothing,
      calendarId = calendarId,
      eventId = eventId,
      maxAttendees = Core.Nothing,
      timeZone = Core.Nothing
    }

instance Core.GoogleRequest CalendarEventsGet where
  type Rs CalendarEventsGet = Event
  type
    Scopes CalendarEventsGet =
      '[ Calendar'FullControl,
         Calendar'App'Created,
         Calendar'Events,
         Calendar'Events'Freebusy,
         Calendar'Events'Owned,
         Calendar'Events'Owned'Readonly,
         Calendar'Events'Public'Readonly,
         Calendar'Events'Readonly,
         Calendar'Readonly
       ]
  requestClient CalendarEventsGet {..} =
    go
      calendarId
      eventId
      alwaysIncludeEmail
      maxAttendees
      timeZone
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarEventsGetResource)
          Core.mempty
