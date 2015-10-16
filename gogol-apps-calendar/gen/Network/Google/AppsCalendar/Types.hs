{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsCalendar.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsCalendar.Types
    (
    -- * Service Configuration
      appsCalendarService

    -- * OAuth Scopes
    , calendarScope
    , calendarReadonlyScope

    -- * CalendarListEntry
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

    -- * Event
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

    -- * CalendarListEntryNotificationSettings
    , CalendarListEntryNotificationSettings
    , calendarListEntryNotificationSettings
    , clensNotifications

    -- * ACLRuleScope
    , ACLRuleScope
    , aclRuleScope
    , arsValue
    , arsType

    -- * ColorsEvent
    , ColorsEvent
    , colorsEvent
    , ceAddtional

    -- * Settings
    , Settings
    , settings
    , sEtag
    , sNextPageToken
    , sKind
    , sItems
    , sNextSyncToken

    -- * FreeBusyRequestItem
    , FreeBusyRequestItem
    , freeBusyRequestItem
    , fbriId

    -- * EventAttachment
    , EventAttachment
    , eventAttachment
    , eaFileURL
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

    -- * TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd

    -- * EventCreator
    , EventCreator
    , eventCreator
    , ecEmail
    , ecSelf
    , ecDisplayName
    , ecId

    -- * Error'
    , Error'
    , error'
    , eDomain
    , eReason

    -- * ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForegRound
    , cdBackgRound

    -- * EventsListOrderBy
    , EventsListOrderBy (..)

    -- * Channel
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

    -- * FreeBusyCalendar
    , FreeBusyCalendar
    , freeBusyCalendar
    , fbcBusy
    , fbcErrors

    -- * Setting
    , Setting
    , setting
    , setEtag
    , setKind
    , setValue
    , setId

    -- * FreeBusyResponseGroups
    , FreeBusyResponseGroups
    , freeBusyResponseGroups
    , fbrgAddtional

    -- * EventReminders
    , EventReminders
    , eventReminders
    , erOverrides
    , erUseDefault

    -- * ColorsCalendar
    , ColorsCalendar
    , colorsCalendar
    , ccAddtional

    -- * CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

    -- * EventExtendedPropertiesPrivate
    , EventExtendedPropertiesPrivate
    , eventExtendedPropertiesPrivate
    , eeppAddtional

    -- * ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- * Events
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

    -- * EventAttendee
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

    -- * Calendar
    , Calendar
    , calendar
    , calSummary
    , calEtag
    , calLocation
    , calKind
    , calId
    , calTimeZone
    , calDescription

    -- * FreeBusyResponse
    , FreeBusyResponse
    , freeBusyResponse
    , fbrGroups
    , fbrTimeMin
    , fbrKind
    , fbrCalendars
    , fbrTimeMax

    -- * EventReminder
    , EventReminder
    , eventReminder
    , erMethod
    , erMinutes

    -- * EventExtendedProperties
    , EventExtendedProperties
    , eventExtendedProperties
    , eepPrivate
    , eepShared

    -- * EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

    -- * EventOrganizer
    , EventOrganizer
    , eventOrganizer
    , eoEmail
    , eoSelf
    , eoDisplayName
    , eoId

    -- * CalendarList
    , CalendarList
    , calendarList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clNextSyncToken

    -- * CalendarListListMinAccessRole
    , CalendarListListMinAccessRole (..)

    -- * EventGadget
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

    -- * EventGadgetPreferences
    , EventGadgetPreferences
    , eventGadgetPreferences
    , egpAddtional

    -- * FreeBusyRequest
    , FreeBusyRequest
    , freeBusyRequest
    , fCalendarExpansionMax
    , fTimeMin
    , fItems
    , fGroupExpansionMax
    , fTimeZone
    , fTimeMax

    -- * ACLRule
    , ACLRule
    , aclRule
    , arEtag
    , arKind
    , arRole
    , arScope
    , arId

    -- * EventsWatchOrderBy
    , EventsWatchOrderBy (..)

    -- * EventExtendedPropertiesShared
    , EventExtendedPropertiesShared
    , eventExtendedPropertiesShared
    , eepsAddtional

    -- * CalendarListWatchMinAccessRole
    , CalendarListWatchMinAccessRole (..)

    -- * FreeBusyResponseCalendars
    , FreeBusyResponseCalendars
    , freeBusyResponseCalendars
    , fbrcAddtional

    -- * ACL
    , ACL
    , acl
    , aEtag
    , aNextPageToken
    , aKind
    , aItems
    , aNextSyncToken

    -- * Colors
    , Colors
    , colors
    , colEvent
    , colKind
    , colCalendar
    , colUpdated

    -- * FreeBusyGroup
    , FreeBusyGroup
    , freeBusyGroup
    , fbgCalendars
    , fbgErrors

    -- * EventSource
    , EventSource
    , eventSource
    , esURL
    , esTitle
    ) where

import           Network.Google.AppsCalendar.Types.Product
import           Network.Google.AppsCalendar.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v3' of the Calendar API. This contains the host and root path used as a starting point for constructing service requests.
appsCalendarService :: Service
appsCalendarService
  = defaultService (ServiceId "calendar:v3")
      "www.googleapis.com"
      "calendar/v3/"

-- | Manage your calendars
calendarScope :: OAuthScope
calendarScope = "https://www.googleapis.com/auth/calendar";

-- | View your calendars
calendarReadonlyScope :: OAuthScope
calendarReadonlyScope = "https://www.googleapis.com/auth/calendar.readonly";
