{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppsCalendar
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you manipulate events and other calendar data.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference>
module Network.Google.AppsCalendar
    (
    -- * Service Configuration
      appsCalendarService

    -- * OAuth Scopes
    , authCalendarScope
    , authCalendarReadonlyScope

    -- * API Declaration
    , AppsCalendarAPI

    -- * Resources

    -- ** calendar.acl.delete
    , module Network.Google.Resource.Calendar.ACL.Delete

    -- ** calendar.acl.get
    , module Network.Google.Resource.Calendar.ACL.Get

    -- ** calendar.acl.insert
    , module Network.Google.Resource.Calendar.ACL.Insert

    -- ** calendar.acl.list
    , module Network.Google.Resource.Calendar.ACL.List

    -- ** calendar.acl.patch
    , module Network.Google.Resource.Calendar.ACL.Patch

    -- ** calendar.acl.update
    , module Network.Google.Resource.Calendar.ACL.Update

    -- ** calendar.acl.watch
    , module Network.Google.Resource.Calendar.ACL.Watch

    -- ** calendar.calendarList.delete
    , module Network.Google.Resource.Calendar.CalendarList.Delete

    -- ** calendar.calendarList.get
    , module Network.Google.Resource.Calendar.CalendarList.Get

    -- ** calendar.calendarList.insert
    , module Network.Google.Resource.Calendar.CalendarList.Insert

    -- ** calendar.calendarList.list
    , module Network.Google.Resource.Calendar.CalendarList.List

    -- ** calendar.calendarList.patch
    , module Network.Google.Resource.Calendar.CalendarList.Patch

    -- ** calendar.calendarList.update
    , module Network.Google.Resource.Calendar.CalendarList.Update

    -- ** calendar.calendarList.watch
    , module Network.Google.Resource.Calendar.CalendarList.Watch

    -- ** calendar.calendars.clear
    , module Network.Google.Resource.Calendar.Calendars.Clear

    -- ** calendar.calendars.delete
    , module Network.Google.Resource.Calendar.Calendars.Delete

    -- ** calendar.calendars.get
    , module Network.Google.Resource.Calendar.Calendars.Get

    -- ** calendar.calendars.insert
    , module Network.Google.Resource.Calendar.Calendars.Insert

    -- ** calendar.calendars.patch
    , module Network.Google.Resource.Calendar.Calendars.Patch

    -- ** calendar.calendars.update
    , module Network.Google.Resource.Calendar.Calendars.Update

    -- ** calendar.channels.stop
    , module Network.Google.Resource.Calendar.Channels.Stop

    -- ** calendar.colors.get
    , module Network.Google.Resource.Calendar.Colors.Get

    -- ** calendar.events.delete
    , module Network.Google.Resource.Calendar.Events.Delete

    -- ** calendar.events.get
    , module Network.Google.Resource.Calendar.Events.Get

    -- ** calendar.events.import
    , module Network.Google.Resource.Calendar.Events.Import

    -- ** calendar.events.insert
    , module Network.Google.Resource.Calendar.Events.Insert

    -- ** calendar.events.instances
    , module Network.Google.Resource.Calendar.Events.Instances

    -- ** calendar.events.list
    , module Network.Google.Resource.Calendar.Events.List

    -- ** calendar.events.move
    , module Network.Google.Resource.Calendar.Events.Move

    -- ** calendar.events.patch
    , module Network.Google.Resource.Calendar.Events.Patch

    -- ** calendar.events.quickAdd
    , module Network.Google.Resource.Calendar.Events.QuickAdd

    -- ** calendar.events.update
    , module Network.Google.Resource.Calendar.Events.Update

    -- ** calendar.events.watch
    , module Network.Google.Resource.Calendar.Events.Watch

    -- ** calendar.freebusy.query
    , module Network.Google.Resource.Calendar.FreeBusy.Query

    -- ** calendar.settings.get
    , module Network.Google.Resource.Calendar.Settings.Get

    -- ** calendar.settings.list
    , module Network.Google.Resource.Calendar.Settings.List

    -- ** calendar.settings.watch
    , module Network.Google.Resource.Calendar.Settings.Watch

    -- * Types

    -- ** CalendarListEntry
    , CalendarListEntry
    , calendarListEntry
    , cleSummary
    , cleEtag
    , cleLocation
    , cleKind
    , cleNotificationSettings
    , cleBackgRoundColor
    , cleForegRoundColor
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

    -- ** Event
    , Event
    , event
    , eSummary
    , eOriginalStartTime
    , eCreator
    , eStatus
    , eGuestsCanModify
    , eEtag
    , eAttachments
    , eLocked
    , eLocation
    , eAttendees
    , eReminders
    , eKind
    , eCreated
    , eTransparency
    , eRecurringEventId
    , eStart
    , ePrivateCopy
    , eEndTimeUnspecified
    , eExtendedProperties
    , eVisibility
    , eGuestsCanInviteOthers
    , eRecurrence
    , eGadget
    , eSequence
    , eICalUId
    , eEnd
    , eAttendeesOmitted
    , eSource
    , eId
    , eHTMLLink
    , eUpdated
    , eColorId
    , eAnyoneCanAddSelf
    , eGuestsCanSeeOtherGuests
    , eHangoutLink
    , eDescription
    , eOrganizer

    -- ** CalendarListEntryNotificationSettings
    , CalendarListEntryNotificationSettings
    , calendarListEntryNotificationSettings
    , clensNotifications

    -- ** ACLRuleScope
    , ACLRuleScope
    , aclRuleScope
    , arsValue
    , arsType

    -- ** ColorsEvent
    , ColorsEvent
    , colorsEvent
    , ceAddtional

    -- ** Settings
    , Settings
    , settings
    , sEtag
    , sNextPageToken
    , sKind
    , sItems
    , sNextSyncToken

    -- ** FreeBusyRequestItem
    , FreeBusyRequestItem
    , freeBusyRequestItem
    , fbriId

    -- ** EventAttachment
    , EventAttachment
    , eventAttachment
    , eaFileURL
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

    -- ** TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd

    -- ** EventCreator
    , EventCreator
    , eventCreator
    , ecEmail
    , ecSelf
    , ecDisplayName
    , ecId

    -- ** Error'
    , Error'
    , error'
    , eDomain
    , eReason

    -- ** ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForegRound
    , cdBackgRound

    -- ** EventsListOrderBy
    , EventsListOrderBy (..)

    -- ** Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- ** FreeBusyCalendar
    , FreeBusyCalendar
    , freeBusyCalendar
    , fbcBusy
    , fbcErrors

    -- ** Setting
    , Setting
    , setting
    , setEtag
    , setKind
    , setValue
    , setId

    -- ** FreeBusyResponseGroups
    , FreeBusyResponseGroups
    , freeBusyResponseGroups
    , fbrgAddtional

    -- ** EventReminders
    , EventReminders
    , eventReminders
    , erOverrides
    , erUseDefault

    -- ** ColorsCalendar
    , ColorsCalendar
    , colorsCalendar
    , ccAddtional

    -- ** CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

    -- ** EventExtendedPropertiesPrivate
    , EventExtendedPropertiesPrivate
    , eventExtendedPropertiesPrivate
    , eeppAddtional

    -- ** ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- ** Events
    , Events
    , events
    , eveSummary
    , eveEtag
    , eveNextPageToken
    , eveKind
    , eveItems
    , eveDefaultReminders
    , eveUpdated
    , eveAccessRole
    , eveTimeZone
    , eveNextSyncToken
    , eveDescription

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

    -- ** Calendar
    , Calendar
    , calendar
    , calSummary
    , calEtag
    , calLocation
    , calKind
    , calId
    , calTimeZone
    , calDescription

    -- ** FreeBusyResponse
    , FreeBusyResponse
    , freeBusyResponse
    , fbrGroups
    , fbrTimeMin
    , fbrKind
    , fbrCalendars
    , fbrTimeMax

    -- ** EventReminder
    , EventReminder
    , eventReminder
    , erMethod
    , erMinutes

    -- ** EventExtendedProperties
    , EventExtendedProperties
    , eventExtendedProperties
    , eepPrivate
    , eepShared

    -- ** EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

    -- ** EventOrganizer
    , EventOrganizer
    , eventOrganizer
    , eoEmail
    , eoSelf
    , eoDisplayName
    , eoId

    -- ** CalendarList
    , CalendarList
    , calendarList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clNextSyncToken

    -- ** CalendarListListMinAccessRole
    , CalendarListListMinAccessRole (..)

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

    -- ** EventGadgetPreferences
    , EventGadgetPreferences
    , eventGadgetPreferences
    , egpAddtional

    -- ** FreeBusyRequest
    , FreeBusyRequest
    , freeBusyRequest
    , fCalendarExpansionMax
    , fTimeMin
    , fItems
    , fGroupExpansionMax
    , fTimeZone
    , fTimeMax

    -- ** ACLRule
    , ACLRule
    , aclRule
    , arEtag
    , arKind
    , arRole
    , arScope
    , arId

    -- ** EventsWatchOrderBy
    , EventsWatchOrderBy (..)

    -- ** EventExtendedPropertiesShared
    , EventExtendedPropertiesShared
    , eventExtendedPropertiesShared
    , eepsAddtional

    -- ** CalendarListWatchMinAccessRole
    , CalendarListWatchMinAccessRole (..)

    -- ** FreeBusyResponseCalendars
    , FreeBusyResponseCalendars
    , freeBusyResponseCalendars
    , fbrcAddtional

    -- ** ACL
    , ACL
    , acl
    , aEtag
    , aNextPageToken
    , aKind
    , aItems
    , aNextSyncToken

    -- ** Colors
    , Colors
    , colors
    , colEvent
    , colKind
    , colCalendar
    , colUpdated

    -- ** FreeBusyGroup
    , FreeBusyGroup
    , freeBusyGroup
    , fbgCalendars
    , fbgErrors

    -- ** EventSource
    , EventSource
    , eventSource
    , esURL
    , esTitle
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Calendar.ACL.Delete
import           Network.Google.Resource.Calendar.ACL.Get
import           Network.Google.Resource.Calendar.ACL.Insert
import           Network.Google.Resource.Calendar.ACL.List
import           Network.Google.Resource.Calendar.ACL.Patch
import           Network.Google.Resource.Calendar.ACL.Update
import           Network.Google.Resource.Calendar.ACL.Watch
import           Network.Google.Resource.Calendar.CalendarList.Delete
import           Network.Google.Resource.Calendar.CalendarList.Get
import           Network.Google.Resource.Calendar.CalendarList.Insert
import           Network.Google.Resource.Calendar.CalendarList.List
import           Network.Google.Resource.Calendar.CalendarList.Patch
import           Network.Google.Resource.Calendar.CalendarList.Update
import           Network.Google.Resource.Calendar.CalendarList.Watch
import           Network.Google.Resource.Calendar.Calendars.Clear
import           Network.Google.Resource.Calendar.Calendars.Delete
import           Network.Google.Resource.Calendar.Calendars.Get
import           Network.Google.Resource.Calendar.Calendars.Insert
import           Network.Google.Resource.Calendar.Calendars.Patch
import           Network.Google.Resource.Calendar.Calendars.Update
import           Network.Google.Resource.Calendar.Channels.Stop
import           Network.Google.Resource.Calendar.Colors.Get
import           Network.Google.Resource.Calendar.Events.Delete
import           Network.Google.Resource.Calendar.Events.Get
import           Network.Google.Resource.Calendar.Events.Import
import           Network.Google.Resource.Calendar.Events.Insert
import           Network.Google.Resource.Calendar.Events.Instances
import           Network.Google.Resource.Calendar.Events.List
import           Network.Google.Resource.Calendar.Events.Move
import           Network.Google.Resource.Calendar.Events.Patch
import           Network.Google.Resource.Calendar.Events.QuickAdd
import           Network.Google.Resource.Calendar.Events.Update
import           Network.Google.Resource.Calendar.Events.Watch
import           Network.Google.Resource.Calendar.FreeBusy.Query
import           Network.Google.Resource.Calendar.Settings.Get
import           Network.Google.Resource.Calendar.Settings.List
import           Network.Google.Resource.Calendar.Settings.Watch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Calendar API service.
type AppsCalendarAPI =
     SettingsListResource :<|> SettingsGetResource :<|>
       SettingsWatchResource
       :<|> ChannelsStopResource
       :<|> CalendarsInsertResource
       :<|> CalendarsPatchResource
       :<|> CalendarsGetResource
       :<|> CalendarsClearResource
       :<|> CalendarsDeleteResource
       :<|> CalendarsUpdateResource
       :<|> EventsQuickAddResource
       :<|> EventsInsertResource
       :<|> EventsListResource
       :<|> EventsPatchResource
       :<|> EventsGetResource
       :<|> EventsInstancesResource
       :<|> EventsImportResource
       :<|> EventsDeleteResource
       :<|> EventsUpdateResource
       :<|> EventsMoveResource
       :<|> EventsWatchResource
       :<|> CalendarListInsertResource
       :<|> CalendarListListResource
       :<|> CalendarListPatchResource
       :<|> CalendarListGetResource
       :<|> CalendarListDeleteResource
       :<|> CalendarListUpdateResource
       :<|> CalendarListWatchResource
       :<|> ACLInsertResource
       :<|> ACLListResource
       :<|> ACLPatchResource
       :<|> ACLGetResource
       :<|> ACLDeleteResource
       :<|> ACLUpdateResource
       :<|> ACLWatchResource
       :<|> ColorsGetResource
       :<|> FreeBusyQueryResource
