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
-- Module      : Gogol.AppsCalendar.Calendar.CalendarList.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the calendars on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.list@.
module Gogol.AppsCalendar.Calendar.CalendarList.List
  ( -- * Resource
    CalendarCalendarListListResource,

    -- ** Constructing a Request
    newCalendarCalendarListList,
    CalendarCalendarListList,
  )
where

import Gogol.AppsCalendar.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @calendar.calendarList.list@ method which the
-- 'CalendarCalendarListList' request conforms to.
type CalendarCalendarListListResource =
  "calendar"
    Core.:> "v3"
    Core.:> "users"
    Core.:> "me"
    Core.:> "calendarList"
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam
              "minAccessRole"
              CalendarListListMinAccessRole
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "showHidden" Core.Bool
    Core.:> Core.QueryParam "syncToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CalendarList

-- | Returns the calendars on the user\'s calendar list.
--
-- /See:/ 'newCalendarCalendarListList' smart constructor.
data CalendarCalendarListList = CalendarCalendarListList
  { -- | Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
    maxResults :: (Core.Maybe Core.Int32),
    -- | The minimum access role for the user in the returned entries. Optional. The default is no restriction.
    minAccessRole :: (Core.Maybe CalendarListListMinAccessRole),
    -- | Token specifying which result page to return. Optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | Whether to include deleted calendar list entries in the result. Optional. The default is False.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Whether to show hidden entries. Optional. The default is False.
    showHidden :: (Core.Maybe Core.Bool),
    -- | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. If only read-only fields such as calendar properties or ACLs have changed, the entry won\'t be returned. All entries deleted and hidden since the previous list request will always be in the result set and it is not allowed to set showDeleted neither showHidden to False. To ensure client state consistency minAccessRole query parameter cannot be specified together with nextSyncToken. If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken. Learn more about incremental synchronization. Optional. The default is to return all entries.
    syncToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarCalendarListList' with the minimum fields required to make a request.
newCalendarCalendarListList ::
  CalendarCalendarListList
newCalendarCalendarListList =
  CalendarCalendarListList
    { maxResults = Core.Nothing,
      minAccessRole = Core.Nothing,
      pageToken = Core.Nothing,
      showDeleted = Core.Nothing,
      showHidden = Core.Nothing,
      syncToken = Core.Nothing
    }

instance Core.GoogleRequest CalendarCalendarListList where
  type Rs CalendarCalendarListList = CalendarList
  type
    Scopes CalendarCalendarListList =
      '[ "https://www.googleapis.com/auth/calendar",
         "https://www.googleapis.com/auth/calendar.readonly"
       ]
  requestClient CalendarCalendarListList {..} =
    go
      maxResults
      minAccessRole
      pageToken
      showDeleted
      showHidden
      syncToken
      (Core.Just Core.AltJSON)
      appsCalendarService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CalendarCalendarListListResource
          )
          Core.mempty
