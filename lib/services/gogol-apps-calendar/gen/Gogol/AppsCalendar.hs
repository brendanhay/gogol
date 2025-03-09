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
-- Module      : Gogol.AppsCalendar
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manipulates events and other calendar data.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference>
module Gogol.AppsCalendar
  ( -- * Configuration
    appsCalendarService,

    -- * OAuth Scopes
    Calendar'FullControl,
    Calendar'Acls,
    Calendar'Acls'Readonly,
    Calendar'App'Created,
    Calendar'Calendarlist,
    Calendar'Calendarlist'Readonly,
    Calendar'Calendars,
    Calendar'Calendars'Readonly,
    Calendar'Events,
    Calendar'Events'Freebusy,
    Calendar'Events'Owned,
    Calendar'Events'Owned'Readonly,
    Calendar'Events'Public'Readonly,
    Calendar'Events'Readonly,
    Calendar'Freebusy,
    Calendar'Readonly,
    Calendar'Settings'Readonly,

    -- * Resources

    -- ** calendar.acl.delete
    CalendarAclDeleteResource,
    CalendarAclDelete (..),
    newCalendarAclDelete,

    -- ** calendar.acl.get
    CalendarAclGetResource,
    CalendarAclGet (..),
    newCalendarAclGet,

    -- ** calendar.acl.insert
    CalendarAclInsertResource,
    CalendarAclInsert (..),
    newCalendarAclInsert,

    -- ** calendar.acl.list
    CalendarAclListResource,
    CalendarAclList (..),
    newCalendarAclList,

    -- ** calendar.acl.patch
    CalendarAclPatchResource,
    CalendarAclPatch (..),
    newCalendarAclPatch,

    -- ** calendar.acl.update
    CalendarAclUpdateResource,
    CalendarAclUpdate (..),
    newCalendarAclUpdate,

    -- ** calendar.acl.watch
    CalendarAclWatchResource,
    CalendarAclWatch (..),
    newCalendarAclWatch,

    -- ** calendar.calendarList.delete
    CalendarCalendarListDeleteResource,
    CalendarCalendarListDelete (..),
    newCalendarCalendarListDelete,

    -- ** calendar.calendarList.get
    CalendarCalendarListGetResource,
    CalendarCalendarListGet (..),
    newCalendarCalendarListGet,

    -- ** calendar.calendarList.insert
    CalendarCalendarListInsertResource,
    CalendarCalendarListInsert (..),
    newCalendarCalendarListInsert,

    -- ** calendar.calendarList.list
    CalendarCalendarListListResource,
    CalendarCalendarListList (..),
    newCalendarCalendarListList,

    -- ** calendar.calendarList.patch
    CalendarCalendarListPatchResource,
    CalendarCalendarListPatch (..),
    newCalendarCalendarListPatch,

    -- ** calendar.calendarList.update
    CalendarCalendarListUpdateResource,
    CalendarCalendarListUpdate (..),
    newCalendarCalendarListUpdate,

    -- ** calendar.calendarList.watch
    CalendarCalendarListWatchResource,
    CalendarCalendarListWatch (..),
    newCalendarCalendarListWatch,

    -- ** calendar.calendars.clear
    CalendarCalendarsClearResource,
    CalendarCalendarsClear (..),
    newCalendarCalendarsClear,

    -- ** calendar.calendars.delete
    CalendarCalendarsDeleteResource,
    CalendarCalendarsDelete (..),
    newCalendarCalendarsDelete,

    -- ** calendar.calendars.get
    CalendarCalendarsGetResource,
    CalendarCalendarsGet (..),
    newCalendarCalendarsGet,

    -- ** calendar.calendars.insert
    CalendarCalendarsInsertResource,
    CalendarCalendarsInsert (..),
    newCalendarCalendarsInsert,

    -- ** calendar.calendars.patch
    CalendarCalendarsPatchResource,
    CalendarCalendarsPatch (..),
    newCalendarCalendarsPatch,

    -- ** calendar.calendars.update
    CalendarCalendarsUpdateResource,
    CalendarCalendarsUpdate (..),
    newCalendarCalendarsUpdate,

    -- ** calendar.channels.stop
    CalendarChannelsStopResource,
    CalendarChannelsStop (..),
    newCalendarChannelsStop,

    -- ** calendar.colors.get
    CalendarColorsGetResource,
    CalendarColorsGet (..),
    newCalendarColorsGet,

    -- ** calendar.events.delete
    CalendarEventsDeleteResource,
    CalendarEventsDelete (..),
    newCalendarEventsDelete,

    -- ** calendar.events.get
    CalendarEventsGetResource,
    CalendarEventsGet (..),
    newCalendarEventsGet,

    -- ** calendar.events.import
    CalendarEventsImportResource,
    CalendarEventsImport (..),
    newCalendarEventsImport,

    -- ** calendar.events.insert
    CalendarEventsInsertResource,
    CalendarEventsInsert (..),
    newCalendarEventsInsert,

    -- ** calendar.events.instances
    CalendarEventsInstancesResource,
    CalendarEventsInstances (..),
    newCalendarEventsInstances,

    -- ** calendar.events.list
    CalendarEventsListResource,
    CalendarEventsList (..),
    newCalendarEventsList,

    -- ** calendar.events.move
    CalendarEventsMoveResource,
    CalendarEventsMove (..),
    newCalendarEventsMove,

    -- ** calendar.events.patch
    CalendarEventsPatchResource,
    CalendarEventsPatch (..),
    newCalendarEventsPatch,

    -- ** calendar.events.quickAdd
    CalendarEventsQuickAddResource,
    CalendarEventsQuickAdd (..),
    newCalendarEventsQuickAdd,

    -- ** calendar.events.update
    CalendarEventsUpdateResource,
    CalendarEventsUpdate (..),
    newCalendarEventsUpdate,

    -- ** calendar.events.watch
    CalendarEventsWatchResource,
    CalendarEventsWatch (..),
    newCalendarEventsWatch,

    -- ** calendar.freebusy.query
    CalendarFreebusyQueryResource,
    CalendarFreebusyQuery (..),
    newCalendarFreebusyQuery,

    -- ** calendar.settings.get
    CalendarSettingsGetResource,
    CalendarSettingsGet (..),
    newCalendarSettingsGet,

    -- ** calendar.settings.list
    CalendarSettingsListResource,
    CalendarSettingsList (..),
    newCalendarSettingsList,

    -- ** calendar.settings.watch
    CalendarSettingsWatchResource,
    CalendarSettingsWatch (..),
    newCalendarSettingsWatch,

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

    -- ** EventBirthdayProperties
    EventBirthdayProperties (..),
    newEventBirthdayProperties,

    -- ** EventDateTime
    EventDateTime (..),
    newEventDateTime,

    -- ** EventFocusTimeProperties
    EventFocusTimeProperties (..),
    newEventFocusTimeProperties,

    -- ** EventOutOfOfficeProperties
    EventOutOfOfficeProperties (..),
    newEventOutOfOfficeProperties,

    -- ** EventReminder
    EventReminder (..),
    newEventReminder,

    -- ** EventWorkingLocationProperties
    EventWorkingLocationProperties (..),
    newEventWorkingLocationProperties,

    -- ** EventWorkingLocationProperties_CustomLocation
    EventWorkingLocationProperties_CustomLocation (..),
    newEventWorkingLocationProperties_CustomLocation,

    -- ** EventWorkingLocationProperties_OfficeLocation
    EventWorkingLocationProperties_OfficeLocation (..),
    newEventWorkingLocationProperties_OfficeLocation,

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

    -- ** EventsListEventTypes
    EventsListEventTypes (..),

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

    -- ** EventsWatchEventTypes
    EventsWatchEventTypes (..),

    -- ** EventsWatchOrderBy
    EventsWatchOrderBy (..),
  )
where

import Gogol.AppsCalendar.Calendar.Acl.Delete
import Gogol.AppsCalendar.Calendar.Acl.Get
import Gogol.AppsCalendar.Calendar.Acl.Insert
import Gogol.AppsCalendar.Calendar.Acl.List
import Gogol.AppsCalendar.Calendar.Acl.Patch
import Gogol.AppsCalendar.Calendar.Acl.Update
import Gogol.AppsCalendar.Calendar.Acl.Watch
import Gogol.AppsCalendar.Calendar.CalendarList.Delete
import Gogol.AppsCalendar.Calendar.CalendarList.Get
import Gogol.AppsCalendar.Calendar.CalendarList.Insert
import Gogol.AppsCalendar.Calendar.CalendarList.List
import Gogol.AppsCalendar.Calendar.CalendarList.Patch
import Gogol.AppsCalendar.Calendar.CalendarList.Update
import Gogol.AppsCalendar.Calendar.CalendarList.Watch
import Gogol.AppsCalendar.Calendar.Calendars.Clear
import Gogol.AppsCalendar.Calendar.Calendars.Delete
import Gogol.AppsCalendar.Calendar.Calendars.Get
import Gogol.AppsCalendar.Calendar.Calendars.Insert
import Gogol.AppsCalendar.Calendar.Calendars.Patch
import Gogol.AppsCalendar.Calendar.Calendars.Update
import Gogol.AppsCalendar.Calendar.Channels.Stop
import Gogol.AppsCalendar.Calendar.Colors.Get
import Gogol.AppsCalendar.Calendar.Events.Delete
import Gogol.AppsCalendar.Calendar.Events.Get
import Gogol.AppsCalendar.Calendar.Events.Import
import Gogol.AppsCalendar.Calendar.Events.Insert
import Gogol.AppsCalendar.Calendar.Events.Instances
import Gogol.AppsCalendar.Calendar.Events.List
import Gogol.AppsCalendar.Calendar.Events.Move
import Gogol.AppsCalendar.Calendar.Events.Patch
import Gogol.AppsCalendar.Calendar.Events.QuickAdd
import Gogol.AppsCalendar.Calendar.Events.Update
import Gogol.AppsCalendar.Calendar.Events.Watch
import Gogol.AppsCalendar.Calendar.Freebusy.Query
import Gogol.AppsCalendar.Calendar.Settings.Get
import Gogol.AppsCalendar.Calendar.Settings.List
import Gogol.AppsCalendar.Calendar.Settings.Watch
import Gogol.AppsCalendar.Types
