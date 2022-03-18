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
-- Module      : Network.Google.AppsCalendar.Calendar.Acl.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the rules in the access control list for the calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.list@.
module Network.Google.AppsCalendar.Calendar.Acl.List
  ( -- * Resource
    CalendarAclListResource,

    -- ** Constructing a Request
    newCalendarAclList,
    CalendarAclList,
  )
where

import Network.Google.AppsCalendar.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @calendar.acl.list@ method which the
-- 'CalendarAclList' request conforms to.
type CalendarAclListResource =
  "calendar"
    Core.:> "v3"
    Core.:> "calendars"
    Core.:> Core.Capture "calendarId" Core.Text
    Core.:> "acl"
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "syncToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Acl

-- | Returns the rules in the access control list for the calendar.
--
-- /See:/ 'newCalendarAclList' smart constructor.
data CalendarAclList = CalendarAclList
  { -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
    calendarId :: Core.Text,
    -- | Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
    maxResults :: (Core.Maybe Core.Int32),
    -- | Token specifying which result page to return. Optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to \"none\". Deleted ACLs will always be included if syncToken is provided. Optional. The default is False.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All entries deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False. If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken. Learn more about incremental synchronization. Optional. The default is to return all entries.
    syncToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarAclList' with the minimum fields required to make a request.
newCalendarAclList ::
  -- |  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
  Core.Text ->
  CalendarAclList
newCalendarAclList calendarId =
  CalendarAclList
    { calendarId = calendarId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      showDeleted = Core.Nothing,
      syncToken = Core.Nothing
    }

instance Core.GoogleRequest CalendarAclList where
  type Rs CalendarAclList = Acl
  type
    Scopes CalendarAclList =
      '["https://www.googleapis.com/auth/calendar"]
  requestClient CalendarAclList {..} =
    go
      calendarId
      maxResults
      pageToken
      showDeleted
      syncToken
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CalendarAclListResource)
          Core.mempty
