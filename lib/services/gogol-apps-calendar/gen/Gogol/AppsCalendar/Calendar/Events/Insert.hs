{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AppsCalendar.Calendar.Events.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an event.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.insert@.
module Gogol.AppsCalendar.Calendar.Events.Insert
  ( -- * Resource
    CalendarEventsInsertResource,

    -- ** Constructing a Request
    CalendarEventsInsert (..),
    newCalendarEventsInsert,
  )
where

import Gogol.AppsCalendar.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @calendar.events.insert@ method which the
-- 'CalendarEventsInsert' request conforms to.
type CalendarEventsInsertResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> "events"
    Core.:> Core.QueryParam "conferenceDataVersion" Core.Int32
    Core.:> Core.QueryParam "maxAttendees" Core.Int32
    Core.:> Core.QueryParam "sendNotifications" Core.Bool
    Core.:> Core.QueryParam "sendUpdates" EventsInsertSendUpdates
    Core.:> Core.QueryParam "supportsAttachments" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Event
    Core.:> Core.Post '[Core.JSON] Event

-- | Creates an event.
--
-- /See:/ 'newCalendarEventsInsert' smart constructor.
data CalendarEventsInsert = CalendarEventsInsert
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text,
    -- | Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event\'s body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.
    conferenceDataVersion :: (Core.Maybe Core.Int32),
    -- | The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
    maxAttendees :: (Core.Maybe Core.Int32),
    -- | Multipart request metadata.
    payload :: Event,
    -- | Deprecated. Please use sendUpdates instead.
    --
    -- Whether to send notifications about the creation of the new event. Note that some emails might still be sent even if you set the value to false. The default is false.
    sendNotifications :: (Core.Maybe Core.Bool),
    -- | Whether to send notifications about the creation of the new event. Note that some emails might still be sent. The default is false.
    sendUpdates :: (Core.Maybe EventsInsertSendUpdates),
    -- | Whether API client performing operation supports event attachments. Optional. The default is False.
    supportsAttachments :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarEventsInsert' with the minimum fields required to make a request.
newCalendarEventsInsert ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Event ->
  CalendarEventsInsert
newCalendarEventsInsert calendarId payload =
  CalendarEventsInsert
    { calendarId = calendarId,
      conferenceDataVersion = Core.Nothing,
      maxAttendees = Core.Nothing,
      payload = payload,
      sendNotifications = Core.Nothing,
      sendUpdates = Core.Nothing,
      supportsAttachments = Core.Nothing
    }

instance Core.GoogleRequest CalendarEventsInsert where
  type Rs CalendarEventsInsert = Event
  type
    Scopes CalendarEventsInsert =
      '[ Calendar'FullControl,
         Calendar'App'Created,
         Calendar'Events,
         Calendar'Events'Owned
       ]
  requestClient CalendarEventsInsert {..} =
    go
      calendarId
      conferenceDataVersion
      maxAttendees
      sendNotifications
      sendUpdates
      supportsAttachments
      (Core.Just Core.AltJSON)
      payload
      appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarEventsInsertResource)
          Core.mempty
