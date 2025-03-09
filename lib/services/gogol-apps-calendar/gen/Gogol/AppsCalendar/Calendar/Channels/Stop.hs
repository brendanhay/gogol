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
-- Module      : Gogol.AppsCalendar.Calendar.Channels.Stop
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop watching resources through this channel
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.channels.stop@.
module Gogol.AppsCalendar.Calendar.Channels.Stop
  ( -- * Resource
    CalendarChannelsStopResource,

    -- ** Constructing a Request
    CalendarChannelsStop (..),
    newCalendarChannelsStop,
  )
where

import Gogol.AppsCalendar.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @calendar.channels.stop@ method which the
-- 'CalendarChannelsStop' request conforms to.
type CalendarChannelsStopResource =
  "calendar"
    Core.:> "v3"
    Core.:> "channels"
    Core.:> "stop"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Channel
    Core.:> Core.Post '[Core.JSON] ()

-- | Stop watching resources through this channel
--
-- /See:/ 'newCalendarChannelsStop' smart constructor.
newtype CalendarChannelsStop = CalendarChannelsStop
  { -- | Multipart request metadata.
    payload :: Channel
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarChannelsStop' with the minimum fields required to make a request.
newCalendarChannelsStop ::
  -- |  Multipart request metadata. See 'payload'.
  Channel ->
  CalendarChannelsStop
newCalendarChannelsStop payload =
  CalendarChannelsStop {payload = payload}

instance Core.GoogleRequest CalendarChannelsStop where
  type Rs CalendarChannelsStop = ()
  type
    Scopes CalendarChannelsStop =
      '[ Calendar'FullControl,
         Calendar'Acls,
         Calendar'Acls'Readonly,
         Calendar'App'Created,
         Calendar'Calendarlist,
         Calendar'Calendarlist'Readonly,
         Calendar'Events,
         Calendar'Events'Freebusy,
         Calendar'Events'Owned,
         Calendar'Events'Owned'Readonly,
         Calendar'Events'Public'Readonly,
         Calendar'Events'Readonly,
         Calendar'Readonly,
         Calendar'Settings'Readonly
       ]
  requestClient CalendarChannelsStop {..} =
    go (Core.Just Core.AltJSON) payload appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarChannelsStopResource)
          Core.mempty
