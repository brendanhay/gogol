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
-- Module      : Network.Google.AppsCalendar.Calendar.Calendars.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates metadata for a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendars.update@.
module Network.Google.AppsCalendar.Calendar.Calendars.Update
  ( -- * Resource
    CalendarCalendarsUpdateResource,

    -- ** Constructing a Request
    newCalendarCalendarsUpdate,
    CalendarCalendarsUpdate,
  )
where

import Network.Google.AppsCalendar.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @calendar.calendars.update@ method which the
-- 'CalendarCalendarsUpdate' request conforms to.
type CalendarCalendarsUpdateResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Calendar
    Core.:> Core.Put '[Core.JSON] Calendar

-- | Updates metadata for a calendar.
--
-- /See:/ 'newCalendarCalendarsUpdate' smart constructor.
data CalendarCalendarsUpdate = CalendarCalendarsUpdate
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Calendar
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarCalendarsUpdate' with the minimum fields required to make a request.
newCalendarCalendarsUpdate ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Calendar ->
  CalendarCalendarsUpdate
newCalendarCalendarsUpdate calendarId payload =
  CalendarCalendarsUpdate {calendarId = calendarId, payload = payload}

instance Core.GoogleRequest CalendarCalendarsUpdate where
  type Rs CalendarCalendarsUpdate = Calendar
  type
    Scopes CalendarCalendarsUpdate =
      '["https://www.googleapis.com/auth/calendar"]
  requestClient CalendarCalendarsUpdate {..} =
    go
      calendarId
      (Core.Just Core.AltJSON)
      payload
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarCalendarsUpdateResource
          )
          Core.mempty
