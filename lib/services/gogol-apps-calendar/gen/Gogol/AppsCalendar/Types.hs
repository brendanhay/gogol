{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AppsCalendar.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsCalendar.Types
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

import Gogol.AppsCalendar.Internal.Product
import Gogol.AppsCalendar.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v3@ of the Calendar API. This contains the host and root path used as a starting point for constructing service requests.
appsCalendarService :: Core.ServiceConfig
appsCalendarService =
  Core.defaultService
    (Core.ServiceId "calendar:v3")
    "www.googleapis.com"

-- | See, edit, share, and permanently delete all the calendars you can access using Google Calendar
type Calendar'FullControl =
  "https://www.googleapis.com/auth/calendar"

-- | See and change the sharing permissions of Google calendars you own
type Calendar'Acls =
  "https://www.googleapis.com/auth/calendar.acls"

-- | See the sharing permissions of Google calendars you own
type Calendar'Acls'Readonly =
  "https://www.googleapis.com/auth/calendar.acls.readonly"

-- | Make secondary Google calendars, and see, create, change, and delete events on them
type Calendar'App'Created =
  "https://www.googleapis.com/auth/calendar.app.created"

-- | See, add, and remove Google calendars you’re subscribed to
type Calendar'Calendarlist =
  "https://www.googleapis.com/auth/calendar.calendarlist"

-- | See the list of Google calendars you’re subscribed to
type Calendar'Calendarlist'Readonly =
  "https://www.googleapis.com/auth/calendar.calendarlist.readonly"

-- | See and change the properties of Google calendars you have access to, and create secondary calendars
type Calendar'Calendars =
  "https://www.googleapis.com/auth/calendar.calendars"

-- | See the title, description, default time zone, and other properties of Google calendars you have access to
type Calendar'Calendars'Readonly =
  "https://www.googleapis.com/auth/calendar.calendars.readonly"

-- | View and edit events on all your calendars
type Calendar'Events =
  "https://www.googleapis.com/auth/calendar.events"

-- | See the availability on Google calendars you have access to
type Calendar'Events'Freebusy =
  "https://www.googleapis.com/auth/calendar.events.freebusy"

-- | See, create, change, and delete events on Google calendars you own
type Calendar'Events'Owned =
  "https://www.googleapis.com/auth/calendar.events.owned"

-- | See the events on Google calendars you own
type Calendar'Events'Owned'Readonly =
  "https://www.googleapis.com/auth/calendar.events.owned.readonly"

-- | See the events on public calendars
type Calendar'Events'Public'Readonly =
  "https://www.googleapis.com/auth/calendar.events.public.readonly"

-- | View events on all your calendars
type Calendar'Events'Readonly =
  "https://www.googleapis.com/auth/calendar.events.readonly"

-- | View your availability in your calendars
type Calendar'Freebusy =
  "https://www.googleapis.com/auth/calendar.freebusy"

-- | See and download any calendar you can access using your Google Calendar
type Calendar'Readonly =
  "https://www.googleapis.com/auth/calendar.readonly"

-- | View your Calendar settings
type Calendar'Settings'Readonly =
  "https://www.googleapis.com/auth/calendar.settings.readonly"
