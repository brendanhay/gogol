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
-- Module      : Gogol.AppsCalendar.Calendar.CalendarList.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts an existing calendar into the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.insert@.
module Gogol.AppsCalendar.Calendar.CalendarList.Insert
  ( -- * Resource
    CalendarCalendarListInsertResource,

    -- ** Constructing a Request
    CalendarCalendarListInsert (..),
    newCalendarCalendarListInsert,
  )
where

import Gogol.AppsCalendar.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @calendar.calendarList.insert@ method which the
-- 'CalendarCalendarListInsert' request conforms to.
type CalendarCalendarListInsertResource =
  "calendar"
    Core.:> "v3"
    Core.:> "users"
    Core.:> "me"
    Core.:> "calendarList"
    Core.:> Core.QueryParam "colorRgbFormat" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CalendarListEntry
    Core.:> Core.Post '[Core.JSON] CalendarListEntry

-- | Inserts an existing calendar into the user\'s calendar list.
--
-- /See:/ 'newCalendarCalendarListInsert' smart constructor.
data CalendarCalendarListInsert = CalendarCalendarListInsert
  { -- | Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is used, the index-based colorId field will be set to the best matching option automatically. Optional. The default is False.
    colorRgbFormat :: (Core.Maybe Core.Bool),
    -- | Multipart request metadata.
    payload :: CalendarListEntry
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarCalendarListInsert' with the minimum fields required to make a request.
newCalendarCalendarListInsert ::
  -- |  Multipart request metadata. See 'payload'.
  CalendarListEntry ->
  CalendarCalendarListInsert
newCalendarCalendarListInsert payload =
  CalendarCalendarListInsert
    { colorRgbFormat = Core.Nothing,
      payload = payload
    }

instance Core.GoogleRequest CalendarCalendarListInsert where
  type Rs CalendarCalendarListInsert = CalendarListEntry
  type
    Scopes CalendarCalendarListInsert =
      '[Calendar'FullControl, Calendar'Calendarlist]
  requestClient CalendarCalendarListInsert {..} =
    go
      colorRgbFormat
      (Core.Just Core.AltJSON)
      payload
      appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarCalendarListInsertResource)
          Core.mempty
