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
-- Module      : Gogol.AppsCalendar.Calendar.Settings.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a single user setting.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.settings.get@.
module Gogol.AppsCalendar.Calendar.Settings.Get
  ( -- * Resource
    CalendarSettingsGetResource,

    -- ** Constructing a Request
    newCalendarSettingsGet,
    CalendarSettingsGet,
  )
where

import Gogol.AppsCalendar.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @calendar.settings.get@ method which the
-- 'CalendarSettingsGet' request conforms to.
type CalendarSettingsGetResource =
  "calendar"
    Core.:> "v3"
    Core.:> "users"
    Core.:> "me"
    Core.:> "settings"
    Core.:> Core.Capture "setting" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Setting

-- | Returns a single user setting.
--
-- /See:/ 'newCalendarSettingsGet' smart constructor.
newtype CalendarSettingsGet = CalendarSettingsGet
  { -- | The id of the user setting.
    setting :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarSettingsGet' with the minimum fields required to make a request.
newCalendarSettingsGet ::
  -- |  The id of the user setting. See 'setting'.
  Core.Text ->
  CalendarSettingsGet
newCalendarSettingsGet setting = CalendarSettingsGet {setting = setting}

instance Core.GoogleRequest CalendarSettingsGet where
  type Rs CalendarSettingsGet = Setting
  type
    Scopes CalendarSettingsGet =
      '[ Calendar'FullControl,
         Calendar'Readonly,
         Calendar'Settings'Readonly
       ]
  requestClient CalendarSettingsGet {..} =
    go
      setting
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarSettingsGetResource
          )
          Core.mempty
