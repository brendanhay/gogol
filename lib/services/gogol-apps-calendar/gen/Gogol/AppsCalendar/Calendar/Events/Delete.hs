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
-- Module      : Gogol.AppsCalendar.Calendar.Events.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.delete@.
module Gogol.AppsCalendar.Calendar.Events.Delete
  ( -- * Resource
    CalendarEventsDeleteResource,

    -- ** Constructing a Request
    newCalendarEventsDelete,
    CalendarEventsDelete,
  )
where

import Gogol.AppsCalendar.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @calendar.events.delete@ method which the
-- 'CalendarEventsDelete' request conforms to.
type CalendarEventsDeleteResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> "events"
    Core.:> Core.Capture "eventId" Core.Text
    Core.:> Core.QueryParam "sendNotifications" Core.Bool
    Core.:> Core.QueryParam "sendUpdates" EventsDeleteSendUpdates
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes an event.
--
-- /See:/ 'newCalendarEventsDelete' smart constructor.
data CalendarEventsDelete = CalendarEventsDelete
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text,
    -- | Event identifier.
    eventId :: Core.Text,
    -- | Deprecated. Please use sendUpdates instead.
    --
    -- Whether to send notifications about the deletion of the event. Note that some emails might still be sent even if you set the value to false. The default is false.
    sendNotifications :: (Core.Maybe Core.Bool),
    -- | Guests who should receive notifications about the deletion of the event.
    sendUpdates :: (Core.Maybe EventsDeleteSendUpdates)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarEventsDelete' with the minimum fields required to make a request.
newCalendarEventsDelete ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  -- |  Event identifier. See 'eventId'.
  Core.Text ->
  CalendarEventsDelete
newCalendarEventsDelete calendarId eventId =
  CalendarEventsDelete
    { calendarId = calendarId,
      eventId = eventId,
      sendNotifications = Core.Nothing,
      sendUpdates = Core.Nothing
    }

instance Core.GoogleRequest CalendarEventsDelete where
  type Rs CalendarEventsDelete = ()
  type
    Scopes CalendarEventsDelete =
      '[Calendar'FullControl, Calendar'Events]
  requestClient CalendarEventsDelete {..} =
    go
      calendarId
      eventId
      sendNotifications
      sendUpdates
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarEventsDeleteResource
          )
          Core.mempty
