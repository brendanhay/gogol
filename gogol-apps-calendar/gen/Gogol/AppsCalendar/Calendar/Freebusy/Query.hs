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
-- Module      : Gogol.AppsCalendar.Calendar.Freebusy.Query
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns free\/busy information for a set of calendars.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.freebusy.query@.
module Gogol.AppsCalendar.Calendar.Freebusy.Query
  ( -- * Resource
    CalendarFreebusyQueryResource,

    -- ** Constructing a Request
    newCalendarFreebusyQuery,
    CalendarFreebusyQuery,
  )
where

import Gogol.AppsCalendar.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @calendar.freebusy.query@ method which the
-- 'CalendarFreebusyQuery' request conforms to.
type CalendarFreebusyQueryResource =
  "calendar"
    Core.:> "v3"
    Core.:> "freeBusy"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FreeBusyRequest
    Core.:> Core.Post '[Core.JSON] FreeBusyResponse

-- | Returns free\/busy information for a set of calendars.
--
-- /See:/ 'newCalendarFreebusyQuery' smart constructor.
newtype CalendarFreebusyQuery = CalendarFreebusyQuery
  { -- | Multipart request metadata.
    payload :: FreeBusyRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarFreebusyQuery' with the minimum fields required to make a request.
newCalendarFreebusyQuery ::
  -- |  Multipart request metadata. See 'payload'.
  FreeBusyRequest ->
  CalendarFreebusyQuery
newCalendarFreebusyQuery payload = CalendarFreebusyQuery {payload = payload}

instance Core.GoogleRequest CalendarFreebusyQuery where
  type Rs CalendarFreebusyQuery = FreeBusyResponse
  type
    Scopes CalendarFreebusyQuery =
      '[ "https://www.googleapis.com/auth/calendar",
         "https://www.googleapis.com/auth/calendar.readonly"
       ]
  requestClient CalendarFreebusyQuery {..} =
    go
      (Core.Just Core.AltJSON)
      payload
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarFreebusyQueryResource
          )
          Core.mempty
