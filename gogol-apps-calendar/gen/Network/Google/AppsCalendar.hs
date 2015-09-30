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
    , module Calendar.ACL.Delete

    -- ** CalendarACLGet
    , module Calendar.ACL.Get

    -- ** CalendarACLInsert
    , module Calendar.ACL.Insert

    -- ** CalendarACLList
    , module Calendar.ACL.List

    -- ** CalendarACLPatch
    , module Calendar.ACL.Patch

    -- ** CalendarACLUpdate
    , module Calendar.ACL.Update

    -- ** CalendarACLWatch
    , module Calendar.ACL.Watch

    -- ** CalendarCalendarListDelete
    , module Calendar.CalendarList.Delete

    -- ** CalendarCalendarListGet
    , module Calendar.CalendarList.Get

    -- ** CalendarCalendarListInsert
    , module Calendar.CalendarList.Insert

    -- ** CalendarCalendarListList
    , module Calendar.CalendarList.List

    -- ** CalendarCalendarListPatch
    , module Calendar.CalendarList.Patch

    -- ** CalendarCalendarListUpdate
    , module Calendar.CalendarList.Update

    -- ** CalendarCalendarListWatch
    , module Calendar.CalendarList.Watch

    -- ** CalendarCalendarsClear
    , module Calendar.Calendars.Clear

    -- ** CalendarCalendarsDelete
    , module Calendar.Calendars.Delete

    -- ** CalendarCalendarsGet
    , module Calendar.Calendars.Get

    -- ** CalendarCalendarsInsert
    , module Calendar.Calendars.Insert

    -- ** CalendarCalendarsPatch
    , module Calendar.Calendars.Patch

    -- ** CalendarCalendarsUpdate
    , module Calendar.Calendars.Update

    -- ** CalendarChannelsStop
    , module Calendar.Channels.Stop

    -- ** CalendarColorsGet
    , module Calendar.Colors.Get

    -- ** CalendarEventsDelete
    , module Calendar.Events.Delete

    -- ** CalendarEventsGet
    , module Calendar.Events.Get

    -- ** CalendarEventsImport
    , module Calendar.Events.Import

    -- ** CalendarEventsInsert
    , module Calendar.Events.Insert

    -- ** CalendarEventsInstances
    , module Calendar.Events.Instances

    -- ** CalendarEventsList
    , module Calendar.Events.List

    -- ** CalendarEventsMove
    , module Calendar.Events.Move

    -- ** CalendarEventsPatch
    , module Calendar.Events.Patch

    -- ** CalendarEventsQuickAdd
    , module Calendar.Events.QuickAdd

    -- ** CalendarEventsUpdate
    , module Calendar.Events.Update

    -- ** CalendarEventsWatch
    , module Calendar.Events.Watch

    -- ** CalendarFreebusyQuery
    , module Calendar.Freebusy.Query

    -- ** CalendarSettingsGet
    , module Calendar.Settings.Get

    -- ** CalendarSettingsList
    , module Calendar.Settings.List

    -- ** CalendarSettingsWatch
    , module Calendar.Settings.Watch

    -- * Types

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
    , eICalUID
    , eEnd
    , eAttendeesOmitted
    , eSource
    , eId
    , eHtmlLink
    , eUpdated
    , eColorId
    , eAnyoneCanAddSelf
    , eGuestsCanSeeOtherGuests
    , eHangoutLink
    , eDescription
    , eOrganizer

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
    , eaFileUrl
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

    -- ** TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd

    -- ** ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForeground
    , cdBackground

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
    , cResourceUri
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- ** Setting
    , Setting
    , setting
    , setEtag
    , setKind
    , setValue
    , setId

    -- ** CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

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

    -- ** EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

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

    -- ** ACLRule
    , ACLRule
    , aCLRule
    , arEtag
    , arKind
    , arRole
    , arScope
    , arId

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
import           Network.Google.Resource.Calendar.Freebusy.Query
import           Network.Google.Resource.Calendar.Settings.Get
import           Network.Google.Resource.Calendar.Settings.List
import           Network.Google.Resource.Calendar.Settings.Watch

{- $resources
TODO
-}

type AppsCalendarAPI =
     Settings :<|> Channels :<|> Calendars :<|> Events
       :<|> CalendarList
       :<|> ACL
       :<|> Colors
       :<|> Freebusy

appsCalendarAPI :: Proxy AppsCalendarAPI
appsCalendarAPI = Proxy
