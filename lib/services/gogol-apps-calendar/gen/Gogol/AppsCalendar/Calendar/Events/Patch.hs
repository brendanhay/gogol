{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsCalendar.Calendar.Events.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an event. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.events.patch@.
module Gogol.AppsCalendar.Calendar.Events.Patch
    (
    -- * Resource
      CalendarEventsPatchResource

    -- ** Constructing a Request
    , CalendarEventsPatch (..)
    , newCalendarEventsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsCalendar.Types

-- | A resource alias for @calendar.events.patch@ method which the
-- 'CalendarEventsPatch' request conforms to.
type CalendarEventsPatchResource =
     "calendar" Core.:>
       "v3" Core.:>
         "calendars" Core.:>
           Core.Capture "calendarId" Core.Text Core.:>
             "events" Core.:>
               Core.Capture "eventId" Core.Text Core.:>
                 Core.QueryParam "alwaysIncludeEmail" Core.Bool
                   Core.:>
                   Core.QueryParam "conferenceDataVersion" Core.Int32
                     Core.:>
                     Core.QueryParam "maxAttendees" Core.Int32 Core.:>
                       Core.QueryParam "sendNotifications" Core.Bool Core.:>
                         Core.QueryParam "sendUpdates" EventsPatchSendUpdates
                           Core.:>
                           Core.QueryParam "supportsAttachments" Core.Bool
                             Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] Event Core.:>
                                 Core.Patch '[Core.JSON] Event

-- | Updates an event. This method supports patch semantics.
--
-- /See:/ 'newCalendarEventsPatch' smart constructor.
data CalendarEventsPatch = CalendarEventsPatch
    {
      -- | Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).
      alwaysIncludeEmail :: (Core.Maybe Core.Bool)
      -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    , calendarId :: Core.Text
      -- | Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event\'s body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.
    , conferenceDataVersion :: (Core.Maybe Core.Int32)
      -- | Event identifier.
    , eventId :: Core.Text
      -- | The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
    , maxAttendees :: (Core.Maybe Core.Int32)
      -- | Multipart request metadata.
    , payload :: Event
      -- | Deprecated. Please use sendUpdates instead.
      -- 
      -- Whether to send notifications about the event update (for example, description changes, etc.). Note that some emails might still be sent even if you set the value to false. The default is false.
    , sendNotifications :: (Core.Maybe Core.Bool)
      -- | Guests who should receive notifications about the event update (for example, title changes, etc.).
    , sendUpdates :: (Core.Maybe EventsPatchSendUpdates)
      -- | Whether API client performing operation supports event attachments. Optional. The default is False.
    , supportsAttachments :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarEventsPatch' with the minimum fields required to make a request.
newCalendarEventsPatch 
    ::  Core.Text
       -- ^  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
    -> Core.Text
       -- ^  Event identifier. See 'eventId'.
    -> Event
       -- ^  Multipart request metadata. See 'payload'.
    -> CalendarEventsPatch
newCalendarEventsPatch calendarId eventId payload =
  CalendarEventsPatch
    { alwaysIncludeEmail = Core.Nothing
    , calendarId = calendarId
    , conferenceDataVersion = Core.Nothing
    , eventId = eventId
    , maxAttendees = Core.Nothing
    , payload = payload
    , sendNotifications = Core.Nothing
    , sendUpdates = Core.Nothing
    , supportsAttachments = Core.Nothing
    }

instance Core.GoogleRequest CalendarEventsPatch where
        type Rs CalendarEventsPatch = Event
        type Scopes CalendarEventsPatch =
             '[Calendar'FullControl, Calendar'Events]
        requestClient CalendarEventsPatch{..}
          = go calendarId eventId alwaysIncludeEmail
              conferenceDataVersion
              maxAttendees
              sendNotifications
              sendUpdates
              supportsAttachments
              (Core.Just Core.AltJSON)
              payload
              appsCalendarService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CalendarEventsPatchResource)
                      Core.mempty

