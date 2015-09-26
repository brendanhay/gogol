{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Calendar.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Calendar.Types.Product where

import           Network.Google.Calendar.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'acl' smart constructor.
data Acl = Acl
    { _aclEtag          :: !(Maybe Text)
    , _aclNextPageToken :: !(Maybe Text)
    , _aclKind          :: !Text
    , _aclItems         :: !(Maybe [Maybe AclRule])
    , _aclNextSyncToken :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Acl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclEtag'
--
-- * 'aclNextPageToken'
--
-- * 'aclKind'
--
-- * 'aclItems'
--
-- * 'aclNextSyncToken'
acl
    :: Acl
acl =
    Acl
    { _aclEtag = Nothing
    , _aclNextPageToken = Nothing
    , _aclKind = "calendar#acl"
    , _aclItems = Nothing
    , _aclNextSyncToken = Nothing
    }

-- | ETag of the collection.
aclEtag :: Lens' Acl (Maybe Text)
aclEtag = lens _aclEtag (\ s a -> s{_aclEtag = a})

-- | Token used to access the next page of this result. Omitted if no further
-- results are available, in which case nextSyncToken is provided.
aclNextPageToken :: Lens' Acl (Maybe Text)
aclNextPageToken
  = lens _aclNextPageToken
      (\ s a -> s{_aclNextPageToken = a})

-- | Type of the collection (\"calendar#acl\").
aclKind :: Lens' Acl Text
aclKind = lens _aclKind (\ s a -> s{_aclKind = a})

-- | List of rules on the access control list.
aclItems :: Lens' Acl [Maybe AclRule]
aclItems
  = lens _aclItems (\ s a -> s{_aclItems = a}) .
      _Default
      . _Coerce

-- | Token used at a later point in time to retrieve only the entries that
-- have changed since this result was returned. Omitted if further results
-- are available, in which case nextPageToken is provided.
aclNextSyncToken :: Lens' Acl (Maybe Text)
aclNextSyncToken
  = lens _aclNextSyncToken
      (\ s a -> s{_aclNextSyncToken = a})

--
-- /See:/ 'aclRule' smart constructor.
data AclRule = AclRule
    { _arEtag  :: !(Maybe Text)
    , _arKind  :: !Text
    , _arRole  :: !(Maybe Text)
    , _arScope :: !(Maybe AclRuleScope)
    , _arId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AclRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arEtag'
--
-- * 'arKind'
--
-- * 'arRole'
--
-- * 'arScope'
--
-- * 'arId'
aclRule
    :: AclRule
aclRule =
    AclRule
    { _arEtag = Nothing
    , _arKind = "calendar#aclRule"
    , _arRole = Nothing
    , _arScope = Nothing
    , _arId = Nothing
    }

-- | ETag of the resource.
arEtag :: Lens' AclRule (Maybe Text)
arEtag = lens _arEtag (\ s a -> s{_arEtag = a})

-- | Type of the resource (\"calendar#aclRule\").
arKind :: Lens' AclRule Text
arKind = lens _arKind (\ s a -> s{_arKind = a})

-- | The role assigned to the scope. Possible values are: - \"none\" -
-- Provides no access. - \"freeBusyReader\" - Provides read access to
-- free\/busy information. - \"reader\" - Provides read access to the
-- calendar. Private events will appear to users with reader access, but
-- event details will be hidden. - \"writer\" - Provides read and write
-- access to the calendar. Private events will appear to users with writer
-- access, and event details will be visible. - \"owner\" - Provides
-- ownership of the calendar. This role has all of the permissions of the
-- writer role with the additional ability to see and manipulate ACLs.
arRole :: Lens' AclRule (Maybe Text)
arRole = lens _arRole (\ s a -> s{_arRole = a})

-- | The scope of the rule.
arScope :: Lens' AclRule (Maybe AclRuleScope)
arScope = lens _arScope (\ s a -> s{_arScope = a})

-- | Identifier of the ACL rule.
arId :: Lens' AclRule (Maybe Text)
arId = lens _arId (\ s a -> s{_arId = a})

-- | The scope of the rule.
--
-- /See:/ 'aclRuleScope' smart constructor.
data AclRuleScope = AclRuleScope
    { _arsValue :: !(Maybe Text)
    , _arsType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AclRuleScope' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsValue'
--
-- * 'arsType'
aclRuleScope
    :: AclRuleScope
aclRuleScope =
    AclRuleScope
    { _arsValue = Nothing
    , _arsType = Nothing
    }

-- | The email address of a user or group, or the name of a domain, depending
-- on the scope type. Omitted for type \"default\".
arsValue :: Lens' AclRuleScope (Maybe Text)
arsValue = lens _arsValue (\ s a -> s{_arsValue = a})

-- | The type of the scope. Possible values are: - \"default\" - The public
-- scope. This is the default value. - \"user\" - Limits the scope to a
-- single user. - \"group\" - Limits the scope to a group. - \"domain\" -
-- Limits the scope to a domain. Note: The permissions granted to the
-- \"default\", or public, scope apply to any user, authenticated or not.
arsType :: Lens' AclRuleScope (Maybe Text)
arsType = lens _arsType (\ s a -> s{_arsType = a})

--
-- /See:/ 'calendar' smart constructor.
data Calendar = Calendar
    { _cSummary     :: !(Maybe Text)
    , _cEtag        :: !(Maybe Text)
    , _cLocation    :: !(Maybe Text)
    , _cKind        :: !Text
    , _cId          :: !(Maybe Text)
    , _cTimeZone    :: !(Maybe Text)
    , _cDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Calendar' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cSummary'
--
-- * 'cEtag'
--
-- * 'cLocation'
--
-- * 'cKind'
--
-- * 'cId'
--
-- * 'cTimeZone'
--
-- * 'cDescription'
calendar
    :: Calendar
calendar =
    Calendar
    { _cSummary = Nothing
    , _cEtag = Nothing
    , _cLocation = Nothing
    , _cKind = "calendar#calendar"
    , _cId = Nothing
    , _cTimeZone = Nothing
    , _cDescription = Nothing
    }

-- | Title of the calendar.
cSummary :: Lens' Calendar (Maybe Text)
cSummary = lens _cSummary (\ s a -> s{_cSummary = a})

-- | ETag of the resource.
cEtag :: Lens' Calendar (Maybe Text)
cEtag = lens _cEtag (\ s a -> s{_cEtag = a})

-- | Geographic location of the calendar as free-form text. Optional.
cLocation :: Lens' Calendar (Maybe Text)
cLocation
  = lens _cLocation (\ s a -> s{_cLocation = a})

-- | Type of the resource (\"calendar#calendar\").
cKind :: Lens' Calendar Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Identifier of the calendar. To retrieve IDs call the calendarList.list()
-- method.
cId :: Lens' Calendar (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The time zone of the calendar. (Formatted as an IANA Time Zone Database
-- name, e.g. \"Europe\/Zurich\".) Optional.
cTimeZone :: Lens' Calendar (Maybe Text)
cTimeZone
  = lens _cTimeZone (\ s a -> s{_cTimeZone = a})

-- | Description of the calendar. Optional.
cDescription :: Lens' Calendar (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

--
-- /See:/ 'calendarList' smart constructor.
data CalendarList = CalendarList
    { _clEtag          :: !(Maybe Text)
    , _clNextPageToken :: !(Maybe Text)
    , _clKind          :: !Text
    , _clItems         :: !(Maybe [Maybe CalendarListEntry])
    , _clNextSyncToken :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clEtag'
--
-- * 'clNextPageToken'
--
-- * 'clKind'
--
-- * 'clItems'
--
-- * 'clNextSyncToken'
calendarList
    :: CalendarList
calendarList =
    CalendarList
    { _clEtag = Nothing
    , _clNextPageToken = Nothing
    , _clKind = "calendar#calendarList"
    , _clItems = Nothing
    , _clNextSyncToken = Nothing
    }

-- | ETag of the collection.
clEtag :: Lens' CalendarList (Maybe Text)
clEtag = lens _clEtag (\ s a -> s{_clEtag = a})

-- | Token used to access the next page of this result. Omitted if no further
-- results are available, in which case nextSyncToken is provided.
clNextPageToken :: Lens' CalendarList (Maybe Text)
clNextPageToken
  = lens _clNextPageToken
      (\ s a -> s{_clNextPageToken = a})

-- | Type of the collection (\"calendar#calendarList\").
clKind :: Lens' CalendarList Text
clKind = lens _clKind (\ s a -> s{_clKind = a})

-- | Calendars that are present on the user\'s calendar list.
clItems :: Lens' CalendarList [Maybe CalendarListEntry]
clItems
  = lens _clItems (\ s a -> s{_clItems = a}) . _Default
      . _Coerce

-- | Token used at a later point in time to retrieve only the entries that
-- have changed since this result was returned. Omitted if further results
-- are available, in which case nextPageToken is provided.
clNextSyncToken :: Lens' CalendarList (Maybe Text)
clNextSyncToken
  = lens _clNextSyncToken
      (\ s a -> s{_clNextSyncToken = a})

--
-- /See:/ 'calendarListEntry' smart constructor.
data CalendarListEntry = CalendarListEntry
    { _cleSummary              :: !(Maybe Text)
    , _cleEtag                 :: !(Maybe Text)
    , _cleLocation             :: !(Maybe Text)
    , _cleKind                 :: !Text
    , _cleNotificationSettings :: !(Maybe CalendarListEntryNotificationSettings)
    , _cleBackgroundColor      :: !(Maybe Text)
    , _cleForegroundColor      :: !(Maybe Text)
    , _cleDefaultReminders     :: !(Maybe [Maybe EventReminder])
    , _cleSelected             :: !Bool
    , _clePrimary              :: !Bool
    , _cleHidden               :: !Bool
    , _cleId                   :: !(Maybe Text)
    , _cleDeleted              :: !Bool
    , _cleAccessRole           :: !(Maybe Text)
    , _cleSummaryOverride      :: !(Maybe Text)
    , _cleColorId              :: !(Maybe Text)
    , _cleTimeZone             :: !(Maybe Text)
    , _cleDescription          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cleSummary'
--
-- * 'cleEtag'
--
-- * 'cleLocation'
--
-- * 'cleKind'
--
-- * 'cleNotificationSettings'
--
-- * 'cleBackgroundColor'
--
-- * 'cleForegroundColor'
--
-- * 'cleDefaultReminders'
--
-- * 'cleSelected'
--
-- * 'clePrimary'
--
-- * 'cleHidden'
--
-- * 'cleId'
--
-- * 'cleDeleted'
--
-- * 'cleAccessRole'
--
-- * 'cleSummaryOverride'
--
-- * 'cleColorId'
--
-- * 'cleTimeZone'
--
-- * 'cleDescription'
calendarListEntry
    :: CalendarListEntry
calendarListEntry =
    CalendarListEntry
    { _cleSummary = Nothing
    , _cleEtag = Nothing
    , _cleLocation = Nothing
    , _cleKind = "calendar#calendarListEntry"
    , _cleNotificationSettings = Nothing
    , _cleBackgroundColor = Nothing
    , _cleForegroundColor = Nothing
    , _cleDefaultReminders = Nothing
    , _cleSelected = False
    , _clePrimary = False
    , _cleHidden = False
    , _cleId = Nothing
    , _cleDeleted = False
    , _cleAccessRole = Nothing
    , _cleSummaryOverride = Nothing
    , _cleColorId = Nothing
    , _cleTimeZone = Nothing
    , _cleDescription = Nothing
    }

-- | Title of the calendar. Read-only.
cleSummary :: Lens' CalendarListEntry (Maybe Text)
cleSummary
  = lens _cleSummary (\ s a -> s{_cleSummary = a})

-- | ETag of the resource.
cleEtag :: Lens' CalendarListEntry (Maybe Text)
cleEtag = lens _cleEtag (\ s a -> s{_cleEtag = a})

-- | Geographic location of the calendar as free-form text. Optional.
-- Read-only.
cleLocation :: Lens' CalendarListEntry (Maybe Text)
cleLocation
  = lens _cleLocation (\ s a -> s{_cleLocation = a})

-- | Type of the resource (\"calendar#calendarListEntry\").
cleKind :: Lens' CalendarListEntry Text
cleKind = lens _cleKind (\ s a -> s{_cleKind = a})

-- | The notifications that the authenticated user is receiving for this
-- calendar.
cleNotificationSettings :: Lens' CalendarListEntry (Maybe CalendarListEntryNotificationSettings)
cleNotificationSettings
  = lens _cleNotificationSettings
      (\ s a -> s{_cleNotificationSettings = a})

-- | The main color of the calendar in the hexadecimal format \"#0088aa\".
-- This property supersedes the index-based colorId property. To set or
-- change this property, you need to specify colorRgbFormat=true in the
-- parameters of the insert, update and patch methods. Optional.
cleBackgroundColor :: Lens' CalendarListEntry (Maybe Text)
cleBackgroundColor
  = lens _cleBackgroundColor
      (\ s a -> s{_cleBackgroundColor = a})

-- | The foreground color of the calendar in the hexadecimal format
-- \"#ffffff\". This property supersedes the index-based colorId property.
-- To set or change this property, you need to specify colorRgbFormat=true
-- in the parameters of the insert, update and patch methods. Optional.
cleForegroundColor :: Lens' CalendarListEntry (Maybe Text)
cleForegroundColor
  = lens _cleForegroundColor
      (\ s a -> s{_cleForegroundColor = a})

-- | The default reminders that the authenticated user has for this calendar.
cleDefaultReminders :: Lens' CalendarListEntry [Maybe EventReminder]
cleDefaultReminders
  = lens _cleDefaultReminders
      (\ s a -> s{_cleDefaultReminders = a})
      . _Default
      . _Coerce

-- | Whether the calendar content shows up in the calendar UI. Optional. The
-- default is False.
cleSelected :: Lens' CalendarListEntry Bool
cleSelected
  = lens _cleSelected (\ s a -> s{_cleSelected = a})

-- | Whether the calendar is the primary calendar of the authenticated user.
-- Read-only. Optional. The default is False.
clePrimary :: Lens' CalendarListEntry Bool
clePrimary
  = lens _clePrimary (\ s a -> s{_clePrimary = a})

-- | Whether the calendar has been hidden from the list. Optional. The
-- default is False.
cleHidden :: Lens' CalendarListEntry Bool
cleHidden
  = lens _cleHidden (\ s a -> s{_cleHidden = a})

-- | Identifier of the calendar.
cleId :: Lens' CalendarListEntry (Maybe Text)
cleId = lens _cleId (\ s a -> s{_cleId = a})

-- | Whether this calendar list entry has been deleted from the calendar
-- list. Read-only. Optional. The default is False.
cleDeleted :: Lens' CalendarListEntry Bool
cleDeleted
  = lens _cleDeleted (\ s a -> s{_cleDeleted = a})

-- | The effective access role that the authenticated user has on the
-- calendar. Read-only. Possible values are: - \"freeBusyReader\" -
-- Provides read access to free\/busy information. - \"reader\" - Provides
-- read access to the calendar. Private events will appear to users with
-- reader access, but event details will be hidden. - \"writer\" - Provides
-- read and write access to the calendar. Private events will appear to
-- users with writer access, and event details will be visible. - \"owner\"
-- - Provides ownership of the calendar. This role has all of the
-- permissions of the writer role with the additional ability to see and
-- manipulate ACLs.
cleAccessRole :: Lens' CalendarListEntry (Maybe Text)
cleAccessRole
  = lens _cleAccessRole
      (\ s a -> s{_cleAccessRole = a})

-- | The summary that the authenticated user has set for this calendar.
-- Optional.
cleSummaryOverride :: Lens' CalendarListEntry (Maybe Text)
cleSummaryOverride
  = lens _cleSummaryOverride
      (\ s a -> s{_cleSummaryOverride = a})

-- | The color of the calendar. This is an ID referring to an entry in the
-- calendar section of the colors definition (see the colors endpoint).
-- This property is superseded by the backgroundColor and foregroundColor
-- properties and can be ignored when using these properties. Optional.
cleColorId :: Lens' CalendarListEntry (Maybe Text)
cleColorId
  = lens _cleColorId (\ s a -> s{_cleColorId = a})

-- | The time zone of the calendar. Optional. Read-only.
cleTimeZone :: Lens' CalendarListEntry (Maybe Text)
cleTimeZone
  = lens _cleTimeZone (\ s a -> s{_cleTimeZone = a})

-- | Description of the calendar. Optional. Read-only.
cleDescription :: Lens' CalendarListEntry (Maybe Text)
cleDescription
  = lens _cleDescription
      (\ s a -> s{_cleDescription = a})

-- | The notifications that the authenticated user is receiving for this
-- calendar.
--
-- /See:/ 'calendarListEntryNotificationSettings' smart constructor.
newtype CalendarListEntryNotificationSettings = CalendarListEntryNotificationSettings
    { _clensNotifications :: Maybe [Maybe CalendarNotification]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarListEntryNotificationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clensNotifications'
calendarListEntryNotificationSettings
    :: CalendarListEntryNotificationSettings
calendarListEntryNotificationSettings =
    CalendarListEntryNotificationSettings
    { _clensNotifications = Nothing
    }

-- | The list of notifications set for this calendar.
clensNotifications :: Lens' CalendarListEntryNotificationSettings [Maybe CalendarNotification]
clensNotifications
  = lens _clensNotifications
      (\ s a -> s{_clensNotifications = a})
      . _Default
      . _Coerce

--
-- /See:/ 'calendarNotification' smart constructor.
data CalendarNotification = CalendarNotification
    { _cnMethod :: !(Maybe Text)
    , _cnType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalendarNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnMethod'
--
-- * 'cnType'
calendarNotification
    :: CalendarNotification
calendarNotification =
    CalendarNotification
    { _cnMethod = Nothing
    , _cnType = Nothing
    }

-- | The method used to deliver the notification. Possible values are: -
-- \"email\" - Reminders are sent via email. - \"sms\" - Reminders are sent
-- via SMS. This value is read-only and is ignored on inserts and updates.
-- SMS reminders are only available for Google Apps for Work, Education,
-- and Government customers.
cnMethod :: Lens' CalendarNotification (Maybe Text)
cnMethod = lens _cnMethod (\ s a -> s{_cnMethod = a})

-- | The type of notification. Possible values are: - \"eventCreation\" -
-- Notification sent when a new event is put on the calendar. -
-- \"eventChange\" - Notification sent when an event is changed. -
-- \"eventCancellation\" - Notification sent when an event is cancelled. -
-- \"eventResponse\" - Notification sent when an event is changed. -
-- \"agenda\" - An agenda with the events of the day (sent out in the
-- morning).
cnType :: Lens' CalendarNotification (Maybe Text)
cnType = lens _cnType (\ s a -> s{_cnType = a})

--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _chaResourceUri :: !(Maybe Text)
    , _chaResourceId  :: !(Maybe Text)
    , _chaKind        :: !Text
    , _chaExpiration  :: !(Maybe Int64)
    , _chaToken       :: !(Maybe Text)
    , _chaAddress     :: !(Maybe Text)
    , _chaPayload     :: !(Maybe Bool)
    , _chaParams      :: !(Maybe ChannelParams)
    , _chaId          :: !(Maybe Text)
    , _chaType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaResourceUri'
--
-- * 'chaResourceId'
--
-- * 'chaKind'
--
-- * 'chaExpiration'
--
-- * 'chaToken'
--
-- * 'chaAddress'
--
-- * 'chaPayload'
--
-- * 'chaParams'
--
-- * 'chaId'
--
-- * 'chaType'
channel
    :: Channel
channel =
    Channel
    { _chaResourceUri = Nothing
    , _chaResourceId = Nothing
    , _chaKind = "api#channel"
    , _chaExpiration = Nothing
    , _chaToken = Nothing
    , _chaAddress = Nothing
    , _chaPayload = Nothing
    , _chaParams = Nothing
    , _chaId = Nothing
    , _chaType = Nothing
    }

-- | A version-specific identifier for the watched resource.
chaResourceUri :: Lens' Channel (Maybe Text)
chaResourceUri
  = lens _chaResourceUri
      (\ s a -> s{_chaResourceUri = a})

-- | An opaque ID that identifies the resource being watched on this channel.
-- Stable across different API versions.
chaResourceId :: Lens' Channel (Maybe Text)
chaResourceId
  = lens _chaResourceId
      (\ s a -> s{_chaResourceId = a})

-- | Identifies this as a notification channel used to watch for changes to a
-- resource. Value: the fixed string \"api#channel\".
chaKind :: Lens' Channel Text
chaKind = lens _chaKind (\ s a -> s{_chaKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
chaExpiration :: Lens' Channel (Maybe Int64)
chaExpiration
  = lens _chaExpiration
      (\ s a -> s{_chaExpiration = a})

-- | An arbitrary string delivered to the target address with each
-- notification delivered over this channel. Optional.
chaToken :: Lens' Channel (Maybe Text)
chaToken = lens _chaToken (\ s a -> s{_chaToken = a})

-- | The address where notifications are delivered for this channel.
chaAddress :: Lens' Channel (Maybe Text)
chaAddress
  = lens _chaAddress (\ s a -> s{_chaAddress = a})

-- | A Boolean value to indicate whether payload is wanted. Optional.
chaPayload :: Lens' Channel (Maybe Bool)
chaPayload
  = lens _chaPayload (\ s a -> s{_chaPayload = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
chaParams :: Lens' Channel (Maybe ChannelParams)
chaParams
  = lens _chaParams (\ s a -> s{_chaParams = a})

-- | A UUID or similar unique string that identifies this channel.
chaId :: Lens' Channel (Maybe Text)
chaId = lens _chaId (\ s a -> s{_chaId = a})

-- | The type of delivery mechanism used for this channel.
chaType :: Lens' Channel (Maybe Text)
chaType = lens _chaType (\ s a -> s{_chaType = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
data ChannelParams =
    ChannelParams
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
channelParams
    :: ChannelParams
channelParams = ChannelParams

--
-- /See:/ 'colorDefinition' smart constructor.
data ColorDefinition = ColorDefinition
    { _cdForeground :: !(Maybe Text)
    , _cdBackground :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColorDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdForeground'
--
-- * 'cdBackground'
colorDefinition
    :: ColorDefinition
colorDefinition =
    ColorDefinition
    { _cdForeground = Nothing
    , _cdBackground = Nothing
    }

-- | The foreground color that can be used to write on top of a background
-- with \'background\' color.
cdForeground :: Lens' ColorDefinition (Maybe Text)
cdForeground
  = lens _cdForeground (\ s a -> s{_cdForeground = a})

-- | The background color associated with this color definition.
cdBackground :: Lens' ColorDefinition (Maybe Text)
cdBackground
  = lens _cdBackground (\ s a -> s{_cdBackground = a})

--
-- /See:/ 'colors' smart constructor.
data Colors = Colors
    { _colEvent    :: !(Maybe ColorsEvent)
    , _colKind     :: !Text
    , _colCalendar :: !(Maybe ColorsCalendar)
    , _colUpdated  :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Colors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colEvent'
--
-- * 'colKind'
--
-- * 'colCalendar'
--
-- * 'colUpdated'
colors
    :: Colors
colors =
    Colors
    { _colEvent = Nothing
    , _colKind = "calendar#colors"
    , _colCalendar = Nothing
    , _colUpdated = Nothing
    }

-- | A global palette of event colors, mapping from the color ID to its
-- definition. An event resource may refer to one of these color IDs in its
-- color field. Read-only.
colEvent :: Lens' Colors (Maybe ColorsEvent)
colEvent = lens _colEvent (\ s a -> s{_colEvent = a})

-- | Type of the resource (\"calendar#colors\").
colKind :: Lens' Colors Text
colKind = lens _colKind (\ s a -> s{_colKind = a})

-- | A global palette of calendar colors, mapping from the color ID to its
-- definition. A calendarListEntry resource refers to one of these color
-- IDs in its color field. Read-only.
colCalendar :: Lens' Colors (Maybe ColorsCalendar)
colCalendar
  = lens _colCalendar (\ s a -> s{_colCalendar = a})

-- | Last modification time of the color palette (as a RFC3339 timestamp).
-- Read-only.
colUpdated :: Lens' Colors (Maybe UTCTime)
colUpdated
  = lens _colUpdated (\ s a -> s{_colUpdated = a})

-- | A global palette of calendar colors, mapping from the color ID to its
-- definition. A calendarListEntry resource refers to one of these color
-- IDs in its color field. Read-only.
--
-- /See:/ 'colorsCalendar' smart constructor.
data ColorsCalendar =
    ColorsCalendar
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColorsCalendar' with the minimum fields required to make a request.
--
colorsCalendar
    :: ColorsCalendar
colorsCalendar = ColorsCalendar

-- | A global palette of event colors, mapping from the color ID to its
-- definition. An event resource may refer to one of these color IDs in its
-- color field. Read-only.
--
-- /See:/ 'colorsEvent' smart constructor.
data ColorsEvent =
    ColorsEvent
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColorsEvent' with the minimum fields required to make a request.
--
colorsEvent
    :: ColorsEvent
colorsEvent = ColorsEvent

--
-- /See:/ 'error'' smart constructor.
data Error = Error
    { _eDomain :: !(Maybe Text)
    , _eReason :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Error' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDomain'
--
-- * 'eReason'
error'
    :: Error
error' =
    Error
    { _eDomain = Nothing
    , _eReason = Nothing
    }

-- | Domain, or broad category, of the error.
eDomain :: Lens' Error (Maybe Text)
eDomain = lens _eDomain (\ s a -> s{_eDomain = a})

-- | Specific reason for the error. Some of the possible values are: -
-- \"groupTooBig\" - The group of users requested is too large for a single
-- query. - \"tooManyCalendarsRequested\" - The number of calendars
-- requested is too large for a single query. - \"notFound\" - The
-- requested resource was not found. - \"internalError\" - The API service
-- has encountered an internal error. Additional error types may be added
-- in the future, so clients should gracefully handle additional error
-- statuses not included in this list.
eReason :: Lens' Error (Maybe Text)
eReason = lens _eReason (\ s a -> s{_eReason = a})

--
-- /See:/ 'event' smart constructor.
data Event = Event
    { _eveSummary                 :: !(Maybe Text)
    , _eveOriginalStartTime       :: !(Maybe (Maybe EventDateTime))
    , _eveCreator                 :: !(Maybe EventCreator)
    , _eveStatus                  :: !(Maybe Text)
    , _eveGuestsCanModify         :: !Bool
    , _eveEtag                    :: !(Maybe Text)
    , _eveAttachments             :: !(Maybe [Maybe EventAttachment])
    , _eveLocked                  :: !Bool
    , _eveLocation                :: !(Maybe Text)
    , _eveAttendees               :: !(Maybe [Maybe EventAttendee])
    , _eveReminders               :: !(Maybe EventReminders)
    , _eveKind                    :: !Text
    , _eveCreated                 :: !(Maybe UTCTime)
    , _eveTransparency            :: !Text
    , _eveRecurringEventId        :: !(Maybe Text)
    , _eveStart                   :: !(Maybe (Maybe EventDateTime))
    , _evePrivateCopy             :: !Bool
    , _eveEndTimeUnspecified      :: !Bool
    , _eveExtendedProperties      :: !(Maybe EventExtendedProperties)
    , _eveVisibility              :: !Text
    , _eveGuestsCanInviteOthers   :: !Bool
    , _eveRecurrence              :: !(Maybe [Text])
    , _eveGadget                  :: !(Maybe EventGadget)
    , _eveSequence                :: !(Maybe Int32)
    , _eveICalUID                 :: !(Maybe Text)
    , _eveEnd                     :: !(Maybe (Maybe EventDateTime))
    , _eveAttendeesOmitted        :: !Bool
    , _eveSource                  :: !(Maybe EventSource)
    , _eveId                      :: !(Maybe Text)
    , _eveHtmlLink                :: !(Maybe Text)
    , _eveUpdated                 :: !(Maybe UTCTime)
    , _eveColorId                 :: !(Maybe Text)
    , _eveAnyoneCanAddSelf        :: !Bool
    , _eveGuestsCanSeeOtherGuests :: !Bool
    , _eveHangoutLink             :: !(Maybe Text)
    , _eveDescription             :: !(Maybe Text)
    , _eveOrganizer               :: !(Maybe EventOrganizer)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eveSummary'
--
-- * 'eveOriginalStartTime'
--
-- * 'eveCreator'
--
-- * 'eveStatus'
--
-- * 'eveGuestsCanModify'
--
-- * 'eveEtag'
--
-- * 'eveAttachments'
--
-- * 'eveLocked'
--
-- * 'eveLocation'
--
-- * 'eveAttendees'
--
-- * 'eveReminders'
--
-- * 'eveKind'
--
-- * 'eveCreated'
--
-- * 'eveTransparency'
--
-- * 'eveRecurringEventId'
--
-- * 'eveStart'
--
-- * 'evePrivateCopy'
--
-- * 'eveEndTimeUnspecified'
--
-- * 'eveExtendedProperties'
--
-- * 'eveVisibility'
--
-- * 'eveGuestsCanInviteOthers'
--
-- * 'eveRecurrence'
--
-- * 'eveGadget'
--
-- * 'eveSequence'
--
-- * 'eveICalUID'
--
-- * 'eveEnd'
--
-- * 'eveAttendeesOmitted'
--
-- * 'eveSource'
--
-- * 'eveId'
--
-- * 'eveHtmlLink'
--
-- * 'eveUpdated'
--
-- * 'eveColorId'
--
-- * 'eveAnyoneCanAddSelf'
--
-- * 'eveGuestsCanSeeOtherGuests'
--
-- * 'eveHangoutLink'
--
-- * 'eveDescription'
--
-- * 'eveOrganizer'
event
    :: Event
event =
    Event
    { _eveSummary = Nothing
    , _eveOriginalStartTime = Nothing
    , _eveCreator = Nothing
    , _eveStatus = Nothing
    , _eveGuestsCanModify = False
    , _eveEtag = Nothing
    , _eveAttachments = Nothing
    , _eveLocked = False
    , _eveLocation = Nothing
    , _eveAttendees = Nothing
    , _eveReminders = Nothing
    , _eveKind = "calendar#event"
    , _eveCreated = Nothing
    , _eveTransparency = "opaque"
    , _eveRecurringEventId = Nothing
    , _eveStart = Nothing
    , _evePrivateCopy = False
    , _eveEndTimeUnspecified = False
    , _eveExtendedProperties = Nothing
    , _eveVisibility = "default"
    , _eveGuestsCanInviteOthers = True
    , _eveRecurrence = Nothing
    , _eveGadget = Nothing
    , _eveSequence = Nothing
    , _eveICalUID = Nothing
    , _eveEnd = Nothing
    , _eveAttendeesOmitted = False
    , _eveSource = Nothing
    , _eveId = Nothing
    , _eveHtmlLink = Nothing
    , _eveUpdated = Nothing
    , _eveColorId = Nothing
    , _eveAnyoneCanAddSelf = False
    , _eveGuestsCanSeeOtherGuests = True
    , _eveHangoutLink = Nothing
    , _eveDescription = Nothing
    , _eveOrganizer = Nothing
    }

-- | Title of the event.
eveSummary :: Lens' Event (Maybe Text)
eveSummary
  = lens _eveSummary (\ s a -> s{_eveSummary = a})

-- | For an instance of a recurring event, this is the time at which this
-- event would start according to the recurrence data in the recurring
-- event identified by recurringEventId. Immutable.
eveOriginalStartTime :: Lens' Event (Maybe (Maybe EventDateTime))
eveOriginalStartTime
  = lens _eveOriginalStartTime
      (\ s a -> s{_eveOriginalStartTime = a})

-- | The creator of the event. Read-only.
eveCreator :: Lens' Event (Maybe EventCreator)
eveCreator
  = lens _eveCreator (\ s a -> s{_eveCreator = a})

-- | Status of the event. Optional. Possible values are: - \"confirmed\" -
-- The event is confirmed. This is the default status. - \"tentative\" -
-- The event is tentatively confirmed. - \"cancelled\" - The event is
-- cancelled.
eveStatus :: Lens' Event (Maybe Text)
eveStatus
  = lens _eveStatus (\ s a -> s{_eveStatus = a})

-- | Whether attendees other than the organizer can modify the event.
-- Optional. The default is False.
eveGuestsCanModify :: Lens' Event Bool
eveGuestsCanModify
  = lens _eveGuestsCanModify
      (\ s a -> s{_eveGuestsCanModify = a})

-- | ETag of the resource.
eveEtag :: Lens' Event (Maybe Text)
eveEtag = lens _eveEtag (\ s a -> s{_eveEtag = a})

-- | File attachments for the event. Currently only Google Drive attachments
-- are supported. In order to modify attachments the supportsAttachments
-- request parameter should be set to true. There can be at most 25
-- attachments per event,
eveAttachments :: Lens' Event [Maybe EventAttachment]
eveAttachments
  = lens _eveAttachments
      (\ s a -> s{_eveAttachments = a})
      . _Default
      . _Coerce

-- | Whether this is a locked event copy where no changes can be made to the
-- main event fields \"summary\", \"description\", \"location\", \"start\",
-- \"end\" or \"recurrence\". The default is False. Read-Only.
eveLocked :: Lens' Event Bool
eveLocked
  = lens _eveLocked (\ s a -> s{_eveLocked = a})

-- | Geographic location of the event as free-form text. Optional.
eveLocation :: Lens' Event (Maybe Text)
eveLocation
  = lens _eveLocation (\ s a -> s{_eveLocation = a})

-- | The attendees of the event. See the Events with attendees guide for more
-- information on scheduling events with other calendar users.
eveAttendees :: Lens' Event [Maybe EventAttendee]
eveAttendees
  = lens _eveAttendees (\ s a -> s{_eveAttendees = a})
      . _Default
      . _Coerce

-- | Information about the event\'s reminders for the authenticated user.
eveReminders :: Lens' Event (Maybe EventReminders)
eveReminders
  = lens _eveReminders (\ s a -> s{_eveReminders = a})

-- | Type of the resource (\"calendar#event\").
eveKind :: Lens' Event Text
eveKind = lens _eveKind (\ s a -> s{_eveKind = a})

-- | Creation time of the event (as a RFC3339 timestamp). Read-only.
eveCreated :: Lens' Event (Maybe UTCTime)
eveCreated
  = lens _eveCreated (\ s a -> s{_eveCreated = a})

-- | Whether the event blocks time on the calendar. Optional. Possible values
-- are: - \"opaque\" - The event blocks time on the calendar. This is the
-- default value. - \"transparent\" - The event does not block time on the
-- calendar.
eveTransparency :: Lens' Event Text
eveTransparency
  = lens _eveTransparency
      (\ s a -> s{_eveTransparency = a})

-- | For an instance of a recurring event, this is the id of the recurring
-- event to which this instance belongs. Immutable.
eveRecurringEventId :: Lens' Event (Maybe Text)
eveRecurringEventId
  = lens _eveRecurringEventId
      (\ s a -> s{_eveRecurringEventId = a})

-- | The (inclusive) start time of the event. For a recurring event, this is
-- the start time of the first instance.
eveStart :: Lens' Event (Maybe (Maybe EventDateTime))
eveStart = lens _eveStart (\ s a -> s{_eveStart = a})

-- | Whether this is a private event copy where changes are not shared with
-- other copies on other calendars. Optional. Immutable. The default is
-- False.
evePrivateCopy :: Lens' Event Bool
evePrivateCopy
  = lens _evePrivateCopy
      (\ s a -> s{_evePrivateCopy = a})

-- | Whether the end time is actually unspecified. An end time is still
-- provided for compatibility reasons, even if this attribute is set to
-- True. The default is False.
eveEndTimeUnspecified :: Lens' Event Bool
eveEndTimeUnspecified
  = lens _eveEndTimeUnspecified
      (\ s a -> s{_eveEndTimeUnspecified = a})

-- | Extended properties of the event.
eveExtendedProperties :: Lens' Event (Maybe EventExtendedProperties)
eveExtendedProperties
  = lens _eveExtendedProperties
      (\ s a -> s{_eveExtendedProperties = a})

-- | Visibility of the event. Optional. Possible values are: - \"default\" -
-- Uses the default visibility for events on the calendar. This is the
-- default value. - \"public\" - The event is public and event details are
-- visible to all readers of the calendar. - \"private\" - The event is
-- private and only event attendees may view event details. -
-- \"confidential\" - The event is private. This value is provided for
-- compatibility reasons.
eveVisibility :: Lens' Event Text
eveVisibility
  = lens _eveVisibility
      (\ s a -> s{_eveVisibility = a})

-- | Whether attendees other than the organizer can invite others to the
-- event. Optional. The default is True.
eveGuestsCanInviteOthers :: Lens' Event Bool
eveGuestsCanInviteOthers
  = lens _eveGuestsCanInviteOthers
      (\ s a -> s{_eveGuestsCanInviteOthers = a})

-- | List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as
-- specified in RFC5545. Note that DTSTART and DTEND lines are not allowed
-- in this field; event start and end times are specified in the start and
-- end fields. This field is omitted for single events or instances of
-- recurring events.
eveRecurrence :: Lens' Event [Text]
eveRecurrence
  = lens _eveRecurrence
      (\ s a -> s{_eveRecurrence = a})
      . _Default
      . _Coerce

-- | A gadget that extends this event.
eveGadget :: Lens' Event (Maybe EventGadget)
eveGadget
  = lens _eveGadget (\ s a -> s{_eveGadget = a})

-- | Sequence number as per iCalendar.
eveSequence :: Lens' Event (Maybe Int32)
eveSequence
  = lens _eveSequence (\ s a -> s{_eveSequence = a})

-- | Event unique identifier as defined in RFC5545. It is used to uniquely
-- identify events accross calendaring systems and must be supplied when
-- importing events via the import method. Note that the icalUID and the id
-- are not identical and only one of them should be supplied at event
-- creation time. One difference in their semantics is that in recurring
-- events, all occurrences of one event have different ids while they all
-- share the same icalUIDs.
eveICalUID :: Lens' Event (Maybe Text)
eveICalUID
  = lens _eveICalUID (\ s a -> s{_eveICalUID = a})

-- | The (exclusive) end time of the event. For a recurring event, this is
-- the end time of the first instance.
eveEnd :: Lens' Event (Maybe (Maybe EventDateTime))
eveEnd = lens _eveEnd (\ s a -> s{_eveEnd = a})

-- | Whether attendees may have been omitted from the event\'s
-- representation. When retrieving an event, this may be due to a
-- restriction specified by the maxAttendee query parameter. When updating
-- an event, this can be used to only update the participant\'s response.
-- Optional. The default is False.
eveAttendeesOmitted :: Lens' Event Bool
eveAttendeesOmitted
  = lens _eveAttendeesOmitted
      (\ s a -> s{_eveAttendeesOmitted = a})

-- | Source from which the event was created. For example, a web page, an
-- email message or any document identifiable by an URL with HTTP or HTTPS
-- scheme. Can only be seen or modified by the creator of the event.
eveSource :: Lens' Event (Maybe EventSource)
eveSource
  = lens _eveSource (\ s a -> s{_eveSource = a})

-- | Opaque identifier of the event. When creating new single or recurring
-- events, you can specify their IDs. Provided IDs must follow these rules:
-- - characters allowed in the ID are those used in base32hex encoding,
-- i.e. lowercase letters a-v and digits 0-9, see section 3.1.2 in RFC2938
-- - the length of the ID must be between 5 and 1024 characters - the ID
-- must be unique per calendar Due to the globally distributed nature of
-- the system, we cannot guarantee that ID collisions will be detected at
-- event creation time. To minimize the risk of collisions we recommend
-- using an established UUID algorithm such as one described in RFC4122. If
-- you do not specify an ID, it will be automatically generated by the
-- server. Note that the icalUID and the id are not identical and only one
-- of them should be supplied at event creation time. One difference in
-- their semantics is that in recurring events, all occurrences of one
-- event have different ids while they all share the same icalUIDs.
eveId :: Lens' Event (Maybe Text)
eveId = lens _eveId (\ s a -> s{_eveId = a})

-- | An absolute link to this event in the Google Calendar Web UI. Read-only.
eveHtmlLink :: Lens' Event (Maybe Text)
eveHtmlLink
  = lens _eveHtmlLink (\ s a -> s{_eveHtmlLink = a})

-- | Last modification time of the event (as a RFC3339 timestamp). Read-only.
eveUpdated :: Lens' Event (Maybe UTCTime)
eveUpdated
  = lens _eveUpdated (\ s a -> s{_eveUpdated = a})

-- | The color of the event. This is an ID referring to an entry in the event
-- section of the colors definition (see the colors endpoint). Optional.
eveColorId :: Lens' Event (Maybe Text)
eveColorId
  = lens _eveColorId (\ s a -> s{_eveColorId = a})

-- | Whether anyone can invite themselves to the event. Optional. The default
-- is False.
eveAnyoneCanAddSelf :: Lens' Event Bool
eveAnyoneCanAddSelf
  = lens _eveAnyoneCanAddSelf
      (\ s a -> s{_eveAnyoneCanAddSelf = a})

-- | Whether attendees other than the organizer can see who the event\'s
-- attendees are. Optional. The default is True.
eveGuestsCanSeeOtherGuests :: Lens' Event Bool
eveGuestsCanSeeOtherGuests
  = lens _eveGuestsCanSeeOtherGuests
      (\ s a -> s{_eveGuestsCanSeeOtherGuests = a})

-- | An absolute link to the Google+ hangout associated with this event.
-- Read-only.
eveHangoutLink :: Lens' Event (Maybe Text)
eveHangoutLink
  = lens _eveHangoutLink
      (\ s a -> s{_eveHangoutLink = a})

-- | Description of the event. Optional.
eveDescription :: Lens' Event (Maybe Text)
eveDescription
  = lens _eveDescription
      (\ s a -> s{_eveDescription = a})

-- | The organizer of the event. If the organizer is also an attendee, this
-- is indicated with a separate entry in attendees with the organizer field
-- set to True. To change the organizer, use the move operation. Read-only,
-- except when importing an event.
eveOrganizer :: Lens' Event (Maybe EventOrganizer)
eveOrganizer
  = lens _eveOrganizer (\ s a -> s{_eveOrganizer = a})

--
-- /See:/ 'eventAttachment' smart constructor.
data EventAttachment = EventAttachment
    { _eaFileUrl  :: !(Maybe Text)
    , _eaIconLink :: !(Maybe Text)
    , _eaMimeType :: !(Maybe Text)
    , _eaTitle    :: !(Maybe Text)
    , _eaFileId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaFileUrl'
--
-- * 'eaIconLink'
--
-- * 'eaMimeType'
--
-- * 'eaTitle'
--
-- * 'eaFileId'
eventAttachment
    :: EventAttachment
eventAttachment =
    EventAttachment
    { _eaFileUrl = Nothing
    , _eaIconLink = Nothing
    , _eaMimeType = Nothing
    , _eaTitle = Nothing
    , _eaFileId = Nothing
    }

-- | URL link to the attachment. For adding Google Drive file attachments use
-- the same format as in alternateLink property of the Files resource in
-- the Drive API.
eaFileUrl :: Lens' EventAttachment (Maybe Text)
eaFileUrl
  = lens _eaFileUrl (\ s a -> s{_eaFileUrl = a})

-- | URL link to the attachment\'s icon. Read-only.
eaIconLink :: Lens' EventAttachment (Maybe Text)
eaIconLink
  = lens _eaIconLink (\ s a -> s{_eaIconLink = a})

-- | Internet media type (MIME type) of the attachment.
eaMimeType :: Lens' EventAttachment (Maybe Text)
eaMimeType
  = lens _eaMimeType (\ s a -> s{_eaMimeType = a})

-- | Attachment title.
eaTitle :: Lens' EventAttachment (Maybe Text)
eaTitle = lens _eaTitle (\ s a -> s{_eaTitle = a})

-- | ID of the attached file. Read-only. For Google Drive files, this is the
-- ID of the corresponding Files resource entry in the Drive API.
eaFileId :: Lens' EventAttachment (Maybe Text)
eaFileId = lens _eaFileId (\ s a -> s{_eaFileId = a})

--
-- /See:/ 'eventAttendee' smart constructor.
data EventAttendee = EventAttendee
    { _eaEmail            :: !(Maybe Text)
    , _eaResponseStatus   :: !(Maybe Text)
    , _eaSelf             :: !Bool
    , _eaResource         :: !Bool
    , _eaAdditionalGuests :: !Int32
    , _eaDisplayName      :: !(Maybe Text)
    , _eaId               :: !(Maybe Text)
    , _eaComment          :: !(Maybe Text)
    , _eaOptional         :: !Bool
    , _eaOrganizer        :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventAttendee' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaEmail'
--
-- * 'eaResponseStatus'
--
-- * 'eaSelf'
--
-- * 'eaResource'
--
-- * 'eaAdditionalGuests'
--
-- * 'eaDisplayName'
--
-- * 'eaId'
--
-- * 'eaComment'
--
-- * 'eaOptional'
--
-- * 'eaOrganizer'
eventAttendee
    :: EventAttendee
eventAttendee =
    EventAttendee
    { _eaEmail = Nothing
    , _eaResponseStatus = Nothing
    , _eaSelf = False
    , _eaResource = False
    , _eaAdditionalGuests = 0
    , _eaDisplayName = Nothing
    , _eaId = Nothing
    , _eaComment = Nothing
    , _eaOptional = False
    , _eaOrganizer = Nothing
    }

-- | The attendee\'s email address, if available. This field must be present
-- when adding an attendee. It must be a valid email address as per
-- RFC5322.
eaEmail :: Lens' EventAttendee (Maybe Text)
eaEmail = lens _eaEmail (\ s a -> s{_eaEmail = a})

-- | The attendee\'s response status. Possible values are: - \"needsAction\"
-- - The attendee has not responded to the invitation. - \"declined\" - The
-- attendee has declined the invitation. - \"tentative\" - The attendee has
-- tentatively accepted the invitation. - \"accepted\" - The attendee has
-- accepted the invitation.
eaResponseStatus :: Lens' EventAttendee (Maybe Text)
eaResponseStatus
  = lens _eaResponseStatus
      (\ s a -> s{_eaResponseStatus = a})

-- | Whether this entry represents the calendar on which this copy of the
-- event appears. Read-only. The default is False.
eaSelf :: Lens' EventAttendee Bool
eaSelf = lens _eaSelf (\ s a -> s{_eaSelf = a})

-- | Whether the attendee is a resource. Read-only. The default is False.
eaResource :: Lens' EventAttendee Bool
eaResource
  = lens _eaResource (\ s a -> s{_eaResource = a})

-- | Number of additional guests. Optional. The default is 0.
eaAdditionalGuests :: Lens' EventAttendee Int32
eaAdditionalGuests
  = lens _eaAdditionalGuests
      (\ s a -> s{_eaAdditionalGuests = a})

-- | The attendee\'s name, if available. Optional.
eaDisplayName :: Lens' EventAttendee (Maybe Text)
eaDisplayName
  = lens _eaDisplayName
      (\ s a -> s{_eaDisplayName = a})

-- | The attendee\'s Profile ID, if available. It corresponds to theid field
-- in the People collection of the Google+ API
eaId :: Lens' EventAttendee (Maybe Text)
eaId = lens _eaId (\ s a -> s{_eaId = a})

-- | The attendee\'s response comment. Optional.
eaComment :: Lens' EventAttendee (Maybe Text)
eaComment
  = lens _eaComment (\ s a -> s{_eaComment = a})

-- | Whether this is an optional attendee. Optional. The default is False.
eaOptional :: Lens' EventAttendee Bool
eaOptional
  = lens _eaOptional (\ s a -> s{_eaOptional = a})

-- | Whether the attendee is the organizer of the event. Read-only. The
-- default is False.
eaOrganizer :: Lens' EventAttendee (Maybe Bool)
eaOrganizer
  = lens _eaOrganizer (\ s a -> s{_eaOrganizer = a})

-- | The creator of the event. Read-only.
--
-- /See:/ 'eventCreator' smart constructor.
data EventCreator = EventCreator
    { _ecEmail       :: !(Maybe Text)
    , _ecSelf        :: !Bool
    , _ecDisplayName :: !(Maybe Text)
    , _ecId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventCreator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecEmail'
--
-- * 'ecSelf'
--
-- * 'ecDisplayName'
--
-- * 'ecId'
eventCreator
    :: EventCreator
eventCreator =
    EventCreator
    { _ecEmail = Nothing
    , _ecSelf = False
    , _ecDisplayName = Nothing
    , _ecId = Nothing
    }

-- | The creator\'s email address, if available.
ecEmail :: Lens' EventCreator (Maybe Text)
ecEmail = lens _ecEmail (\ s a -> s{_ecEmail = a})

-- | Whether the creator corresponds to the calendar on which this copy of
-- the event appears. Read-only. The default is False.
ecSelf :: Lens' EventCreator Bool
ecSelf = lens _ecSelf (\ s a -> s{_ecSelf = a})

-- | The creator\'s name, if available.
ecDisplayName :: Lens' EventCreator (Maybe Text)
ecDisplayName
  = lens _ecDisplayName
      (\ s a -> s{_ecDisplayName = a})

-- | The creator\'s Profile ID, if available. It corresponds to theid field
-- in the People collection of the Google+ API
ecId :: Lens' EventCreator (Maybe Text)
ecId = lens _ecId (\ s a -> s{_ecId = a})

--
-- /See:/ 'eventDateTime' smart constructor.
data EventDateTime = EventDateTime
    { _edtDate     :: !(Maybe UTCTime)
    , _edtTimeZone :: !(Maybe Text)
    , _edtDateTime :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventDateTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edtDate'
--
-- * 'edtTimeZone'
--
-- * 'edtDateTime'
eventDateTime
    :: EventDateTime
eventDateTime =
    EventDateTime
    { _edtDate = Nothing
    , _edtTimeZone = Nothing
    , _edtDateTime = Nothing
    }

-- | The date, in the format \"yyyy-mm-dd\", if this is an all-day event.
edtDate :: Lens' EventDateTime (Maybe UTCTime)
edtDate = lens _edtDate (\ s a -> s{_edtDate = a})

-- | The time zone in which the time is specified. (Formatted as an IANA Time
-- Zone Database name, e.g. \"Europe\/Zurich\".) For recurring events this
-- field is required and specifies the time zone in which the recurrence is
-- expanded. For single events this field is optional and indicates a
-- custom time zone for the event start\/end.
edtTimeZone :: Lens' EventDateTime (Maybe Text)
edtTimeZone
  = lens _edtTimeZone (\ s a -> s{_edtTimeZone = a})

-- | The time, as a combined date-time value (formatted according to
-- RFC3339). A time zone offset is required unless a time zone is
-- explicitly specified in timeZone.
edtDateTime :: Lens' EventDateTime (Maybe UTCTime)
edtDateTime
  = lens _edtDateTime (\ s a -> s{_edtDateTime = a})

-- | Extended properties of the event.
--
-- /See:/ 'eventExtendedProperties' smart constructor.
data EventExtendedProperties = EventExtendedProperties
    { _eepPrivate :: !(Maybe EventPrivateExtendedProperties)
    , _eepShared  :: !(Maybe EventSharedExtendedProperties)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventExtendedProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eepPrivate'
--
-- * 'eepShared'
eventExtendedProperties
    :: EventExtendedProperties
eventExtendedProperties =
    EventExtendedProperties
    { _eepPrivate = Nothing
    , _eepShared = Nothing
    }

-- | Properties that are private to the copy of the event that appears on
-- this calendar.
eepPrivate :: Lens' EventExtendedProperties (Maybe EventPrivateExtendedProperties)
eepPrivate
  = lens _eepPrivate (\ s a -> s{_eepPrivate = a})

-- | Properties that are shared between copies of the event on other
-- attendees\' calendars.
eepShared :: Lens' EventExtendedProperties (Maybe EventSharedExtendedProperties)
eepShared
  = lens _eepShared (\ s a -> s{_eepShared = a})

-- | A gadget that extends this event.
--
-- /See:/ 'eventGadget' smart constructor.
data EventGadget = EventGadget
    { _egHeight      :: !(Maybe Int32)
    , _egDisplay     :: !(Maybe Text)
    , _egPreferences :: !(Maybe EventPreferencesGadget)
    , _egLink        :: !(Maybe Text)
    , _egIconLink    :: !(Maybe Text)
    , _egWidth       :: !(Maybe Int32)
    , _egTitle       :: !(Maybe Text)
    , _egType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventGadget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egHeight'
--
-- * 'egDisplay'
--
-- * 'egPreferences'
--
-- * 'egLink'
--
-- * 'egIconLink'
--
-- * 'egWidth'
--
-- * 'egTitle'
--
-- * 'egType'
eventGadget
    :: EventGadget
eventGadget =
    EventGadget
    { _egHeight = Nothing
    , _egDisplay = Nothing
    , _egPreferences = Nothing
    , _egLink = Nothing
    , _egIconLink = Nothing
    , _egWidth = Nothing
    , _egTitle = Nothing
    , _egType = Nothing
    }

-- | The gadget\'s height in pixels. The height must be an integer greater
-- than 0. Optional.
egHeight :: Lens' EventGadget (Maybe Int32)
egHeight = lens _egHeight (\ s a -> s{_egHeight = a})

-- | The gadget\'s display mode. Optional. Possible values are: - \"icon\" -
-- The gadget displays next to the event\'s title in the calendar view. -
-- \"chip\" - The gadget displays when the event is clicked.
egDisplay :: Lens' EventGadget (Maybe Text)
egDisplay
  = lens _egDisplay (\ s a -> s{_egDisplay = a})

-- | Preferences.
egPreferences :: Lens' EventGadget (Maybe EventPreferencesGadget)
egPreferences
  = lens _egPreferences
      (\ s a -> s{_egPreferences = a})

-- | The gadget\'s URL. The URL scheme must be HTTPS.
egLink :: Lens' EventGadget (Maybe Text)
egLink = lens _egLink (\ s a -> s{_egLink = a})

-- | The gadget\'s icon URL. The URL scheme must be HTTPS.
egIconLink :: Lens' EventGadget (Maybe Text)
egIconLink
  = lens _egIconLink (\ s a -> s{_egIconLink = a})

-- | The gadget\'s width in pixels. The width must be an integer greater than
-- 0. Optional.
egWidth :: Lens' EventGadget (Maybe Int32)
egWidth = lens _egWidth (\ s a -> s{_egWidth = a})

-- | The gadget\'s title.
egTitle :: Lens' EventGadget (Maybe Text)
egTitle = lens _egTitle (\ s a -> s{_egTitle = a})

-- | The gadget\'s type.
egType :: Lens' EventGadget (Maybe Text)
egType = lens _egType (\ s a -> s{_egType = a})

-- | The organizer of the event. If the organizer is also an attendee, this
-- is indicated with a separate entry in attendees with the organizer field
-- set to True. To change the organizer, use the move operation. Read-only,
-- except when importing an event.
--
-- /See:/ 'eventOrganizer' smart constructor.
data EventOrganizer = EventOrganizer
    { _eoEmail       :: !(Maybe Text)
    , _eoSelf        :: !Bool
    , _eoDisplayName :: !(Maybe Text)
    , _eoId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventOrganizer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eoEmail'
--
-- * 'eoSelf'
--
-- * 'eoDisplayName'
--
-- * 'eoId'
eventOrganizer
    :: EventOrganizer
eventOrganizer =
    EventOrganizer
    { _eoEmail = Nothing
    , _eoSelf = False
    , _eoDisplayName = Nothing
    , _eoId = Nothing
    }

-- | The organizer\'s email address, if available. It must be a valid email
-- address as per RFC5322.
eoEmail :: Lens' EventOrganizer (Maybe Text)
eoEmail = lens _eoEmail (\ s a -> s{_eoEmail = a})

-- | Whether the organizer corresponds to the calendar on which this copy of
-- the event appears. Read-only. The default is False.
eoSelf :: Lens' EventOrganizer Bool
eoSelf = lens _eoSelf (\ s a -> s{_eoSelf = a})

-- | The organizer\'s name, if available.
eoDisplayName :: Lens' EventOrganizer (Maybe Text)
eoDisplayName
  = lens _eoDisplayName
      (\ s a -> s{_eoDisplayName = a})

-- | The organizer\'s Profile ID, if available. It corresponds to theid field
-- in the People collection of the Google+ API
eoId :: Lens' EventOrganizer (Maybe Text)
eoId = lens _eoId (\ s a -> s{_eoId = a})

-- | Preferences.
--
-- /See:/ 'eventPreferencesGadget' smart constructor.
data EventPreferencesGadget =
    EventPreferencesGadget
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventPreferencesGadget' with the minimum fields required to make a request.
--
eventPreferencesGadget
    :: EventPreferencesGadget
eventPreferencesGadget = EventPreferencesGadget

-- | Properties that are private to the copy of the event that appears on
-- this calendar.
--
-- /See:/ 'eventPrivateExtendedProperties' smart constructor.
data EventPrivateExtendedProperties =
    EventPrivateExtendedProperties
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventPrivateExtendedProperties' with the minimum fields required to make a request.
--
eventPrivateExtendedProperties
    :: EventPrivateExtendedProperties
eventPrivateExtendedProperties = EventPrivateExtendedProperties

--
-- /See:/ 'eventReminder' smart constructor.
data EventReminder = EventReminder
    { _erMethod  :: !(Maybe Text)
    , _erMinutes :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventReminder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erMethod'
--
-- * 'erMinutes'
eventReminder
    :: EventReminder
eventReminder =
    EventReminder
    { _erMethod = Nothing
    , _erMinutes = Nothing
    }

-- | The method used by this reminder. Possible values are: - \"email\" -
-- Reminders are sent via email. - \"sms\" - Reminders are sent via SMS.
-- These are only available for Google Apps for Work, Education, and
-- Government customers. Requests to set SMS reminders for other account
-- types are ignored. - \"popup\" - Reminders are sent via a UI popup.
erMethod :: Lens' EventReminder (Maybe Text)
erMethod = lens _erMethod (\ s a -> s{_erMethod = a})

-- | Number of minutes before the start of the event when the reminder should
-- trigger. Valid values are between 0 and 40320 (4 weeks in minutes).
erMinutes :: Lens' EventReminder (Maybe Int32)
erMinutes
  = lens _erMinutes (\ s a -> s{_erMinutes = a})

-- | Information about the event\'s reminders for the authenticated user.
--
-- /See:/ 'eventReminders' smart constructor.
data EventReminders = EventReminders
    { _erOverrides  :: !(Maybe [Maybe EventReminder])
    , _erUseDefault :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventReminders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erOverrides'
--
-- * 'erUseDefault'
eventReminders
    :: EventReminders
eventReminders =
    EventReminders
    { _erOverrides = Nothing
    , _erUseDefault = Nothing
    }

-- | If the event doesn\'t use the default reminders, this lists the
-- reminders specific to the event, or, if not set, indicates that no
-- reminders are set for this event. The maximum number of override
-- reminders is 5.
erOverrides :: Lens' EventReminders [Maybe EventReminder]
erOverrides
  = lens _erOverrides (\ s a -> s{_erOverrides = a}) .
      _Default
      . _Coerce

-- | Whether the default reminders of the calendar apply to the event.
erUseDefault :: Lens' EventReminders (Maybe Bool)
erUseDefault
  = lens _erUseDefault (\ s a -> s{_erUseDefault = a})

-- | Properties that are shared between copies of the event on other
-- attendees\' calendars.
--
-- /See:/ 'eventSharedExtendedProperties' smart constructor.
data EventSharedExtendedProperties =
    EventSharedExtendedProperties
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventSharedExtendedProperties' with the minimum fields required to make a request.
--
eventSharedExtendedProperties
    :: EventSharedExtendedProperties
eventSharedExtendedProperties = EventSharedExtendedProperties

-- | Source from which the event was created. For example, a web page, an
-- email message or any document identifiable by an URL with HTTP or HTTPS
-- scheme. Can only be seen or modified by the creator of the event.
--
-- /See:/ 'eventSource' smart constructor.
data EventSource = EventSource
    { _esUrl   :: !(Maybe Text)
    , _esTitle :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esUrl'
--
-- * 'esTitle'
eventSource
    :: EventSource
eventSource =
    EventSource
    { _esUrl = Nothing
    , _esTitle = Nothing
    }

-- | URL of the source pointing to a resource. The URL scheme must be HTTP or
-- HTTPS.
esUrl :: Lens' EventSource (Maybe Text)
esUrl = lens _esUrl (\ s a -> s{_esUrl = a})

-- | Title of the source; for example a title of a web page or an email
-- subject.
esTitle :: Lens' EventSource (Maybe Text)
esTitle = lens _esTitle (\ s a -> s{_esTitle = a})

--
-- /See:/ 'events' smart constructor.
data Events = Events
    { _eSummary          :: !(Maybe Text)
    , _eEtag             :: !(Maybe Text)
    , _eNextPageToken    :: !(Maybe Text)
    , _eKind             :: !Text
    , _eItems            :: !(Maybe [Maybe Event])
    , _eDefaultReminders :: !(Maybe [Maybe EventReminder])
    , _eUpdated          :: !(Maybe UTCTime)
    , _eAccessRole       :: !(Maybe Text)
    , _eTimeZone         :: !(Maybe Text)
    , _eNextSyncToken    :: !(Maybe Text)
    , _eDescription      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Events' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eSummary'
--
-- * 'eEtag'
--
-- * 'eNextPageToken'
--
-- * 'eKind'
--
-- * 'eItems'
--
-- * 'eDefaultReminders'
--
-- * 'eUpdated'
--
-- * 'eAccessRole'
--
-- * 'eTimeZone'
--
-- * 'eNextSyncToken'
--
-- * 'eDescription'
events
    :: Events
events =
    Events
    { _eSummary = Nothing
    , _eEtag = Nothing
    , _eNextPageToken = Nothing
    , _eKind = "calendar#events"
    , _eItems = Nothing
    , _eDefaultReminders = Nothing
    , _eUpdated = Nothing
    , _eAccessRole = Nothing
    , _eTimeZone = Nothing
    , _eNextSyncToken = Nothing
    , _eDescription = Nothing
    }

-- | Title of the calendar. Read-only.
eSummary :: Lens' Events (Maybe Text)
eSummary = lens _eSummary (\ s a -> s{_eSummary = a})

-- | ETag of the collection.
eEtag :: Lens' Events (Maybe Text)
eEtag = lens _eEtag (\ s a -> s{_eEtag = a})

-- | Token used to access the next page of this result. Omitted if no further
-- results are available, in which case nextSyncToken is provided.
eNextPageToken :: Lens' Events (Maybe Text)
eNextPageToken
  = lens _eNextPageToken
      (\ s a -> s{_eNextPageToken = a})

-- | Type of the collection (\"calendar#events\").
eKind :: Lens' Events Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | List of events on the calendar.
eItems :: Lens' Events [Maybe Event]
eItems
  = lens _eItems (\ s a -> s{_eItems = a}) . _Default .
      _Coerce

-- | The default reminders on the calendar for the authenticated user. These
-- reminders apply to all events on this calendar that do not explicitly
-- override them (i.e. do not have reminders.useDefault set to True).
eDefaultReminders :: Lens' Events [Maybe EventReminder]
eDefaultReminders
  = lens _eDefaultReminders
      (\ s a -> s{_eDefaultReminders = a})
      . _Default
      . _Coerce

-- | Last modification time of the calendar (as a RFC3339 timestamp).
-- Read-only.
eUpdated :: Lens' Events (Maybe UTCTime)
eUpdated = lens _eUpdated (\ s a -> s{_eUpdated = a})

-- | The user\'s access role for this calendar. Read-only. Possible values
-- are: - \"none\" - The user has no access. - \"freeBusyReader\" - The
-- user has read access to free\/busy information. - \"reader\" - The user
-- has read access to the calendar. Private events will appear to users
-- with reader access, but event details will be hidden. - \"writer\" - The
-- user has read and write access to the calendar. Private events will
-- appear to users with writer access, and event details will be visible. -
-- \"owner\" - The user has ownership of the calendar. This role has all of
-- the permissions of the writer role with the additional ability to see
-- and manipulate ACLs.
eAccessRole :: Lens' Events (Maybe Text)
eAccessRole
  = lens _eAccessRole (\ s a -> s{_eAccessRole = a})

-- | The time zone of the calendar. Read-only.
eTimeZone :: Lens' Events (Maybe Text)
eTimeZone
  = lens _eTimeZone (\ s a -> s{_eTimeZone = a})

-- | Token used at a later point in time to retrieve only the entries that
-- have changed since this result was returned. Omitted if further results
-- are available, in which case nextPageToken is provided.
eNextSyncToken :: Lens' Events (Maybe Text)
eNextSyncToken
  = lens _eNextSyncToken
      (\ s a -> s{_eNextSyncToken = a})

-- | Description of the calendar. Read-only.
eDescription :: Lens' Events (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

--
-- /See:/ 'freeBusyCalendar' smart constructor.
data FreeBusyCalendar = FreeBusyCalendar
    { _fbcBusy   :: !(Maybe [Maybe TimePeriod])
    , _fbcErrors :: !(Maybe [Maybe Error])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyCalendar' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbcBusy'
--
-- * 'fbcErrors'
freeBusyCalendar
    :: FreeBusyCalendar
freeBusyCalendar =
    FreeBusyCalendar
    { _fbcBusy = Nothing
    , _fbcErrors = Nothing
    }

-- | List of time ranges during which this calendar should be regarded as
-- busy.
fbcBusy :: Lens' FreeBusyCalendar [Maybe TimePeriod]
fbcBusy
  = lens _fbcBusy (\ s a -> s{_fbcBusy = a}) . _Default
      . _Coerce

-- | Optional error(s) (if computation for the calendar failed).
fbcErrors :: Lens' FreeBusyCalendar [Maybe Error]
fbcErrors
  = lens _fbcErrors (\ s a -> s{_fbcErrors = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'freeBusyGroup' smart constructor.
data FreeBusyGroup = FreeBusyGroup
    { _fbgCalendars :: !(Maybe [Text])
    , _fbgErrors    :: !(Maybe [Maybe Error])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbgCalendars'
--
-- * 'fbgErrors'
freeBusyGroup
    :: FreeBusyGroup
freeBusyGroup =
    FreeBusyGroup
    { _fbgCalendars = Nothing
    , _fbgErrors = Nothing
    }

-- | List of calendars\' identifiers within a group.
fbgCalendars :: Lens' FreeBusyGroup [Text]
fbgCalendars
  = lens _fbgCalendars (\ s a -> s{_fbgCalendars = a})
      . _Default
      . _Coerce

-- | Optional error(s) (if computation for the group failed).
fbgErrors :: Lens' FreeBusyGroup [Maybe Error]
fbgErrors
  = lens _fbgErrors (\ s a -> s{_fbgErrors = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'freeBusyRequest' smart constructor.
data FreeBusyRequest = FreeBusyRequest
    { _fbrCalendarExpansionMax :: !(Maybe Int32)
    , _fbrTimeMin              :: !(Maybe UTCTime)
    , _fbrItems                :: !(Maybe [Maybe FreeBusyRequestItem])
    , _fbrGroupExpansionMax    :: !(Maybe Int32)
    , _fbrTimeZone             :: !Text
    , _fbrTimeMax              :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbrCalendarExpansionMax'
--
-- * 'fbrTimeMin'
--
-- * 'fbrItems'
--
-- * 'fbrGroupExpansionMax'
--
-- * 'fbrTimeZone'
--
-- * 'fbrTimeMax'
freeBusyRequest
    :: FreeBusyRequest
freeBusyRequest =
    FreeBusyRequest
    { _fbrCalendarExpansionMax = Nothing
    , _fbrTimeMin = Nothing
    , _fbrItems = Nothing
    , _fbrGroupExpansionMax = Nothing
    , _fbrTimeZone = "UTC"
    , _fbrTimeMax = Nothing
    }

-- | Maximal number of calendars for which FreeBusy information is to be
-- provided. Optional.
fbrCalendarExpansionMax :: Lens' FreeBusyRequest (Maybe Int32)
fbrCalendarExpansionMax
  = lens _fbrCalendarExpansionMax
      (\ s a -> s{_fbrCalendarExpansionMax = a})

-- | The start of the interval for the query.
fbrTimeMin :: Lens' FreeBusyRequest (Maybe UTCTime)
fbrTimeMin
  = lens _fbrTimeMin (\ s a -> s{_fbrTimeMin = a})

-- | List of calendars and\/or groups to query.
fbrItems :: Lens' FreeBusyRequest [Maybe FreeBusyRequestItem]
fbrItems
  = lens _fbrItems (\ s a -> s{_fbrItems = a}) .
      _Default
      . _Coerce

-- | Maximal number of calendar identifiers to be provided for a single
-- group. Optional. An error will be returned for a group with more members
-- than this value.
fbrGroupExpansionMax :: Lens' FreeBusyRequest (Maybe Int32)
fbrGroupExpansionMax
  = lens _fbrGroupExpansionMax
      (\ s a -> s{_fbrGroupExpansionMax = a})

-- | Time zone used in the response. Optional. The default is UTC.
fbrTimeZone :: Lens' FreeBusyRequest Text
fbrTimeZone
  = lens _fbrTimeZone (\ s a -> s{_fbrTimeZone = a})

-- | The end of the interval for the query.
fbrTimeMax :: Lens' FreeBusyRequest (Maybe UTCTime)
fbrTimeMax
  = lens _fbrTimeMax (\ s a -> s{_fbrTimeMax = a})

--
-- /See:/ 'freeBusyRequestItem' smart constructor.
newtype FreeBusyRequestItem = FreeBusyRequestItem
    { _fbriId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyRequestItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbriId'
freeBusyRequestItem
    :: FreeBusyRequestItem
freeBusyRequestItem =
    FreeBusyRequestItem
    { _fbriId = Nothing
    }

-- | The identifier of a calendar or a group.
fbriId :: Lens' FreeBusyRequestItem (Maybe Text)
fbriId = lens _fbriId (\ s a -> s{_fbriId = a})

--
-- /See:/ 'freeBusyResponse' smart constructor.
data FreeBusyResponse = FreeBusyResponse
    { _fGroups    :: !(Maybe FreeBusyResponseGroups)
    , _fTimeMin   :: !(Maybe UTCTime)
    , _fKind      :: !Text
    , _fCalendars :: !(Maybe FreeBusyResponseCalendars)
    , _fTimeMax   :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fGroups'
--
-- * 'fTimeMin'
--
-- * 'fKind'
--
-- * 'fCalendars'
--
-- * 'fTimeMax'
freeBusyResponse
    :: FreeBusyResponse
freeBusyResponse =
    FreeBusyResponse
    { _fGroups = Nothing
    , _fTimeMin = Nothing
    , _fKind = "calendar#freeBusy"
    , _fCalendars = Nothing
    , _fTimeMax = Nothing
    }

-- | Expansion of groups.
fGroups :: Lens' FreeBusyResponse (Maybe FreeBusyResponseGroups)
fGroups = lens _fGroups (\ s a -> s{_fGroups = a})

-- | The start of the interval.
fTimeMin :: Lens' FreeBusyResponse (Maybe UTCTime)
fTimeMin = lens _fTimeMin (\ s a -> s{_fTimeMin = a})

-- | Type of the resource (\"calendar#freeBusy\").
fKind :: Lens' FreeBusyResponse Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | List of free\/busy information for calendars.
fCalendars :: Lens' FreeBusyResponse (Maybe FreeBusyResponseCalendars)
fCalendars
  = lens _fCalendars (\ s a -> s{_fCalendars = a})

-- | The end of the interval.
fTimeMax :: Lens' FreeBusyResponse (Maybe UTCTime)
fTimeMax = lens _fTimeMax (\ s a -> s{_fTimeMax = a})

-- | List of free\/busy information for calendars.
--
-- /See:/ 'freeBusyResponseCalendars' smart constructor.
data FreeBusyResponseCalendars =
    FreeBusyResponseCalendars
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyResponseCalendars' with the minimum fields required to make a request.
--
freeBusyResponseCalendars
    :: FreeBusyResponseCalendars
freeBusyResponseCalendars = FreeBusyResponseCalendars

-- | Expansion of groups.
--
-- /See:/ 'freeBusyResponseGroups' smart constructor.
data FreeBusyResponseGroups =
    FreeBusyResponseGroups
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyResponseGroups' with the minimum fields required to make a request.
--
freeBusyResponseGroups
    :: FreeBusyResponseGroups
freeBusyResponseGroups = FreeBusyResponseGroups

--
-- /See:/ 'setting' smart constructor.
data Setting = Setting
    { _sEtag  :: !(Maybe Text)
    , _sKind  :: !Text
    , _sValue :: !(Maybe Text)
    , _sId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Setting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEtag'
--
-- * 'sKind'
--
-- * 'sValue'
--
-- * 'sId'
setting
    :: Setting
setting =
    Setting
    { _sEtag = Nothing
    , _sKind = "calendar#setting"
    , _sValue = Nothing
    , _sId = Nothing
    }

-- | ETag of the resource.
sEtag :: Lens' Setting (Maybe Text)
sEtag = lens _sEtag (\ s a -> s{_sEtag = a})

-- | Type of the resource (\"calendar#setting\").
sKind :: Lens' Setting Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | Value of the user setting. The format of the value depends on the ID of
-- the setting. It must always be a UTF-8 string of length up to 1024
-- characters.
sValue :: Lens' Setting (Maybe Text)
sValue = lens _sValue (\ s a -> s{_sValue = a})

-- | The id of the user setting.
sId :: Lens' Setting (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

--
-- /See:/ 'settings' smart constructor.
data Settings = Settings
    { _setEtag          :: !(Maybe Text)
    , _setNextPageToken :: !(Maybe Text)
    , _setKind          :: !Text
    , _setItems         :: !(Maybe [Maybe Setting])
    , _setNextSyncToken :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setEtag'
--
-- * 'setNextPageToken'
--
-- * 'setKind'
--
-- * 'setItems'
--
-- * 'setNextSyncToken'
settings
    :: Settings
settings =
    Settings
    { _setEtag = Nothing
    , _setNextPageToken = Nothing
    , _setKind = "calendar#settings"
    , _setItems = Nothing
    , _setNextSyncToken = Nothing
    }

-- | Etag of the collection.
setEtag :: Lens' Settings (Maybe Text)
setEtag = lens _setEtag (\ s a -> s{_setEtag = a})

-- | Token used to access the next page of this result. Omitted if no further
-- results are available, in which case nextSyncToken is provided.
setNextPageToken :: Lens' Settings (Maybe Text)
setNextPageToken
  = lens _setNextPageToken
      (\ s a -> s{_setNextPageToken = a})

-- | Type of the collection (\"calendar#settings\").
setKind :: Lens' Settings Text
setKind = lens _setKind (\ s a -> s{_setKind = a})

-- | List of user settings.
setItems :: Lens' Settings [Maybe Setting]
setItems
  = lens _setItems (\ s a -> s{_setItems = a}) .
      _Default
      . _Coerce

-- | Token used at a later point in time to retrieve only the entries that
-- have changed since this result was returned. Omitted if further results
-- are available, in which case nextPageToken is provided.
setNextSyncToken :: Lens' Settings (Maybe Text)
setNextSyncToken
  = lens _setNextSyncToken
      (\ s a -> s{_setNextSyncToken = a})

--
-- /See:/ 'timePeriod' smart constructor.
data TimePeriod = TimePeriod
    { _tpStart :: !(Maybe UTCTime)
    , _tpEnd   :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimePeriod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpStart'
--
-- * 'tpEnd'
timePeriod
    :: TimePeriod
timePeriod =
    TimePeriod
    { _tpStart = Nothing
    , _tpEnd = Nothing
    }

-- | The (inclusive) start of the time period.
tpStart :: Lens' TimePeriod (Maybe UTCTime)
tpStart = lens _tpStart (\ s a -> s{_tpStart = a})

-- | The (exclusive) end of the time period.
tpEnd :: Lens' TimePeriod (Maybe UTCTime)
tpEnd = lens _tpEnd (\ s a -> s{_tpEnd = a})
