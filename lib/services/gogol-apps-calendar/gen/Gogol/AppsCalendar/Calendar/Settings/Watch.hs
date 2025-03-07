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
-- Module      : Gogol.AppsCalendar.Calendar.Settings.Watch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watch for changes to Settings resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.settings.watch@.
module Gogol.AppsCalendar.Calendar.Settings.Watch
  ( -- * Resource
    CalendarSettingsWatchResource,

    -- ** Constructing a Request
    CalendarSettingsWatch (..),
    newCalendarSettingsWatch,
  )
where

import Gogol.AppsCalendar.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @calendar.settings.watch@ method which the
-- 'CalendarSettingsWatch' request conforms to.
type CalendarSettingsWatchResource =
  "calendar"
    Core.:> "v3"
    Core.:> "users"
    Core.:> "me"
    Core.:> "settings"
    Core.:> "watch"
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "syncToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Channel
    Core.:> Core.Post '[Core.JSON] Channel

-- | Watch for changes to Settings resources.
--
-- /See:/ 'newCalendarSettingsWatch' smart constructor.
data CalendarSettingsWatch = CalendarSettingsWatch
  { -- | Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
    maxResults :: (Core.Maybe Core.Int32),
    -- | Token specifying which result page to return. Optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Channel,
    -- | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken. Learn more about incremental synchronization. Optional. The default is to return all entries.
    syncToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarSettingsWatch' with the minimum fields required to make a request.
newCalendarSettingsWatch ::
  -- |  Multipart request metadata. See 'payload'.
  Channel ->
  CalendarSettingsWatch
newCalendarSettingsWatch payload =
  CalendarSettingsWatch
    { maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      payload = payload,
      syncToken = Core.Nothing
    }

instance Core.GoogleRequest CalendarSettingsWatch where
  type Rs CalendarSettingsWatch = Channel
  type
    Scopes CalendarSettingsWatch =
      '[ Calendar'FullControl,
         Calendar'Readonly,
         Calendar'Settings'Readonly
       ]
  requestClient CalendarSettingsWatch {..} =
    go
      maxResults
      pageToken
      syncToken
      (Core.Just Core.AltJSON)
      payload
      appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarSettingsWatchResource)
          Core.mempty
