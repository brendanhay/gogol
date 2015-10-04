{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      appsCalendarURL

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

    -- * Creator
    , Creator
    , creator
    , cEmail
    , cSelf
    , cDisplayName
    , cId

    -- * Groups
    , Groups
    , groups

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

    -- * MinAccessRole
    , MinAccessRole (..)

    -- * FreeBusyRequestItem
    , FreeBusyRequestItem
    , freeBusyRequestItem
    , fbriId

    -- * OrderBy
    , OrderBy (..)

    -- * Settings
    , Settings
    , settings
    , sEtag
    , sNextPageToken
    , sKind
    , sItems
    , sNextSyncToken

    -- * EventAttachment
    , EventAttachment
    , eventAttachment
    , eaFileURL
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

    -- * Private
    , Private
    , private

    -- * Reminders
    , Reminders
    , reminders
    , rOverrides
    , rUseDefault

    -- * Preferences
    , Preferences
    , preferences

    -- * TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd

    -- * NotificationSettings
    , NotificationSettings
    , notificationSettings
    , nsNotifications

    -- * ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForegRound
    , cdBackgRound

    -- * Error'
    , Error'
    , error'
    , eDomain
    , eReason

    -- * FreeBusyCalendar
    , FreeBusyCalendar
    , freeBusyCalendar
    , fbcBusy
    , fbcErrors

    -- * Channel
    , Channel
    , channel
    , chaResourceURI
    , chaResourceId
    , chaKind
    , chaExpiration
    , chaToken
    , chaAddress
    , chaPayload
    , chaParams
    , chaId
    , chaType

    -- * ExtendedProperties
    , ExtendedProperties
    , extendedProperties
    , epPrivate
    , epShared

    -- * Setting
    , Setting
    , setting
    , setEtag
    , setKind
    , setValue
    , setId

    -- * CalendarCalendarListWatchMinAccessRole
    , CalendarCalendarListWatchMinAccessRole (..)

    -- * CalendarEventsWatchOrderBy
    , CalendarEventsWatchOrderBy (..)

    -- * Calendars
    , Calendars
    , calendars

    -- * Shared
    , Shared
    , shared

    -- * Params
    , Params
    , params

    -- * Gadget
    , Gadget
    , gadget
    , gHeight
    , gDisplay
    , gPreferences
    , gLink
    , gIconLink
    , gWidth
    , gTitle
    , gType

    -- * CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

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

    -- * Scope
    , Scope
    , scope
    , sValue
    , sType

    -- * Calendar
    , Calendar
    , calendar

    -- * EventReminder
    , EventReminder
    , eventReminder
    , erMethod
    , erMinutes

    -- * FreeBusyResponse
    , FreeBusyResponse
    , freeBusyResponse
    , fbrGroups
    , fbrTimeMin
    , fbrKind
    , fbrCalendars
    , fbrTimeMax

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

    -- * Source
    , Source
    , source
    , sURL
    , sTitle

    -- * EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

    -- * CalendarList
    , CalendarList
    , calendarList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clNextSyncToken

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

    -- * Colors
    , Colors
    , colors
    , cEvent
    , cKind
    , cCalendar
    , cUpdated

    -- * FreeBusyGroup
    , FreeBusyGroup
    , freeBusyGroup
    , fbgCalendars
    , fbgErrors

    -- * ACL
    , ACL
    , acl
    , aEtag
    , aNextPageToken
    , aKind
    , aItems
    , aNextSyncToken

    -- * Organizer
    , Organizer
    , organizer
    , oEmail
    , oSelf
    , oDisplayName
    , oId
    ) where

import           Network.Google.AppsCalendar.Types.Product
import           Network.Google.AppsCalendar.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v3' of the Calendar API.
appsCalendarURL :: BaseUrl
appsCalendarURL
  = BaseUrl Https
      "https://www.googleapis.com/calendar/v3/"
      443
