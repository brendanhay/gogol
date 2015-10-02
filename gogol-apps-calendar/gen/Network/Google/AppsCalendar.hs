{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | Lets you manipulate events and other calendar data.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference>
module Network.Google.AppsCalendar
    (
    -- * API
      AppsCalendarAPI
    , appsCalendarAPI
    , appsCalendarURL

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

    -- ** CalendarListEntryNotificationSettings
    , CalendarListEntryNotificationSettings
    , calendarListEntryNotificationSettings
    , clensNotifications

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

    -- ** CalendarCalendarListListMinAccessRole
    , CalendarCalendarListListMinAccessRole (..)

    -- ** ACLRuleScope
    , ACLRuleScope
    , aCLRuleScope
    , arsValue
    , arsType

    -- ** ColorsEvent
    , ColorsEvent
    , colorsEvent

    -- ** FreeBusyRequestItem
    , FreeBusyRequestItem
    , freeBusyRequestItem
    , fbriId

    -- ** Settings
    , Settings
    , settings
    , sEtag
    , sNextPageToken
    , sKind
    , sItems
    , sNextSyncToken

    -- ** EventAttachment
    , EventAttachment
    , eventAttachment
    , eaFileURL
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

    -- ** EventCreator
    , EventCreator
    , eventCreator
    , ecEmail
    , ecSelf
    , ecDisplayName
    , ecId

    -- ** TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd

    -- ** ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForegRound
    , cdBackgRound

    -- ** Error
    , Error
    , error'
    , eDomain
    , eReason

    -- ** FreeBusyCalendar
    , FreeBusyCalendar
    , freeBusyCalendar
    , fbcBusy
    , fbcErrors

    -- ** Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayLoad
    , cParams
    , cId
    , cType

    -- ** FreeBusyResponseGroups
    , FreeBusyResponseGroups
    , freeBusyResponseGroups

    -- ** Setting
    , Setting
    , setting
    , setEtag
    , setKind
    , setValue
    , setId

    -- ** CalendarCalendarListWatchMinAccessRole
    , CalendarCalendarListWatchMinAccessRole (..)

    -- ** EventReminders
    , EventReminders
    , eventReminders
    , erOverrides
    , erUseDefault

    -- ** CalendarEventsWatchOrderBy
    , CalendarEventsWatchOrderBy (..)

    -- ** ColorsCalendar
    , ColorsCalendar
    , colorsCalendar

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

    -- ** EventExtendedPropertiesPrivate
    , EventExtendedPropertiesPrivate
    , eventExtendedPropertiesPrivate

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

    -- ** CalendarEventsListOrderBy
    , CalendarEventsListOrderBy (..)

    -- ** EventReminder
    , EventReminder
    , eventReminder
    , erMethod
    , erMinutes

    -- ** FreeBusyResponse
    , FreeBusyResponse
    , freeBusyResponse
    , fbrGroups
    , fbrTimeMin
    , fbrKind
    , fbrCalendars
    , fbrTimeMax

    -- ** EventExtendedProperties
    , EventExtendedProperties
    , eventExtendedProperties
    , eepPrivate
    , eepShared

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

    -- ** EventOrganizer
    , EventOrganizer
    , eventOrganizer
    , eoEmail
    , eoSelf
    , eoDisplayName
    , eoId

    -- ** EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

    -- ** EventGadgetPreferences
    , EventGadgetPreferences
    , eventGadgetPreferences

    -- ** CalendarList
    , CalendarList
    , calendarList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clNextSyncToken

    -- ** FreeBusyRequest
    , FreeBusyRequest
    , freeBusyRequest
    , fCalendarExpansionMax
    , fTimeMin
    , fItems
    , fGroupExpansionMax
    , fTimeZone
    , fTimeMax

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

    -- ** ACLRule
    , ACLRule
    , aCLRule
    , arEtag
    , arKind
    , arRole
    , arScope
    , arId

    -- ** FreeBusyResponseCalendars
    , FreeBusyResponseCalendars
    , freeBusyResponseCalendars

    -- ** EventExtendedPropertiesShared
    , EventExtendedPropertiesShared
    , eventExtendedPropertiesShared

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

    -- ** ACL
    , ACL
    , aCL
    , aclEtag
    , aclNextPageToken
    , aclKind
    , aclItems
    , aclNextSyncToken

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
       :<|> AclInsertResource
       :<|> AclListResource
       :<|> AclPatchResource
       :<|> AclGetResource
       :<|> AclDeleteResource
       :<|> AclUpdateResource
       :<|> AclWatchResource
       :<|> ColorsGetResource
       :<|> FreeBusyQueryResource

appsCalendarAPI :: Proxy AppsCalendarAPI
appsCalendarAPI = Proxy
