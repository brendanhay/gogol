{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsCalendar.Calendar.Events.Move
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves an event to another calendar, i.e. changes an event\'s organizer.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.move@.
module Gogol.AppsCalendar.Calendar.Events.Move
    (
    -- * Resource
      CalendarEventsMoveResource

    -- ** Constructing a Request
    , newCalendarEventsMove
    , CalendarEventsMove
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsCalendar.Types

-- | A resource alias for @calendar.events.move@ method which the
-- 'CalendarEventsMove' request conforms to.
type CalendarEventsMoveResource =
     "calendar" Core.:>
       "v3" Core.:>
         "calendars" Core.:>
           Core.Capture "calendarId" Core.Text Core.:>
             "events" Core.:>
               Core.Capture "eventId" Core.Text Core.:>
                 "move" Core.:>
                   Core.QueryParam "destination" Core.Text Core.:>
                     Core.QueryParam "sendNotifications" Core.Bool Core.:>
                       Core.QueryParam "sendUpdates" EventsMoveSendUpdates
                         Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Post '[Core.JSON] Event

-- | Moves an event to another calendar, i.e. changes an event\'s organizer.
--
-- /See:/ 'newCalendarEventsMove' smart constructor.
data CalendarEventsMove = CalendarEventsMove
    {
      -- | Calendar identifier of the source calendar where the event currently is on.
      calendarId :: Core.Text
      -- | Calendar identifier of the target calendar where the event is to be moved to.
    , destination :: Core.Text
      -- | Event identifier.
    , eventId :: Core.Text
      -- | Deprecated. Please use sendUpdates instead.
      -- 
      -- Whether to send notifications about the change of the event\'s organizer. Note that some emails might still be sent even if you set the value to false. The default is false.
    , sendNotifications :: (Core.Maybe Core.Bool)
      -- | Guests who should receive notifications about the change of the event\'s organizer.
    , sendUpdates :: (Core.Maybe EventsMoveSendUpdates)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarEventsMove' with the minimum fields required to make a request.
newCalendarEventsMove 
    ::  Core.Text
       -- ^  Calendar identifier of the source calendar where the event currently is on. See 'calendarId'.
    -> Core.Text
       -- ^  Calendar identifier of the target calendar where the event is to be moved to. See 'destination'.
    -> Core.Text
       -- ^  Event identifier. See 'eventId'.
    -> CalendarEventsMove
newCalendarEventsMove calendarId destination eventId =
  CalendarEventsMove
    { calendarId = calendarId
    , destination = destination
    , eventId = eventId
    , sendNotifications = Core.Nothing
    , sendUpdates = Core.Nothing
    }

instance Core.GoogleRequest CalendarEventsMove where
        type Rs CalendarEventsMove = Event
        type Scopes CalendarEventsMove =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.events"]
        requestClient CalendarEventsMove{..}
          = go calendarId eventId (Core.Just destination)
              sendNotifications
              sendUpdates
              (Core.Just Core.AltJSON)
              appsCalendarService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy CalendarEventsMoveResource)
                      Core.mempty

