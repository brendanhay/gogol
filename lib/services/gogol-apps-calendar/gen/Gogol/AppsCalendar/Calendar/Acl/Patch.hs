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
-- Module      : Gogol.AppsCalendar.Calendar.Acl.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an access control rule. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.patch@.
module Gogol.AppsCalendar.Calendar.Acl.Patch
    (
    -- * Resource
      CalendarAclPatchResource

    -- ** Constructing a Request
    , newCalendarAclPatch
    , CalendarAclPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsCalendar.Types

-- | A resource alias for @calendar.acl.patch@ method which the
-- 'CalendarAclPatch' request conforms to.
type CalendarAclPatchResource =
     "calendar" Core.:>
       "v3" Core.:>
         "calendars" Core.:>
           Core.Capture "calendarId" Core.Text Core.:>
             "acl" Core.:>
               Core.Capture "ruleId" Core.Text Core.:>
                 Core.QueryParam "sendNotifications" Core.Bool Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AclRule Core.:>
                       Core.Patch '[Core.JSON] AclRule

-- | Updates an access control rule. This method supports patch semantics.
--
-- /See:/ 'newCalendarAclPatch' smart constructor.
data CalendarAclPatch = CalendarAclPatch
    {
      -- | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.
      calendarId :: Core.Text
      -- | Multipart request metadata.
    , payload :: AclRule
      -- | ACL rule identifier.
    , ruleId :: Core.Text
      -- | Whether to send notifications about the calendar sharing change. Note that there are no notifications on access removal. Optional. The default is True.
    , sendNotifications :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarAclPatch' with the minimum fields required to make a request.
newCalendarAclPatch 
    ::  Core.Text
       -- ^  Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword. See 'calendarId'.
    -> AclRule
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  ACL rule identifier. See 'ruleId'.
    -> CalendarAclPatch
newCalendarAclPatch calendarId payload ruleId =
  CalendarAclPatch
    { calendarId = calendarId
    , payload = payload
    , ruleId = ruleId
    , sendNotifications = Core.Nothing
    }

instance Core.GoogleRequest CalendarAclPatch where
        type Rs CalendarAclPatch = AclRule
        type Scopes CalendarAclPatch =
             '["https://www.googleapis.com/auth/calendar"]
        requestClient CalendarAclPatch{..}
          = go calendarId ruleId sendNotifications
              (Core.Just Core.AltJSON)
              payload
              appsCalendarService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy CalendarAclPatchResource)
                      Core.mempty

