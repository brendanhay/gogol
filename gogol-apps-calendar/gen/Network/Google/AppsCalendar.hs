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
-- Module      : Network.Google.AppsCalendar
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manipulates events and other calendar data.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference>
module Network.Google.AppsCalendar
  ( -- * Configuration
    appsCalendarService,

    -- * OAuth Scopes
    calendarScope,
    calendarEventsScope,
    calendarEventsReadOnlyScope,
    calendarReadOnlyScope,
    calendarSettingsReadOnlyScope,

    -- * Resources

    -- ** calendar.acl.delete
    CalendarAclDeleteResource,
    newCalendarAclDelete,
    CalendarAclDelete,

    -- ** calendar.acl.get
    CalendarAclGetResource,
    newCalendarAclGet,
    CalendarAclGet,

    -- ** calendar.acl.insert
    CalendarAclInsertResource,
    newCalendarAclInsert,
    CalendarAclInsert,

    -- ** calendar.acl.list
    CalendarAclListResource,
    newCalendarAclList,
    CalendarAclList,

    -- ** calendar.acl.patch
    CalendarAclPatchResource,
    newCalendarAclPatch,
    CalendarAclPatch,

    -- ** calendar.acl.update
    CalendarAclUpdateResource,
    newCalendarAclUpdate,
    CalendarAclUpdate,

    -- ** calendar.acl.watch
    CalendarAclWatchResource,
    newCalendarAclWatch,
    CalendarAclWatch,

    -- ** calendar.calendarList.delete
    CalendarCalendarListDeleteResource,
    newCalendarCalendarListDelete,
    CalendarCalendarListDelete,

    -- ** calendar.calendarList.get
    CalendarCalendarListGetResource,
    newCalendarCalendarListGet,
    CalendarCalendarListGet,

    -- ** calendar.calendarList.insert
    CalendarCalendarListInsertResource,
    newCalendarCalendarListInsert,
    CalendarCalendarListInsert,

    -- ** calendar.calendarList.list
    CalendarCalendarListListResource,
    newCalendarCalendarListList,
    CalendarCalendarListList,

    -- ** calendar.calendarList.patch
    CalendarCalendarListPatchResource,
    newCalendarCalendarListPatch,
    CalendarCalendarListPatch,

    -- ** calendar.calendarList.update
    CalendarCalendarListUpdateResource,
    newCalendarCalendarListUpdate,
    CalendarCalendarListUpdate,

    -- ** calendar.calendarList.watch
    CalendarCalendarListWatchResource,
    newCalendarCalendarListWatch,
    CalendarCalendarListWatch,

    -- ** calendar.calendars.clear
    CalendarCalendarsClearResource,
    newCalendarCalendarsClear,
    CalendarCalendarsClear,

    -- ** calendar.calendars.delete
    CalendarCalendarsDeleteResource,
    newCalendarCalendarsDelete,
    CalendarCalendarsDelete,

    -- ** calendar.calendars.get
    CalendarCalendarsGetResource,
    newCalendarCalendarsGet,
    CalendarCalendarsGet,

    -- ** calendar.calendars.insert
    CalendarCalendarsInsertResource,
    newCalendarCalendarsInsert,
    CalendarCalendarsInsert,

    -- ** calendar.calendars.patch
    CalendarCalendarsPatchResource,
    newCalendarCalendarsPatch,
    CalendarCalendarsPatch,

    -- ** calendar.calendars.update
    CalendarCalendarsUpdateResource,
    newCalendarCalendarsUpdate,
    CalendarCalendarsUpdate,

    -- ** calendar.channels.stop
    CalendarChannelsStopResource,
    newCalendarChannelsStop,
    CalendarChannelsStop,

    -- ** calendar.colors.get
    CalendarColorsGetResource,
    newCalendarColorsGet,
    CalendarColorsGet,

    -- ** calendar.events.delete
    CalendarEventsDeleteResource,
    newCalendarEventsDelete,
    CalendarEventsDelete,

    -- ** calendar.events.get
    CalendarEventsGetResource,
    newCalendarEventsGet,
    CalendarEventsGet,

    -- ** calendar.events.import
    CalendarEventsImportResource,
    newCalendarEventsImport,
    CalendarEventsImport,

    -- ** calendar.events.insert
    CalendarEventsInsertResource,
    newCalendarEventsInsert,
    CalendarEventsInsert,

    -- ** calendar.events.instances
    CalendarEventsInstancesResource,
    newCalendarEventsInstances,
    CalendarEventsInstances,

    -- ** calendar.events.list
    CalendarEventsListResource,
    newCalendarEventsList,
    CalendarEventsList,

    -- ** calendar.events.move
    CalendarEventsMoveResource,
    newCalendarEventsMove,
    CalendarEventsMove,

    -- ** calendar.events.patch
    CalendarEventsPatchResource,
    newCalendarEventsPatch,
    CalendarEventsPatch,

    -- ** calendar.events.quickAdd
    CalendarEventsQuickAddResource,
    newCalendarEventsQuickAdd,
    CalendarEventsQuickAdd,

    -- ** calendar.events.update
    CalendarEventsUpdateResource,
    newCalendarEventsUpdate,
    CalendarEventsUpdate,

    -- ** calendar.events.watch
    CalendarEventsWatchResource,
    newCalendarEventsWatch,
    CalendarEventsWatch,

    -- ** calendar.freebusy.query
    CalendarFreebusyQueryResource,
    newCalendarFreebusyQuery,
    CalendarFreebusyQuery,

    -- ** calendar.settings.get
    CalendarSettingsGetResource,
    newCalendarSettingsGet,
    CalendarSettingsGet,

    -- ** calendar.settings.list
    CalendarSettingsListResource,
    newCalendarSettingsList,
    CalendarSettingsList,

    -- ** calendar.settings.watch
    CalendarSettingsWatchResource,
    newCalendarSettingsWatch,
    CalendarSettingsWatch,

    -- * Types

    -- ** Acl
    Acl (..),
    newAcl,

    -- ** AclRule
    AclRule (..),
    newAclRule,

    -- ** AclRule_Scope
    AclRule_Scope (..),
    newAclRule_Scope,

    -- ** Calendar
    Calendar (..),
    newCalendar,

    -- ** CalendarList
    CalendarList (..),
    newCalendarList,

    -- ** CalendarListEntry
    CalendarListEntry (..),
    newCalendarListEntry,

    -- ** CalendarListEntry_NotificationSettings
    CalendarListEntry_NotificationSettings (..),
    newCalendarListEntry_NotificationSettings,

    -- ** CalendarNotification
    CalendarNotification (..),
    newCalendarNotification,

    -- ** Channel
    Channel (..),
    newChannel,

    -- ** Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- ** ColorDefinition
    ColorDefinition (..),
    newColorDefinition,

    -- ** Colors
    Colors (..),
    newColors,

    -- ** Colors_Calendar
    Colors_Calendar (..),
    newColors_Calendar,

    -- ** Colors_Event
    Colors_Event (..),
    newColors_Event,

    -- ** ConferenceData
    ConferenceData (..),
    newConferenceData,

    -- ** ConferenceParameters
    ConferenceParameters (..),
    newConferenceParameters,

    -- ** ConferenceParametersAddOnParameters
    ConferenceParametersAddOnParameters (..),
    newConferenceParametersAddOnParameters,

    -- ** ConferenceParametersAddOnParameters_Parameters
    ConferenceParametersAddOnParameters_Parameters (..),
    newConferenceParametersAddOnParameters_Parameters,

    -- ** ConferenceProperties
    ConferenceProperties (..),
    newConferenceProperties,

    -- ** ConferenceRequestStatus
    ConferenceRequestStatus (..),
    newConferenceRequestStatus,

    -- ** ConferenceSolution
    ConferenceSolution (..),
    newConferenceSolution,

    -- ** ConferenceSolutionKey
    ConferenceSolutionKey (..),
    newConferenceSolutionKey,

    -- ** CreateConferenceRequest
    CreateConferenceRequest (..),
    newCreateConferenceRequest,

    -- ** EntryPoint
    EntryPoint (..),
    newEntryPoint,

    -- ** Error'
    Error' (..),
    newError,

    -- ** Event
    Event (..),
    newEvent,

    -- ** Event_Creator
    Event_Creator (..),
    newEvent_Creator,

    -- ** Event_ExtendedProperties
    Event_ExtendedProperties (..),
    newEvent_ExtendedProperties,

    -- ** Event_ExtendedProperties_Private
    Event_ExtendedProperties_Private (..),
    newEvent_ExtendedProperties_Private,

    -- ** Event_ExtendedProperties_Shared
    Event_ExtendedProperties_Shared (..),
    newEvent_ExtendedProperties_Shared,

    -- ** Event_Gadget
    Event_Gadget (..),
    newEvent_Gadget,

    -- ** Event_Gadget_Preferences
    Event_Gadget_Preferences (..),
    newEvent_Gadget_Preferences,

    -- ** Event_Organizer
    Event_Organizer (..),
    newEvent_Organizer,

    -- ** Event_Reminders
    Event_Reminders (..),
    newEvent_Reminders,

    -- ** Event_Source
    Event_Source (..),
    newEvent_Source,

    -- ** EventAttachment
    EventAttachment (..),
    newEventAttachment,

    -- ** EventAttendee
    EventAttendee (..),
    newEventAttendee,

    -- ** EventDateTime
    EventDateTime (..),
    newEventDateTime,

    -- ** EventReminder
    EventReminder (..),
    newEventReminder,

    -- ** Events
    Events (..),
    newEvents,

    -- ** FreeBusyCalendar
    FreeBusyCalendar (..),
    newFreeBusyCalendar,

    -- ** FreeBusyGroup
    FreeBusyGroup (..),
    newFreeBusyGroup,

    -- ** FreeBusyRequest
    FreeBusyRequest (..),
    newFreeBusyRequest,

    -- ** FreeBusyRequestItem
    FreeBusyRequestItem (..),
    newFreeBusyRequestItem,

    -- ** FreeBusyResponse
    FreeBusyResponse (..),
    newFreeBusyResponse,

    -- ** FreeBusyResponse_Calendars
    FreeBusyResponse_Calendars (..),
    newFreeBusyResponse_Calendars,

    -- ** FreeBusyResponse_Groups
    FreeBusyResponse_Groups (..),
    newFreeBusyResponse_Groups,

    -- ** Setting
    Setting (..),
    newSetting,

    -- ** Settings
    Settings (..),
    newSettings,

    -- ** TimePeriod
    TimePeriod (..),
    newTimePeriod,

    -- ** CalendarListListMinAccessRole
    CalendarListListMinAccessRole (..),

    -- ** CalendarListWatchMinAccessRole
    CalendarListWatchMinAccessRole (..),

    -- ** EventsDeleteSendUpdates
    EventsDeleteSendUpdates (..),

    -- ** EventsInsertSendUpdates
    EventsInsertSendUpdates (..),

    -- ** EventsListOrderBy
    EventsListOrderBy (..),

    -- ** EventsMoveSendUpdates
    EventsMoveSendUpdates (..),

    -- ** EventsPatchSendUpdates
    EventsPatchSendUpdates (..),

    -- ** EventsQuickAddSendUpdates
    EventsQuickAddSendUpdates (..),

    -- ** EventsUpdateSendUpdates
    EventsUpdateSendUpdates (..),

    -- ** EventsWatchOrderBy
    EventsWatchOrderBy (..),
  )
where

import Network.Google.AppsCalendar.Calendar.Acl.Delete
import Network.Google.AppsCalendar.Calendar.Acl.Get
import Network.Google.AppsCalendar.Calendar.Acl.Insert
import Network.Google.AppsCalendar.Calendar.Acl.List
import Network.Google.AppsCalendar.Calendar.Acl.Patch
import Network.Google.AppsCalendar.Calendar.Acl.Update
import Network.Google.AppsCalendar.Calendar.Acl.Watch
import Network.Google.AppsCalendar.Calendar.CalendarList.Delete
import Network.Google.AppsCalendar.Calendar.CalendarList.Get
import Network.Google.AppsCalendar.Calendar.CalendarList.Insert
import Network.Google.AppsCalendar.Calendar.CalendarList.List
import Network.Google.AppsCalendar.Calendar.CalendarList.Patch
import Network.Google.AppsCalendar.Calendar.CalendarList.Update
import Network.Google.AppsCalendar.Calendar.CalendarList.Watch
import Network.Google.AppsCalendar.Calendar.Calendars.Clear
import Network.Google.AppsCalendar.Calendar.Calendars.Delete
import Network.Google.AppsCalendar.Calendar.Calendars.Get
import Network.Google.AppsCalendar.Calendar.Calendars.Insert
import Network.Google.AppsCalendar.Calendar.Calendars.Patch
import Network.Google.AppsCalendar.Calendar.Calendars.Update
import Network.Google.AppsCalendar.Calendar.Channels.Stop
import Network.Google.AppsCalendar.Calendar.Colors.Get
import Network.Google.AppsCalendar.Calendar.Events.Delete
import Network.Google.AppsCalendar.Calendar.Events.Get
import Network.Google.AppsCalendar.Calendar.Events.Import
import Network.Google.AppsCalendar.Calendar.Events.Insert
import Network.Google.AppsCalendar.Calendar.Events.Instances
import Network.Google.AppsCalendar.Calendar.Events.List
import Network.Google.AppsCalendar.Calendar.Events.Move
import Network.Google.AppsCalendar.Calendar.Events.Patch
import Network.Google.AppsCalendar.Calendar.Events.QuickAdd
import Network.Google.AppsCalendar.Calendar.Events.Update
import Network.Google.AppsCalendar.Calendar.Events.Watch
import Network.Google.AppsCalendar.Calendar.Freebusy.Query
import Network.Google.AppsCalendar.Calendar.Settings.Get
import Network.Google.AppsCalendar.Calendar.Settings.List
import Network.Google.AppsCalendar.Calendar.Settings.Watch
import Network.Google.AppsCalendar.Types
