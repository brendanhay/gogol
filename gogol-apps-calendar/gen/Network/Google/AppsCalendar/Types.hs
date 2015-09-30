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

    -- * CalendarListEntryNotificationSettings
    , CalendarListEntryNotificationSettings
    , calendarListEntryNotificationSettings
    , clensNotifications

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

    -- * CalendarCalendarListListMinAccessRole
    , CalendarCalendarListListMinAccessRole (..)

    -- * ACLRuleScope
    , ACLRuleScope
    , aCLRuleScope
    , arsValue
    , arsType

    -- * ColorsEvent
    , ColorsEvent
    , colorsEvent

    -- * FreeBusyRequestItem
    , FreeBusyRequestItem
    , freeBusyRequestItem
    , fbriId

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
    , eaFileUrl
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

    -- * EventCreator
    , EventCreator
    , eventCreator
    , ecEmail
    , ecSelf
    , ecDisplayName
    , ecId

    -- * TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd

    -- * ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForeground
    , cdBackground

    -- * Error
    , Error
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

    -- * FreeBusyResponseGroups
    , FreeBusyResponseGroups
    , freeBusyResponseGroups

    -- * Setting
    , Setting
    , setting
    , setEtag
    , setKind
    , setValue
    , setId

    -- * CalendarCalendarListWatchMinAccessRole
    , CalendarCalendarListWatchMinAccessRole (..)

    -- * EventReminders
    , EventReminders
    , eventReminders
    , erOverrides
    , erUseDefault

    -- * CalendarEventsWatchOrderBy
    , CalendarEventsWatchOrderBy (..)

    -- * ColorsCalendar
    , ColorsCalendar
    , colorsCalendar

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

    -- * EventExtendedPropertiesPrivate
    , EventExtendedPropertiesPrivate
    , eventExtendedPropertiesPrivate

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

    -- * CalendarEventsListOrderBy
    , CalendarEventsListOrderBy (..)

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

    -- * EventExtendedProperties
    , EventExtendedProperties
    , eventExtendedProperties
    , eepPrivate
    , eepShared

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

    -- * EventOrganizer
    , EventOrganizer
    , eventOrganizer
    , eoEmail
    , eoSelf
    , eoDisplayName
    , eoId

    -- * EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

    -- * EventGadgetPreferences
    , EventGadgetPreferences
    , eventGadgetPreferences

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

    -- * ACLRule
    , ACLRule
    , aCLRule
    , arEtag
    , arKind
    , arRole
    , arScope
    , arId

    -- * FreeBusyResponseCalendars
    , FreeBusyResponseCalendars
    , freeBusyResponseCalendars

    -- * EventExtendedPropertiesShared
    , EventExtendedPropertiesShared
    , eventExtendedPropertiesShared

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

    -- * ACL
    , ACL
    , aCL
    , aclEtag
    , aclNextPageToken
    , aclKind
    , aclItems
    , aclNextSyncToken

    -- * EventSource
    , EventSource
    , eventSource
    , esUrl
    , esTitle

    -- * Alt
    , Alt (..)
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
