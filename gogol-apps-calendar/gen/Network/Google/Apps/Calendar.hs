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
    -- * Resources
      AppsCalendar
    , SettingsAPI
    , SettingsList
    , SettingsGet
    , SettingsWatch
    , ChannelsAPI
    , ChannelsStop
    , CalendarsAPI
    , CalendarsInsert
    , CalendarsPatch
    , CalendarsGet
    , CalendarsClear
    , CalendarsDelete
    , CalendarsUpdate
    , EventsAPI
    , EventsQuickAdd
    , EventsInsert
    , EventsList
    , EventsPatch
    , EventsGet
    , EventsInstances
    , EventsImport
    , EventsDelete
    , EventsUpdate
    , EventsMove
    , EventsWatch
    , CalendarListAPI
    , CalendarListInsert
    , CalendarListList
    , CalendarListPatch
    , CalendarListGet
    , CalendarListDelete
    , CalendarListUpdate
    , CalendarListWatch
    , AclAPI
    , AclInsert
    , AclList
    , AclPatch
    , AclGet
    , AclDelete
    , AclUpdate
    , AclWatch
    , ColorsAPI
    , ColorsGet
    , FreebusyAPI
    , FreebusyQuery

    -- * Types

    -- ** Acl
    , Acl
    , acl
    , aclEtag
    , aclNextPageToken
    , aclKind
    , aclItems
    , aclNextSyncToken

    -- ** AclRule
    , AclRule
    , aclRule
    , arEtag
    , arKind
    , arRole
    , arScope
    , arId

    -- ** AclRuleScope
    , AclRuleScope
    , aclRuleScope
    , arsValue
    , arsType

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

    -- ** CalendarList
    , CalendarList
    , calendarList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clNextSyncToken

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

    -- ** CalendarListEntryNotificationSettings
    , CalendarListEntryNotificationSettings
    , calendarListEntryNotificationSettings
    , clensNotifications

    -- ** CalendarNotification
    , CalendarNotification
    , calendarNotification
    , cnMethod
    , cnType

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

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** ColorDefinition
    , ColorDefinition
    , colorDefinition
    , cdForeground
    , cdBackground

    -- ** Colors
    , Colors
    , colors
    , colEvent
    , colKind
    , colCalendar
    , colUpdated

    -- ** ColorsCalendar
    , ColorsCalendar
    , colorsCalendar

    -- ** ColorsEvent
    , ColorsEvent
    , colorsEvent

    -- ** Error
    , Error
    , error'
    , eDomain
    , eReason

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

    -- ** EventAttachment
    , EventAttachment
    , eventAttachment
    , eaFileUrl
    , eaIconLink
    , eaMimeType
    , eaTitle
    , eaFileId

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

    -- ** EventCreator
    , EventCreator
    , eventCreator
    , ecEmail
    , ecSelf
    , ecDisplayName
    , ecId

    -- ** EventDateTime
    , EventDateTime
    , eventDateTime
    , edtDate
    , edtTimeZone
    , edtDateTime

    -- ** EventExtendedProperties
    , EventExtendedProperties
    , eventExtendedProperties
    , eepPrivate
    , eepShared

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

    -- ** EventOrganizer
    , EventOrganizer
    , eventOrganizer
    , eoEmail
    , eoSelf
    , eoDisplayName
    , eoId

    -- ** EventPreferencesGadget
    , EventPreferencesGadget
    , eventPreferencesGadget

    -- ** EventPrivateExtendedProperties
    , EventPrivateExtendedProperties
    , eventPrivateExtendedProperties

    -- ** EventReminder
    , EventReminder
    , eventReminder
    , erMethod
    , erMinutes

    -- ** EventReminders
    , EventReminders
    , eventReminders
    , erOverrides
    , erUseDefault

    -- ** EventSharedExtendedProperties
    , EventSharedExtendedProperties
    , eventSharedExtendedProperties

    -- ** EventSource
    , EventSource
    , eventSource
    , esUrl
    , esTitle

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

    -- ** FreeBusyRequest
    , FreeBusyRequest
    , freeBusyRequest
    , fbrCalendarExpansionMax
    , fbrTimeMin
    , fbrItems
    , fbrGroupExpansionMax
    , fbrTimeZone
    , fbrTimeMax

    -- ** FreeBusyRequestItem
    , FreeBusyRequestItem
    , freeBusyRequestItem
    , fbriId

    -- ** FreeBusyResponse
    , FreeBusyResponse
    , freeBusyResponse
    , fGroups
    , fTimeMin
    , fKind
    , fCalendars
    , fTimeMax

    -- ** FreeBusyResponseCalendars
    , FreeBusyResponseCalendars
    , freeBusyResponseCalendars

    -- ** FreeBusyResponseGroups
    , FreeBusyResponseGroups
    , freeBusyResponseGroups

    -- ** Setting
    , Setting
    , setting
    , sEtag
    , sKind
    , sValue
    , sId

    -- ** Settings
    , Settings
    , settings
    , setEtag
    , setNextPageToken
    , setKind
    , setItems
    , setNextSyncToken

    -- ** TimePeriod
    , TimePeriod
    , timePeriod
    , tpStart
    , tpEnd
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppsCalendar =
     SettingsAPI :<|> ChannelsAPI :<|> CalendarsAPI :<|>
       EventsAPI
       :<|> CalendarListAPI
       :<|> AclAPI
       :<|> ColorsAPI
       :<|> FreebusyAPI

type SettingsAPI =
     SettingsList :<|> SettingsGet :<|> SettingsWatch

-- | Returns all user settings for the authenticated user.
type SettingsList =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "settings" :>
               QueryParam "syncToken" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Natural :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Settings

-- | Returns a single user setting.
type SettingsGet =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "settings" :>
               Capture "setting" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Setting

-- | Watch for changes to Settings resources.
type SettingsWatch =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "settings" :>
               "watch" :>
                 QueryParam "syncToken" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Natural :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Post '[JSON] Channel

type ChannelsAPI = ChannelsStop

-- | Stop watching resources through this channel
type ChannelsStop =
     "calendar" :>
       "v3" :>
         "channels" :>
           "stop" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Post '[JSON] ()

type CalendarsAPI =
     CalendarsInsert :<|> CalendarsPatch :<|> CalendarsGet
       :<|> CalendarsClear
       :<|> CalendarsDelete
       :<|> CalendarsUpdate

-- | Creates a secondary calendar.
type CalendarsInsert =
     "calendar" :>
       "v3" :>
         "calendars" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :> Post '[JSON] Calendar

-- | Updates metadata for a calendar. This method supports patch semantics.
type CalendarsPatch =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Patch '[JSON] Calendar

-- | Returns metadata for a calendar.
type CalendarsGet =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] Calendar

-- | Clears a primary calendar. This operation deletes all events associated
-- with the primary calendar of an account.
type CalendarsClear =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "clear" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] ()

-- | Deletes a secondary calendar. Use calendars.clear for clearing all
-- events on primary calendars.
type CalendarsDelete =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates metadata for a calendar.
type CalendarsUpdate =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Put '[JSON] Calendar

type EventsAPI =
     EventsQuickAdd :<|> EventsInsert :<|> EventsList :<|>
       EventsPatch
       :<|> EventsGet
       :<|> EventsInstances
       :<|> EventsImport
       :<|> EventsDelete
       :<|> EventsUpdate
       :<|> EventsMove
       :<|> EventsWatch

-- | Creates an event based on a simple text string.
type EventsQuickAdd =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               "quickAdd" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "text" Text :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "sendNotifications" Bool :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Post '[JSON] Event

-- | Creates an event.
type EventsInsert =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "maxAttendees" Natural :>
                       QueryParam "key" Text :>
                         QueryParam "sendNotifications" Bool :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "supportsAttachments" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Post '[JSON] Event

-- | Returns events on the specified calendar.
type EventsList =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               QueryParam "syncToken" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "timeMin" UTCTime :>
                       QueryParam "orderBy" Text :>
                         QueryParam "singleEvents" Bool :>
                           QueryParam "privateExtendedProperty" Text :>
                             QueryParam "userIp" Text :>
                               QueryParam "showDeleted" Bool :>
                                 QueryParam "q" Text :>
                                   QueryParam "sharedExtendedProperty" Text :>
                                     QueryParam "maxAttendees" Natural :>
                                       QueryParam "key" Text :>
                                         QueryParam "iCalUID" Text :>
                                           QueryParam "updatedMin" UTCTime :>
                                             QueryParam "pageToken" Text :>
                                               QueryParam "timeZone" Text :>
                                                 QueryParam "oauth_token" Text
                                                   :>
                                                   QueryParam
                                                     "showHiddenInvitations"
                                                     Bool
                                                     :>
                                                     QueryParam "maxResults"
                                                       Natural
                                                       :>
                                                       QueryParam
                                                         "alwaysIncludeEmail"
                                                         Bool
                                                         :>
                                                         QueryParam "timeMax"
                                                           UTCTime
                                                           :>
                                                           QueryParam "fields"
                                                             Text
                                                             :>
                                                             QueryParam "alt"
                                                               Text
                                                               :>
                                                               Get '[JSON]
                                                                 Events

-- | Updates an event. This method supports patch semantics.
type EventsPatch =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "maxAttendees" Natural :>
                         QueryParam "key" Text :>
                           QueryParam "sendNotifications" Bool :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "supportsAttachments" Bool :>
                                 QueryParam "alwaysIncludeEmail" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Patch '[JSON] Event

-- | Returns an event.
type EventsGet =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "maxAttendees" Natural :>
                         QueryParam "key" Text :>
                           QueryParam "timeZone" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "alwaysIncludeEmail" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Get '[JSON] Event

-- | Returns instances of the specified recurring event.
type EventsInstances =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 "instances" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "timeMin" UTCTime :>
                         QueryParam "userIp" Text :>
                           QueryParam "showDeleted" Bool :>
                             QueryParam "originalStart" Text :>
                               QueryParam "maxAttendees" Natural :>
                                 QueryParam "key" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "timeZone" Text :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "maxResults" Natural :>
                                           QueryParam "alwaysIncludeEmail" Bool
                                             :>
                                             QueryParam "timeMax" UTCTime :>
                                               QueryParam "fields" Text :>
                                                 QueryParam "alt" Text :>
                                                   Get '[JSON] Events

-- | Imports an event. This operation is used to add a private copy of an
-- existing event to a calendar.
type EventsImport =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               "import" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "supportsAttachments" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Event

-- | Deletes an event.
type EventsDelete =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "sendNotifications" Bool :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates an event.
type EventsUpdate =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "maxAttendees" Natural :>
                         QueryParam "key" Text :>
                           QueryParam "sendNotifications" Bool :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "supportsAttachments" Bool :>
                                 QueryParam "alwaysIncludeEmail" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :> Put '[JSON] Event

-- | Moves an event to another calendar, i.e. changes an event\'s organizer.
type EventsMove =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               Capture "eventId" Text :>
                 "move" :>
                   QueryParam "destination" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "sendNotifications" Bool :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Post '[JSON] Event

-- | Watch for changes to Events resources.
type EventsWatch =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "events" :>
               "watch" :>
                 QueryParam "syncToken" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "timeMin" UTCTime :>
                         QueryParam "orderBy" Text :>
                           QueryParam "singleEvents" Bool :>
                             QueryParam "privateExtendedProperty" Text :>
                               QueryParam "userIp" Text :>
                                 QueryParam "showDeleted" Bool :>
                                   QueryParam "q" Text :>
                                     QueryParam "sharedExtendedProperty" Text :>
                                       QueryParam "maxAttendees" Natural :>
                                         QueryParam "key" Text :>
                                           QueryParam "iCalUID" Text :>
                                             QueryParam "updatedMin" UTCTime :>
                                               QueryParam "pageToken" Text :>
                                                 QueryParam "timeZone" Text :>
                                                   QueryParam "oauth_token" Text
                                                     :>
                                                     QueryParam
                                                       "showHiddenInvitations"
                                                       Bool
                                                       :>
                                                       QueryParam "maxResults"
                                                         Natural
                                                         :>
                                                         QueryParam
                                                           "alwaysIncludeEmail"
                                                           Bool
                                                           :>
                                                           QueryParam "timeMax"
                                                             UTCTime
                                                             :>
                                                             QueryParam "fields"
                                                               Text
                                                               :>
                                                               QueryParam "alt"
                                                                 Text
                                                                 :>
                                                                 Post '[JSON]
                                                                   Channel

type CalendarListAPI =
     CalendarListInsert :<|> CalendarListList :<|>
       CalendarListPatch
       :<|> CalendarListGet
       :<|> CalendarListDelete
       :<|> CalendarListUpdate
       :<|> CalendarListWatch

-- | Adds an entry to the user\'s calendar list.
type CalendarListInsert =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "colorRgbFormat" Bool :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Post '[JSON] CalendarListEntry

-- | Returns entries on the user\'s calendar list.
type CalendarListList =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               QueryParam "syncToken" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "minAccessRole" Text :>
                       QueryParam "userIp" Text :>
                         QueryParam "showDeleted" Bool :>
                           QueryParam "showHidden" Bool :>
                             QueryParam "key" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "maxResults" Natural :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" Text :>
                                         Get '[JSON] CalendarList

-- | Updates an entry on the user\'s calendar list. This method supports
-- patch semantics.
type CalendarListPatch =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               Capture "calendarId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "colorRgbFormat" Bool :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Patch '[JSON] CalendarListEntry

-- | Returns an entry on the user\'s calendar list.
type CalendarListGet =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               Capture "calendarId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Get '[JSON] CalendarListEntry

-- | Deletes an entry on the user\'s calendar list.
type CalendarListDelete =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               Capture "calendarId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates an entry on the user\'s calendar list.
type CalendarListUpdate =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               Capture "calendarId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "colorRgbFormat" Bool :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Put '[JSON] CalendarListEntry

-- | Watch for changes to CalendarList resources.
type CalendarListWatch =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               "watch" :>
                 QueryParam "syncToken" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "minAccessRole" Text :>
                         QueryParam "userIp" Text :>
                           QueryParam "showDeleted" Bool :>
                             QueryParam "showHidden" Bool :>
                               QueryParam "key" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "maxResults" Natural :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Text :>
                                           Post '[JSON] Channel

type AclAPI =
     AclInsert :<|> AclList :<|> AclPatch :<|> AclGet :<|>
       AclDelete
       :<|> AclUpdate
       :<|> AclWatch

-- | Creates an access control rule.
type AclInsert =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] AclRule

-- | Returns the rules in the access control list for the calendar.
type AclList =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               QueryParam "syncToken" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "showDeleted" Bool :>
                         QueryParam "key" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Natural :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Get '[JSON] Acl

-- | Updates an access control rule. This method supports patch semantics.
type AclPatch =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               Capture "ruleId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Patch '[JSON] AclRule

-- | Returns an access control rule.
type AclGet =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               Capture "ruleId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] AclRule

-- | Deletes an access control rule.
type AclDelete =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               Capture "ruleId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates an access control rule.
type AclUpdate =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               Capture "ruleId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Put '[JSON] AclRule

-- | Watch for changes to ACL resources.
type AclWatch =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               "watch" :>
                 QueryParam "syncToken" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "showDeleted" Bool :>
                           QueryParam "key" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Natural :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] Channel

type ColorsAPI = ColorsGet

-- | Returns the color definitions for calendars and events.
type ColorsGet =
     "calendar" :>
       "v3" :>
         "colors" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :> Get '[JSON] Colors

type FreebusyAPI = FreebusyQuery

-- | Returns free\/busy information for a set of calendars.
type FreebusyQuery =
     "calendar" :>
       "v3" :>
         "freeBusy" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :>
                         Post '[JSON] FreeBusyResponse
