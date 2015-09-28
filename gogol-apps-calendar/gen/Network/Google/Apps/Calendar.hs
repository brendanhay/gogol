{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Apps.Calendar
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you manipulate events and other calendar data.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference>
module Network.Google.Apps.Calendar
    (
    -- * REST Resources

    -- ** Calendar API
      AppsCalendar
    , appsCalendar
    , appsCalendarURL

    -- ** calendar.acl.delete
    , module Network.Google.API.Calendar.ACL.Delete

    -- ** calendar.acl.get
    , module Network.Google.API.Calendar.ACL.Get

    -- ** calendar.acl.insert
    , module Network.Google.API.Calendar.ACL.Insert

    -- ** calendar.acl.list
    , module Network.Google.API.Calendar.ACL.List

    -- ** calendar.acl.patch
    , module Network.Google.API.Calendar.ACL.Patch

    -- ** calendar.acl.update
    , module Network.Google.API.Calendar.ACL.Update

    -- ** calendar.acl.watch
    , module Network.Google.API.Calendar.ACL.Watch

    -- ** calendar.calendarList.delete
    , module Network.Google.API.Calendar.CalendarList.Delete

    -- ** calendar.calendarList.get
    , module Network.Google.API.Calendar.CalendarList.Get

    -- ** calendar.calendarList.insert
    , module Network.Google.API.Calendar.CalendarList.Insert

    -- ** calendar.calendarList.list
    , module Network.Google.API.Calendar.CalendarList.List

    -- ** calendar.calendarList.patch
    , module Network.Google.API.Calendar.CalendarList.Patch

    -- ** calendar.calendarList.update
    , module Network.Google.API.Calendar.CalendarList.Update

    -- ** calendar.calendarList.watch
    , module Network.Google.API.Calendar.CalendarList.Watch

    -- ** calendar.calendars.clear
    , module Network.Google.API.Calendar.Calendars.Clear

    -- ** calendar.calendars.delete
    , module Network.Google.API.Calendar.Calendars.Delete

    -- ** calendar.calendars.get
    , module Network.Google.API.Calendar.Calendars.Get

    -- ** calendar.calendars.insert
    , module Network.Google.API.Calendar.Calendars.Insert

    -- ** calendar.calendars.patch
    , module Network.Google.API.Calendar.Calendars.Patch

    -- ** calendar.calendars.update
    , module Network.Google.API.Calendar.Calendars.Update

    -- ** calendar.channels.stop
    , module Network.Google.API.Calendar.Channels.Stop

    -- ** calendar.colors.get
    , module Network.Google.API.Calendar.Colors.Get

    -- ** calendar.events.delete
    , module Network.Google.API.Calendar.Events.Delete

    -- ** calendar.events.get
    , module Network.Google.API.Calendar.Events.Get

    -- ** calendar.events.import
    , module Network.Google.API.Calendar.Events.Import

    -- ** calendar.events.insert
    , module Network.Google.API.Calendar.Events.Insert

    -- ** calendar.events.instances
    , module Network.Google.API.Calendar.Events.Instances

    -- ** calendar.events.list
    , module Network.Google.API.Calendar.Events.List

    -- ** calendar.events.move
    , module Network.Google.API.Calendar.Events.Move

    -- ** calendar.events.patch
    , module Network.Google.API.Calendar.Events.Patch

    -- ** calendar.events.quickAdd
    , module Network.Google.API.Calendar.Events.QuickAdd

    -- ** calendar.events.update
    , module Network.Google.API.Calendar.Events.Update

    -- ** calendar.events.watch
    , module Network.Google.API.Calendar.Events.Watch

    -- ** calendar.freebusy.query
    , module Network.Google.API.Calendar.Freebusy.Query

    -- ** calendar.settings.get
    , module Network.Google.API.Calendar.Settings.Get

    -- ** calendar.settings.list
    , module Network.Google.API.Calendar.Settings.List

    -- ** calendar.settings.watch
    , module Network.Google.API.Calendar.Settings.Watch

    -- * Types

    -- ** EventPrivateExtendedProperties
    , EventPrivateExtendedProperties
    , eventPrivateExtendedProperties

    -- ** EventsWatch'OrderBy
    , EventsWatch'OrderBy (..)

    -- ** ColorsCalendar
    , ColorsCalendar
    , colorsCalendar

    -- ** CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

    -- ** CalendarListEntryNotificationSettings
    , CalendarListEntryNotificationSettings
    , calendarListEntryNotificationSettings
    , clensNotifications

    -- ** Events
    , Events
    , events
    , eSummary
    , eEtag
    , eNextPageToken
    , eKind
    , eItems
    , eDefaultReminders
    , eUpdated
    , eAccessRole
    , eTimeZone
    , eNextSyncToken
    , eDescription

    -- ** EventReminders
    , EventReminders
    , eventReminders
    , erOverrides
    , erUseDefault

    -- ** EventSource
    , EventSource
    , eventSource
    , esUrl
    , esTitle

    -- ** Alt
    , Alt (..)

    -- ** FreeBusyResponseGroups
    , FreeBusyResponseGroups
    , freeBusyResponseGroups

    -- ** EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

    -- ** FreeBusyRequest
    , FreeBusyRequest
    , freeBusyRequest
    , fbrCalendarExpansionMax
    , fbrTimeMin
    , fbrItems
    , fbrGroupExpansionMax
    , fbrTimeZone
    , fbrTimeMax

    -- ** CalendarList
    , CalendarList
    , calendarList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clNextSyncToken

    -- ** AclRule
    , AclRule
    , aclRule
    , arEtag
    , arKind
    , arRole
    , arScope
    , arId

    -- ** EventPreferencesGadget
    , EventPreferencesGadget
    , eventPreferencesGadget

    -- ** Setting
    , Setting
    , setting
    , sEtag
    , sKind
    , sValue
    , sId

    -- ** EventOrganizer
    , EventOrganizer
    , eventOrganizer
    , eoEmail
    , eoSelf
    , eoDisplayName
    , eoId

    -- ** ColorsEvent
    , ColorsEvent
    , colorsEvent

    -- ** Event
    , Event
    , event
    , eveSummary
    , eveOriginalStartTime
    , eveCreator
    , eveStatus
    , eveGuestsCanModify
    , eveEtag
    , eveAttachments
    , eveLocked
    , eveLocation
    , eveAttendees
    , eveReminders
    , eveKind
    , eveCreated
    , eveTransparency
    , eveRecurringEventId
    , eveStart
    , evePrivateCopy
    , eveEndTimeUnspecified
    , eveExtendedProperties
    , eveVisibility
    , eveGuestsCanInviteOthers
    , eveRecurrence
    , eveGadget
    , eveSequence
    , eveICalUID
    , eveEnd
    , eveAttendeesOmitted
    , eveSource
    , eveId
    , eveHtmlLink
    , eveUpdated
    , eveColorId
    , eveAnyoneCanAddSelf
    , eveGuestsCanSeeOtherGuests
    , eveHangoutLink
    , eveDescription
    , eveOrganizer

    -- ** CalendarListList'MinAccessRole
    , CalendarListList'MinAccessRole (..)

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** EventsList'OrderBy
    , EventsList'OrderBy (..)

    -- ** CalendarListEntry
    , CalendarListEntry
    , calendarListEntry
    , cleSummary
    , cleEtag
    , cleLocation
    , cleKind
    , cleNotificationSettings
    , cleBackgroundColor
    , cleForegroundColor
    , cleDefaultReminders
    , cleSelected
    , clePrimary
    , cleHidden
    , cleId
    , cleDeleted
    , cleAccessRole
    , cleSummaryOverride
    , cleColorId
    , cleTimeZone
    , cleDescription

    -- ** CalendarListWatch'MinAccessRole
    , CalendarListWatch'MinAccessRole (..)

    -- ** EventAttendee
    , EventAttendee
    , eventAttendee
    , eaEmail
    , eaResponseStatus
    , eaSelf
    , eaResource
    , eaAdditionalGuests
    , eaDisplayName
    , eaId
    , eaComment
    , eaOptional
    , eaOrganizer

    -- ** EventReminder
    , EventReminder
    , eventReminder
    , erMethod
    , erMinutes

    -- ** Calendar
    , Calendar
    , calendar
    , cSummary
    , cEtag
    , cLocation
    , cKind
    , cId
    , cTimeZone
    , cDescription

    -- ** FreeBusyResponse
    , FreeBusyResponse
    , freeBusyResponse
    , fGroups
    , fTimeMin
    , fKind
    , fCalendars
    , fTimeMax

    -- ** Settings
    , Settings
    , settings
    , setEtag
    , setNextPageToken
    , setKind
    , setItems
    , setNextSyncToken

    -- ** EventAttachment
    , EventAttachment
    , eventAttachment
    , eaFileUrl
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

    -- ** FreeBusyRequestItem
    , FreeBusyRequestItem
    , freeBusyRequestItem
    , fbriId

    -- ** ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForeground
    , cdBackground

    -- ** FreeBusyResponseCalendars
    , FreeBusyResponseCalendars
    , freeBusyResponseCalendars

    -- ** TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd

    -- ** Error'
    , Error'
    , error'
    , eDomain
    , eReason

    -- ** EventSharedExtendedProperties
    , EventSharedExtendedProperties
    , eventSharedExtendedProperties

    -- ** EventGadget
    , EventGadget
    , eventGadget
    , egHeight
    , egDisplay
    , egPreferences
    , egLink
    , egIconLink
    , egWidth
    , egTitle
    , egType

    -- ** Channel
    , Channel
    , channel
    , chaResourceUri
    , chaResourceId
    , chaKind
    , chaExpiration
    , chaToken
    , chaAddress
    , chaPayload
    , chaParams
    , chaId
    , chaType

    -- ** EventCreator
    , EventCreator
    , eventCreator
    , ecEmail
    , ecSelf
    , ecDisplayName
    , ecId

    -- ** FreeBusyCalendar
    , FreeBusyCalendar
    , freeBusyCalendar
    , fbcBusy
    , fbcErrors

    -- ** FreeBusyGroup
    , FreeBusyGroup
    , freeBusyGroup
    , fbgCalendars
    , fbgErrors

    -- ** Colors
    , Colors
    , colors
    , colEvent
    , colKind
    , colCalendar
    , colUpdated

    -- ** Acl
    , Acl
    , acl
    , aclEtag
    , aclNextPageToken
    , aclKind
    , aclItems
    , aclNextSyncToken

    -- ** EventExtendedProperties
    , EventExtendedProperties
    , eventExtendedProperties
    , eepPrivate
    , eepShared

    -- ** AclRuleScope
    , AclRuleScope
    , aclRuleScope
    , arsValue
    , arsType
    ) where

import           Network.Google.API.Calendar.ACL.Delete
import           Network.Google.API.Calendar.ACL.Get
import           Network.Google.API.Calendar.ACL.Insert
import           Network.Google.API.Calendar.ACL.List
import           Network.Google.API.Calendar.ACL.Patch
import           Network.Google.API.Calendar.ACL.Update
import           Network.Google.API.Calendar.ACL.Watch
import           Network.Google.API.Calendar.CalendarList.Delete
import           Network.Google.API.Calendar.CalendarList.Get
import           Network.Google.API.Calendar.CalendarList.Insert
import           Network.Google.API.Calendar.CalendarList.List
import           Network.Google.API.Calendar.CalendarList.Patch
import           Network.Google.API.Calendar.CalendarList.Update
import           Network.Google.API.Calendar.CalendarList.Watch
import           Network.Google.API.Calendar.Calendars.Clear
import           Network.Google.API.Calendar.Calendars.Delete
import           Network.Google.API.Calendar.Calendars.Get
import           Network.Google.API.Calendar.Calendars.Insert
import           Network.Google.API.Calendar.Calendars.Patch
import           Network.Google.API.Calendar.Calendars.Update
import           Network.Google.API.Calendar.Channels.Stop
import           Network.Google.API.Calendar.Colors.Get
import           Network.Google.API.Calendar.Events.Delete
import           Network.Google.API.Calendar.Events.Get
import           Network.Google.API.Calendar.Events.Import
import           Network.Google.API.Calendar.Events.Insert
import           Network.Google.API.Calendar.Events.Instances
import           Network.Google.API.Calendar.Events.List
import           Network.Google.API.Calendar.Events.Move
import           Network.Google.API.Calendar.Events.Patch
import           Network.Google.API.Calendar.Events.QuickAdd
import           Network.Google.API.Calendar.Events.Update
import           Network.Google.API.Calendar.Events.Watch
import           Network.Google.API.Calendar.Freebusy.Query
import           Network.Google.API.Calendar.Settings.Get
import           Network.Google.API.Calendar.Settings.List
import           Network.Google.API.Calendar.Settings.Watch
import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppsCalendar =
     EventsInsertAPI :<|> CalendarsDeleteAPI :<|>
       EventsWatchAPI
       :<|> ACLListAPI
       :<|> ACLUpdateAPI
       :<|> EventsPatchAPI
       :<|> CalendarListGetAPI
       :<|> CalendarListListAPI
       :<|> CalendarsUpdateAPI
       :<|> EventsInstancesAPI
       :<|> ACLWatchAPI
       :<|> EventsImportAPI
       :<|> CalendarListPatchAPI
       :<|> ColorsGetAPI
       :<|> ACLInsertAPI
       :<|> CalendarsPatchAPI
       :<|> EventsGetAPI
       :<|> EventsListAPI
       :<|> CalendarListDeleteAPI
       :<|> CalendarsInsertAPI
       :<|> EventsDeleteAPI
       :<|> SettingsGetAPI
       :<|> ACLDeleteAPI
       :<|> ACLGetAPI
       :<|> ChannelsStopAPI
       :<|> SettingsWatchAPI
       :<|> EventsMoveAPI
       :<|> CalendarsClearAPI
       :<|> EventsUpdateAPI
       :<|> SettingsListAPI
       :<|> FreebusyQueryAPI
       :<|> CalendarListWatchAPI
       :<|> CalendarsGetAPI
       :<|> ACLPatchAPI
       :<|> CalendarListUpdateAPI
       :<|> EventsQuickAddAPI
       :<|> CalendarListInsertAPI

appsCalendar :: Proxy AppsCalendar
appsCalendar = Proxy
