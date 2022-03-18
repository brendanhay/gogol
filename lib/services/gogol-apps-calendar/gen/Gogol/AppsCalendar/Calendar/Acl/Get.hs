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
-- Module      : Gogol.AppsCalendar.Calendar.Acl.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an access control rule.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.get@.
module Gogol.AppsCalendar.Calendar.Acl.Get
  ( -- * Resource
    CalendarAclGetResource,

    -- ** Constructing a Request
    newCalendarAclGet,
    CalendarAclGet,
  )
where

import Gogol.AppsCalendar.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @calendar.acl.get@ method which the
-- 'CalendarAclGet' request conforms to.
type CalendarAclGetResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> "acl"
    Core.:> Core.Capture "ruleId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AclRule

-- | Returns an access control rule.
--
-- /See:/ 'newCalendarAclGet' smart constructor.
data CalendarAclGet = CalendarAclGet
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text,
    -- | ACL rule identifier.
    ruleId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarAclGet' with the minimum fields required to make a request.
newCalendarAclGet ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  -- |  ACL rule identifier. See 'ruleId'.
  Core.Text ->
  CalendarAclGet
newCalendarAclGet calendarId ruleId =
  CalendarAclGet {calendarId = calendarId, ruleId = ruleId}

instance Core.GoogleRequest CalendarAclGet where
  type Rs CalendarAclGet = AclRule
  type
    Scopes CalendarAclGet =
      '[ "https://www.googleapis.com/auth/calendar",
         "https://www.googleapis.com/auth/calendar.readonly"
       ]
  requestClient CalendarAclGet {..} =
    go
      calendarId
      ruleId
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarAclGetResource)
          Core.mempty
