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
-- Module      : Gogol.AppsCalendar.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AppsCalendar.Internal.Sum
  (

    -- * CalendarListListMinAccessRole
    CalendarListListMinAccessRole
      (
        CalendarListListMinAccessRole_FreeBusyReader,
        CalendarListListMinAccessRole_Owner,
        CalendarListListMinAccessRole_Reader,
        CalendarListListMinAccessRole_Writer,
        ..
      ),

    -- * CalendarListWatchMinAccessRole
    CalendarListWatchMinAccessRole
      (
        CalendarListWatchMinAccessRole_FreeBusyReader,
        CalendarListWatchMinAccessRole_Owner,
        CalendarListWatchMinAccessRole_Reader,
        CalendarListWatchMinAccessRole_Writer,
        ..
      ),

    -- * EventsDeleteSendUpdates
    EventsDeleteSendUpdates
      (
        EventsDeleteSendUpdates_All,
        EventsDeleteSendUpdates_ExternalOnly,
        EventsDeleteSendUpdates_None,
        ..
      ),

    -- * EventsInsertSendUpdates
    EventsInsertSendUpdates
      (
        EventsInsertSendUpdates_All,
        EventsInsertSendUpdates_ExternalOnly,
        EventsInsertSendUpdates_None,
        ..
      ),

    -- * EventsListEventTypes
    EventsListEventTypes
      (
        EventsListEventTypes_Birthday,
        EventsListEventTypes_Default,
        EventsListEventTypes_FocusTime,
        EventsListEventTypes_FromGmail,
        EventsListEventTypes_OutOfOffice,
        EventsListEventTypes_WorkingLocation,
        ..
      ),

    -- * EventsListOrderBy
    EventsListOrderBy
      (
        EventsListOrderBy_StartTime,
        EventsListOrderBy_Updated,
        ..
      ),

    -- * EventsMoveSendUpdates
    EventsMoveSendUpdates
      (
        EventsMoveSendUpdates_All,
        EventsMoveSendUpdates_ExternalOnly,
        EventsMoveSendUpdates_None,
        ..
      ),

    -- * EventsPatchSendUpdates
    EventsPatchSendUpdates
      (
        EventsPatchSendUpdates_All,
        EventsPatchSendUpdates_ExternalOnly,
        EventsPatchSendUpdates_None,
        ..
      ),

    -- * EventsQuickAddSendUpdates
    EventsQuickAddSendUpdates
      (
        EventsQuickAddSendUpdates_All,
        EventsQuickAddSendUpdates_ExternalOnly,
        EventsQuickAddSendUpdates_None,
        ..
      ),

    -- * EventsUpdateSendUpdates
    EventsUpdateSendUpdates
      (
        EventsUpdateSendUpdates_All,
        EventsUpdateSendUpdates_ExternalOnly,
        EventsUpdateSendUpdates_None,
        ..
      ),

    -- * EventsWatchEventTypes
    EventsWatchEventTypes
      (
        EventsWatchEventTypes_Birthday,
        EventsWatchEventTypes_Default,
        EventsWatchEventTypes_FocusTime,
        EventsWatchEventTypes_FromGmail,
        EventsWatchEventTypes_OutOfOffice,
        EventsWatchEventTypes_WorkingLocation,
        ..
      ),

    -- * EventsWatchOrderBy
    EventsWatchOrderBy
      (
        EventsWatchOrderBy_StartTime,
        EventsWatchOrderBy_Updated,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | The minimum access role for the user in the returned entries. Optional. The default is no restriction.
newtype CalendarListListMinAccessRole = CalendarListListMinAccessRole { fromCalendarListListMinAccessRole :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The user can read free\/busy information.
pattern CalendarListListMinAccessRole_FreeBusyReader :: CalendarListListMinAccessRole
pattern CalendarListListMinAccessRole_FreeBusyReader = CalendarListListMinAccessRole "freeBusyReader"

-- | The user can read and modify events and access control lists.
pattern CalendarListListMinAccessRole_Owner :: CalendarListListMinAccessRole
pattern CalendarListListMinAccessRole_Owner = CalendarListListMinAccessRole "owner"

-- | The user can read events that are not private.
pattern CalendarListListMinAccessRole_Reader :: CalendarListListMinAccessRole
pattern CalendarListListMinAccessRole_Reader = CalendarListListMinAccessRole "reader"

-- | The user can read and modify events.
pattern CalendarListListMinAccessRole_Writer :: CalendarListListMinAccessRole
pattern CalendarListListMinAccessRole_Writer = CalendarListListMinAccessRole "writer"

{-# COMPLETE
  CalendarListListMinAccessRole_FreeBusyReader,
  CalendarListListMinAccessRole_Owner,
  CalendarListListMinAccessRole_Reader,
  CalendarListListMinAccessRole_Writer,
  CalendarListListMinAccessRole #-}

-- | The minimum access role for the user in the returned entries. Optional. The default is no restriction.
newtype CalendarListWatchMinAccessRole = CalendarListWatchMinAccessRole { fromCalendarListWatchMinAccessRole :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The user can read free\/busy information.
pattern CalendarListWatchMinAccessRole_FreeBusyReader :: CalendarListWatchMinAccessRole
pattern CalendarListWatchMinAccessRole_FreeBusyReader = CalendarListWatchMinAccessRole "freeBusyReader"

-- | The user can read and modify events and access control lists.
pattern CalendarListWatchMinAccessRole_Owner :: CalendarListWatchMinAccessRole
pattern CalendarListWatchMinAccessRole_Owner = CalendarListWatchMinAccessRole "owner"

-- | The user can read events that are not private.
pattern CalendarListWatchMinAccessRole_Reader :: CalendarListWatchMinAccessRole
pattern CalendarListWatchMinAccessRole_Reader = CalendarListWatchMinAccessRole "reader"

-- | The user can read and modify events.
pattern CalendarListWatchMinAccessRole_Writer :: CalendarListWatchMinAccessRole
pattern CalendarListWatchMinAccessRole_Writer = CalendarListWatchMinAccessRole "writer"

{-# COMPLETE
  CalendarListWatchMinAccessRole_FreeBusyReader,
  CalendarListWatchMinAccessRole_Owner,
  CalendarListWatchMinAccessRole_Reader,
  CalendarListWatchMinAccessRole_Writer,
  CalendarListWatchMinAccessRole #-}

-- | Guests who should receive notifications about the deletion of the event.
newtype EventsDeleteSendUpdates = EventsDeleteSendUpdates { fromEventsDeleteSendUpdates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Notifications are sent to all guests.
pattern EventsDeleteSendUpdates_All :: EventsDeleteSendUpdates
pattern EventsDeleteSendUpdates_All = EventsDeleteSendUpdates "all"

-- | Notifications are sent to non-Google Calendar guests only.
pattern EventsDeleteSendUpdates_ExternalOnly :: EventsDeleteSendUpdates
pattern EventsDeleteSendUpdates_ExternalOnly = EventsDeleteSendUpdates "externalOnly"

-- | No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.
pattern EventsDeleteSendUpdates_None :: EventsDeleteSendUpdates
pattern EventsDeleteSendUpdates_None = EventsDeleteSendUpdates "none"

{-# COMPLETE
  EventsDeleteSendUpdates_All,
  EventsDeleteSendUpdates_ExternalOnly,
  EventsDeleteSendUpdates_None,
  EventsDeleteSendUpdates #-}

-- | Whether to send notifications about the creation of the new event. Note that some emails might still be sent. The default is false.
newtype EventsInsertSendUpdates = EventsInsertSendUpdates { fromEventsInsertSendUpdates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Notifications are sent to all guests.
pattern EventsInsertSendUpdates_All :: EventsInsertSendUpdates
pattern EventsInsertSendUpdates_All = EventsInsertSendUpdates "all"

-- | Notifications are sent to non-Google Calendar guests only.
pattern EventsInsertSendUpdates_ExternalOnly :: EventsInsertSendUpdates
pattern EventsInsertSendUpdates_ExternalOnly = EventsInsertSendUpdates "externalOnly"

-- | No notifications are sent. Warning: Using the value none can have significant adverse effects, including events not syncing to external calendars or events being lost altogether for some users. For calendar migration tasks, consider using the events.import method instead.
pattern EventsInsertSendUpdates_None :: EventsInsertSendUpdates
pattern EventsInsertSendUpdates_None = EventsInsertSendUpdates "none"

{-# COMPLETE
  EventsInsertSendUpdates_All,
  EventsInsertSendUpdates_ExternalOnly,
  EventsInsertSendUpdates_None,
  EventsInsertSendUpdates #-}

-- | Event types to return. Optional. This parameter can be repeated multiple times to return events of different types. If unset, returns all event types.
newtype EventsListEventTypes = EventsListEventTypes { fromEventsListEventTypes :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Special all-day events with an annual recurrence.
pattern EventsListEventTypes_Birthday :: EventsListEventTypes
pattern EventsListEventTypes_Birthday = EventsListEventTypes "birthday"

-- | Regular events.
pattern EventsListEventTypes_Default :: EventsListEventTypes
pattern EventsListEventTypes_Default = EventsListEventTypes "default"

-- | Focus time events.
pattern EventsListEventTypes_FocusTime :: EventsListEventTypes
pattern EventsListEventTypes_FocusTime = EventsListEventTypes "focusTime"

-- | Events from Gmail.
pattern EventsListEventTypes_FromGmail :: EventsListEventTypes
pattern EventsListEventTypes_FromGmail = EventsListEventTypes "fromGmail"

-- | Out of office events.
pattern EventsListEventTypes_OutOfOffice :: EventsListEventTypes
pattern EventsListEventTypes_OutOfOffice = EventsListEventTypes "outOfOffice"

-- | Working location events.
pattern EventsListEventTypes_WorkingLocation :: EventsListEventTypes
pattern EventsListEventTypes_WorkingLocation = EventsListEventTypes "workingLocation"

{-# COMPLETE
  EventsListEventTypes_Birthday,
  EventsListEventTypes_Default,
  EventsListEventTypes_FocusTime,
  EventsListEventTypes_FromGmail,
  EventsListEventTypes_OutOfOffice,
  EventsListEventTypes_WorkingLocation,
  EventsListEventTypes #-}

-- | The order of the events returned in the result. Optional. The default is an unspecified, stable order.
newtype EventsListOrderBy = EventsListOrderBy { fromEventsListOrderBy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Order by the start date\/time (ascending). This is only available when querying single events (i.e. the parameter singleEvents is True)
pattern EventsListOrderBy_StartTime :: EventsListOrderBy
pattern EventsListOrderBy_StartTime = EventsListOrderBy "startTime"

-- | Order by last modification time (ascending).
pattern EventsListOrderBy_Updated :: EventsListOrderBy
pattern EventsListOrderBy_Updated = EventsListOrderBy "updated"

{-# COMPLETE
  EventsListOrderBy_StartTime,
  EventsListOrderBy_Updated,
  EventsListOrderBy #-}

-- | Guests who should receive notifications about the change of the event\'s organizer.
newtype EventsMoveSendUpdates = EventsMoveSendUpdates { fromEventsMoveSendUpdates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Notifications are sent to all guests.
pattern EventsMoveSendUpdates_All :: EventsMoveSendUpdates
pattern EventsMoveSendUpdates_All = EventsMoveSendUpdates "all"

-- | Notifications are sent to non-Google Calendar guests only.
pattern EventsMoveSendUpdates_ExternalOnly :: EventsMoveSendUpdates
pattern EventsMoveSendUpdates_ExternalOnly = EventsMoveSendUpdates "externalOnly"

-- | No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.
pattern EventsMoveSendUpdates_None :: EventsMoveSendUpdates
pattern EventsMoveSendUpdates_None = EventsMoveSendUpdates "none"

{-# COMPLETE
  EventsMoveSendUpdates_All,
  EventsMoveSendUpdates_ExternalOnly,
  EventsMoveSendUpdates_None,
  EventsMoveSendUpdates #-}

-- | Guests who should receive notifications about the event update (for example, title changes, etc.).
newtype EventsPatchSendUpdates = EventsPatchSendUpdates { fromEventsPatchSendUpdates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Notifications are sent to all guests.
pattern EventsPatchSendUpdates_All :: EventsPatchSendUpdates
pattern EventsPatchSendUpdates_All = EventsPatchSendUpdates "all"

-- | Notifications are sent to non-Google Calendar guests only.
pattern EventsPatchSendUpdates_ExternalOnly :: EventsPatchSendUpdates
pattern EventsPatchSendUpdates_ExternalOnly = EventsPatchSendUpdates "externalOnly"

-- | No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.
pattern EventsPatchSendUpdates_None :: EventsPatchSendUpdates
pattern EventsPatchSendUpdates_None = EventsPatchSendUpdates "none"

{-# COMPLETE
  EventsPatchSendUpdates_All,
  EventsPatchSendUpdates_ExternalOnly,
  EventsPatchSendUpdates_None,
  EventsPatchSendUpdates #-}

-- | Guests who should receive notifications about the creation of the new event.
newtype EventsQuickAddSendUpdates = EventsQuickAddSendUpdates { fromEventsQuickAddSendUpdates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Notifications are sent to all guests.
pattern EventsQuickAddSendUpdates_All :: EventsQuickAddSendUpdates
pattern EventsQuickAddSendUpdates_All = EventsQuickAddSendUpdates "all"

-- | Notifications are sent to non-Google Calendar guests only.
pattern EventsQuickAddSendUpdates_ExternalOnly :: EventsQuickAddSendUpdates
pattern EventsQuickAddSendUpdates_ExternalOnly = EventsQuickAddSendUpdates "externalOnly"

-- | No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.
pattern EventsQuickAddSendUpdates_None :: EventsQuickAddSendUpdates
pattern EventsQuickAddSendUpdates_None = EventsQuickAddSendUpdates "none"

{-# COMPLETE
  EventsQuickAddSendUpdates_All,
  EventsQuickAddSendUpdates_ExternalOnly,
  EventsQuickAddSendUpdates_None,
  EventsQuickAddSendUpdates #-}

-- | Guests who should receive notifications about the event update (for example, title changes, etc.).
newtype EventsUpdateSendUpdates = EventsUpdateSendUpdates { fromEventsUpdateSendUpdates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Notifications are sent to all guests.
pattern EventsUpdateSendUpdates_All :: EventsUpdateSendUpdates
pattern EventsUpdateSendUpdates_All = EventsUpdateSendUpdates "all"

-- | Notifications are sent to non-Google Calendar guests only.
pattern EventsUpdateSendUpdates_ExternalOnly :: EventsUpdateSendUpdates
pattern EventsUpdateSendUpdates_ExternalOnly = EventsUpdateSendUpdates "externalOnly"

-- | No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.
pattern EventsUpdateSendUpdates_None :: EventsUpdateSendUpdates
pattern EventsUpdateSendUpdates_None = EventsUpdateSendUpdates "none"

{-# COMPLETE
  EventsUpdateSendUpdates_All,
  EventsUpdateSendUpdates_ExternalOnly,
  EventsUpdateSendUpdates_None,
  EventsUpdateSendUpdates #-}

-- | Event types to return. Optional. This parameter can be repeated multiple times to return events of different types. If unset, returns all event types.
newtype EventsWatchEventTypes = EventsWatchEventTypes { fromEventsWatchEventTypes :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Special all-day events with an annual recurrence.
pattern EventsWatchEventTypes_Birthday :: EventsWatchEventTypes
pattern EventsWatchEventTypes_Birthday = EventsWatchEventTypes "birthday"

-- | Regular events.
pattern EventsWatchEventTypes_Default :: EventsWatchEventTypes
pattern EventsWatchEventTypes_Default = EventsWatchEventTypes "default"

-- | Focus time events.
pattern EventsWatchEventTypes_FocusTime :: EventsWatchEventTypes
pattern EventsWatchEventTypes_FocusTime = EventsWatchEventTypes "focusTime"

-- | Events from Gmail.
pattern EventsWatchEventTypes_FromGmail :: EventsWatchEventTypes
pattern EventsWatchEventTypes_FromGmail = EventsWatchEventTypes "fromGmail"

-- | Out of office events.
pattern EventsWatchEventTypes_OutOfOffice :: EventsWatchEventTypes
pattern EventsWatchEventTypes_OutOfOffice = EventsWatchEventTypes "outOfOffice"

-- | Working location events.
pattern EventsWatchEventTypes_WorkingLocation :: EventsWatchEventTypes
pattern EventsWatchEventTypes_WorkingLocation = EventsWatchEventTypes "workingLocation"

{-# COMPLETE
  EventsWatchEventTypes_Birthday,
  EventsWatchEventTypes_Default,
  EventsWatchEventTypes_FocusTime,
  EventsWatchEventTypes_FromGmail,
  EventsWatchEventTypes_OutOfOffice,
  EventsWatchEventTypes_WorkingLocation,
  EventsWatchEventTypes #-}

-- | The order of the events returned in the result. Optional. The default is an unspecified, stable order.
newtype EventsWatchOrderBy = EventsWatchOrderBy { fromEventsWatchOrderBy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Order by the start date\/time (ascending). This is only available when querying single events (i.e. the parameter singleEvents is True)
pattern EventsWatchOrderBy_StartTime :: EventsWatchOrderBy
pattern EventsWatchOrderBy_StartTime = EventsWatchOrderBy "startTime"

-- | Order by last modification time (ascending).
pattern EventsWatchOrderBy_Updated :: EventsWatchOrderBy
pattern EventsWatchOrderBy_Updated = EventsWatchOrderBy "updated"

{-# COMPLETE
  EventsWatchOrderBy_StartTime,
  EventsWatchOrderBy_Updated,
  EventsWatchOrderBy #-}
