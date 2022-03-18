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
-- Module      : Gogol.AppsCalendar.Calendar.Events.Import
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports an event. This operation is used to add a private copy of an existing event to a calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.import@.
module Gogol.AppsCalendar.Calendar.Events.Import
  ( -- * Resource
    CalendarEventsImportResource,

    -- ** Constructing a Request
    newCalendarEventsImport,
    CalendarEventsImport,
  )
where

import Gogol.AppsCalendar.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @calendar.events.import@ method which the
-- 'CalendarEventsImport' request conforms to.
type CalendarEventsImportResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> "events"
    Core.:> "import"
    Core.:> Core.QueryParam "conferenceDataVersion" Core.Int32
    Core.:> Core.QueryParam "supportsAttachments" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Event
    Core.:> Core.Post '[Core.JSON] Event

-- | Imports an event. This operation is used to add a private copy of an existing event to a calendar.
--
-- /See:/ 'newCalendarEventsImport' smart constructor.
data CalendarEventsImport = CalendarEventsImport
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text,
    -- | Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event\'s body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.
    conferenceDataVersion :: (Core.Maybe Core.Int32),
    -- | Multipart request metadata.
    payload :: Event,
    -- | Whether API client performing operation supports event attachments. Optional. The default is False.
    supportsAttachments :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarEventsImport' with the minimum fields required to make a request.
newCalendarEventsImport ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Event ->
  CalendarEventsImport
newCalendarEventsImport calendarId payload =
  CalendarEventsImport
    { calendarId = calendarId,
      conferenceDataVersion = Core.Nothing,
      payload = payload,
      supportsAttachments = Core.Nothing
    }

instance Core.GoogleRequest CalendarEventsImport where
  type Rs CalendarEventsImport = Event
  type
    Scopes CalendarEventsImport =
      '[ "https://www.googleapis.com/auth/calendar",
         "https://www.googleapis.com/auth/calendar.events"
       ]
  requestClient CalendarEventsImport {..} =
    go
      calendarId
      conferenceDataVersion
      supportsAttachments
      (Core.Just Core.AltJSON)
      payload
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarEventsImportResource
          )
          Core.mempty
