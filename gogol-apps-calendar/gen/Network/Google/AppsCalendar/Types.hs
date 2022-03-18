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
-- Module      : Network.Google.AppsCalendar.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AppsCalendar.Types
  ( -- * Configuration
    appsCalendarService,

    -- * OAuth Scopes
    calendarScope,
    calendarEventsScope,
    calendarEventsReadOnlyScope,
    calendarReadOnlyScope,
    calendarSettingsReadOnlyScope,

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

import Network.Google.AppsCalendar.Internal.Product
import Network.Google.AppsCalendar.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v3@ of the Calendar API. This contains the host and root path used as a starting point for constructing service requests.
appsCalendarService :: Core.ServiceConfig
appsCalendarService =
  Core.defaultService
    (Core.ServiceId "calendar:v3")
    "www.googleapis.com"

-- | See, edit, share, and permanently delete all the calendars you can access using Google Calendar
calendarScope :: Core.Proxy '["https://www.googleapis.com/auth/calendar"]
calendarScope = Core.Proxy

-- | View and edit events on all your calendars
calendarEventsScope :: Core.Proxy '["https://www.googleapis.com/auth/calendar.events"]
calendarEventsScope = Core.Proxy

-- | View events on all your calendars
calendarEventsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/calendar.events.readonly"]
calendarEventsReadOnlyScope = Core.Proxy

-- | See and download any calendar you can access using your Google Calendar
calendarReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/calendar.readonly"]
calendarReadOnlyScope = Core.Proxy

-- | View your Calendar settings
calendarSettingsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/calendar.settings.readonly"]
calendarSettingsReadOnlyScope = Core.Proxy
