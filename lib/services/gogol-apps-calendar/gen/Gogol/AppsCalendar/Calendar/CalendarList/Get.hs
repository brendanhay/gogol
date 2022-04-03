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
-- Module      : Gogol.AppsCalendar.Calendar.CalendarList.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a calendar from the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.get@.
module Gogol.AppsCalendar.Calendar.CalendarList.Get
  ( -- * Resource
    CalendarCalendarListGetResource,

    -- ** Constructing a Request
    CalendarCalendarListGet (..),
    newCalendarCalendarListGet,
  )
where

import Gogol.AppsCalendar.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @calendar.calendarList.get@ method which the
-- 'CalendarCalendarListGet' request conforms to.
type CalendarCalendarListGetResource =
  "calendar"
    Core.:> "v3"
    Core.:> "users"
    Core.:> "me"
    Core.:> "calendarList"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CalendarListEntry

-- | Returns a calendar from the user\'s calendar list.
--
-- /See:/ 'newCalendarCalendarListGet' smart constructor.
newtype CalendarCalendarListGet = CalendarCalendarListGet
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarCalendarListGet' with the minimum fields required to make a request.
newCalendarCalendarListGet ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  CalendarCalendarListGet
newCalendarCalendarListGet calendarId =
  CalendarCalendarListGet {calendarId = calendarId}

instance Core.GoogleRequest CalendarCalendarListGet where
  type Rs CalendarCalendarListGet = CalendarListEntry
  type
    Scopes CalendarCalendarListGet =
      '[Calendar'FullControl, Calendar'Readonly]
  requestClient CalendarCalendarListGet {..} =
    go
      calendarId
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarCalendarListGetResource
          )
          Core.mempty
