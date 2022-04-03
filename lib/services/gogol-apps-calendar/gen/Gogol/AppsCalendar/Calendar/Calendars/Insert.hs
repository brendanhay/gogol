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
-- Module      : Gogol.AppsCalendar.Calendar.Calendars.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a secondary calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendars.insert@.
module Gogol.AppsCalendar.Calendar.Calendars.Insert
  ( -- * Resource
    CalendarCalendarsInsertResource,

    -- ** Constructing a Request
    CalendarCalendarsInsert (..),
    newCalendarCalendarsInsert,
  )
where

import Gogol.AppsCalendar.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @calendar.calendars.insert@ method which the
-- 'CalendarCalendarsInsert' request conforms to.
type CalendarCalendarsInsertResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Calendar
    Core.:> Core.Post '[Core.JSON] Calendar

-- | Creates a secondary calendar.
--
-- /See:/ 'newCalendarCalendarsInsert' smart constructor.
newtype CalendarCalendarsInsert = CalendarCalendarsInsert
  { -- | Multipart request metadata.
    payload :: Calendar
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarCalendarsInsert' with the minimum fields required to make a request.
newCalendarCalendarsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Calendar ->
  CalendarCalendarsInsert
newCalendarCalendarsInsert payload = CalendarCalendarsInsert {payload = payload}

instance Core.GoogleRequest CalendarCalendarsInsert where
  type Rs CalendarCalendarsInsert = Calendar
  type
    Scopes CalendarCalendarsInsert =
      '[Calendar'FullControl]
  requestClient CalendarCalendarsInsert {..} =
    go
      (Core.Just Core.AltJSON)
      payload
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarCalendarsInsertResource
          )
          Core.mempty
