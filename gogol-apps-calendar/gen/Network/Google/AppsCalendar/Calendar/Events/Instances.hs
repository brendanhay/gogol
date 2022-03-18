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
-- Module      : Network.Google.AppsCalendar.Calendar.Events.Instances
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns instances of the specified recurring event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.instances@.
module Network.Google.AppsCalendar.Calendar.Events.Instances
  ( -- * Resource
    CalendarEventsInstancesResource,

    -- ** Constructing a Request
    newCalendarEventsInstances,
    CalendarEventsInstances,
  )
where

import Network.Google.AppsCalendar.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @calendar.events.instances@ method which the
-- 'CalendarEventsInstances' request conforms to.
type CalendarEventsInstancesResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> "events"
    Core.:> Core.Capture "eventId" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "alwaysIncludeEmail" Core.Bool
    Core.:> Core.QueryParam "maxAttendees" Core.Int32
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "originalStart" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "timeMax" Core.DateTime'
    Core.:> Core.QueryParam "timeMin" Core.DateTime'
    Core.:> Core.QueryParam "timeZone" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Events

-- | Returns instances of the specified recurring event.
--
-- /See:/ 'newCalendarEventsInstances' smart constructor.
data CalendarEventsInstances = CalendarEventsInstances
  { -- | Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).
    alwaysIncludeEmail :: (Core.Maybe Core.Bool),
    -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text,
    -- | Recurring event identifier.
    eventId :: Core.Text,
    -- | The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
    maxAttendees :: (Core.Maybe Core.Int32),
    -- | Maximum number of events returned on one result page. By default the value is 250 events. The page size can never be larger than 2500 events. Optional.
    maxResults :: (Core.Maybe Core.Int32),
    -- | The original start time of the instance in the result. Optional.
    originalStart :: (Core.Maybe Core.Text),
    -- | Token specifying which result page to return. Optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | Whether to include deleted events (with status equals \"cancelled\") in the result. Cancelled instances of recurring events will still be included if singleEvents is False. Optional. The default is False.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Upper bound (exclusive) for an event\'s start time to filter by. Optional. The default is not to filter by start time. Must be an RFC3339 timestamp with mandatory time zone offset.
    timeMax :: (Core.Maybe Core.DateTime'),
    -- | Lower bound (inclusive) for an event\'s end time to filter by. Optional. The default is not to filter by end time. Must be an RFC3339 timestamp with mandatory time zone offset.
    timeMin :: (Core.Maybe Core.DateTime'),
    -- | Time zone used in the response. Optional. The default is the time zone of the calendar.
    timeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarEventsInstances' with the minimum fields required to make a request.
newCalendarEventsInstances ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  -- |  Recurring event identifier. See 'eventId'.
  Core.Text ->
  CalendarEventsInstances
newCalendarEventsInstances calendarId eventId =
  CalendarEventsInstances
    { alwaysIncludeEmail = Core.Nothing,
      calendarId = calendarId,
      eventId = eventId,
      maxAttendees = Core.Nothing,
      maxResults = Core.Nothing,
      originalStart = Core.Nothing,
      pageToken = Core.Nothing,
      showDeleted = Core.Nothing,
      timeMax = Core.Nothing,
      timeMin = Core.Nothing,
      timeZone = Core.Nothing
    }

instance Core.GoogleRequest CalendarEventsInstances where
  type Rs CalendarEventsInstances = Events
  type
    Scopes CalendarEventsInstances =
      '[ "https://www.googleapis.com/auth/calendar",
         "https://www.googleapis.com/auth/calendar.events",
         "https://www.googleapis.com/auth/calendar.events.readonly",
         "https://www.googleapis.com/auth/calendar.readonly"
       ]
  requestClient CalendarEventsInstances {..} =
    go
      calendarId
      eventId
      alwaysIncludeEmail
      maxAttendees
      maxResults
      originalStart
      pageToken
      showDeleted
      timeMax
      timeMin
      timeZone
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarEventsInstancesResource
          )
          Core.mempty
