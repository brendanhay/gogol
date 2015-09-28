{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Apps.Calendar.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Apps.Calendar.Types
    (
    -- * Service URL
      appsCalendarURL

    -- * EventPrivateExtendedProperties
    , EventPrivateExtendedProperties
    , eventPrivateExtendedProperties

    -- * EventsWatch'OrderBy
    , EventsWatch'OrderBy (..)

    -- * ColorsCalendar
    , ColorsCalendar
    , colorsCalendar

    -- * CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

    -- * CalendarListEntryNotificationSettings
    , CalendarListEntryNotificationSettings
    , calendarListEntryNotificationSettings
    , clensNotifications

    -- * Events
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

    -- * EventReminders
    , EventReminders
    , eventReminders
    , erOverrides
    , erUseDefault

    -- * EventSource
    , EventSource
    , eventSource
    , esUrl
    , esTitle

    -- * Alt
    , Alt (..)

    -- * FreeBusyResponseGroups
    , FreeBusyResponseGroups
    , freeBusyResponseGroups

    -- * EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

    -- * FreeBusyRequest
    , FreeBusyRequest
    , freeBusyRequest
    , fbrCalendarExpansionMax
    , fbrTimeMin
    , fbrItems
    , fbrGroupExpansionMax
    , fbrTimeZone
    , fbrTimeMax

    -- * CalendarList
    , CalendarList
    , calendarList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clNextSyncToken

    -- * AclRule
    , AclRule
    , aclRule
    , arEtag
    , arKind
    , arRole
    , arScope
    , arId

    -- * EventPreferencesGadget
    , EventPreferencesGadget
    , eventPreferencesGadget

    -- * Setting
    , Setting
    , setting
    , sEtag
    , sKind
    , sValue
    , sId

    -- * EventOrganizer
    , EventOrganizer
    , eventOrganizer
    , eoEmail
    , eoSelf
    , eoDisplayName
    , eoId

    -- * ColorsEvent
    , ColorsEvent
    , colorsEvent

    -- * Event
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

    -- * CalendarListList'MinAccessRole
    , CalendarListList'MinAccessRole (..)

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * EventsList'OrderBy
    , EventsList'OrderBy (..)

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

    -- * CalendarListWatch'MinAccessRole
    , CalendarListWatch'MinAccessRole (..)

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

    -- * EventReminder
    , EventReminder
    , eventReminder
    , erMethod
    , erMinutes

    -- * Calendar
    , Calendar
    , calendar
    , cSummary
    , cEtag
    , cLocation
    , cKind
    , cId
    , cTimeZone
    , cDescription

    -- * FreeBusyResponse
    , FreeBusyResponse
    , freeBusyResponse
    , fGroups
    , fTimeMin
    , fKind
    , fCalendars
    , fTimeMax

    -- * Settings
    , Settings
    , settings
    , setEtag
    , setNextPageToken
    , setKind
    , setItems
    , setNextSyncToken

    -- * EventAttachment
    , EventAttachment
    , eventAttachment
    , eaFileUrl
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

    -- * FreeBusyRequestItem
    , FreeBusyRequestItem
    , freeBusyRequestItem
    , fbriId

    -- * ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForeground
    , cdBackground

    -- * FreeBusyResponseCalendars
    , FreeBusyResponseCalendars
    , freeBusyResponseCalendars

    -- * TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd

    -- * Error'
    , Error'
    , error'
    , eDomain
    , eReason

    -- * EventSharedExtendedProperties
    , EventSharedExtendedProperties
    , eventSharedExtendedProperties

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

    -- * Channel
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

    -- * EventCreator
    , EventCreator
    , eventCreator
    , ecEmail
    , ecSelf
    , ecDisplayName
    , ecId

    -- * FreeBusyCalendar
    , FreeBusyCalendar
    , freeBusyCalendar
    , fbcBusy
    , fbcErrors

    -- * FreeBusyGroup
    , FreeBusyGroup
    , freeBusyGroup
    , fbgCalendars
    , fbgErrors

    -- * Colors
    , Colors
    , colors
    , colEvent
    , colKind
    , colCalendar
    , colUpdated

    -- * Acl
    , Acl
    , acl
    , aclEtag
    , aclNextPageToken
    , aclKind
    , aclItems
    , aclNextSyncToken

    -- * EventExtendedProperties
    , EventExtendedProperties
    , eventExtendedProperties
    , eepPrivate
    , eepShared

    -- * AclRuleScope
    , AclRuleScope
    , aclRuleScope
    , arsValue
    , arsType
    ) where

import           Network.Google.Apps.Calendar.Types.Product
import           Network.Google.Apps.Calendar.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v3' of the Calendar API.
appsCalendarURL :: BaseUrl
appsCalendarURL
  = BaseUrl Https
      "https://www.googleapis.com/calendar/v3/"
      443
