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
-- Module      : Gogol.AppsCalendar.Calendar.Events.QuickAdd
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an event based on a simple text string.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.quickAdd@.
module Gogol.AppsCalendar.Calendar.Events.QuickAdd
  ( -- * Resource
    CalendarEventsQuickAddResource,

    -- ** Constructing a Request
    CalendarEventsQuickAdd (..),
    newCalendarEventsQuickAdd,
  )
where

import Gogol.AppsCalendar.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @calendar.events.quickAdd@ method which the
-- 'CalendarEventsQuickAdd' request conforms to.
type CalendarEventsQuickAddResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> "events"
    Core.:> "quickAdd"
    Core.:> Core.QueryParam "text" Core.Text
    Core.:> Core.QueryParam "sendNotifications" Core.Bool
    Core.:> Core.QueryParam "sendUpdates" EventsQuickAddSendUpdates
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Event

-- | Creates an event based on a simple text string.
--
-- /See:/ 'newCalendarEventsQuickAdd' smart constructor.
data CalendarEventsQuickAdd = CalendarEventsQuickAdd
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text,
    -- | Deprecated. Please use sendUpdates instead.
    --
    -- Whether to send notifications about the creation of the event. Note that some emails might still be sent even if you set the value to false. The default is false.
    sendNotifications :: (Core.Maybe Core.Bool),
    -- | Guests who should receive notifications about the creation of the new event.
    sendUpdates :: (Core.Maybe EventsQuickAddSendUpdates),
    -- | The text describing the event to be created.
    text :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarEventsQuickAdd' with the minimum fields required to make a request.
newCalendarEventsQuickAdd ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  -- |  The text describing the event to be created. See 'text'.
  Core.Text ->
  CalendarEventsQuickAdd
newCalendarEventsQuickAdd calendarId text =
  CalendarEventsQuickAdd
    { calendarId = calendarId,
      sendNotifications = Core.Nothing,
      sendUpdates = Core.Nothing,
      text = text
    }

instance Core.GoogleRequest CalendarEventsQuickAdd where
  type Rs CalendarEventsQuickAdd = Event
  type
    Scopes CalendarEventsQuickAdd =
      '[ Calendar'FullControl,
         Calendar'App'Created,
         Calendar'Events,
         Calendar'Events'Owned
       ]
  requestClient CalendarEventsQuickAdd {..} =
    go
      calendarId
      (Core.Just text)
      sendNotifications
      sendUpdates
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarEventsQuickAddResource)
          Core.mempty
