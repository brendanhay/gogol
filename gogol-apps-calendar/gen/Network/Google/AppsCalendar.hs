{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppsCalendar
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you manipulate events and other calendar data.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference>
module Network.Google.AppsCalendar
    (
    -- * API
      AppsCalendarAPI
    , appsCalendarAPI
    , appsCalendarRequest

    -- * Service Methods

    -- * REST Resources

    -- ** CalendarACLDelete
    , module Network.Google.Resource.Calendar.ACL.Delete

    -- ** CalendarACLGet
    , module Network.Google.Resource.Calendar.ACL.Get

    -- ** CalendarACLInsert
    , module Network.Google.Resource.Calendar.ACL.Insert

    -- ** CalendarACLList
    , module Network.Google.Resource.Calendar.ACL.List

    -- ** CalendarACLPatch
    , module Network.Google.Resource.Calendar.ACL.Patch

    -- ** CalendarACLUpdate
    , module Network.Google.Resource.Calendar.ACL.Update

    -- ** CalendarACLWatch
    , module Network.Google.Resource.Calendar.ACL.Watch

    -- ** CalendarCalendarListDelete
    , module Network.Google.Resource.Calendar.CalendarList.Delete

    -- ** CalendarCalendarListGet
    , module Network.Google.Resource.Calendar.CalendarList.Get

    -- ** CalendarCalendarListInsert
    , module Network.Google.Resource.Calendar.CalendarList.Insert

    -- ** CalendarCalendarListList
    , module Network.Google.Resource.Calendar.CalendarList.List

    -- ** CalendarCalendarListPatch
    , module Network.Google.Resource.Calendar.CalendarList.Patch

    -- ** CalendarCalendarListUpdate
    , module Network.Google.Resource.Calendar.CalendarList.Update

    -- ** CalendarCalendarListWatch
    , module Network.Google.Resource.Calendar.CalendarList.Watch

    -- ** CalendarCalendarsClear
    , module Network.Google.Resource.Calendar.Calendars.Clear

    -- ** CalendarCalendarsDelete
    , module Network.Google.Resource.Calendar.Calendars.Delete

    -- ** CalendarCalendarsGet
    , module Network.Google.Resource.Calendar.Calendars.Get

    -- ** CalendarCalendarsInsert
    , module Network.Google.Resource.Calendar.Calendars.Insert

    -- ** CalendarCalendarsPatch
    , module Network.Google.Resource.Calendar.Calendars.Patch

    -- ** CalendarCalendarsUpdate
    , module Network.Google.Resource.Calendar.Calendars.Update

    -- ** CalendarChannelsStop
    , module Network.Google.Resource.Calendar.Channels.Stop

    -- ** CalendarColorsGet
    , module Network.Google.Resource.Calendar.Colors.Get

    -- ** CalendarEventsDelete
    , module Network.Google.Resource.Calendar.Events.Delete

    -- ** CalendarEventsGet
    , module Network.Google.Resource.Calendar.Events.Get

    -- ** CalendarEventsImport
    , module Network.Google.Resource.Calendar.Events.Import

    -- ** CalendarEventsInsert
    , module Network.Google.Resource.Calendar.Events.Insert

    -- ** CalendarEventsInstances
    , module Network.Google.Resource.Calendar.Events.Instances

    -- ** CalendarEventsList
    , module Network.Google.Resource.Calendar.Events.List

    -- ** CalendarEventsMove
    , module Network.Google.Resource.Calendar.Events.Move

    -- ** CalendarEventsPatch
    , module Network.Google.Resource.Calendar.Events.Patch

    -- ** CalendarEventsQuickAdd
    , module Network.Google.Resource.Calendar.Events.QuickAdd

    -- ** CalendarEventsUpdate
    , module Network.Google.Resource.Calendar.Events.Update

    -- ** CalendarEventsWatch
    , module Network.Google.Resource.Calendar.Events.Watch

    -- ** CalendarFreeBusyQuery
    , module Network.Google.Resource.Calendar.FreeBusy.Query

    -- ** CalendarSettingsGet
    , module Network.Google.Resource.Calendar.Settings.Get

    -- ** CalendarSettingsList
    , module Network.Google.Resource.Calendar.Settings.List

    -- ** CalendarSettingsWatch
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

    -- ** EventReminders
    , EventReminders
    , eventReminders
    , erOverrides
    , erUseDefault

    -- ** ColorsCalendar
    , ColorsCalendar
    , colorsCalendar

    -- ** CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

    -- ** EventExtendedPropertiesPrivate
    , EventExtendedPropertiesPrivate
    , eventExtendedPropertiesPrivate

    -- ** ChannelParams
    , ChannelParams
    , channelParams

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

    -- ** CalendarListWatchMinAccessRole
    , CalendarListWatchMinAccessRole (..)

    -- ** FreeBusyResponseCalendars
    , FreeBusyResponseCalendars
    , freeBusyResponseCalendars

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

appsCalendarAPI :: Proxy AppsCalendarAPI
appsCalendarAPI = Proxy
