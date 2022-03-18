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
-- Module      : Gogol.AppsCalendar.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsCalendar.Internal.Product
  ( -- * Acl
    Acl (..),
    newAcl,

    -- * AclRule
    AclRule (..),
    newAclRule,

    -- * AclRule_Scope
    AclRule_Scope (..),
    newAclRule_Scope,

    -- * Calendar
    Calendar (..),
    newCalendar,

    -- * CalendarList
    CalendarList (..),
    newCalendarList,

    -- * CalendarListEntry
    CalendarListEntry (..),
    newCalendarListEntry,

    -- * CalendarListEntry_NotificationSettings
    CalendarListEntry_NotificationSettings (..),
    newCalendarListEntry_NotificationSettings,

    -- * CalendarNotification
    CalendarNotification (..),
    newCalendarNotification,

    -- * Channel
    Channel (..),
    newChannel,

    -- * Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- * ColorDefinition
    ColorDefinition (..),
    newColorDefinition,

    -- * Colors
    Colors (..),
    newColors,

    -- * Colors_Calendar
    Colors_Calendar (..),
    newColors_Calendar,

    -- * Colors_Event
    Colors_Event (..),
    newColors_Event,

    -- * ConferenceData
    ConferenceData (..),
    newConferenceData,

    -- * ConferenceParameters
    ConferenceParameters (..),
    newConferenceParameters,

    -- * ConferenceParametersAddOnParameters
    ConferenceParametersAddOnParameters (..),
    newConferenceParametersAddOnParameters,

    -- * ConferenceParametersAddOnParameters_Parameters
    ConferenceParametersAddOnParameters_Parameters (..),
    newConferenceParametersAddOnParameters_Parameters,

    -- * ConferenceProperties
    ConferenceProperties (..),
    newConferenceProperties,

    -- * ConferenceRequestStatus
    ConferenceRequestStatus (..),
    newConferenceRequestStatus,

    -- * ConferenceSolution
    ConferenceSolution (..),
    newConferenceSolution,

    -- * ConferenceSolutionKey
    ConferenceSolutionKey (..),
    newConferenceSolutionKey,

    -- * CreateConferenceRequest
    CreateConferenceRequest (..),
    newCreateConferenceRequest,

    -- * EntryPoint
    EntryPoint (..),
    newEntryPoint,

    -- * Error'
    Error' (..),
    newError,

    -- * Event
    Event (..),
    newEvent,

    -- * Event_Creator
    Event_Creator (..),
    newEvent_Creator,

    -- * Event_ExtendedProperties
    Event_ExtendedProperties (..),
    newEvent_ExtendedProperties,

    -- * Event_ExtendedProperties_Private
    Event_ExtendedProperties_Private (..),
    newEvent_ExtendedProperties_Private,

    -- * Event_ExtendedProperties_Shared
    Event_ExtendedProperties_Shared (..),
    newEvent_ExtendedProperties_Shared,

    -- * Event_Gadget
    Event_Gadget (..),
    newEvent_Gadget,

    -- * Event_Gadget_Preferences
    Event_Gadget_Preferences (..),
    newEvent_Gadget_Preferences,

    -- * Event_Organizer
    Event_Organizer (..),
    newEvent_Organizer,

    -- * Event_Reminders
    Event_Reminders (..),
    newEvent_Reminders,

    -- * Event_Source
    Event_Source (..),
    newEvent_Source,

    -- * EventAttachment
    EventAttachment (..),
    newEventAttachment,

    -- * EventAttendee
    EventAttendee (..),
    newEventAttendee,

    -- * EventDateTime
    EventDateTime (..),
    newEventDateTime,

    -- * EventReminder
    EventReminder (..),
    newEventReminder,

    -- * Events
    Events (..),
    newEvents,

    -- * FreeBusyCalendar
    FreeBusyCalendar (..),
    newFreeBusyCalendar,

    -- * FreeBusyGroup
    FreeBusyGroup (..),
    newFreeBusyGroup,

    -- * FreeBusyRequest
    FreeBusyRequest (..),
    newFreeBusyRequest,

    -- * FreeBusyRequestItem
    FreeBusyRequestItem (..),
    newFreeBusyRequestItem,

    -- * FreeBusyResponse
    FreeBusyResponse (..),
    newFreeBusyResponse,

    -- * FreeBusyResponse_Calendars
    FreeBusyResponse_Calendars (..),
    newFreeBusyResponse_Calendars,

    -- * FreeBusyResponse_Groups
    FreeBusyResponse_Groups (..),
    newFreeBusyResponse_Groups,

    -- * Setting
    Setting (..),
    newSetting,

    -- * Settings
    Settings (..),
    newSettings,

    -- * TimePeriod
    TimePeriod (..),
    newTimePeriod,
  )
where

import Gogol.AppsCalendar.Internal.Sum
import qualified Gogol.Prelude as Core

--
-- /See:/ 'newAcl' smart constructor.
data Acl = Acl
  { -- | ETag of the collection.
    etag :: (Core.Maybe Core.Text),
    -- | List of rules on the access control list.
    items :: (Core.Maybe [AclRule]),
    -- | Type of the collection (\"calendar#acl\").
    kind :: Core.Text,
    -- | Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided.
    nextSyncToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Acl' with the minimum fields required to make a request.
newAcl ::
  Acl
newAcl =
  Acl
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "calendar#acl",
      nextPageToken = Core.Nothing,
      nextSyncToken = Core.Nothing
    }

instance Core.FromJSON Acl where
  parseJSON =
    Core.withObject
      "Acl"
      ( \o ->
          Acl
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "calendar#acl")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nextSyncToken")
      )

instance Core.ToJSON Acl where
  toJSON Acl {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nextSyncToken" Core..=) Core.<$> nextSyncToken
          ]
      )

--
-- /See:/ 'newAclRule' smart constructor.
data AclRule = AclRule
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Identifier of the Access Control List (ACL) rule. See Sharing calendars.
    id :: (Core.Maybe Core.Text),
    -- | Type of the resource (\"calendar#aclRule\").
    kind :: Core.Text,
    -- | The role assigned to the scope. Possible values are:
    -- - \"none\" - Provides no access. - \"freeBusyReader\" - Provides read access to free\/busy information. - \"reader\" - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. - \"writer\" - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. - \"owner\" - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs.
    role' :: (Core.Maybe Core.Text),
    -- | The extent to which calendar access is granted by this ACL rule.
    scope :: (Core.Maybe AclRule_Scope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AclRule' with the minimum fields required to make a request.
newAclRule ::
  AclRule
newAclRule =
  AclRule
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "calendar#aclRule",
      role' = Core.Nothing,
      scope = Core.Nothing
    }

instance Core.FromJSON AclRule where
  parseJSON =
    Core.withObject
      "AclRule"
      ( \o ->
          AclRule
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "calendar#aclRule")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "scope")
      )

instance Core.ToJSON AclRule where
  toJSON AclRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("role" Core..=) Core.<$> role',
            ("scope" Core..=) Core.<$> scope
          ]
      )

-- | The extent to which calendar access is granted by this ACL rule.
--
-- /See:/ 'newAclRule_Scope' smart constructor.
data AclRule_Scope = AclRule_Scope
  { -- | The type of the scope. Possible values are:
    -- - \"default\" - The public scope. This is the default value. - \"user\" - Limits the scope to a single user. - \"group\" - Limits the scope to a group. - \"domain\" - Limits the scope to a domain. Note: The permissions granted to the \"default\", or public, scope apply to any user, authenticated or not.
    type' :: (Core.Maybe Core.Text),
    -- | The email address of a user or group, or the name of a domain, depending on the scope type. Omitted for type \"default\".
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AclRule_Scope' with the minimum fields required to make a request.
newAclRule_Scope ::
  AclRule_Scope
newAclRule_Scope = AclRule_Scope {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON AclRule_Scope where
  parseJSON =
    Core.withObject
      "AclRule_Scope"
      ( \o ->
          AclRule_Scope
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON AclRule_Scope where
  toJSON AclRule_Scope {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newCalendar' smart constructor.
data Calendar = Calendar
  { -- | Conferencing properties for this calendar, for example what types of conferences are allowed.
    conferenceProperties :: (Core.Maybe ConferenceProperties),
    -- | Description of the calendar. Optional.
    description :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Identifier of the calendar. To retrieve IDs call the calendarList.list() method.
    id :: (Core.Maybe Core.Text),
    -- | Type of the resource (\"calendar#calendar\").
    kind :: Core.Text,
    -- | Geographic location of the calendar as free-form text. Optional.
    location :: (Core.Maybe Core.Text),
    -- | Title of the calendar.
    summary :: (Core.Maybe Core.Text),
    -- | The time zone of the calendar. (Formatted as an IANA Time Zone Database name, e.g. \"Europe\/Zurich\".) Optional.
    timeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Calendar' with the minimum fields required to make a request.
newCalendar ::
  Calendar
newCalendar =
  Calendar
    { conferenceProperties = Core.Nothing,
      description = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "calendar#calendar",
      location = Core.Nothing,
      summary = Core.Nothing,
      timeZone = Core.Nothing
    }

instance Core.FromJSON Calendar where
  parseJSON =
    Core.withObject
      "Calendar"
      ( \o ->
          Calendar
            Core.<$> (o Core..:? "conferenceProperties")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "calendar#calendar")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "summary")
            Core.<*> (o Core..:? "timeZone")
      )

instance Core.ToJSON Calendar where
  toJSON Calendar {..} =
    Core.object
      ( Core.catMaybes
          [ ("conferenceProperties" Core..=)
              Core.<$> conferenceProperties,
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("location" Core..=) Core.<$> location,
            ("summary" Core..=) Core.<$> summary,
            ("timeZone" Core..=) Core.<$> timeZone
          ]
      )

--
-- /See:/ 'newCalendarList' smart constructor.
data CalendarList = CalendarList
  { -- | ETag of the collection.
    etag :: (Core.Maybe Core.Text),
    -- | Calendars that are present on the user\'s calendar list.
    items :: (Core.Maybe [CalendarListEntry]),
    -- | Type of the collection (\"calendar#calendarList\").
    kind :: Core.Text,
    -- | Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided.
    nextSyncToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarList' with the minimum fields required to make a request.
newCalendarList ::
  CalendarList
newCalendarList =
  CalendarList
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "calendar#calendarList",
      nextPageToken = Core.Nothing,
      nextSyncToken = Core.Nothing
    }

instance Core.FromJSON CalendarList where
  parseJSON =
    Core.withObject
      "CalendarList"
      ( \o ->
          CalendarList
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "calendar#calendarList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nextSyncToken")
      )

instance Core.ToJSON CalendarList where
  toJSON CalendarList {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nextSyncToken" Core..=) Core.<$> nextSyncToken
          ]
      )

--
-- /See:/ 'newCalendarListEntry' smart constructor.
data CalendarListEntry = CalendarListEntry
  { -- | The effective access role that the authenticated user has on the calendar. Read-only. Possible values are:
    -- - \"freeBusyReader\" - Provides read access to free\/busy information. - \"reader\" - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. - \"writer\" - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. - \"owner\" - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs.
    accessRole :: (Core.Maybe Core.Text),
    -- | The main color of the calendar in the hexadecimal format \"#0088aa\". This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat=true in the parameters of the insert, update and patch methods. Optional.
    backgroundColor :: (Core.Maybe Core.Text),
    -- | The color of the calendar. This is an ID referring to an entry in the calendar section of the colors definition (see the colors endpoint). This property is superseded by the backgroundColor and foregroundColor properties and can be ignored when using these properties. Optional.
    colorId :: (Core.Maybe Core.Text),
    -- | Conferencing properties for this calendar, for example what types of conferences are allowed.
    conferenceProperties :: (Core.Maybe ConferenceProperties),
    -- | The default reminders that the authenticated user has for this calendar.
    defaultReminders :: (Core.Maybe [EventReminder]),
    -- | Whether this calendar list entry has been deleted from the calendar list. Read-only. Optional. The default is False.
    deleted :: Core.Bool,
    -- | Description of the calendar. Optional. Read-only.
    description :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The foreground color of the calendar in the hexadecimal format \"#ffffff\". This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat=true in the parameters of the insert, update and patch methods. Optional.
    foregroundColor :: (Core.Maybe Core.Text),
    -- | Whether the calendar has been hidden from the list. Optional. The attribute is only returned when the calendar is hidden, in which case the value is true.
    hidden :: Core.Bool,
    -- | Identifier of the calendar.
    id :: (Core.Maybe Core.Text),
    -- | Type of the resource (\"calendar#calendarListEntry\").
    kind :: Core.Text,
    -- | Geographic location of the calendar as free-form text. Optional. Read-only.
    location :: (Core.Maybe Core.Text),
    -- | The notifications that the authenticated user is receiving for this calendar.
    notificationSettings :: (Core.Maybe CalendarListEntry_NotificationSettings),
    -- | Whether the calendar is the primary calendar of the authenticated user. Read-only. Optional. The default is False.
    primary :: Core.Bool,
    -- | Whether the calendar content shows up in the calendar UI. Optional. The default is False.
    selected :: Core.Bool,
    -- | Title of the calendar. Read-only.
    summary :: (Core.Maybe Core.Text),
    -- | The summary that the authenticated user has set for this calendar. Optional.
    summaryOverride :: (Core.Maybe Core.Text),
    -- | The time zone of the calendar. Optional. Read-only.
    timeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarListEntry' with the minimum fields required to make a request.
newCalendarListEntry ::
  CalendarListEntry
newCalendarListEntry =
  CalendarListEntry
    { accessRole = Core.Nothing,
      backgroundColor = Core.Nothing,
      colorId = Core.Nothing,
      conferenceProperties = Core.Nothing,
      defaultReminders = Core.Nothing,
      deleted = Core.False,
      description = Core.Nothing,
      etag = Core.Nothing,
      foregroundColor = Core.Nothing,
      hidden = Core.False,
      id = Core.Nothing,
      kind = "calendar#calendarListEntry",
      location = Core.Nothing,
      notificationSettings = Core.Nothing,
      primary = Core.False,
      selected = Core.False,
      summary = Core.Nothing,
      summaryOverride = Core.Nothing,
      timeZone = Core.Nothing
    }

instance Core.FromJSON CalendarListEntry where
  parseJSON =
    Core.withObject
      "CalendarListEntry"
      ( \o ->
          CalendarListEntry
            Core.<$> (o Core..:? "accessRole")
            Core.<*> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "colorId")
            Core.<*> (o Core..:? "conferenceProperties")
            Core.<*> (o Core..:? "defaultReminders" Core..!= Core.mempty)
            Core.<*> (o Core..:? "deleted" Core..!= Core.False)
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "foregroundColor")
            Core.<*> (o Core..:? "hidden" Core..!= Core.False)
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "calendar#calendarListEntry"
                     )
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "notificationSettings")
            Core.<*> (o Core..:? "primary" Core..!= Core.False)
            Core.<*> (o Core..:? "selected" Core..!= Core.False)
            Core.<*> (o Core..:? "summary")
            Core.<*> (o Core..:? "summaryOverride")
            Core.<*> (o Core..:? "timeZone")
      )

instance Core.ToJSON CalendarListEntry where
  toJSON CalendarListEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessRole" Core..=) Core.<$> accessRole,
            ("backgroundColor" Core..=) Core.<$> backgroundColor,
            ("colorId" Core..=) Core.<$> colorId,
            ("conferenceProperties" Core..=)
              Core.<$> conferenceProperties,
            ("defaultReminders" Core..=)
              Core.<$> defaultReminders,
            Core.Just ("deleted" Core..= deleted),
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("foregroundColor" Core..=) Core.<$> foregroundColor,
            Core.Just ("hidden" Core..= hidden),
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("location" Core..=) Core.<$> location,
            ("notificationSettings" Core..=)
              Core.<$> notificationSettings,
            Core.Just ("primary" Core..= primary),
            Core.Just ("selected" Core..= selected),
            ("summary" Core..=) Core.<$> summary,
            ("summaryOverride" Core..=) Core.<$> summaryOverride,
            ("timeZone" Core..=) Core.<$> timeZone
          ]
      )

-- | The notifications that the authenticated user is receiving for this calendar.
--
-- /See:/ 'newCalendarListEntry_NotificationSettings' smart constructor.
newtype CalendarListEntry_NotificationSettings = CalendarListEntry_NotificationSettings
  { -- | The list of notifications set for this calendar.
    notifications :: (Core.Maybe [CalendarNotification])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarListEntry_NotificationSettings' with the minimum fields required to make a request.
newCalendarListEntry_NotificationSettings ::
  CalendarListEntry_NotificationSettings
newCalendarListEntry_NotificationSettings =
  CalendarListEntry_NotificationSettings {notifications = Core.Nothing}

instance
  Core.FromJSON
    CalendarListEntry_NotificationSettings
  where
  parseJSON =
    Core.withObject
      "CalendarListEntry_NotificationSettings"
      ( \o ->
          CalendarListEntry_NotificationSettings
            Core.<$> (o Core..:? "notifications" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    CalendarListEntry_NotificationSettings
  where
  toJSON CalendarListEntry_NotificationSettings {..} =
    Core.object
      ( Core.catMaybes
          [("notifications" Core..=) Core.<$> notifications]
      )

--
-- /See:/ 'newCalendarNotification' smart constructor.
data CalendarNotification = CalendarNotification
  { -- | The method used to deliver the notification. The possible value is:
    -- - \"email\" - Notifications are sent via email.
    -- Required when adding a notification.
    method :: (Core.Maybe Core.Text),
    -- | The type of notification. Possible values are:
    -- - \"eventCreation\" - Notification sent when a new event is put on the calendar. - \"eventChange\" - Notification sent when an event is changed. - \"eventCancellation\" - Notification sent when an event is cancelled. - \"eventResponse\" - Notification sent when an attendee responds to the event invitation. - \"agenda\" - An agenda with the events of the day (sent out in the morning).
    -- Required when adding a notification.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarNotification' with the minimum fields required to make a request.
newCalendarNotification ::
  CalendarNotification
newCalendarNotification =
  CalendarNotification {method = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON CalendarNotification where
  parseJSON =
    Core.withObject
      "CalendarNotification"
      ( \o ->
          CalendarNotification
            Core.<$> (o Core..:? "method") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON CalendarNotification where
  toJSON CalendarNotification {..} =
    Core.object
      ( Core.catMaybes
          [ ("method" Core..=) Core.<$> method,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel
  { -- | The address where notifications are delivered for this channel.
    address :: (Core.Maybe Core.Text),
    -- | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    expiration :: (Core.Maybe Core.Int64),
    -- | A UUID or similar unique string that identifies this channel.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".
    kind :: Core.Text,
    -- | Additional parameters controlling delivery channel behavior. Optional.
    params :: (Core.Maybe Channel_Params),
    -- | A Boolean value to indicate whether payload is wanted. Optional.
    payload :: (Core.Maybe Core.Bool),
    -- | An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    resourceId :: (Core.Maybe Core.Text),
    -- | A version-specific identifier for the watched resource.
    resourceUri :: (Core.Maybe Core.Text),
    -- | An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    token :: (Core.Maybe Core.Text),
    -- | The type of delivery mechanism used for this channel. Valid values are \"web_hook\" (or \"webhook\"). Both values refer to a channel where Http requests are used to deliver messages.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
newChannel ::
  Channel
newChannel =
  Channel
    { address = Core.Nothing,
      expiration = Core.Nothing,
      id = Core.Nothing,
      kind = "api#channel",
      params = Core.Nothing,
      payload = Core.Nothing,
      resourceId = Core.Nothing,
      resourceUri = Core.Nothing,
      token = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Channel where
  parseJSON =
    Core.withObject
      "Channel"
      ( \o ->
          Channel
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "expiration")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "api#channel")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "resourceUri")
            Core.<*> (o Core..:? "token")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Channel where
  toJSON Channel {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("expiration" Core..=) Core.. Core.AsText
              Core.<$> expiration,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("params" Core..=) Core.<$> params,
            ("payload" Core..=) Core.<$> payload,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("resourceUri" Core..=) Core.<$> resourceUri,
            ("token" Core..=) Core.<$> token,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'newChannel_Params' smart constructor.
newtype Channel_Params = Channel_Params
  { -- | Declares a new parameter by name.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel_Params' with the minimum fields required to make a request.
newChannel_Params ::
  -- |  Declares a new parameter by name. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Channel_Params
newChannel_Params addtional = Channel_Params {addtional = addtional}

instance Core.FromJSON Channel_Params where
  parseJSON =
    Core.withObject
      "Channel_Params"
      ( \o ->
          Channel_Params Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Channel_Params where
  toJSON Channel_Params {..} = Core.toJSON addtional

--
-- /See:/ 'newColorDefinition' smart constructor.
data ColorDefinition = ColorDefinition
  { -- | The background color associated with this color definition.
    background :: (Core.Maybe Core.Text),
    -- | The foreground color that can be used to write on top of a background with \'background\' color.
    foreground :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColorDefinition' with the minimum fields required to make a request.
newColorDefinition ::
  ColorDefinition
newColorDefinition =
  ColorDefinition {background = Core.Nothing, foreground = Core.Nothing}

instance Core.FromJSON ColorDefinition where
  parseJSON =
    Core.withObject
      "ColorDefinition"
      ( \o ->
          ColorDefinition
            Core.<$> (o Core..:? "background")
            Core.<*> (o Core..:? "foreground")
      )

instance Core.ToJSON ColorDefinition where
  toJSON ColorDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("background" Core..=) Core.<$> background,
            ("foreground" Core..=) Core.<$> foreground
          ]
      )

--
-- /See:/ 'newColors' smart constructor.
data Colors = Colors
  { -- | A global palette of calendar colors, mapping from the color ID to its definition. A calendarListEntry resource refers to one of these color IDs in its colorId field. Read-only.
    calendar :: (Core.Maybe Colors_Calendar),
    -- | A global palette of event colors, mapping from the color ID to its definition. An event resource may refer to one of these color IDs in its colorId field. Read-only.
    event :: (Core.Maybe Colors_Event),
    -- | Type of the resource (\"calendar#colors\").
    kind :: Core.Text,
    -- | Last modification time of the color palette (as a RFC3339 timestamp). Read-only.
    updated :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Colors' with the minimum fields required to make a request.
newColors ::
  Colors
newColors =
  Colors
    { calendar = Core.Nothing,
      event = Core.Nothing,
      kind = "calendar#colors",
      updated = Core.Nothing
    }

instance Core.FromJSON Colors where
  parseJSON =
    Core.withObject
      "Colors"
      ( \o ->
          Colors
            Core.<$> (o Core..:? "calendar")
            Core.<*> (o Core..:? "event")
            Core.<*> (o Core..:? "kind" Core..!= "calendar#colors")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON Colors where
  toJSON Colors {..} =
    Core.object
      ( Core.catMaybes
          [ ("calendar" Core..=) Core.<$> calendar,
            ("event" Core..=) Core.<$> event,
            Core.Just ("kind" Core..= kind),
            ("updated" Core..=) Core.<$> updated
          ]
      )

-- | A global palette of calendar colors, mapping from the color ID to its definition. A calendarListEntry resource refers to one of these color IDs in its colorId field. Read-only.
--
-- /See:/ 'newColors_Calendar' smart constructor.
newtype Colors_Calendar = Colors_Calendar
  { -- | A calendar color definition.
    addtional :: (Core.HashMap Core.Text ColorDefinition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Colors_Calendar' with the minimum fields required to make a request.
newColors_Calendar ::
  -- |  A calendar color definition. See 'addtional'.
  Core.HashMap Core.Text ColorDefinition ->
  Colors_Calendar
newColors_Calendar addtional = Colors_Calendar {addtional = addtional}

instance Core.FromJSON Colors_Calendar where
  parseJSON =
    Core.withObject
      "Colors_Calendar"
      ( \o ->
          Colors_Calendar Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Colors_Calendar where
  toJSON Colors_Calendar {..} = Core.toJSON addtional

-- | A global palette of event colors, mapping from the color ID to its definition. An event resource may refer to one of these color IDs in its colorId field. Read-only.
--
-- /See:/ 'newColors_Event' smart constructor.
newtype Colors_Event = Colors_Event
  { -- | An event color definition.
    addtional :: (Core.HashMap Core.Text ColorDefinition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Colors_Event' with the minimum fields required to make a request.
newColors_Event ::
  -- |  An event color definition. See 'addtional'.
  Core.HashMap Core.Text ColorDefinition ->
  Colors_Event
newColors_Event addtional = Colors_Event {addtional = addtional}

instance Core.FromJSON Colors_Event where
  parseJSON =
    Core.withObject
      "Colors_Event"
      ( \o ->
          Colors_Event Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Colors_Event where
  toJSON Colors_Event {..} = Core.toJSON addtional

--
-- /See:/ 'newConferenceData' smart constructor.
data ConferenceData = ConferenceData
  { -- | The ID of the conference. Can be used by developers to keep track of conferences, should not be displayed to users. The ID value is formed differently for each conference solution type:
    -- - eventHangout: ID is not set. (This conference type is deprecated.) - eventNamedHangout: ID is the name of the Hangout. (This conference type is deprecated.) - hangoutsMeet: ID is the 10-letter meeting code, for example aaa-bbbb-ccc. - addOn: ID is defined by the third-party provider. Optional.
    conferenceId :: (Core.Maybe Core.Text),
    -- | The conference solution, such as Google Meet. Unset for a conference with a failed create request. Either conferenceSolution and at least one entryPoint, or createRequest is required.
    conferenceSolution :: (Core.Maybe ConferenceSolution),
    -- | A request to generate a new conference and attach it to the event. The data is generated asynchronously. To see whether the data is present check the status field. Either conferenceSolution and at least one entryPoint, or createRequest is required.
    createRequest :: (Core.Maybe CreateConferenceRequest),
    -- | Information about individual conference entry points, such as URLs or phone numbers. All of them must belong to the same conference. Either conferenceSolution and at least one entryPoint, or createRequest is required.
    entryPoints :: (Core.Maybe [EntryPoint]),
    -- | Additional notes (such as instructions from the domain administrator, legal notices) to display to the user. Can contain HTML. The maximum length is 2048 characters. Optional.
    notes :: (Core.Maybe Core.Text),
    -- | Additional properties related to a conference. An example would be a solution-specific setting for enabling video streaming.
    parameters :: (Core.Maybe ConferenceParameters),
    -- | The signature of the conference data. Generated on server side. Unset for a conference with a failed create request. Optional for a conference with a pending create request.
    signature :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConferenceData' with the minimum fields required to make a request.
newConferenceData ::
  ConferenceData
newConferenceData =
  ConferenceData
    { conferenceId = Core.Nothing,
      conferenceSolution = Core.Nothing,
      createRequest = Core.Nothing,
      entryPoints = Core.Nothing,
      notes = Core.Nothing,
      parameters = Core.Nothing,
      signature = Core.Nothing
    }

instance Core.FromJSON ConferenceData where
  parseJSON =
    Core.withObject
      "ConferenceData"
      ( \o ->
          ConferenceData
            Core.<$> (o Core..:? "conferenceId")
            Core.<*> (o Core..:? "conferenceSolution")
            Core.<*> (o Core..:? "createRequest")
            Core.<*> (o Core..:? "entryPoints" Core..!= Core.mempty)
            Core.<*> (o Core..:? "notes")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "signature")
      )

instance Core.ToJSON ConferenceData where
  toJSON ConferenceData {..} =
    Core.object
      ( Core.catMaybes
          [ ("conferenceId" Core..=) Core.<$> conferenceId,
            ("conferenceSolution" Core..=)
              Core.<$> conferenceSolution,
            ("createRequest" Core..=) Core.<$> createRequest,
            ("entryPoints" Core..=) Core.<$> entryPoints,
            ("notes" Core..=) Core.<$> notes,
            ("parameters" Core..=) Core.<$> parameters,
            ("signature" Core..=) Core.<$> signature
          ]
      )

--
-- /See:/ 'newConferenceParameters' smart constructor.
newtype ConferenceParameters = ConferenceParameters
  { -- | Additional add-on specific data.
    addOnParameters :: (Core.Maybe ConferenceParametersAddOnParameters)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConferenceParameters' with the minimum fields required to make a request.
newConferenceParameters ::
  ConferenceParameters
newConferenceParameters = ConferenceParameters {addOnParameters = Core.Nothing}

instance Core.FromJSON ConferenceParameters where
  parseJSON =
    Core.withObject
      "ConferenceParameters"
      ( \o ->
          ConferenceParameters
            Core.<$> (o Core..:? "addOnParameters")
      )

instance Core.ToJSON ConferenceParameters where
  toJSON ConferenceParameters {..} =
    Core.object
      ( Core.catMaybes
          [ ("addOnParameters" Core..=)
              Core.<$> addOnParameters
          ]
      )

--
-- /See:/ 'newConferenceParametersAddOnParameters' smart constructor.
newtype ConferenceParametersAddOnParameters = ConferenceParametersAddOnParameters
  { -- |
    parameters :: (Core.Maybe ConferenceParametersAddOnParameters_Parameters)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConferenceParametersAddOnParameters' with the minimum fields required to make a request.
newConferenceParametersAddOnParameters ::
  ConferenceParametersAddOnParameters
newConferenceParametersAddOnParameters =
  ConferenceParametersAddOnParameters {parameters = Core.Nothing}

instance
  Core.FromJSON
    ConferenceParametersAddOnParameters
  where
  parseJSON =
    Core.withObject
      "ConferenceParametersAddOnParameters"
      ( \o ->
          ConferenceParametersAddOnParameters
            Core.<$> (o Core..:? "parameters")
      )

instance
  Core.ToJSON
    ConferenceParametersAddOnParameters
  where
  toJSON ConferenceParametersAddOnParameters {..} =
    Core.object
      ( Core.catMaybes
          [("parameters" Core..=) Core.<$> parameters]
      )

--
-- /See:/ 'newConferenceParametersAddOnParameters_Parameters' smart constructor.
newtype ConferenceParametersAddOnParameters_Parameters = ConferenceParametersAddOnParameters_Parameters
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConferenceParametersAddOnParameters_Parameters' with the minimum fields required to make a request.
newConferenceParametersAddOnParameters_Parameters ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  ConferenceParametersAddOnParameters_Parameters
newConferenceParametersAddOnParameters_Parameters addtional =
  ConferenceParametersAddOnParameters_Parameters {addtional = addtional}

instance
  Core.FromJSON
    ConferenceParametersAddOnParameters_Parameters
  where
  parseJSON =
    Core.withObject
      "ConferenceParametersAddOnParameters_Parameters"
      ( \o ->
          ConferenceParametersAddOnParameters_Parameters
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    ConferenceParametersAddOnParameters_Parameters
  where
  toJSON
    ConferenceParametersAddOnParameters_Parameters {..} =
      Core.toJSON addtional

--
-- /See:/ 'newConferenceProperties' smart constructor.
newtype ConferenceProperties = ConferenceProperties
  { -- | The types of conference solutions that are supported for this calendar. The possible values are:
    -- - \"eventHangout\" - \"eventNamedHangout\" - \"hangoutsMeet\" Optional.
    allowedConferenceSolutionTypes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConferenceProperties' with the minimum fields required to make a request.
newConferenceProperties ::
  ConferenceProperties
newConferenceProperties =
  ConferenceProperties {allowedConferenceSolutionTypes = Core.Nothing}

instance Core.FromJSON ConferenceProperties where
  parseJSON =
    Core.withObject
      "ConferenceProperties"
      ( \o ->
          ConferenceProperties
            Core.<$> ( o Core..:? "allowedConferenceSolutionTypes"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ConferenceProperties where
  toJSON ConferenceProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedConferenceSolutionTypes" Core..=)
              Core.<$> allowedConferenceSolutionTypes
          ]
      )

--
-- /See:/ 'newConferenceRequestStatus' smart constructor.
newtype ConferenceRequestStatus = ConferenceRequestStatus
  { -- | The current status of the conference create request. Read-only. The possible values are:
    -- - \"pending\": the conference create request is still being processed. - \"success\": the conference create request succeeded, the entry points are populated. - \"failure\": the conference create request failed, there are no entry points.
    statusCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConferenceRequestStatus' with the minimum fields required to make a request.
newConferenceRequestStatus ::
  ConferenceRequestStatus
newConferenceRequestStatus = ConferenceRequestStatus {statusCode = Core.Nothing}

instance Core.FromJSON ConferenceRequestStatus where
  parseJSON =
    Core.withObject
      "ConferenceRequestStatus"
      ( \o ->
          ConferenceRequestStatus
            Core.<$> (o Core..:? "statusCode")
      )

instance Core.ToJSON ConferenceRequestStatus where
  toJSON ConferenceRequestStatus {..} =
    Core.object
      ( Core.catMaybes
          [("statusCode" Core..=) Core.<$> statusCode]
      )

--
-- /See:/ 'newConferenceSolution' smart constructor.
data ConferenceSolution = ConferenceSolution
  { -- | The user-visible icon for this solution.
    iconUri :: (Core.Maybe Core.Text),
    -- | The key which can uniquely identify the conference solution for this event.
    key :: (Core.Maybe ConferenceSolutionKey),
    -- | The user-visible name of this solution. Not localized.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConferenceSolution' with the minimum fields required to make a request.
newConferenceSolution ::
  ConferenceSolution
newConferenceSolution =
  ConferenceSolution
    { iconUri = Core.Nothing,
      key = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON ConferenceSolution where
  parseJSON =
    Core.withObject
      "ConferenceSolution"
      ( \o ->
          ConferenceSolution
            Core.<$> (o Core..:? "iconUri")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON ConferenceSolution where
  toJSON ConferenceSolution {..} =
    Core.object
      ( Core.catMaybes
          [ ("iconUri" Core..=) Core.<$> iconUri,
            ("key" Core..=) Core.<$> key,
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newConferenceSolutionKey' smart constructor.
newtype ConferenceSolutionKey = ConferenceSolutionKey
  { -- | The conference solution type. If a client encounters an unfamiliar or empty type, it should still be able to display the entry points. However, it should disallow modifications. The possible values are:
    -- - \"eventHangout\" for Hangouts for consumers (deprecated; existing events may show this conference solution type but new conferences cannot be created) - \"eventNamedHangout\" for classic Hangouts for Google Workspace users (deprecated; existing events may show this conference solution type but new conferences cannot be created) - \"hangoutsMeet\" for Google Meet (http:\/\/meet.google.com) - \"addOn\" for 3P conference providers
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConferenceSolutionKey' with the minimum fields required to make a request.
newConferenceSolutionKey ::
  ConferenceSolutionKey
newConferenceSolutionKey = ConferenceSolutionKey {type' = Core.Nothing}

instance Core.FromJSON ConferenceSolutionKey where
  parseJSON =
    Core.withObject
      "ConferenceSolutionKey"
      ( \o ->
          ConferenceSolutionKey Core.<$> (o Core..:? "type")
      )

instance Core.ToJSON ConferenceSolutionKey where
  toJSON ConferenceSolutionKey {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

--
-- /See:/ 'newCreateConferenceRequest' smart constructor.
data CreateConferenceRequest = CreateConferenceRequest
  { -- | The conference solution, such as Hangouts or Google Meet.
    conferenceSolutionKey :: (Core.Maybe ConferenceSolutionKey),
    -- | The client-generated unique ID for this request. Clients should regenerate this ID for every new request. If an ID provided is the same as for the previous request, the request is ignored.
    requestId :: (Core.Maybe Core.Text),
    -- | The status of the conference create request.
    status :: (Core.Maybe ConferenceRequestStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateConferenceRequest' with the minimum fields required to make a request.
newCreateConferenceRequest ::
  CreateConferenceRequest
newCreateConferenceRequest =
  CreateConferenceRequest
    { conferenceSolutionKey = Core.Nothing,
      requestId = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON CreateConferenceRequest where
  parseJSON =
    Core.withObject
      "CreateConferenceRequest"
      ( \o ->
          CreateConferenceRequest
            Core.<$> (o Core..:? "conferenceSolutionKey")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON CreateConferenceRequest where
  toJSON CreateConferenceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("conferenceSolutionKey" Core..=)
              Core.<$> conferenceSolutionKey,
            ("requestId" Core..=) Core.<$> requestId,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newEntryPoint' smart constructor.
data EntryPoint = EntryPoint
  { -- | The access code to access the conference. The maximum length is 128 characters. When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed. Optional.
    accessCode :: (Core.Maybe Core.Text),
    -- | Features of the entry point, such as being toll or toll-free. One entry point can have multiple features. However, toll and toll-free cannot be both set on the same entry point.
    entryPointFeatures :: (Core.Maybe [Core.Text]),
    -- | The type of the conference entry point. Possible values are:
    -- - \"video\" - joining a conference over HTTP. A conference can have zero or one video entry point. - \"phone\" - joining a conference by dialing a phone number. A conference can have zero or more phone entry points. - \"sip\" - joining a conference over SIP. A conference can have zero or one sip entry point. - \"more\" - further conference joining instructions, for example additional phone numbers. A conference can have zero or one more entry point. A conference with only a more entry point is not a valid conference.
    entryPointType :: (Core.Maybe Core.Text),
    -- | The label for the URI. Visible to end users. Not localized. The maximum length is 512 characters. Examples:
    -- - for video: meet.google.com\/aaa-bbbb-ccc - for phone: +1 123 268 2601 - for sip: 12345678\@altostrat.com - for more: should not be filled
    -- Optional.
    label :: (Core.Maybe Core.Text),
    -- | The meeting code to access the conference. The maximum length is 128 characters. When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed. Optional.
    meetingCode :: (Core.Maybe Core.Text),
    -- | The passcode to access the conference. The maximum length is 128 characters. When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.
    passcode :: (Core.Maybe Core.Text),
    -- | The password to access the conference. The maximum length is 128 characters. When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed. Optional.
    password :: (Core.Maybe Core.Text),
    -- | The PIN to access the conference. The maximum length is 128 characters. When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed. Optional.
    pin :: (Core.Maybe Core.Text),
    -- | The CLDR\/ISO 3166 region code for the country associated with this phone access. Example: \"SE\" for Sweden. Calendar backend will populate this field only for EntryPointType.PHONE.
    regionCode :: (Core.Maybe Core.Text),
    -- | The URI of the entry point. The maximum length is 1300 characters. Format:
    -- - for video, http: or https: schema is required. - for phone, tel: schema is required. The URI should include the entire dial sequence (e.g., tel:+12345678900,,,123456789;1234). - for sip, sip: schema is required, e.g., sip:12345678\@myprovider.com. - for more, http: or https: schema is required.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntryPoint' with the minimum fields required to make a request.
newEntryPoint ::
  EntryPoint
newEntryPoint =
  EntryPoint
    { accessCode = Core.Nothing,
      entryPointFeatures = Core.Nothing,
      entryPointType = Core.Nothing,
      label = Core.Nothing,
      meetingCode = Core.Nothing,
      passcode = Core.Nothing,
      password = Core.Nothing,
      pin = Core.Nothing,
      regionCode = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON EntryPoint where
  parseJSON =
    Core.withObject
      "EntryPoint"
      ( \o ->
          EntryPoint
            Core.<$> (o Core..:? "accessCode")
            Core.<*> ( o Core..:? "entryPointFeatures"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "entryPointType")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "meetingCode")
            Core.<*> (o Core..:? "passcode")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "pin")
            Core.<*> (o Core..:? "regionCode")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON EntryPoint where
  toJSON EntryPoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessCode" Core..=) Core.<$> accessCode,
            ("entryPointFeatures" Core..=)
              Core.<$> entryPointFeatures,
            ("entryPointType" Core..=) Core.<$> entryPointType,
            ("label" Core..=) Core.<$> label,
            ("meetingCode" Core..=) Core.<$> meetingCode,
            ("passcode" Core..=) Core.<$> passcode,
            ("password" Core..=) Core.<$> password,
            ("pin" Core..=) Core.<$> pin,
            ("regionCode" Core..=) Core.<$> regionCode,
            ("uri" Core..=) Core.<$> uri
          ]
      )

--
-- /See:/ 'newError' smart constructor.
data Error' = Error'
  { -- | Domain, or broad category, of the error.
    domain :: (Core.Maybe Core.Text),
    -- | Specific reason for the error. Some of the possible values are:
    -- - \"groupTooBig\" - The group of users requested is too large for a single query. - \"tooManyCalendarsRequested\" - The number of calendars requested is too large for a single query. - \"notFound\" - The requested resource was not found. - \"internalError\" - The API service has encountered an internal error. Additional error types may be added in the future, so clients should gracefully handle additional error statuses not included in this list.
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Error' with the minimum fields required to make a request.
newError ::
  Error'
newError = Error' {domain = Core.Nothing, reason = Core.Nothing}

instance Core.FromJSON Error' where
  parseJSON =
    Core.withObject
      "Error'"
      ( \o ->
          Error'
            Core.<$> (o Core..:? "domain") Core.<*> (o Core..:? "reason")
      )

instance Core.ToJSON Error' where
  toJSON Error' {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("reason" Core..=) Core.<$> reason
          ]
      )

--
-- /See:/ 'newEvent' smart constructor.
data Event = Event
  { -- | Whether anyone can invite themselves to the event (deprecated). Optional. The default is False.
    anyoneCanAddSelf :: Core.Bool,
    -- | File attachments for the event. Currently only Google Drive attachments are supported. In order to modify attachments the supportsAttachments request parameter should be set to true. There can be at most 25 attachments per event,
    attachments :: (Core.Maybe [EventAttachment]),
    -- | The attendees of the event. See the Events with attendees guide for more information on scheduling events with other calendar users. Service accounts need to use domain-wide delegation of authority to populate the attendee list.
    attendees :: (Core.Maybe [EventAttendee]),
    -- | Whether attendees may have been omitted from the event\'s representation. When retrieving an event, this may be due to a restriction specified by the maxAttendee query parameter. When updating an event, this can be used to only update the participant\'s response. Optional. The default is False.
    attendeesOmitted :: Core.Bool,
    -- | The color of the event. This is an ID referring to an entry in the event section of the colors definition (see the colors endpoint). Optional.
    colorId :: (Core.Maybe Core.Text),
    -- | The conference-related information, such as details of a Google Meet conference. To create new conference details use the createRequest field. To persist your changes, remember to set the conferenceDataVersion request parameter to 1 for all event modification requests.
    conferenceData :: (Core.Maybe ConferenceData),
    -- | Creation time of the event (as a RFC3339 timestamp). Read-only.
    created :: (Core.Maybe Core.DateTime'),
    -- | The creator of the event. Read-only.
    creator :: (Core.Maybe Event_Creator),
    -- | Description of the event. Can contain HTML. Optional.
    description :: (Core.Maybe Core.Text),
    -- | The (exclusive) end time of the event. For a recurring event, this is the end time of the first instance.
    end :: (Core.Maybe EventDateTime),
    -- | Whether the end time is actually unspecified. An end time is still provided for compatibility reasons, even if this attribute is set to True. The default is False.
    endTimeUnspecified :: Core.Bool,
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Specific type of the event. Read-only. Possible values are:
    -- - \"default\" - A regular event or not further specified. - \"outOfOffice\" - An out-of-office event. - \"focusTime\" - A focus-time event.
    eventType :: Core.Text,
    -- | Extended properties of the event.
    extendedProperties :: (Core.Maybe Event_ExtendedProperties),
    -- | A gadget that extends this event. Gadgets are deprecated; this structure is instead only used for returning birthday calendar metadata.
    gadget :: (Core.Maybe Event_Gadget),
    -- | Whether attendees other than the organizer can invite others to the event. Optional. The default is True.
    guestsCanInviteOthers :: Core.Bool,
    -- | Whether attendees other than the organizer can modify the event. Optional. The default is False.
    guestsCanModify :: Core.Bool,
    -- | Whether attendees other than the organizer can see who the event\'s attendees are. Optional. The default is True.
    guestsCanSeeOtherGuests :: Core.Bool,
    -- | An absolute link to the Google Hangout associated with this event. Read-only.
    hangoutLink :: (Core.Maybe Core.Text),
    -- | An absolute link to this event in the Google Calendar Web UI. Read-only.
    htmlLink :: (Core.Maybe Core.Text),
    -- | Event unique identifier as defined in RFC5545. It is used to uniquely identify events accross calendaring systems and must be supplied when importing events via the import method. Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs.
    iCalUID :: (Core.Maybe Core.Text),
    -- | Opaque identifier of the event. When creating new single or recurring events, you can specify their IDs. Provided IDs must follow these rules:
    -- - characters allowed in the ID are those used in base32hex encoding, i.e. lowercase letters a-v and digits 0-9, see section 3.1.2 in RFC2938 - the length of the ID must be between 5 and 1024 characters - the ID must be unique per calendar Due to the globally distributed nature of the system, we cannot guarantee that ID collisions will be detected at event creation time. To minimize the risk of collisions we recommend using an established UUID algorithm such as one described in RFC4122. If you do not specify an ID, it will be automatically generated by the server. Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs.
    id :: (Core.Maybe Core.Text),
    -- | Type of the resource (\"calendar#event\").
    kind :: Core.Text,
    -- | Geographic location of the event as free-form text. Optional.
    location :: (Core.Maybe Core.Text),
    -- | Whether this is a locked event copy where no changes can be made to the main event fields \"summary\", \"description\", \"location\", \"start\", \"end\" or \"recurrence\". The default is False. Read-Only.
    locked :: Core.Bool,
    -- | The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in attendees with the organizer field set to True. To change the organizer, use the move operation. Read-only, except when importing an event.
    organizer :: (Core.Maybe Event_Organizer),
    -- | For an instance of a recurring event, this is the time at which this event would start according to the recurrence data in the recurring event identified by recurringEventId. It uniquely identifies the instance within the recurring event series even if the instance was moved to a different time. Immutable.
    originalStartTime :: (Core.Maybe EventDateTime),
    -- | If set to True, Event propagation is disabled. Note that it is not the same thing as Private event properties. Optional. Immutable. The default is False.
    privateCopy :: Core.Bool,
    -- | List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as specified in RFC5545. Note that DTSTART and DTEND lines are not allowed in this field; event start and end times are specified in the start and end fields. This field is omitted for single events or instances of recurring events.
    recurrence :: (Core.Maybe [Core.Text]),
    -- | For an instance of a recurring event, this is the id of the recurring event to which this instance belongs. Immutable.
    recurringEventId :: (Core.Maybe Core.Text),
    -- | Information about the event\'s reminders for the authenticated user.
    reminders :: (Core.Maybe Event_Reminders),
    -- | Sequence number as per iCalendar.
    sequence :: (Core.Maybe Core.Int32),
    -- | Source from which the event was created. For example, a web page, an email message or any document identifiable by an URL with HTTP or HTTPS scheme. Can only be seen or modified by the creator of the event.
    source :: (Core.Maybe Event_Source),
    -- | The (inclusive) start time of the event. For a recurring event, this is the start time of the first instance.
    start :: (Core.Maybe EventDateTime),
    -- | Status of the event. Optional. Possible values are:
    -- - \"confirmed\" - The event is confirmed. This is the default status. - \"tentative\" - The event is tentatively confirmed. - \"cancelled\" - The event is cancelled (deleted). The list method returns cancelled events only on incremental sync (when syncToken or updatedMin are specified) or if the showDeleted flag is set to true. The get method always returns them. A cancelled status represents two different states depending on the event type:
    -- - Cancelled exceptions of an uncancelled recurring event indicate that this instance should no longer be presented to the user. Clients should store these events for the lifetime of the parent recurring event. Cancelled exceptions are only guaranteed to have values for the id, recurringEventId and originalStartTime fields populated. The other fields might be empty.
    -- - All other cancelled events represent deleted events. Clients should remove their locally synced copies. Such cancelled events will eventually disappear, so do not rely on them being available indefinitely. Deleted events are only guaranteed to have the id field populated. On the organizer\'s calendar, cancelled events continue to expose event details (summary, location, etc.) so that they can be restored (undeleted). Similarly, the events to which the user was invited and that they manually removed continue to provide details. However, incremental sync requests with showDeleted set to false will not return these details. If an event changes its organizer (for example via the move operation) and the original organizer is not on the attendee list, it will leave behind a cancelled event where only the id field is guaranteed to be populated.
    status :: (Core.Maybe Core.Text),
    -- | Title of the event.
    summary :: (Core.Maybe Core.Text),
    -- | Whether the event blocks time on the calendar. Optional. Possible values are:
    -- - \"opaque\" - Default value. The event does block time on the calendar. This is equivalent to setting Show me as to Busy in the Calendar UI. - \"transparent\" - The event does not block time on the calendar. This is equivalent to setting Show me as to Available in the Calendar UI.
    transparency :: Core.Text,
    -- | Last modification time of the event (as a RFC3339 timestamp). Read-only.
    updated :: (Core.Maybe Core.DateTime'),
    -- | Visibility of the event. Optional. Possible values are:
    -- - \"default\" - Uses the default visibility for events on the calendar. This is the default value. - \"public\" - The event is public and event details are visible to all readers of the calendar. - \"private\" - The event is private and only event attendees may view event details. - \"confidential\" - The event is private. This value is provided for compatibility reasons.
    visibility :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
newEvent ::
  Event
newEvent =
  Event
    { anyoneCanAddSelf = Core.False,
      attachments = Core.Nothing,
      attendees = Core.Nothing,
      attendeesOmitted = Core.False,
      colorId = Core.Nothing,
      conferenceData = Core.Nothing,
      created = Core.Nothing,
      creator = Core.Nothing,
      description = Core.Nothing,
      end = Core.Nothing,
      endTimeUnspecified = Core.False,
      etag = Core.Nothing,
      eventType = "default",
      extendedProperties = Core.Nothing,
      gadget = Core.Nothing,
      guestsCanInviteOthers = Core.True,
      guestsCanModify = Core.False,
      guestsCanSeeOtherGuests = Core.True,
      hangoutLink = Core.Nothing,
      htmlLink = Core.Nothing,
      iCalUID = Core.Nothing,
      id = Core.Nothing,
      kind = "calendar#event",
      location = Core.Nothing,
      locked = Core.False,
      organizer = Core.Nothing,
      originalStartTime = Core.Nothing,
      privateCopy = Core.False,
      recurrence = Core.Nothing,
      recurringEventId = Core.Nothing,
      reminders = Core.Nothing,
      sequence = Core.Nothing,
      source = Core.Nothing,
      start = Core.Nothing,
      status = Core.Nothing,
      summary = Core.Nothing,
      transparency = "opaque",
      updated = Core.Nothing,
      visibility = "default"
    }

instance Core.FromJSON Event where
  parseJSON =
    Core.withObject
      "Event"
      ( \o ->
          Event
            Core.<$> (o Core..:? "anyoneCanAddSelf" Core..!= Core.False)
            Core.<*> (o Core..:? "attachments" Core..!= Core.mempty)
            Core.<*> (o Core..:? "attendees" Core..!= Core.mempty)
            Core.<*> (o Core..:? "attendeesOmitted" Core..!= Core.False)
            Core.<*> (o Core..:? "colorId")
            Core.<*> (o Core..:? "conferenceData")
            Core.<*> (o Core..:? "created")
            Core.<*> (o Core..:? "creator")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "end")
            Core.<*> (o Core..:? "endTimeUnspecified" Core..!= Core.False)
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventType" Core..!= "default")
            Core.<*> (o Core..:? "extendedProperties")
            Core.<*> (o Core..:? "gadget")
            Core.<*> ( o Core..:? "guestsCanInviteOthers"
                         Core..!= Core.True
                     )
            Core.<*> (o Core..:? "guestsCanModify" Core..!= Core.False)
            Core.<*> ( o Core..:? "guestsCanSeeOtherGuests"
                         Core..!= Core.True
                     )
            Core.<*> (o Core..:? "hangoutLink")
            Core.<*> (o Core..:? "htmlLink")
            Core.<*> (o Core..:? "iCalUID")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "calendar#event")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "locked" Core..!= Core.False)
            Core.<*> (o Core..:? "organizer")
            Core.<*> (o Core..:? "originalStartTime")
            Core.<*> (o Core..:? "privateCopy" Core..!= Core.False)
            Core.<*> (o Core..:? "recurrence" Core..!= Core.mempty)
            Core.<*> (o Core..:? "recurringEventId")
            Core.<*> (o Core..:? "reminders")
            Core.<*> (o Core..:? "sequence")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "start")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "summary")
            Core.<*> (o Core..:? "transparency" Core..!= "opaque")
            Core.<*> (o Core..:? "updated")
            Core.<*> (o Core..:? "visibility" Core..!= "default")
      )

instance Core.ToJSON Event where
  toJSON Event {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("anyoneCanAddSelf" Core..= anyoneCanAddSelf),
            ("attachments" Core..=) Core.<$> attachments,
            ("attendees" Core..=) Core.<$> attendees,
            Core.Just
              ("attendeesOmitted" Core..= attendeesOmitted),
            ("colorId" Core..=) Core.<$> colorId,
            ("conferenceData" Core..=) Core.<$> conferenceData,
            ("created" Core..=) Core.<$> created,
            ("creator" Core..=) Core.<$> creator,
            ("description" Core..=) Core.<$> description,
            ("end" Core..=) Core.<$> end,
            Core.Just
              ("endTimeUnspecified" Core..= endTimeUnspecified),
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("eventType" Core..= eventType),
            ("extendedProperties" Core..=)
              Core.<$> extendedProperties,
            ("gadget" Core..=) Core.<$> gadget,
            Core.Just
              ( "guestsCanInviteOthers"
                  Core..= guestsCanInviteOthers
              ),
            Core.Just
              ("guestsCanModify" Core..= guestsCanModify),
            Core.Just
              ( "guestsCanSeeOtherGuests"
                  Core..= guestsCanSeeOtherGuests
              ),
            ("hangoutLink" Core..=) Core.<$> hangoutLink,
            ("htmlLink" Core..=) Core.<$> htmlLink,
            ("iCalUID" Core..=) Core.<$> iCalUID,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("location" Core..=) Core.<$> location,
            Core.Just ("locked" Core..= locked),
            ("organizer" Core..=) Core.<$> organizer,
            ("originalStartTime" Core..=)
              Core.<$> originalStartTime,
            Core.Just ("privateCopy" Core..= privateCopy),
            ("recurrence" Core..=) Core.<$> recurrence,
            ("recurringEventId" Core..=)
              Core.<$> recurringEventId,
            ("reminders" Core..=) Core.<$> reminders,
            ("sequence" Core..=) Core.<$> sequence,
            ("source" Core..=) Core.<$> source,
            ("start" Core..=) Core.<$> start,
            ("status" Core..=) Core.<$> status,
            ("summary" Core..=) Core.<$> summary,
            Core.Just ("transparency" Core..= transparency),
            ("updated" Core..=) Core.<$> updated,
            Core.Just ("visibility" Core..= visibility)
          ]
      )

-- | The creator of the event. Read-only.
--
-- /See:/ 'newEvent_Creator' smart constructor.
data Event_Creator = Event_Creator
  { -- | The creator\'s name, if available.
    displayName :: (Core.Maybe Core.Text),
    -- | The creator\'s email address, if available.
    email :: (Core.Maybe Core.Text),
    -- | The creator\'s Profile ID, if available.
    id :: (Core.Maybe Core.Text),
    -- | Whether the creator corresponds to the calendar on which this copy of the event appears. Read-only. The default is False.
    self :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_Creator' with the minimum fields required to make a request.
newEvent_Creator ::
  Event_Creator
newEvent_Creator =
  Event_Creator
    { displayName = Core.Nothing,
      email = Core.Nothing,
      id = Core.Nothing,
      self = Core.False
    }

instance Core.FromJSON Event_Creator where
  parseJSON =
    Core.withObject
      "Event_Creator"
      ( \o ->
          Event_Creator
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "self" Core..!= Core.False)
      )

instance Core.ToJSON Event_Creator where
  toJSON Event_Creator {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("id" Core..=) Core.<$> id,
            Core.Just ("self" Core..= self)
          ]
      )

-- | Extended properties of the event.
--
-- /See:/ 'newEvent_ExtendedProperties' smart constructor.
data Event_ExtendedProperties = Event_ExtendedProperties
  { -- | Properties that are private to the copy of the event that appears on this calendar.
    private :: (Core.Maybe Event_ExtendedProperties_Private),
    -- | Properties that are shared between copies of the event on other attendees\' calendars.
    shared :: (Core.Maybe Event_ExtendedProperties_Shared)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_ExtendedProperties' with the minimum fields required to make a request.
newEvent_ExtendedProperties ::
  Event_ExtendedProperties
newEvent_ExtendedProperties =
  Event_ExtendedProperties {private = Core.Nothing, shared = Core.Nothing}

instance Core.FromJSON Event_ExtendedProperties where
  parseJSON =
    Core.withObject
      "Event_ExtendedProperties"
      ( \o ->
          Event_ExtendedProperties
            Core.<$> (o Core..:? "private")
            Core.<*> (o Core..:? "shared")
      )

instance Core.ToJSON Event_ExtendedProperties where
  toJSON Event_ExtendedProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("private" Core..=) Core.<$> private,
            ("shared" Core..=) Core.<$> shared
          ]
      )

-- | Properties that are private to the copy of the event that appears on this calendar.
--
-- /See:/ 'newEvent_ExtendedProperties_Private' smart constructor.
newtype Event_ExtendedProperties_Private = Event_ExtendedProperties_Private
  { -- | The name of the private property and the corresponding value.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_ExtendedProperties_Private' with the minimum fields required to make a request.
newEvent_ExtendedProperties_Private ::
  -- |  The name of the private property and the corresponding value. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Event_ExtendedProperties_Private
newEvent_ExtendedProperties_Private addtional =
  Event_ExtendedProperties_Private {addtional = addtional}

instance
  Core.FromJSON
    Event_ExtendedProperties_Private
  where
  parseJSON =
    Core.withObject
      "Event_ExtendedProperties_Private"
      ( \o ->
          Event_ExtendedProperties_Private
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Event_ExtendedProperties_Private where
  toJSON Event_ExtendedProperties_Private {..} =
    Core.toJSON addtional

-- | Properties that are shared between copies of the event on other attendees\' calendars.
--
-- /See:/ 'newEvent_ExtendedProperties_Shared' smart constructor.
newtype Event_ExtendedProperties_Shared = Event_ExtendedProperties_Shared
  { -- | The name of the shared property and the corresponding value.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_ExtendedProperties_Shared' with the minimum fields required to make a request.
newEvent_ExtendedProperties_Shared ::
  -- |  The name of the shared property and the corresponding value. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Event_ExtendedProperties_Shared
newEvent_ExtendedProperties_Shared addtional =
  Event_ExtendedProperties_Shared {addtional = addtional}

instance
  Core.FromJSON
    Event_ExtendedProperties_Shared
  where
  parseJSON =
    Core.withObject
      "Event_ExtendedProperties_Shared"
      ( \o ->
          Event_ExtendedProperties_Shared
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Event_ExtendedProperties_Shared where
  toJSON Event_ExtendedProperties_Shared {..} =
    Core.toJSON addtional

-- | A gadget that extends this event. Gadgets are deprecated; this structure is instead only used for returning birthday calendar metadata.
--
-- /See:/ 'newEvent_Gadget' smart constructor.
data Event_Gadget = Event_Gadget
  { -- | The gadget\'s display mode. Deprecated. Possible values are:
    -- - \"icon\" - The gadget displays next to the event\'s title in the calendar view. - \"chip\" - The gadget displays when the event is clicked.
    display :: (Core.Maybe Core.Text),
    -- | The gadget\'s height in pixels. The height must be an integer greater than 0. Optional. Deprecated.
    height :: (Core.Maybe Core.Int32),
    -- | The gadget\'s icon URL. The URL scheme must be HTTPS. Deprecated.
    iconLink :: (Core.Maybe Core.Text),
    -- | The gadget\'s URL. The URL scheme must be HTTPS. Deprecated.
    link :: (Core.Maybe Core.Text),
    -- | Preferences.
    preferences :: (Core.Maybe Event_Gadget_Preferences),
    -- | The gadget\'s title. Deprecated.
    title :: (Core.Maybe Core.Text),
    -- | The gadget\'s type. Deprecated.
    type' :: (Core.Maybe Core.Text),
    -- | The gadget\'s width in pixels. The width must be an integer greater than 0. Optional. Deprecated.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_Gadget' with the minimum fields required to make a request.
newEvent_Gadget ::
  Event_Gadget
newEvent_Gadget =
  Event_Gadget
    { display = Core.Nothing,
      height = Core.Nothing,
      iconLink = Core.Nothing,
      link = Core.Nothing,
      preferences = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Event_Gadget where
  parseJSON =
    Core.withObject
      "Event_Gadget"
      ( \o ->
          Event_Gadget
            Core.<$> (o Core..:? "display")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "iconLink")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "preferences")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Event_Gadget where
  toJSON Event_Gadget {..} =
    Core.object
      ( Core.catMaybes
          [ ("display" Core..=) Core.<$> display,
            ("height" Core..=) Core.<$> height,
            ("iconLink" Core..=) Core.<$> iconLink,
            ("link" Core..=) Core.<$> link,
            ("preferences" Core..=) Core.<$> preferences,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type',
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Preferences.
--
-- /See:/ 'newEvent_Gadget_Preferences' smart constructor.
newtype Event_Gadget_Preferences = Event_Gadget_Preferences
  { -- | The preference name and corresponding value.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_Gadget_Preferences' with the minimum fields required to make a request.
newEvent_Gadget_Preferences ::
  -- |  The preference name and corresponding value. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Event_Gadget_Preferences
newEvent_Gadget_Preferences addtional =
  Event_Gadget_Preferences {addtional = addtional}

instance Core.FromJSON Event_Gadget_Preferences where
  parseJSON =
    Core.withObject
      "Event_Gadget_Preferences"
      ( \o ->
          Event_Gadget_Preferences
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Event_Gadget_Preferences where
  toJSON Event_Gadget_Preferences {..} =
    Core.toJSON addtional

-- | The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in attendees with the organizer field set to True. To change the organizer, use the move operation. Read-only, except when importing an event.
--
-- /See:/ 'newEvent_Organizer' smart constructor.
data Event_Organizer = Event_Organizer
  { -- | The organizer\'s name, if available.
    displayName :: (Core.Maybe Core.Text),
    -- | The organizer\'s email address, if available. It must be a valid email address as per RFC5322.
    email :: (Core.Maybe Core.Text),
    -- | The organizer\'s Profile ID, if available.
    id :: (Core.Maybe Core.Text),
    -- | Whether the organizer corresponds to the calendar on which this copy of the event appears. Read-only. The default is False.
    self :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_Organizer' with the minimum fields required to make a request.
newEvent_Organizer ::
  Event_Organizer
newEvent_Organizer =
  Event_Organizer
    { displayName = Core.Nothing,
      email = Core.Nothing,
      id = Core.Nothing,
      self = Core.False
    }

instance Core.FromJSON Event_Organizer where
  parseJSON =
    Core.withObject
      "Event_Organizer"
      ( \o ->
          Event_Organizer
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "self" Core..!= Core.False)
      )

instance Core.ToJSON Event_Organizer where
  toJSON Event_Organizer {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("id" Core..=) Core.<$> id,
            Core.Just ("self" Core..= self)
          ]
      )

-- | Information about the event\'s reminders for the authenticated user.
--
-- /See:/ 'newEvent_Reminders' smart constructor.
data Event_Reminders = Event_Reminders
  { -- | If the event doesn\'t use the default reminders, this lists the reminders specific to the event, or, if not set, indicates that no reminders are set for this event. The maximum number of override reminders is 5.
    overrides :: (Core.Maybe [EventReminder]),
    -- | Whether the default reminders of the calendar apply to the event.
    useDefault :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_Reminders' with the minimum fields required to make a request.
newEvent_Reminders ::
  Event_Reminders
newEvent_Reminders =
  Event_Reminders {overrides = Core.Nothing, useDefault = Core.Nothing}

instance Core.FromJSON Event_Reminders where
  parseJSON =
    Core.withObject
      "Event_Reminders"
      ( \o ->
          Event_Reminders
            Core.<$> (o Core..:? "overrides" Core..!= Core.mempty)
            Core.<*> (o Core..:? "useDefault")
      )

instance Core.ToJSON Event_Reminders where
  toJSON Event_Reminders {..} =
    Core.object
      ( Core.catMaybes
          [ ("overrides" Core..=) Core.<$> overrides,
            ("useDefault" Core..=) Core.<$> useDefault
          ]
      )

-- | Source from which the event was created. For example, a web page, an email message or any document identifiable by an URL with HTTP or HTTPS scheme. Can only be seen or modified by the creator of the event.
--
-- /See:/ 'newEvent_Source' smart constructor.
data Event_Source = Event_Source
  { -- | Title of the source; for example a title of a web page or an email subject.
    title :: (Core.Maybe Core.Text),
    -- | URL of the source pointing to a resource. The URL scheme must be HTTP or HTTPS.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_Source' with the minimum fields required to make a request.
newEvent_Source ::
  Event_Source
newEvent_Source = Event_Source {title = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON Event_Source where
  parseJSON =
    Core.withObject
      "Event_Source"
      ( \o ->
          Event_Source
            Core.<$> (o Core..:? "title") Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Event_Source where
  toJSON Event_Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("title" Core..=) Core.<$> title,
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newEventAttachment' smart constructor.
data EventAttachment = EventAttachment
  { -- | ID of the attached file. Read-only. For Google Drive files, this is the ID of the corresponding Files resource entry in the Drive API.
    fileId :: (Core.Maybe Core.Text),
    -- | URL link to the attachment. For adding Google Drive file attachments use the same format as in alternateLink property of the Files resource in the Drive API. Required when adding an attachment.
    fileUrl :: (Core.Maybe Core.Text),
    -- | URL link to the attachment\'s icon. Read-only.
    iconLink :: (Core.Maybe Core.Text),
    -- | Internet media type (MIME type) of the attachment.
    mimeType :: (Core.Maybe Core.Text),
    -- | Attachment title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventAttachment' with the minimum fields required to make a request.
newEventAttachment ::
  EventAttachment
newEventAttachment =
  EventAttachment
    { fileId = Core.Nothing,
      fileUrl = Core.Nothing,
      iconLink = Core.Nothing,
      mimeType = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON EventAttachment where
  parseJSON =
    Core.withObject
      "EventAttachment"
      ( \o ->
          EventAttachment
            Core.<$> (o Core..:? "fileId")
            Core.<*> (o Core..:? "fileUrl")
            Core.<*> (o Core..:? "iconLink")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON EventAttachment where
  toJSON EventAttachment {..} =
    Core.object
      ( Core.catMaybes
          [ ("fileId" Core..=) Core.<$> fileId,
            ("fileUrl" Core..=) Core.<$> fileUrl,
            ("iconLink" Core..=) Core.<$> iconLink,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newEventAttendee' smart constructor.
data EventAttendee = EventAttendee
  { -- | Number of additional guests. Optional. The default is 0.
    additionalGuests :: Core.Int32,
    -- | The attendee\'s response comment. Optional.
    comment :: (Core.Maybe Core.Text),
    -- | The attendee\'s name, if available. Optional.
    displayName :: (Core.Maybe Core.Text),
    -- | The attendee\'s email address, if available. This field must be present when adding an attendee. It must be a valid email address as per RFC5322. Required when adding an attendee.
    email :: (Core.Maybe Core.Text),
    -- | The attendee\'s Profile ID, if available.
    id :: (Core.Maybe Core.Text),
    -- | Whether this is an optional attendee. Optional. The default is False.
    optional :: Core.Bool,
    -- | Whether the attendee is the organizer of the event. Read-only. The default is False.
    organizer :: (Core.Maybe Core.Bool),
    -- | Whether the attendee is a resource. Can only be set when the attendee is added to the event for the first time. Subsequent modifications are ignored. Optional. The default is False.
    resource :: Core.Bool,
    -- | The attendee\'s response status. Possible values are:
    -- - \"needsAction\" - The attendee has not responded to the invitation. - \"declined\" - The attendee has declined the invitation. - \"tentative\" - The attendee has tentatively accepted the invitation. - \"accepted\" - The attendee has accepted the invitation.
    responseStatus :: (Core.Maybe Core.Text),
    -- | Whether this entry represents the calendar on which this copy of the event appears. Read-only. The default is False.
    self :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventAttendee' with the minimum fields required to make a request.
newEventAttendee ::
  EventAttendee
newEventAttendee =
  EventAttendee
    { additionalGuests = 0,
      comment = Core.Nothing,
      displayName = Core.Nothing,
      email = Core.Nothing,
      id = Core.Nothing,
      optional = Core.False,
      organizer = Core.Nothing,
      resource = Core.False,
      responseStatus = Core.Nothing,
      self = Core.False
    }

instance Core.FromJSON EventAttendee where
  parseJSON =
    Core.withObject
      "EventAttendee"
      ( \o ->
          EventAttendee
            Core.<$> (o Core..:? "additionalGuests" Core..!= 0)
            Core.<*> (o Core..:? "comment")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "optional" Core..!= Core.False)
            Core.<*> (o Core..:? "organizer")
            Core.<*> (o Core..:? "resource" Core..!= Core.False)
            Core.<*> (o Core..:? "responseStatus")
            Core.<*> (o Core..:? "self" Core..!= Core.False)
      )

instance Core.ToJSON EventAttendee where
  toJSON EventAttendee {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("additionalGuests" Core..= additionalGuests),
            ("comment" Core..=) Core.<$> comment,
            ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("id" Core..=) Core.<$> id,
            Core.Just ("optional" Core..= optional),
            ("organizer" Core..=) Core.<$> organizer,
            Core.Just ("resource" Core..= resource),
            ("responseStatus" Core..=) Core.<$> responseStatus,
            Core.Just ("self" Core..= self)
          ]
      )

--
-- /See:/ 'newEventDateTime' smart constructor.
data EventDateTime = EventDateTime
  { -- | The date, in the format \"yyyy-mm-dd\", if this is an all-day event.
    date :: (Core.Maybe Core.Date'),
    -- | The time, as a combined date-time value (formatted according to RFC3339). A time zone offset is required unless a time zone is explicitly specified in timeZone.
    dateTime :: (Core.Maybe Core.DateTime'),
    -- | The time zone in which the time is specified. (Formatted as an IANA Time Zone Database name, e.g. \"Europe\/Zurich\".) For recurring events this field is required and specifies the time zone in which the recurrence is expanded. For single events this field is optional and indicates a custom time zone for the event start\/end.
    timeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventDateTime' with the minimum fields required to make a request.
newEventDateTime ::
  EventDateTime
newEventDateTime =
  EventDateTime
    { date = Core.Nothing,
      dateTime = Core.Nothing,
      timeZone = Core.Nothing
    }

instance Core.FromJSON EventDateTime where
  parseJSON =
    Core.withObject
      "EventDateTime"
      ( \o ->
          EventDateTime
            Core.<$> (o Core..:? "date")
            Core.<*> (o Core..:? "dateTime")
            Core.<*> (o Core..:? "timeZone")
      )

instance Core.ToJSON EventDateTime where
  toJSON EventDateTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("dateTime" Core..=) Core.<$> dateTime,
            ("timeZone" Core..=) Core.<$> timeZone
          ]
      )

--
-- /See:/ 'newEventReminder' smart constructor.
data EventReminder = EventReminder
  { -- | The method used by this reminder. Possible values are:
    -- - \"email\" - Reminders are sent via email. - \"popup\" - Reminders are sent via a UI popup.
    -- Required when adding a reminder.
    method :: (Core.Maybe Core.Text),
    -- | Number of minutes before the start of the event when the reminder should trigger. Valid values are between 0 and 40320 (4 weeks in minutes). Required when adding a reminder.
    minutes :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventReminder' with the minimum fields required to make a request.
newEventReminder ::
  EventReminder
newEventReminder = EventReminder {method = Core.Nothing, minutes = Core.Nothing}

instance Core.FromJSON EventReminder where
  parseJSON =
    Core.withObject
      "EventReminder"
      ( \o ->
          EventReminder
            Core.<$> (o Core..:? "method")
            Core.<*> (o Core..:? "minutes")
      )

instance Core.ToJSON EventReminder where
  toJSON EventReminder {..} =
    Core.object
      ( Core.catMaybes
          [ ("method" Core..=) Core.<$> method,
            ("minutes" Core..=) Core.<$> minutes
          ]
      )

--
-- /See:/ 'newEvents' smart constructor.
data Events = Events
  { -- | The user\'s access role for this calendar. Read-only. Possible values are:
    -- - \"none\" - The user has no access. - \"freeBusyReader\" - The user has read access to free\/busy information. - \"reader\" - The user has read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. - \"writer\" - The user has read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. - \"owner\" - The user has ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs.
    accessRole :: (Core.Maybe Core.Text),
    -- | The default reminders on the calendar for the authenticated user. These reminders apply to all events on this calendar that do not explicitly override them (i.e. do not have reminders.useDefault set to True).
    defaultReminders :: (Core.Maybe [EventReminder]),
    -- | Description of the calendar. Read-only.
    description :: (Core.Maybe Core.Text),
    -- | ETag of the collection.
    etag :: (Core.Maybe Core.Text),
    -- | List of events on the calendar.
    items :: (Core.Maybe [Event]),
    -- | Type of the collection (\"calendar#events\").
    kind :: Core.Text,
    -- | Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided.
    nextSyncToken :: (Core.Maybe Core.Text),
    -- | Title of the calendar. Read-only.
    summary :: (Core.Maybe Core.Text),
    -- | The time zone of the calendar. Read-only.
    timeZone :: (Core.Maybe Core.Text),
    -- | Last modification time of the calendar (as a RFC3339 timestamp). Read-only.
    updated :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Events' with the minimum fields required to make a request.
newEvents ::
  Events
newEvents =
  Events
    { accessRole = Core.Nothing,
      defaultReminders = Core.Nothing,
      description = Core.Nothing,
      etag = Core.Nothing,
      items = Core.Nothing,
      kind = "calendar#events",
      nextPageToken = Core.Nothing,
      nextSyncToken = Core.Nothing,
      summary = Core.Nothing,
      timeZone = Core.Nothing,
      updated = Core.Nothing
    }

instance Core.FromJSON Events where
  parseJSON =
    Core.withObject
      "Events"
      ( \o ->
          Events
            Core.<$> (o Core..:? "accessRole")
            Core.<*> (o Core..:? "defaultReminders" Core..!= Core.mempty)
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "calendar#events")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nextSyncToken")
            Core.<*> (o Core..:? "summary")
            Core.<*> (o Core..:? "timeZone")
            Core.<*> (o Core..:? "updated")
      )

instance Core.ToJSON Events where
  toJSON Events {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessRole" Core..=) Core.<$> accessRole,
            ("defaultReminders" Core..=)
              Core.<$> defaultReminders,
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nextSyncToken" Core..=) Core.<$> nextSyncToken,
            ("summary" Core..=) Core.<$> summary,
            ("timeZone" Core..=) Core.<$> timeZone,
            ("updated" Core..=) Core.<$> updated
          ]
      )

--
-- /See:/ 'newFreeBusyCalendar' smart constructor.
data FreeBusyCalendar = FreeBusyCalendar
  { -- | List of time ranges during which this calendar should be regarded as busy.
    busy :: (Core.Maybe [TimePeriod]),
    -- | Optional error(s) (if computation for the calendar failed).
    errors :: (Core.Maybe [Error'])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeBusyCalendar' with the minimum fields required to make a request.
newFreeBusyCalendar ::
  FreeBusyCalendar
newFreeBusyCalendar =
  FreeBusyCalendar {busy = Core.Nothing, errors = Core.Nothing}

instance Core.FromJSON FreeBusyCalendar where
  parseJSON =
    Core.withObject
      "FreeBusyCalendar"
      ( \o ->
          FreeBusyCalendar
            Core.<$> (o Core..:? "busy" Core..!= Core.mempty)
            Core.<*> (o Core..:? "errors" Core..!= Core.mempty)
      )

instance Core.ToJSON FreeBusyCalendar where
  toJSON FreeBusyCalendar {..} =
    Core.object
      ( Core.catMaybes
          [ ("busy" Core..=) Core.<$> busy,
            ("errors" Core..=) Core.<$> errors
          ]
      )

--
-- /See:/ 'newFreeBusyGroup' smart constructor.
data FreeBusyGroup = FreeBusyGroup
  { -- | List of calendars\' identifiers within a group.
    calendars :: (Core.Maybe [Core.Text]),
    -- | Optional error(s) (if computation for the group failed).
    errors :: (Core.Maybe [Error'])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeBusyGroup' with the minimum fields required to make a request.
newFreeBusyGroup ::
  FreeBusyGroup
newFreeBusyGroup =
  FreeBusyGroup {calendars = Core.Nothing, errors = Core.Nothing}

instance Core.FromJSON FreeBusyGroup where
  parseJSON =
    Core.withObject
      "FreeBusyGroup"
      ( \o ->
          FreeBusyGroup
            Core.<$> (o Core..:? "calendars" Core..!= Core.mempty)
            Core.<*> (o Core..:? "errors" Core..!= Core.mempty)
      )

instance Core.ToJSON FreeBusyGroup where
  toJSON FreeBusyGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("calendars" Core..=) Core.<$> calendars,
            ("errors" Core..=) Core.<$> errors
          ]
      )

--
-- /See:/ 'newFreeBusyRequest' smart constructor.
data FreeBusyRequest = FreeBusyRequest
  { -- | Maximal number of calendars for which FreeBusy information is to be provided. Optional. Maximum value is 50.
    calendarExpansionMax :: (Core.Maybe Core.Int32),
    -- | Maximal number of calendar identifiers to be provided for a single group. Optional. An error is returned for a group with more members than this value. Maximum value is 100.
    groupExpansionMax :: (Core.Maybe Core.Int32),
    -- | List of calendars and\/or groups to query.
    items :: (Core.Maybe [FreeBusyRequestItem]),
    -- | The end of the interval for the query formatted as per RFC3339.
    timeMax :: (Core.Maybe Core.DateTime'),
    -- | The start of the interval for the query formatted as per RFC3339.
    timeMin :: (Core.Maybe Core.DateTime'),
    -- | Time zone used in the response. Optional. The default is UTC.
    timeZone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeBusyRequest' with the minimum fields required to make a request.
newFreeBusyRequest ::
  FreeBusyRequest
newFreeBusyRequest =
  FreeBusyRequest
    { calendarExpansionMax = Core.Nothing,
      groupExpansionMax = Core.Nothing,
      items = Core.Nothing,
      timeMax = Core.Nothing,
      timeMin = Core.Nothing,
      timeZone = "UTC"
    }

instance Core.FromJSON FreeBusyRequest where
  parseJSON =
    Core.withObject
      "FreeBusyRequest"
      ( \o ->
          FreeBusyRequest
            Core.<$> (o Core..:? "calendarExpansionMax")
            Core.<*> (o Core..:? "groupExpansionMax")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "timeMax")
            Core.<*> (o Core..:? "timeMin")
            Core.<*> (o Core..:? "timeZone" Core..!= "UTC")
      )

instance Core.ToJSON FreeBusyRequest where
  toJSON FreeBusyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("calendarExpansionMax" Core..=)
              Core.<$> calendarExpansionMax,
            ("groupExpansionMax" Core..=)
              Core.<$> groupExpansionMax,
            ("items" Core..=) Core.<$> items,
            ("timeMax" Core..=) Core.<$> timeMax,
            ("timeMin" Core..=) Core.<$> timeMin,
            Core.Just ("timeZone" Core..= timeZone)
          ]
      )

--
-- /See:/ 'newFreeBusyRequestItem' smart constructor.
newtype FreeBusyRequestItem = FreeBusyRequestItem
  { -- | The identifier of a calendar or a group.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeBusyRequestItem' with the minimum fields required to make a request.
newFreeBusyRequestItem ::
  FreeBusyRequestItem
newFreeBusyRequestItem = FreeBusyRequestItem {id = Core.Nothing}

instance Core.FromJSON FreeBusyRequestItem where
  parseJSON =
    Core.withObject
      "FreeBusyRequestItem"
      ( \o ->
          FreeBusyRequestItem Core.<$> (o Core..:? "id")
      )

instance Core.ToJSON FreeBusyRequestItem where
  toJSON FreeBusyRequestItem {..} =
    Core.object
      (Core.catMaybes [("id" Core..=) Core.<$> id])

--
-- /See:/ 'newFreeBusyResponse' smart constructor.
data FreeBusyResponse = FreeBusyResponse
  { -- | List of free\/busy information for calendars.
    calendars :: (Core.Maybe FreeBusyResponse_Calendars),
    -- | Expansion of groups.
    groups :: (Core.Maybe FreeBusyResponse_Groups),
    -- | Type of the resource (\"calendar#freeBusy\").
    kind :: Core.Text,
    -- | The end of the interval.
    timeMax :: (Core.Maybe Core.DateTime'),
    -- | The start of the interval.
    timeMin :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeBusyResponse' with the minimum fields required to make a request.
newFreeBusyResponse ::
  FreeBusyResponse
newFreeBusyResponse =
  FreeBusyResponse
    { calendars = Core.Nothing,
      groups = Core.Nothing,
      kind = "calendar#freeBusy",
      timeMax = Core.Nothing,
      timeMin = Core.Nothing
    }

instance Core.FromJSON FreeBusyResponse where
  parseJSON =
    Core.withObject
      "FreeBusyResponse"
      ( \o ->
          FreeBusyResponse
            Core.<$> (o Core..:? "calendars")
            Core.<*> (o Core..:? "groups")
            Core.<*> (o Core..:? "kind" Core..!= "calendar#freeBusy")
            Core.<*> (o Core..:? "timeMax")
            Core.<*> (o Core..:? "timeMin")
      )

instance Core.ToJSON FreeBusyResponse where
  toJSON FreeBusyResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("calendars" Core..=) Core.<$> calendars,
            ("groups" Core..=) Core.<$> groups,
            Core.Just ("kind" Core..= kind),
            ("timeMax" Core..=) Core.<$> timeMax,
            ("timeMin" Core..=) Core.<$> timeMin
          ]
      )

-- | List of free\/busy information for calendars.
--
-- /See:/ 'newFreeBusyResponse_Calendars' smart constructor.
newtype FreeBusyResponse_Calendars = FreeBusyResponse_Calendars
  { -- | Free\/busy expansions for a single calendar.
    addtional :: (Core.HashMap Core.Text FreeBusyCalendar)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeBusyResponse_Calendars' with the minimum fields required to make a request.
newFreeBusyResponse_Calendars ::
  -- |  Free\/busy expansions for a single calendar. See 'addtional'.
  Core.HashMap Core.Text FreeBusyCalendar ->
  FreeBusyResponse_Calendars
newFreeBusyResponse_Calendars addtional =
  FreeBusyResponse_Calendars {addtional = addtional}

instance Core.FromJSON FreeBusyResponse_Calendars where
  parseJSON =
    Core.withObject
      "FreeBusyResponse_Calendars"
      ( \o ->
          FreeBusyResponse_Calendars
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON FreeBusyResponse_Calendars where
  toJSON FreeBusyResponse_Calendars {..} =
    Core.toJSON addtional

-- | Expansion of groups.
--
-- /See:/ 'newFreeBusyResponse_Groups' smart constructor.
newtype FreeBusyResponse_Groups = FreeBusyResponse_Groups
  { -- | List of calendars that are members of this group.
    addtional :: (Core.HashMap Core.Text FreeBusyGroup)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeBusyResponse_Groups' with the minimum fields required to make a request.
newFreeBusyResponse_Groups ::
  -- |  List of calendars that are members of this group. See 'addtional'.
  Core.HashMap Core.Text FreeBusyGroup ->
  FreeBusyResponse_Groups
newFreeBusyResponse_Groups addtional =
  FreeBusyResponse_Groups {addtional = addtional}

instance Core.FromJSON FreeBusyResponse_Groups where
  parseJSON =
    Core.withObject
      "FreeBusyResponse_Groups"
      ( \o ->
          FreeBusyResponse_Groups
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON FreeBusyResponse_Groups where
  toJSON FreeBusyResponse_Groups {..} =
    Core.toJSON addtional

--
-- /See:/ 'newSetting' smart constructor.
data Setting = Setting
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The id of the user setting.
    id :: (Core.Maybe Core.Text),
    -- | Type of the resource (\"calendar#setting\").
    kind :: Core.Text,
    -- | Value of the user setting. The format of the value depends on the ID of the setting. It must always be a UTF-8 string of length up to 1024 characters.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Setting' with the minimum fields required to make a request.
newSetting ::
  Setting
newSetting =
  Setting
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "calendar#setting",
      value = Core.Nothing
    }

instance Core.FromJSON Setting where
  parseJSON =
    Core.withObject
      "Setting"
      ( \o ->
          Setting
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "calendar#setting")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Setting where
  toJSON Setting {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newSettings' smart constructor.
data Settings = Settings
  { -- | Etag of the collection.
    etag :: (Core.Maybe Core.Text),
    -- | List of user settings.
    items :: (Core.Maybe [Setting]),
    -- | Type of the collection (\"calendar#settings\").
    kind :: Core.Text,
    -- | Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided.
    nextSyncToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
newSettings ::
  Settings
newSettings =
  Settings
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "calendar#settings",
      nextPageToken = Core.Nothing,
      nextSyncToken = Core.Nothing
    }

instance Core.FromJSON Settings where
  parseJSON =
    Core.withObject
      "Settings"
      ( \o ->
          Settings
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "calendar#settings")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nextSyncToken")
      )

instance Core.ToJSON Settings where
  toJSON Settings {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nextSyncToken" Core..=) Core.<$> nextSyncToken
          ]
      )

--
-- /See:/ 'newTimePeriod' smart constructor.
data TimePeriod = TimePeriod
  { -- | The (exclusive) end of the time period.
    end :: (Core.Maybe Core.DateTime'),
    -- | The (inclusive) start of the time period.
    start :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimePeriod' with the minimum fields required to make a request.
newTimePeriod ::
  TimePeriod
newTimePeriod = TimePeriod {end = Core.Nothing, start = Core.Nothing}

instance Core.FromJSON TimePeriod where
  parseJSON =
    Core.withObject
      "TimePeriod"
      ( \o ->
          TimePeriod
            Core.<$> (o Core..:? "end") Core.<*> (o Core..:? "start")
      )

instance Core.ToJSON TimePeriod where
  toJSON TimePeriod {..} =
    Core.object
      ( Core.catMaybes
          [ ("end" Core..=) Core.<$> end,
            ("start" Core..=) Core.<$> start
          ]
      )
