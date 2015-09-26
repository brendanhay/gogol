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

    -- * Acl
      Acl
    , acl
    , aclEtag
    , aclNextPageToken
    , aclKind
    , aclItems
    , aclNextSyncToken

    -- * AclRule
    , AclRule
    , aclRule
    , arEtag
    , arKind
    , arRole
    , arScope
    , arId

    -- * AclRuleScope
    , AclRuleScope
    , aclRuleScope
    , arsValue
    , arsType

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

    -- * CalendarList
    , CalendarList
    , calendarList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clNextSyncToken

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

    -- * CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

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

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForeground
    , cdBackground

    -- * Colors
    , Colors
    , colors
    , colEvent
    , colKind
    , colCalendar
    , colUpdated

    -- * ColorsCalendar
    , ColorsCalendar
    , colorsCalendar

    -- * ColorsEvent
    , ColorsEvent
    , colorsEvent

    -- * Error
    , Error
    , error'
    , eDomain
    , eReason

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

    -- * EventAttachment
    , EventAttachment
    , eventAttachment
    , eaFileUrl
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

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

    -- * EventCreator
    , EventCreator
    , eventCreator
    , ecEmail
    , ecSelf
    , ecDisplayName
    , ecId

    -- * EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

    -- * EventExtendedProperties
    , EventExtendedProperties
    , eventExtendedProperties
    , eepPrivate
    , eepShared

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

    -- * EventOrganizer
    , EventOrganizer
    , eventOrganizer
    , eoEmail
    , eoSelf
    , eoDisplayName
    , eoId

    -- * EventPreferencesGadget
    , EventPreferencesGadget
    , eventPreferencesGadget

    -- * EventPrivateExtendedProperties
    , EventPrivateExtendedProperties
    , eventPrivateExtendedProperties

    -- * EventReminder
    , EventReminder
    , eventReminder
    , erMethod
    , erMinutes

    -- * EventReminders
    , EventReminders
    , eventReminders
    , erOverrides
    , erUseDefault

    -- * EventSharedExtendedProperties
    , EventSharedExtendedProperties
    , eventSharedExtendedProperties

    -- * EventSource
    , EventSource
    , eventSource
    , esUrl
    , esTitle

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

    -- * FreeBusyRequest
    , FreeBusyRequest
    , freeBusyRequest
    , fbrCalendarExpansionMax
    , fbrTimeMin
    , fbrItems
    , fbrGroupExpansionMax
    , fbrTimeZone
    , fbrTimeMax

    -- * FreeBusyRequestItem
    , FreeBusyRequestItem
    , freeBusyRequestItem
    , fbriId

    -- * FreeBusyResponse
    , FreeBusyResponse
    , freeBusyResponse
    , fGroups
    , fTimeMin
    , fKind
    , fCalendars
    , fTimeMax

    -- * FreeBusyResponseCalendars
    , FreeBusyResponseCalendars
    , freeBusyResponseCalendars

    -- * FreeBusyResponseGroups
    , FreeBusyResponseGroups
    , freeBusyResponseGroups

    -- * Setting
    , Setting
    , setting
    , sEtag
    , sKind
    , sValue
    , sId

    -- * Settings
    , Settings
    , settings
    , setEtag
    , setNextPageToken
    , setKind
    , setItems
    , setNextSyncToken

    -- * TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd
    ) where

import           Network.Google.Apps.Calendar.Types.Product
import           Network.Google.Apps.Calendar.Types.Sum
import           Network.Google.Prelude
