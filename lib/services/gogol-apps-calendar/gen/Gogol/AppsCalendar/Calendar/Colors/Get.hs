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
-- Module      : Gogol.AppsCalendar.Calendar.Colors.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the color definitions for calendars and events.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.colors.get@.
module Gogol.AppsCalendar.Calendar.Colors.Get
  ( -- * Resource
    CalendarColorsGetResource,

    -- ** Constructing a Request
    CalendarColorsGet (..),
    newCalendarColorsGet,
  )
where

import Gogol.AppsCalendar.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @calendar.colors.get@ method which the
-- 'CalendarColorsGet' request conforms to.
type CalendarColorsGetResource =
  "calendar"
    Core.:> "v3"
    Core.:> "colors"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Colors

-- | Returns the color definitions for calendars and events.
--
-- /See:/ 'newCalendarColorsGet' smart constructor.
data CalendarColorsGet = CalendarColorsGet
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarColorsGet' with the minimum fields required to make a request.
newCalendarColorsGet ::
  CalendarColorsGet
newCalendarColorsGet = CalendarColorsGet

instance Core.GoogleRequest CalendarColorsGet where
  type Rs CalendarColorsGet = Colors
  type
    Scopes CalendarColorsGet =
      '[ Calendar'FullControl,
         Calendar'App'Created,
         Calendar'Calendarlist,
         Calendar'Calendarlist'Readonly,
         Calendar'Events'Freebusy,
         Calendar'Events'Owned,
         Calendar'Events'Owned'Readonly,
         Calendar'Events'Public'Readonly,
         Calendar'Readonly
       ]
  requestClient CalendarColorsGet {} =
    go (Core.Just Core.AltJSON) appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarColorsGetResource)
          Core.mempty
