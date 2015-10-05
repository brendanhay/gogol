{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsCalendar.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsCalendar.Types.Product where

import           Network.Google.AppsCalendar.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'calendarListEntry' smart constructor.
data CalendarListEntry = CalendarListEntry
    { _cleSummary              :: !(Maybe Text)
    , _cleEtag                 :: !(Maybe Text)
    , _cleLocation             :: !(Maybe Text)
    , _cleKind                 :: !Text
    , _cleNotificationSettings :: !(Maybe CalendarListEntryNotificationSettings)
    , _cleBackgRoundColor      :: !(Maybe Text)
    , _cleForegRoundColor      :: !(Maybe Text)
    , _cleDefaultReminders     :: !(Maybe [EventReminder])
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
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cleBackgRoundColor'
--
-- * 'cleForegRoundColor'
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
    , _cleBackgRoundColor = Nothing
    , _cleForegRoundColor = Nothing
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
cleBackgRoundColor :: Lens' CalendarListEntry (Maybe Text)
cleBackgRoundColor
  = lens _cleBackgRoundColor
      (\ s a -> s{_cleBackgRoundColor = a})

-- | The foreground color of the calendar in the hexadecimal format
-- \"#ffffff\". This property supersedes the index-based colorId property.
-- To set or change this property, you need to specify colorRgbFormat=true
-- in the parameters of the insert, update and patch methods. Optional.
cleForegRoundColor :: Lens' CalendarListEntry (Maybe Text)
cleForegRoundColor
  = lens _cleForegRoundColor
      (\ s a -> s{_cleForegRoundColor = a})

-- | The default reminders that the authenticated user has for this calendar.
cleDefaultReminders :: Lens' CalendarListEntry [EventReminder]
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

instance FromJSON CalendarListEntry where
        parseJSON
          = withObject "CalendarListEntry"
              (\ o ->
                 CalendarListEntry <$>
                   (o .:? "summary") <*> (o .:? "etag") <*>
                     (o .:? "location")
                     <*> (o .:? "kind" .!= "calendar#calendarListEntry")
                     <*> (o .:? "notificationSettings")
                     <*> (o .:? "backgroundColor")
                     <*> (o .:? "foregroundColor")
                     <*> (o .:? "defaultReminders" .!= mempty)
                     <*> (o .:? "selected" .!= False)
                     <*> (o .:? "primary" .!= False)
                     <*> (o .:? "hidden" .!= False)
                     <*> (o .:? "id")
                     <*> (o .:? "deleted" .!= False)
                     <*> (o .:? "accessRole")
                     <*> (o .:? "summaryOverride")
                     <*> (o .:? "colorId")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "description"))

instance ToJSON CalendarListEntry where
        toJSON CalendarListEntry{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _cleSummary,
                  ("etag" .=) <$> _cleEtag,
                  ("location" .=) <$> _cleLocation,
                  Just ("kind" .= _cleKind),
                  ("notificationSettings" .=) <$>
                    _cleNotificationSettings,
                  ("backgroundColor" .=) <$> _cleBackgRoundColor,
                  ("foregroundColor" .=) <$> _cleForegRoundColor,
                  ("defaultReminders" .=) <$> _cleDefaultReminders,
                  Just ("selected" .= _cleSelected),
                  Just ("primary" .= _clePrimary),
                  Just ("hidden" .= _cleHidden), ("id" .=) <$> _cleId,
                  Just ("deleted" .= _cleDeleted),
                  ("accessRole" .=) <$> _cleAccessRole,
                  ("summaryOverride" .=) <$> _cleSummaryOverride,
                  ("colorId" .=) <$> _cleColorId,
                  ("timeZone" .=) <$> _cleTimeZone,
                  ("description" .=) <$> _cleDescription])

--
-- /See:/ 'event' smart constructor.
data Event = Event
    { _eSummary                 :: !(Maybe Text)
    , _eOriginalStartTime       :: !(Maybe EventDateTime)
    , _eCreator                 :: !(Maybe EventCreator)
    , _eStatus                  :: !(Maybe Text)
    , _eGuestsCanModify         :: !Bool
    , _eEtag                    :: !(Maybe Text)
    , _eAttachments             :: !(Maybe [EventAttachment])
    , _eLocked                  :: !Bool
    , _eLocation                :: !(Maybe Text)
    , _eAttendees               :: !(Maybe [EventAttendee])
    , _eReminders               :: !(Maybe EventReminders)
    , _eKind                    :: !Text
    , _eCreated                 :: !(Maybe DateTime')
    , _eTransparency            :: !Text
    , _eRecurringEventId        :: !(Maybe Text)
    , _eStart                   :: !(Maybe EventDateTime)
    , _ePrivateCopy             :: !Bool
    , _eEndTimeUnspecified      :: !Bool
    , _eExtendedProperties      :: !(Maybe EventExtendedProperties)
    , _eVisibility              :: !Text
    , _eGuestsCanInviteOthers   :: !Bool
    , _eRecurrence              :: !(Maybe [Text])
    , _eGadget                  :: !(Maybe EventGadget)
    , _eSequence                :: !(Maybe Int32)
    , _eICalUId                 :: !(Maybe Text)
    , _eEnd                     :: !(Maybe EventDateTime)
    , _eAttendeesOmitted        :: !Bool
    , _eSource                  :: !(Maybe EventSource)
    , _eId                      :: !(Maybe Text)
    , _eHTMLLink                :: !(Maybe Text)
    , _eUpdated                 :: !(Maybe DateTime')
    , _eColorId                 :: !(Maybe Text)
    , _eAnyoneCanAddSelf        :: !Bool
    , _eGuestsCanSeeOtherGuests :: !Bool
    , _eHangoutLink             :: !(Maybe Text)
    , _eDescription             :: !(Maybe Text)
    , _eOrganizer               :: !(Maybe EventOrganizer)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eSummary'
--
-- * 'eOriginalStartTime'
--
-- * 'eCreator'
--
-- * 'eStatus'
--
-- * 'eGuestsCanModify'
--
-- * 'eEtag'
--
-- * 'eAttachments'
--
-- * 'eLocked'
--
-- * 'eLocation'
--
-- * 'eAttendees'
--
-- * 'eReminders'
--
-- * 'eKind'
--
-- * 'eCreated'
--
-- * 'eTransparency'
--
-- * 'eRecurringEventId'
--
-- * 'eStart'
--
-- * 'ePrivateCopy'
--
-- * 'eEndTimeUnspecified'
--
-- * 'eExtendedProperties'
--
-- * 'eVisibility'
--
-- * 'eGuestsCanInviteOthers'
--
-- * 'eRecurrence'
--
-- * 'eGadget'
--
-- * 'eSequence'
--
-- * 'eICalUId'
--
-- * 'eEnd'
--
-- * 'eAttendeesOmitted'
--
-- * 'eSource'
--
-- * 'eId'
--
-- * 'eHTMLLink'
--
-- * 'eUpdated'
--
-- * 'eColorId'
--
-- * 'eAnyoneCanAddSelf'
--
-- * 'eGuestsCanSeeOtherGuests'
--
-- * 'eHangoutLink'
--
-- * 'eDescription'
--
-- * 'eOrganizer'
event
    :: Event
event =
    Event
    { _eSummary = Nothing
    , _eOriginalStartTime = Nothing
    , _eCreator = Nothing
    , _eStatus = Nothing
    , _eGuestsCanModify = False
    , _eEtag = Nothing
    , _eAttachments = Nothing
    , _eLocked = False
    , _eLocation = Nothing
    , _eAttendees = Nothing
    , _eReminders = Nothing
    , _eKind = "calendar#event"
    , _eCreated = Nothing
    , _eTransparency = "opaque"
    , _eRecurringEventId = Nothing
    , _eStart = Nothing
    , _ePrivateCopy = False
    , _eEndTimeUnspecified = False
    , _eExtendedProperties = Nothing
    , _eVisibility = "default"
    , _eGuestsCanInviteOthers = True
    , _eRecurrence = Nothing
    , _eGadget = Nothing
    , _eSequence = Nothing
    , _eICalUId = Nothing
    , _eEnd = Nothing
    , _eAttendeesOmitted = False
    , _eSource = Nothing
    , _eId = Nothing
    , _eHTMLLink = Nothing
    , _eUpdated = Nothing
    , _eColorId = Nothing
    , _eAnyoneCanAddSelf = False
    , _eGuestsCanSeeOtherGuests = True
    , _eHangoutLink = Nothing
    , _eDescription = Nothing
    , _eOrganizer = Nothing
    }

-- | Title of the event.
eSummary :: Lens' Event (Maybe Text)
eSummary = lens _eSummary (\ s a -> s{_eSummary = a})

-- | For an instance of a recurring event, this is the time at which this
-- event would start according to the recurrence data in the recurring
-- event identified by recurringEventId. Immutable.
eOriginalStartTime :: Lens' Event (Maybe EventDateTime)
eOriginalStartTime
  = lens _eOriginalStartTime
      (\ s a -> s{_eOriginalStartTime = a})

-- | The creator of the event. Read-only.
eCreator :: Lens' Event (Maybe EventCreator)
eCreator = lens _eCreator (\ s a -> s{_eCreator = a})

-- | Status of the event. Optional. Possible values are: - \"confirmed\" -
-- The event is confirmed. This is the default status. - \"tentative\" -
-- The event is tentatively confirmed. - \"cancelled\" - The event is
-- cancelled.
eStatus :: Lens' Event (Maybe Text)
eStatus = lens _eStatus (\ s a -> s{_eStatus = a})

-- | Whether attendees other than the organizer can modify the event.
-- Optional. The default is False.
eGuestsCanModify :: Lens' Event Bool
eGuestsCanModify
  = lens _eGuestsCanModify
      (\ s a -> s{_eGuestsCanModify = a})

-- | ETag of the resource.
eEtag :: Lens' Event (Maybe Text)
eEtag = lens _eEtag (\ s a -> s{_eEtag = a})

-- | File attachments for the event. Currently only Google Drive attachments
-- are supported. In order to modify attachments the supportsAttachments
-- request parameter should be set to true. There can be at most 25
-- attachments per event,
eAttachments :: Lens' Event [EventAttachment]
eAttachments
  = lens _eAttachments (\ s a -> s{_eAttachments = a})
      . _Default
      . _Coerce

-- | Whether this is a locked event copy where no changes can be made to the
-- main event fields \"summary\", \"description\", \"location\", \"start\",
-- \"end\" or \"recurrence\". The default is False. Read-Only.
eLocked :: Lens' Event Bool
eLocked = lens _eLocked (\ s a -> s{_eLocked = a})

-- | Geographic location of the event as free-form text. Optional.
eLocation :: Lens' Event (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | The attendees of the event. See the Events with attendees guide for more
-- information on scheduling events with other calendar users.
eAttendees :: Lens' Event [EventAttendee]
eAttendees
  = lens _eAttendees (\ s a -> s{_eAttendees = a}) .
      _Default
      . _Coerce

-- | Information about the event\'s reminders for the authenticated user.
eReminders :: Lens' Event (Maybe EventReminders)
eReminders
  = lens _eReminders (\ s a -> s{_eReminders = a})

-- | Type of the resource (\"calendar#event\").
eKind :: Lens' Event Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | Creation time of the event (as a RFC3339 timestamp). Read-only.
eCreated :: Lens' Event (Maybe UTCTime)
eCreated
  = lens _eCreated (\ s a -> s{_eCreated = a}) .
      mapping _DateTime

-- | Whether the event blocks time on the calendar. Optional. Possible values
-- are: - \"opaque\" - The event blocks time on the calendar. This is the
-- default value. - \"transparent\" - The event does not block time on the
-- calendar.
eTransparency :: Lens' Event Text
eTransparency
  = lens _eTransparency
      (\ s a -> s{_eTransparency = a})

-- | For an instance of a recurring event, this is the id of the recurring
-- event to which this instance belongs. Immutable.
eRecurringEventId :: Lens' Event (Maybe Text)
eRecurringEventId
  = lens _eRecurringEventId
      (\ s a -> s{_eRecurringEventId = a})

-- | The (inclusive) start time of the event. For a recurring event, this is
-- the start time of the first instance.
eStart :: Lens' Event (Maybe EventDateTime)
eStart = lens _eStart (\ s a -> s{_eStart = a})

-- | Whether this is a private event copy where changes are not shared with
-- other copies on other calendars. Optional. Immutable. The default is
-- False.
ePrivateCopy :: Lens' Event Bool
ePrivateCopy
  = lens _ePrivateCopy (\ s a -> s{_ePrivateCopy = a})

-- | Whether the end time is actually unspecified. An end time is still
-- provided for compatibility reasons, even if this attribute is set to
-- True. The default is False.
eEndTimeUnspecified :: Lens' Event Bool
eEndTimeUnspecified
  = lens _eEndTimeUnspecified
      (\ s a -> s{_eEndTimeUnspecified = a})

-- | Extended properties of the event.
eExtendedProperties :: Lens' Event (Maybe EventExtendedProperties)
eExtendedProperties
  = lens _eExtendedProperties
      (\ s a -> s{_eExtendedProperties = a})

-- | Visibility of the event. Optional. Possible values are: - \"default\" -
-- Uses the default visibility for events on the calendar. This is the
-- default value. - \"public\" - The event is public and event details are
-- visible to all readers of the calendar. - \"private\" - The event is
-- private and only event attendees may view event details. -
-- \"confidential\" - The event is private. This value is provided for
-- compatibility reasons.
eVisibility :: Lens' Event Text
eVisibility
  = lens _eVisibility (\ s a -> s{_eVisibility = a})

-- | Whether attendees other than the organizer can invite others to the
-- event. Optional. The default is True.
eGuestsCanInviteOthers :: Lens' Event Bool
eGuestsCanInviteOthers
  = lens _eGuestsCanInviteOthers
      (\ s a -> s{_eGuestsCanInviteOthers = a})

-- | List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as
-- specified in RFC5545. Note that DTSTART and DTEND lines are not allowed
-- in this field; event start and end times are specified in the start and
-- end fields. This field is omitted for single events or instances of
-- recurring events.
eRecurrence :: Lens' Event [Text]
eRecurrence
  = lens _eRecurrence (\ s a -> s{_eRecurrence = a}) .
      _Default
      . _Coerce

-- | A gadget that extends this event.
eGadget :: Lens' Event (Maybe EventGadget)
eGadget = lens _eGadget (\ s a -> s{_eGadget = a})

-- | Sequence number as per iCalendar.
eSequence :: Lens' Event (Maybe Int32)
eSequence
  = lens _eSequence (\ s a -> s{_eSequence = a})

-- | Event unique identifier as defined in RFC5545. It is used to uniquely
-- identify events accross calendaring systems and must be supplied when
-- importing events via the import method. Note that the icalUID and the id
-- are not identical and only one of them should be supplied at event
-- creation time. One difference in their semantics is that in recurring
-- events, all occurrences of one event have different ids while they all
-- share the same icalUIDs.
eICalUId :: Lens' Event (Maybe Text)
eICalUId = lens _eICalUId (\ s a -> s{_eICalUId = a})

-- | The (exclusive) end time of the event. For a recurring event, this is
-- the end time of the first instance.
eEnd :: Lens' Event (Maybe EventDateTime)
eEnd = lens _eEnd (\ s a -> s{_eEnd = a})

-- | Whether attendees may have been omitted from the event\'s
-- representation. When retrieving an event, this may be due to a
-- restriction specified by the maxAttendee query parameter. When updating
-- an event, this can be used to only update the participant\'s response.
-- Optional. The default is False.
eAttendeesOmitted :: Lens' Event Bool
eAttendeesOmitted
  = lens _eAttendeesOmitted
      (\ s a -> s{_eAttendeesOmitted = a})

-- | Source from which the event was created. For example, a web page, an
-- email message or any document identifiable by an URL with HTTP or HTTPS
-- scheme. Can only be seen or modified by the creator of the event.
eSource :: Lens' Event (Maybe EventSource)
eSource = lens _eSource (\ s a -> s{_eSource = a})

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
eId :: Lens' Event (Maybe Text)
eId = lens _eId (\ s a -> s{_eId = a})

-- | An absolute link to this event in the Google Calendar Web UI. Read-only.
eHTMLLink :: Lens' Event (Maybe Text)
eHTMLLink
  = lens _eHTMLLink (\ s a -> s{_eHTMLLink = a})

-- | Last modification time of the event (as a RFC3339 timestamp). Read-only.
eUpdated :: Lens' Event (Maybe UTCTime)
eUpdated
  = lens _eUpdated (\ s a -> s{_eUpdated = a}) .
      mapping _DateTime

-- | The color of the event. This is an ID referring to an entry in the event
-- section of the colors definition (see the colors endpoint). Optional.
eColorId :: Lens' Event (Maybe Text)
eColorId = lens _eColorId (\ s a -> s{_eColorId = a})

-- | Whether anyone can invite themselves to the event. Optional. The default
-- is False.
eAnyoneCanAddSelf :: Lens' Event Bool
eAnyoneCanAddSelf
  = lens _eAnyoneCanAddSelf
      (\ s a -> s{_eAnyoneCanAddSelf = a})

-- | Whether attendees other than the organizer can see who the event\'s
-- attendees are. Optional. The default is True.
eGuestsCanSeeOtherGuests :: Lens' Event Bool
eGuestsCanSeeOtherGuests
  = lens _eGuestsCanSeeOtherGuests
      (\ s a -> s{_eGuestsCanSeeOtherGuests = a})

-- | An absolute link to the Google+ hangout associated with this event.
-- Read-only.
eHangoutLink :: Lens' Event (Maybe Text)
eHangoutLink
  = lens _eHangoutLink (\ s a -> s{_eHangoutLink = a})

-- | Description of the event. Optional.
eDescription :: Lens' Event (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

-- | The organizer of the event. If the organizer is also an attendee, this
-- is indicated with a separate entry in attendees with the organizer field
-- set to True. To change the organizer, use the move operation. Read-only,
-- except when importing an event.
eOrganizer :: Lens' Event (Maybe EventOrganizer)
eOrganizer
  = lens _eOrganizer (\ s a -> s{_eOrganizer = a})

instance FromJSON Event where
        parseJSON
          = withObject "Event"
              (\ o ->
                 Event <$>
                   (o .:? "summary") <*> (o .:? "originalStartTime") <*>
                     (o .:? "creator")
                     <*> (o .:? "status")
                     <*> (o .:? "guestsCanModify" .!= False)
                     <*> (o .:? "etag")
                     <*> (o .:? "attachments" .!= mempty)
                     <*> (o .:? "locked" .!= False)
                     <*> (o .:? "location")
                     <*> (o .:? "attendees" .!= mempty)
                     <*> (o .:? "reminders")
                     <*> (o .:? "kind" .!= "calendar#event")
                     <*> (o .:? "created")
                     <*> (o .:? "transparency" .!= "opaque")
                     <*> (o .:? "recurringEventId")
                     <*> (o .:? "start")
                     <*> (o .:? "privateCopy" .!= False)
                     <*> (o .:? "endTimeUnspecified" .!= False)
                     <*> (o .:? "extendedProperties")
                     <*> (o .:? "visibility" .!= "default")
                     <*> (o .:? "guestsCanInviteOthers" .!= True)
                     <*> (o .:? "recurrence" .!= mempty)
                     <*> (o .:? "gadget")
                     <*> (o .:? "sequence")
                     <*> (o .:? "iCalUID")
                     <*> (o .:? "end")
                     <*> (o .:? "attendeesOmitted" .!= False)
                     <*> (o .:? "source")
                     <*> (o .:? "id")
                     <*> (o .:? "htmlLink")
                     <*> (o .:? "updated")
                     <*> (o .:? "colorId")
                     <*> (o .:? "anyoneCanAddSelf" .!= False)
                     <*> (o .:? "guestsCanSeeOtherGuests" .!= True)
                     <*> (o .:? "hangoutLink")
                     <*> (o .:? "description")
                     <*> (o .:? "organizer"))

instance ToJSON Event where
        toJSON Event{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _eSummary,
                  ("originalStartTime" .=) <$> _eOriginalStartTime,
                  ("creator" .=) <$> _eCreator,
                  ("status" .=) <$> _eStatus,
                  Just ("guestsCanModify" .= _eGuestsCanModify),
                  ("etag" .=) <$> _eEtag,
                  ("attachments" .=) <$> _eAttachments,
                  Just ("locked" .= _eLocked),
                  ("location" .=) <$> _eLocation,
                  ("attendees" .=) <$> _eAttendees,
                  ("reminders" .=) <$> _eReminders,
                  Just ("kind" .= _eKind),
                  ("created" .=) <$> _eCreated,
                  Just ("transparency" .= _eTransparency),
                  ("recurringEventId" .=) <$> _eRecurringEventId,
                  ("start" .=) <$> _eStart,
                  Just ("privateCopy" .= _ePrivateCopy),
                  Just ("endTimeUnspecified" .= _eEndTimeUnspecified),
                  ("extendedProperties" .=) <$> _eExtendedProperties,
                  Just ("visibility" .= _eVisibility),
                  Just
                    ("guestsCanInviteOthers" .= _eGuestsCanInviteOthers),
                  ("recurrence" .=) <$> _eRecurrence,
                  ("gadget" .=) <$> _eGadget,
                  ("sequence" .=) <$> _eSequence,
                  ("iCalUID" .=) <$> _eICalUId, ("end" .=) <$> _eEnd,
                  Just ("attendeesOmitted" .= _eAttendeesOmitted),
                  ("source" .=) <$> _eSource, ("id" .=) <$> _eId,
                  ("htmlLink" .=) <$> _eHTMLLink,
                  ("updated" .=) <$> _eUpdated,
                  ("colorId" .=) <$> _eColorId,
                  Just ("anyoneCanAddSelf" .= _eAnyoneCanAddSelf),
                  Just
                    ("guestsCanSeeOtherGuests" .=
                       _eGuestsCanSeeOtherGuests),
                  ("hangoutLink" .=) <$> _eHangoutLink,
                  ("description" .=) <$> _eDescription,
                  ("organizer" .=) <$> _eOrganizer])

-- | The notifications that the authenticated user is receiving for this
-- calendar.
--
-- /See:/ 'calendarListEntryNotificationSettings' smart constructor.
newtype CalendarListEntryNotificationSettings = CalendarListEntryNotificationSettings
    { _clensNotifications :: Maybe [CalendarNotification]
    } deriving (Eq,Show,Data,Typeable,Generic)

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
clensNotifications :: Lens' CalendarListEntryNotificationSettings [CalendarNotification]
clensNotifications
  = lens _clensNotifications
      (\ s a -> s{_clensNotifications = a})
      . _Default
      . _Coerce

instance FromJSON
         CalendarListEntryNotificationSettings where
        parseJSON
          = withObject "CalendarListEntryNotificationSettings"
              (\ o ->
                 CalendarListEntryNotificationSettings <$>
                   (o .:? "notifications" .!= mempty))

instance ToJSON CalendarListEntryNotificationSettings
         where
        toJSON CalendarListEntryNotificationSettings{..}
          = object
              (catMaybes
                 [("notifications" .=) <$> _clensNotifications])

-- | The scope of the rule.
--
-- /See:/ 'aclRuleScope' smart constructor.
data ACLRuleScope = ACLRuleScope
    { _arsValue :: !(Maybe Text)
    , _arsType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLRuleScope' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsValue'
--
-- * 'arsType'
aclRuleScope
    :: ACLRuleScope
aclRuleScope =
    ACLRuleScope
    { _arsValue = Nothing
    , _arsType = Nothing
    }

-- | The email address of a user or group, or the name of a domain, depending
-- on the scope type. Omitted for type \"default\".
arsValue :: Lens' ACLRuleScope (Maybe Text)
arsValue = lens _arsValue (\ s a -> s{_arsValue = a})

-- | The type of the scope. Possible values are: - \"default\" - The public
-- scope. This is the default value. - \"user\" - Limits the scope to a
-- single user. - \"group\" - Limits the scope to a group. - \"domain\" -
-- Limits the scope to a domain. Note: The permissions granted to the
-- \"default\", or public, scope apply to any user, authenticated or not.
arsType :: Lens' ACLRuleScope (Maybe Text)
arsType = lens _arsType (\ s a -> s{_arsType = a})

instance FromJSON ACLRuleScope where
        parseJSON
          = withObject "ACLRuleScope"
              (\ o ->
                 ACLRuleScope <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON ACLRuleScope where
        toJSON ACLRuleScope{..}
          = object
              (catMaybes
                 [("value" .=) <$> _arsValue,
                  ("type" .=) <$> _arsType])

-- | A global palette of event colors, mapping from the color ID to its
-- definition. An event resource may refer to one of these color IDs in its
-- color field. Read-only.
--
-- /See:/ 'colorsEvent' smart constructor.
data ColorsEvent =
    ColorsEvent
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColorsEvent' with the minimum fields required to make a request.
--
colorsEvent
    :: ColorsEvent
colorsEvent = ColorsEvent

instance FromJSON ColorsEvent where
        parseJSON
          = withObject "ColorsEvent" (\ o -> pure ColorsEvent)

instance ToJSON ColorsEvent where
        toJSON = const (Object mempty)

--
-- /See:/ 'settings' smart constructor.
data Settings = Settings
    { _sEtag          :: !(Maybe Text)
    , _sNextPageToken :: !(Maybe Text)
    , _sKind          :: !Text
    , _sItems         :: !(Maybe [Setting])
    , _sNextSyncToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEtag'
--
-- * 'sNextPageToken'
--
-- * 'sKind'
--
-- * 'sItems'
--
-- * 'sNextSyncToken'
settings
    :: Settings
settings =
    Settings
    { _sEtag = Nothing
    , _sNextPageToken = Nothing
    , _sKind = "calendar#settings"
    , _sItems = Nothing
    , _sNextSyncToken = Nothing
    }

-- | Etag of the collection.
sEtag :: Lens' Settings (Maybe Text)
sEtag = lens _sEtag (\ s a -> s{_sEtag = a})

-- | Token used to access the next page of this result. Omitted if no further
-- results are available, in which case nextSyncToken is provided.
sNextPageToken :: Lens' Settings (Maybe Text)
sNextPageToken
  = lens _sNextPageToken
      (\ s a -> s{_sNextPageToken = a})

-- | Type of the collection (\"calendar#settings\").
sKind :: Lens' Settings Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | List of user settings.
sItems :: Lens' Settings [Setting]
sItems
  = lens _sItems (\ s a -> s{_sItems = a}) . _Default .
      _Coerce

-- | Token used at a later point in time to retrieve only the entries that
-- have changed since this result was returned. Omitted if further results
-- are available, in which case nextPageToken is provided.
sNextSyncToken :: Lens' Settings (Maybe Text)
sNextSyncToken
  = lens _sNextSyncToken
      (\ s a -> s{_sNextSyncToken = a})

instance FromJSON Settings where
        parseJSON
          = withObject "Settings"
              (\ o ->
                 Settings <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "calendar#settings")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "nextSyncToken"))

instance ToJSON Settings where
        toJSON Settings{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _sEtag,
                  ("nextPageToken" .=) <$> _sNextPageToken,
                  Just ("kind" .= _sKind), ("items" .=) <$> _sItems,
                  ("nextSyncToken" .=) <$> _sNextSyncToken])

--
-- /See:/ 'freeBusyRequestItem' smart constructor.
newtype FreeBusyRequestItem = FreeBusyRequestItem
    { _fbriId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON FreeBusyRequestItem where
        parseJSON
          = withObject "FreeBusyRequestItem"
              (\ o -> FreeBusyRequestItem <$> (o .:? "id"))

instance ToJSON FreeBusyRequestItem where
        toJSON FreeBusyRequestItem{..}
          = object (catMaybes [("id" .=) <$> _fbriId])

--
-- /See:/ 'eventAttachment' smart constructor.
data EventAttachment = EventAttachment
    { _eaFileURL  :: !(Maybe Text)
    , _eaIconLink :: !(Maybe Text)
    , _eaMimeType :: !(Maybe Text)
    , _eaTitle    :: !(Maybe Text)
    , _eaFileId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaFileURL'
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
    { _eaFileURL = Nothing
    , _eaIconLink = Nothing
    , _eaMimeType = Nothing
    , _eaTitle = Nothing
    , _eaFileId = Nothing
    }

-- | URL link to the attachment. For adding Google Drive file attachments use
-- the same format as in alternateLink property of the Files resource in
-- the Drive API.
eaFileURL :: Lens' EventAttachment (Maybe Text)
eaFileURL
  = lens _eaFileURL (\ s a -> s{_eaFileURL = a})

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

instance FromJSON EventAttachment where
        parseJSON
          = withObject "EventAttachment"
              (\ o ->
                 EventAttachment <$>
                   (o .:? "fileUrl") <*> (o .:? "iconLink") <*>
                     (o .:? "mimeType")
                     <*> (o .:? "title")
                     <*> (o .:? "fileId"))

instance ToJSON EventAttachment where
        toJSON EventAttachment{..}
          = object
              (catMaybes
                 [("fileUrl" .=) <$> _eaFileURL,
                  ("iconLink" .=) <$> _eaIconLink,
                  ("mimeType" .=) <$> _eaMimeType,
                  ("title" .=) <$> _eaTitle,
                  ("fileId" .=) <$> _eaFileId])

--
-- /See:/ 'timePeriod' smart constructor.
data TimePeriod = TimePeriod
    { _tpStart :: !(Maybe DateTime')
    , _tpEnd   :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

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
tpStart
  = lens _tpStart (\ s a -> s{_tpStart = a}) .
      mapping _DateTime

-- | The (exclusive) end of the time period.
tpEnd :: Lens' TimePeriod (Maybe UTCTime)
tpEnd
  = lens _tpEnd (\ s a -> s{_tpEnd = a}) .
      mapping _DateTime

instance FromJSON TimePeriod where
        parseJSON
          = withObject "TimePeriod"
              (\ o ->
                 TimePeriod <$> (o .:? "start") <*> (o .:? "end"))

instance ToJSON TimePeriod where
        toJSON TimePeriod{..}
          = object
              (catMaybes
                 [("start" .=) <$> _tpStart, ("end" .=) <$> _tpEnd])

-- | The creator of the event. Read-only.
--
-- /See:/ 'eventCreator' smart constructor.
data EventCreator = EventCreator
    { _ecEmail       :: !(Maybe Text)
    , _ecSelf        :: !Bool
    , _ecDisplayName :: !(Maybe Text)
    , _ecId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON EventCreator where
        parseJSON
          = withObject "EventCreator"
              (\ o ->
                 EventCreator <$>
                   (o .:? "email") <*> (o .:? "self" .!= False) <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON EventCreator where
        toJSON EventCreator{..}
          = object
              (catMaybes
                 [("email" .=) <$> _ecEmail, Just ("self" .= _ecSelf),
                  ("displayName" .=) <$> _ecDisplayName,
                  ("id" .=) <$> _ecId])

--
-- /See:/ 'error'' smart constructor.
data Error' = Error'
    { _eDomain :: !(Maybe Text)
    , _eReason :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Error' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDomain'
--
-- * 'eReason'
error'
    :: Error'
error' =
    Error'
    { _eDomain = Nothing
    , _eReason = Nothing
    }

-- | Domain, or broad category, of the error.
eDomain :: Lens' Error' (Maybe Text)
eDomain = lens _eDomain (\ s a -> s{_eDomain = a})

-- | Specific reason for the error. Some of the possible values are: -
-- \"groupTooBig\" - The group of users requested is too large for a single
-- query. - \"tooManyCalendarsRequested\" - The number of calendars
-- requested is too large for a single query. - \"notFound\" - The
-- requested resource was not found. - \"internalError\" - The API service
-- has encountered an internal error. Additional error types may be added
-- in the future, so clients should gracefully handle additional error
-- statuses not included in this list.
eReason :: Lens' Error' (Maybe Text)
eReason = lens _eReason (\ s a -> s{_eReason = a})

instance FromJSON Error' where
        parseJSON
          = withObject "Error"
              (\ o ->
                 Error' <$> (o .:? "domain") <*> (o .:? "reason"))

instance ToJSON Error' where
        toJSON Error'{..}
          = object
              (catMaybes
                 [("domain" .=) <$> _eDomain,
                  ("reason" .=) <$> _eReason])

--
-- /See:/ 'colorDefinition' smart constructor.
data ColorDefinition = ColorDefinition
    { _cdForegRound :: !(Maybe Text)
    , _cdBackgRound :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColorDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdForegRound'
--
-- * 'cdBackgRound'
colorDefinition
    :: ColorDefinition
colorDefinition =
    ColorDefinition
    { _cdForegRound = Nothing
    , _cdBackgRound = Nothing
    }

-- | The foreground color that can be used to write on top of a background
-- with \'background\' color.
cdForegRound :: Lens' ColorDefinition (Maybe Text)
cdForegRound
  = lens _cdForegRound (\ s a -> s{_cdForegRound = a})

-- | The background color associated with this color definition.
cdBackgRound :: Lens' ColorDefinition (Maybe Text)
cdBackgRound
  = lens _cdBackgRound (\ s a -> s{_cdBackgRound = a})

instance FromJSON ColorDefinition where
        parseJSON
          = withObject "ColorDefinition"
              (\ o ->
                 ColorDefinition <$>
                   (o .:? "foreground") <*> (o .:? "background"))

instance ToJSON ColorDefinition where
        toJSON ColorDefinition{..}
          = object
              (catMaybes
                 [("foreground" .=) <$> _cdForegRound,
                  ("background" .=) <$> _cdBackgRound])

--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _cResourceURI :: !(Maybe Text)
    , _cResourceId  :: !(Maybe Text)
    , _cKind        :: !Text
    , _cExpiration  :: !(Maybe Int64)
    , _cToken       :: !(Maybe Text)
    , _cAddress     :: !(Maybe Text)
    , _cPayload     :: !(Maybe Bool)
    , _cParams      :: !(Maybe ChannelParams)
    , _cId          :: !(Maybe Text)
    , _cType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResourceURI'
--
-- * 'cResourceId'
--
-- * 'cKind'
--
-- * 'cExpiration'
--
-- * 'cToken'
--
-- * 'cAddress'
--
-- * 'cPayload'
--
-- * 'cParams'
--
-- * 'cId'
--
-- * 'cType'
channel
    :: Channel
channel =
    Channel
    { _cResourceURI = Nothing
    , _cResourceId = Nothing
    , _cKind = "api#channel"
    , _cExpiration = Nothing
    , _cToken = Nothing
    , _cAddress = Nothing
    , _cPayload = Nothing
    , _cParams = Nothing
    , _cId = Nothing
    , _cType = Nothing
    }

-- | A version-specific identifier for the watched resource.
cResourceURI :: Lens' Channel (Maybe Text)
cResourceURI
  = lens _cResourceURI (\ s a -> s{_cResourceURI = a})

-- | An opaque ID that identifies the resource being watched on this channel.
-- Stable across different API versions.
cResourceId :: Lens' Channel (Maybe Text)
cResourceId
  = lens _cResourceId (\ s a -> s{_cResourceId = a})

-- | Identifies this as a notification channel used to watch for changes to a
-- resource. Value: the fixed string \"api#channel\".
cKind :: Lens' Channel Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
cExpiration :: Lens' Channel (Maybe Int64)
cExpiration
  = lens _cExpiration (\ s a -> s{_cExpiration = a})

-- | An arbitrary string delivered to the target address with each
-- notification delivered over this channel. Optional.
cToken :: Lens' Channel (Maybe Text)
cToken = lens _cToken (\ s a -> s{_cToken = a})

-- | The address where notifications are delivered for this channel.
cAddress :: Lens' Channel (Maybe Text)
cAddress = lens _cAddress (\ s a -> s{_cAddress = a})

-- | A Boolean value to indicate whether payload is wanted. Optional.
cPayload :: Lens' Channel (Maybe Bool)
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
cParams :: Lens' Channel (Maybe ChannelParams)
cParams = lens _cParams (\ s a -> s{_cParams = a})

-- | A UUID or similar unique string that identifies this channel.
cId :: Lens' Channel (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The type of delivery mechanism used for this channel.
cType :: Lens' Channel (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ o ->
                 Channel <$>
                   (o .:? "resourceUri") <*> (o .:? "resourceId") <*>
                     (o .:? "kind" .!= "api#channel")
                     <*> (o .:? "expiration")
                     <*> (o .:? "token")
                     <*> (o .:? "address")
                     <*> (o .:? "payload")
                     <*> (o .:? "params")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Channel where
        toJSON Channel{..}
          = object
              (catMaybes
                 [("resourceUri" .=) <$> _cResourceURI,
                  ("resourceId" .=) <$> _cResourceId,
                  Just ("kind" .= _cKind),
                  ("expiration" .=) <$> _cExpiration,
                  ("token" .=) <$> _cToken,
                  ("address" .=) <$> _cAddress,
                  ("payload" .=) <$> _cPayload,
                  ("params" .=) <$> _cParams, ("id" .=) <$> _cId,
                  ("type" .=) <$> _cType])

--
-- /See:/ 'freeBusyCalendar' smart constructor.
data FreeBusyCalendar = FreeBusyCalendar
    { _fbcBusy   :: !(Maybe [TimePeriod])
    , _fbcErrors :: !(Maybe [Error'])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
fbcBusy :: Lens' FreeBusyCalendar [TimePeriod]
fbcBusy
  = lens _fbcBusy (\ s a -> s{_fbcBusy = a}) . _Default
      . _Coerce

-- | Optional error(s) (if computation for the calendar failed).
fbcErrors :: Lens' FreeBusyCalendar [Error']
fbcErrors
  = lens _fbcErrors (\ s a -> s{_fbcErrors = a}) .
      _Default
      . _Coerce

instance FromJSON FreeBusyCalendar where
        parseJSON
          = withObject "FreeBusyCalendar"
              (\ o ->
                 FreeBusyCalendar <$>
                   (o .:? "busy" .!= mempty) <*>
                     (o .:? "errors" .!= mempty))

instance ToJSON FreeBusyCalendar where
        toJSON FreeBusyCalendar{..}
          = object
              (catMaybes
                 [("busy" .=) <$> _fbcBusy,
                  ("errors" .=) <$> _fbcErrors])

--
-- /See:/ 'setting' smart constructor.
data Setting = Setting
    { _setEtag  :: !(Maybe Text)
    , _setKind  :: !Text
    , _setValue :: !(Maybe Text)
    , _setId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Setting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setEtag'
--
-- * 'setKind'
--
-- * 'setValue'
--
-- * 'setId'
setting
    :: Setting
setting =
    Setting
    { _setEtag = Nothing
    , _setKind = "calendar#setting"
    , _setValue = Nothing
    , _setId = Nothing
    }

-- | ETag of the resource.
setEtag :: Lens' Setting (Maybe Text)
setEtag = lens _setEtag (\ s a -> s{_setEtag = a})

-- | Type of the resource (\"calendar#setting\").
setKind :: Lens' Setting Text
setKind = lens _setKind (\ s a -> s{_setKind = a})

-- | Value of the user setting. The format of the value depends on the ID of
-- the setting. It must always be a UTF-8 string of length up to 1024
-- characters.
setValue :: Lens' Setting (Maybe Text)
setValue = lens _setValue (\ s a -> s{_setValue = a})

-- | The id of the user setting.
setId :: Lens' Setting (Maybe Text)
setId = lens _setId (\ s a -> s{_setId = a})

instance FromJSON Setting where
        parseJSON
          = withObject "Setting"
              (\ o ->
                 Setting <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "calendar#setting")
                     <*> (o .:? "value")
                     <*> (o .:? "id"))

instance ToJSON Setting where
        toJSON Setting{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _setEtag, Just ("kind" .= _setKind),
                  ("value" .=) <$> _setValue, ("id" .=) <$> _setId])

-- | Expansion of groups.
--
-- /See:/ 'freeBusyResponseGroups' smart constructor.
data FreeBusyResponseGroups =
    FreeBusyResponseGroups
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyResponseGroups' with the minimum fields required to make a request.
--
freeBusyResponseGroups
    :: FreeBusyResponseGroups
freeBusyResponseGroups = FreeBusyResponseGroups

instance FromJSON FreeBusyResponseGroups where
        parseJSON
          = withObject "FreeBusyResponseGroups"
              (\ o -> pure FreeBusyResponseGroups)

instance ToJSON FreeBusyResponseGroups where
        toJSON = const (Object mempty)

-- | Information about the event\'s reminders for the authenticated user.
--
-- /See:/ 'eventReminders' smart constructor.
data EventReminders = EventReminders
    { _erOverrides  :: !(Maybe [EventReminder])
    , _erUseDefault :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
erOverrides :: Lens' EventReminders [EventReminder]
erOverrides
  = lens _erOverrides (\ s a -> s{_erOverrides = a}) .
      _Default
      . _Coerce

-- | Whether the default reminders of the calendar apply to the event.
erUseDefault :: Lens' EventReminders (Maybe Bool)
erUseDefault
  = lens _erUseDefault (\ s a -> s{_erUseDefault = a})

instance FromJSON EventReminders where
        parseJSON
          = withObject "EventReminders"
              (\ o ->
                 EventReminders <$>
                   (o .:? "overrides" .!= mempty) <*>
                     (o .:? "useDefault"))

instance ToJSON EventReminders where
        toJSON EventReminders{..}
          = object
              (catMaybes
                 [("overrides" .=) <$> _erOverrides,
                  ("useDefault" .=) <$> _erUseDefault])

-- | A global palette of calendar colors, mapping from the color ID to its
-- definition. A calendarListEntry resource refers to one of these color
-- IDs in its color field. Read-only.
--
-- /See:/ 'colorsCalendar' smart constructor.
data ColorsCalendar =
    ColorsCalendar
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColorsCalendar' with the minimum fields required to make a request.
--
colorsCalendar
    :: ColorsCalendar
colorsCalendar = ColorsCalendar

instance FromJSON ColorsCalendar where
        parseJSON
          = withObject "ColorsCalendar"
              (\ o -> pure ColorsCalendar)

instance ToJSON ColorsCalendar where
        toJSON = const (Object mempty)

--
-- /See:/ 'calendarNotification' smart constructor.
data CalendarNotification = CalendarNotification
    { _cnMethod :: !(Maybe Text)
    , _cnType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON CalendarNotification where
        parseJSON
          = withObject "CalendarNotification"
              (\ o ->
                 CalendarNotification <$>
                   (o .:? "method") <*> (o .:? "type"))

instance ToJSON CalendarNotification where
        toJSON CalendarNotification{..}
          = object
              (catMaybes
                 [("method" .=) <$> _cnMethod,
                  ("type" .=) <$> _cnType])

-- | Properties that are private to the copy of the event that appears on
-- this calendar.
--
-- /See:/ 'eventExtendedPropertiesPrivate' smart constructor.
data EventExtendedPropertiesPrivate =
    EventExtendedPropertiesPrivate
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventExtendedPropertiesPrivate' with the minimum fields required to make a request.
--
eventExtendedPropertiesPrivate
    :: EventExtendedPropertiesPrivate
eventExtendedPropertiesPrivate = EventExtendedPropertiesPrivate

instance FromJSON EventExtendedPropertiesPrivate
         where
        parseJSON
          = withObject "EventExtendedPropertiesPrivate"
              (\ o -> pure EventExtendedPropertiesPrivate)

instance ToJSON EventExtendedPropertiesPrivate where
        toJSON = const (Object mempty)

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
data ChannelParams =
    ChannelParams
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
channelParams
    :: ChannelParams
channelParams = ChannelParams

instance FromJSON ChannelParams where
        parseJSON
          = withObject "ChannelParams"
              (\ o -> pure ChannelParams)

instance ToJSON ChannelParams where
        toJSON = const (Object mempty)

--
-- /See:/ 'events' smart constructor.
data Events = Events
    { _eveSummary          :: !(Maybe Text)
    , _eveEtag             :: !(Maybe Text)
    , _eveNextPageToken    :: !(Maybe Text)
    , _eveKind             :: !Text
    , _eveItems            :: !(Maybe [Event])
    , _eveDefaultReminders :: !(Maybe [EventReminder])
    , _eveUpdated          :: !(Maybe DateTime')
    , _eveAccessRole       :: !(Maybe Text)
    , _eveTimeZone         :: !(Maybe Text)
    , _eveNextSyncToken    :: !(Maybe Text)
    , _eveDescription      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Events' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eveSummary'
--
-- * 'eveEtag'
--
-- * 'eveNextPageToken'
--
-- * 'eveKind'
--
-- * 'eveItems'
--
-- * 'eveDefaultReminders'
--
-- * 'eveUpdated'
--
-- * 'eveAccessRole'
--
-- * 'eveTimeZone'
--
-- * 'eveNextSyncToken'
--
-- * 'eveDescription'
events
    :: Events
events =
    Events
    { _eveSummary = Nothing
    , _eveEtag = Nothing
    , _eveNextPageToken = Nothing
    , _eveKind = "calendar#events"
    , _eveItems = Nothing
    , _eveDefaultReminders = Nothing
    , _eveUpdated = Nothing
    , _eveAccessRole = Nothing
    , _eveTimeZone = Nothing
    , _eveNextSyncToken = Nothing
    , _eveDescription = Nothing
    }

-- | Title of the calendar. Read-only.
eveSummary :: Lens' Events (Maybe Text)
eveSummary
  = lens _eveSummary (\ s a -> s{_eveSummary = a})

-- | ETag of the collection.
eveEtag :: Lens' Events (Maybe Text)
eveEtag = lens _eveEtag (\ s a -> s{_eveEtag = a})

-- | Token used to access the next page of this result. Omitted if no further
-- results are available, in which case nextSyncToken is provided.
eveNextPageToken :: Lens' Events (Maybe Text)
eveNextPageToken
  = lens _eveNextPageToken
      (\ s a -> s{_eveNextPageToken = a})

-- | Type of the collection (\"calendar#events\").
eveKind :: Lens' Events Text
eveKind = lens _eveKind (\ s a -> s{_eveKind = a})

-- | List of events on the calendar.
eveItems :: Lens' Events [Event]
eveItems
  = lens _eveItems (\ s a -> s{_eveItems = a}) .
      _Default
      . _Coerce

-- | The default reminders on the calendar for the authenticated user. These
-- reminders apply to all events on this calendar that do not explicitly
-- override them (i.e. do not have reminders.useDefault set to True).
eveDefaultReminders :: Lens' Events [EventReminder]
eveDefaultReminders
  = lens _eveDefaultReminders
      (\ s a -> s{_eveDefaultReminders = a})
      . _Default
      . _Coerce

-- | Last modification time of the calendar (as a RFC3339 timestamp).
-- Read-only.
eveUpdated :: Lens' Events (Maybe UTCTime)
eveUpdated
  = lens _eveUpdated (\ s a -> s{_eveUpdated = a}) .
      mapping _DateTime

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
eveAccessRole :: Lens' Events (Maybe Text)
eveAccessRole
  = lens _eveAccessRole
      (\ s a -> s{_eveAccessRole = a})

-- | The time zone of the calendar. Read-only.
eveTimeZone :: Lens' Events (Maybe Text)
eveTimeZone
  = lens _eveTimeZone (\ s a -> s{_eveTimeZone = a})

-- | Token used at a later point in time to retrieve only the entries that
-- have changed since this result was returned. Omitted if further results
-- are available, in which case nextPageToken is provided.
eveNextSyncToken :: Lens' Events (Maybe Text)
eveNextSyncToken
  = lens _eveNextSyncToken
      (\ s a -> s{_eveNextSyncToken = a})

-- | Description of the calendar. Read-only.
eveDescription :: Lens' Events (Maybe Text)
eveDescription
  = lens _eveDescription
      (\ s a -> s{_eveDescription = a})

instance FromJSON Events where
        parseJSON
          = withObject "Events"
              (\ o ->
                 Events <$>
                   (o .:? "summary") <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "calendar#events")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "defaultReminders" .!= mempty)
                     <*> (o .:? "updated")
                     <*> (o .:? "accessRole")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "nextSyncToken")
                     <*> (o .:? "description"))

instance ToJSON Events where
        toJSON Events{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _eveSummary,
                  ("etag" .=) <$> _eveEtag,
                  ("nextPageToken" .=) <$> _eveNextPageToken,
                  Just ("kind" .= _eveKind),
                  ("items" .=) <$> _eveItems,
                  ("defaultReminders" .=) <$> _eveDefaultReminders,
                  ("updated" .=) <$> _eveUpdated,
                  ("accessRole" .=) <$> _eveAccessRole,
                  ("timeZone" .=) <$> _eveTimeZone,
                  ("nextSyncToken" .=) <$> _eveNextSyncToken,
                  ("description" .=) <$> _eveDescription])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON EventAttendee where
        parseJSON
          = withObject "EventAttendee"
              (\ o ->
                 EventAttendee <$>
                   (o .:? "email") <*> (o .:? "responseStatus") <*>
                     (o .:? "self" .!= False)
                     <*> (o .:? "resource" .!= False)
                     <*> (o .:? "additionalGuests" .!= 0)
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "comment")
                     <*> (o .:? "optional" .!= False)
                     <*> (o .:? "organizer"))

instance ToJSON EventAttendee where
        toJSON EventAttendee{..}
          = object
              (catMaybes
                 [("email" .=) <$> _eaEmail,
                  ("responseStatus" .=) <$> _eaResponseStatus,
                  Just ("self" .= _eaSelf),
                  Just ("resource" .= _eaResource),
                  Just ("additionalGuests" .= _eaAdditionalGuests),
                  ("displayName" .=) <$> _eaDisplayName,
                  ("id" .=) <$> _eaId, ("comment" .=) <$> _eaComment,
                  Just ("optional" .= _eaOptional),
                  ("organizer" .=) <$> _eaOrganizer])

--
-- /See:/ 'calendar' smart constructor.
data Calendar = Calendar
    { _calSummary     :: !(Maybe Text)
    , _calEtag        :: !(Maybe Text)
    , _calLocation    :: !(Maybe Text)
    , _calKind        :: !Text
    , _calId          :: !(Maybe Text)
    , _calTimeZone    :: !(Maybe Text)
    , _calDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Calendar' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'calSummary'
--
-- * 'calEtag'
--
-- * 'calLocation'
--
-- * 'calKind'
--
-- * 'calId'
--
-- * 'calTimeZone'
--
-- * 'calDescription'
calendar
    :: Calendar
calendar =
    Calendar
    { _calSummary = Nothing
    , _calEtag = Nothing
    , _calLocation = Nothing
    , _calKind = "calendar#calendar"
    , _calId = Nothing
    , _calTimeZone = Nothing
    , _calDescription = Nothing
    }

-- | Title of the calendar.
calSummary :: Lens' Calendar (Maybe Text)
calSummary
  = lens _calSummary (\ s a -> s{_calSummary = a})

-- | ETag of the resource.
calEtag :: Lens' Calendar (Maybe Text)
calEtag = lens _calEtag (\ s a -> s{_calEtag = a})

-- | Geographic location of the calendar as free-form text. Optional.
calLocation :: Lens' Calendar (Maybe Text)
calLocation
  = lens _calLocation (\ s a -> s{_calLocation = a})

-- | Type of the resource (\"calendar#calendar\").
calKind :: Lens' Calendar Text
calKind = lens _calKind (\ s a -> s{_calKind = a})

-- | Identifier of the calendar. To retrieve IDs call the calendarList.list()
-- method.
calId :: Lens' Calendar (Maybe Text)
calId = lens _calId (\ s a -> s{_calId = a})

-- | The time zone of the calendar. (Formatted as an IANA Time Zone Database
-- name, e.g. \"Europe\/Zurich\".) Optional.
calTimeZone :: Lens' Calendar (Maybe Text)
calTimeZone
  = lens _calTimeZone (\ s a -> s{_calTimeZone = a})

-- | Description of the calendar. Optional.
calDescription :: Lens' Calendar (Maybe Text)
calDescription
  = lens _calDescription
      (\ s a -> s{_calDescription = a})

instance FromJSON Calendar where
        parseJSON
          = withObject "Calendar"
              (\ o ->
                 Calendar <$>
                   (o .:? "summary") <*> (o .:? "etag") <*>
                     (o .:? "location")
                     <*> (o .:? "kind" .!= "calendar#calendar")
                     <*> (o .:? "id")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "description"))

instance ToJSON Calendar where
        toJSON Calendar{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _calSummary,
                  ("etag" .=) <$> _calEtag,
                  ("location" .=) <$> _calLocation,
                  Just ("kind" .= _calKind), ("id" .=) <$> _calId,
                  ("timeZone" .=) <$> _calTimeZone,
                  ("description" .=) <$> _calDescription])

--
-- /See:/ 'freeBusyResponse' smart constructor.
data FreeBusyResponse = FreeBusyResponse
    { _fbrGroups    :: !(Maybe FreeBusyResponseGroups)
    , _fbrTimeMin   :: !(Maybe DateTime')
    , _fbrKind      :: !Text
    , _fbrCalendars :: !(Maybe FreeBusyResponseCalendars)
    , _fbrTimeMax   :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbrGroups'
--
-- * 'fbrTimeMin'
--
-- * 'fbrKind'
--
-- * 'fbrCalendars'
--
-- * 'fbrTimeMax'
freeBusyResponse
    :: FreeBusyResponse
freeBusyResponse =
    FreeBusyResponse
    { _fbrGroups = Nothing
    , _fbrTimeMin = Nothing
    , _fbrKind = "calendar#freeBusy"
    , _fbrCalendars = Nothing
    , _fbrTimeMax = Nothing
    }

-- | Expansion of groups.
fbrGroups :: Lens' FreeBusyResponse (Maybe FreeBusyResponseGroups)
fbrGroups
  = lens _fbrGroups (\ s a -> s{_fbrGroups = a})

-- | The start of the interval.
fbrTimeMin :: Lens' FreeBusyResponse (Maybe UTCTime)
fbrTimeMin
  = lens _fbrTimeMin (\ s a -> s{_fbrTimeMin = a}) .
      mapping _DateTime

-- | Type of the resource (\"calendar#freeBusy\").
fbrKind :: Lens' FreeBusyResponse Text
fbrKind = lens _fbrKind (\ s a -> s{_fbrKind = a})

-- | List of free\/busy information for calendars.
fbrCalendars :: Lens' FreeBusyResponse (Maybe FreeBusyResponseCalendars)
fbrCalendars
  = lens _fbrCalendars (\ s a -> s{_fbrCalendars = a})

-- | The end of the interval.
fbrTimeMax :: Lens' FreeBusyResponse (Maybe UTCTime)
fbrTimeMax
  = lens _fbrTimeMax (\ s a -> s{_fbrTimeMax = a}) .
      mapping _DateTime

instance FromJSON FreeBusyResponse where
        parseJSON
          = withObject "FreeBusyResponse"
              (\ o ->
                 FreeBusyResponse <$>
                   (o .:? "groups") <*> (o .:? "timeMin") <*>
                     (o .:? "kind" .!= "calendar#freeBusy")
                     <*> (o .:? "calendars")
                     <*> (o .:? "timeMax"))

instance ToJSON FreeBusyResponse where
        toJSON FreeBusyResponse{..}
          = object
              (catMaybes
                 [("groups" .=) <$> _fbrGroups,
                  ("timeMin" .=) <$> _fbrTimeMin,
                  Just ("kind" .= _fbrKind),
                  ("calendars" .=) <$> _fbrCalendars,
                  ("timeMax" .=) <$> _fbrTimeMax])

--
-- /See:/ 'eventReminder' smart constructor.
data EventReminder = EventReminder
    { _erMethod  :: !(Maybe Text)
    , _erMinutes :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON EventReminder where
        parseJSON
          = withObject "EventReminder"
              (\ o ->
                 EventReminder <$>
                   (o .:? "method") <*> (o .:? "minutes"))

instance ToJSON EventReminder where
        toJSON EventReminder{..}
          = object
              (catMaybes
                 [("method" .=) <$> _erMethod,
                  ("minutes" .=) <$> _erMinutes])

-- | Extended properties of the event.
--
-- /See:/ 'eventExtendedProperties' smart constructor.
data EventExtendedProperties = EventExtendedProperties
    { _eepPrivate :: !(Maybe EventExtendedPropertiesPrivate)
    , _eepShared  :: !(Maybe EventExtendedPropertiesShared)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
eepPrivate :: Lens' EventExtendedProperties (Maybe EventExtendedPropertiesPrivate)
eepPrivate
  = lens _eepPrivate (\ s a -> s{_eepPrivate = a})

-- | Properties that are shared between copies of the event on other
-- attendees\' calendars.
eepShared :: Lens' EventExtendedProperties (Maybe EventExtendedPropertiesShared)
eepShared
  = lens _eepShared (\ s a -> s{_eepShared = a})

instance FromJSON EventExtendedProperties where
        parseJSON
          = withObject "EventExtendedProperties"
              (\ o ->
                 EventExtendedProperties <$>
                   (o .:? "private") <*> (o .:? "shared"))

instance ToJSON EventExtendedProperties where
        toJSON EventExtendedProperties{..}
          = object
              (catMaybes
                 [("private" .=) <$> _eepPrivate,
                  ("shared" .=) <$> _eepShared])

--
-- /See:/ 'eventDateTime' smart constructor.
data EventDateTime = EventDateTime
    { _edtDate     :: !(Maybe Date')
    , _edtTimeZone :: !(Maybe Text)
    , _edtDateTime :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

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
edtDate :: Lens' EventDateTime (Maybe LocalTime)
edtDate
  = lens _edtDate (\ s a -> s{_edtDate = a}) .
      mapping _Date

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
  = lens _edtDateTime (\ s a -> s{_edtDateTime = a}) .
      mapping _DateTime

instance FromJSON EventDateTime where
        parseJSON
          = withObject "EventDateTime"
              (\ o ->
                 EventDateTime <$>
                   (o .:? "date") <*> (o .:? "timeZone") <*>
                     (o .:? "dateTime"))

instance ToJSON EventDateTime where
        toJSON EventDateTime{..}
          = object
              (catMaybes
                 [("date" .=) <$> _edtDate,
                  ("timeZone" .=) <$> _edtTimeZone,
                  ("dateTime" .=) <$> _edtDateTime])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON EventOrganizer where
        parseJSON
          = withObject "EventOrganizer"
              (\ o ->
                 EventOrganizer <$>
                   (o .:? "email") <*> (o .:? "self" .!= False) <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON EventOrganizer where
        toJSON EventOrganizer{..}
          = object
              (catMaybes
                 [("email" .=) <$> _eoEmail, Just ("self" .= _eoSelf),
                  ("displayName" .=) <$> _eoDisplayName,
                  ("id" .=) <$> _eoId])

--
-- /See:/ 'calendarList' smart constructor.
data CalendarList = CalendarList
    { _clEtag          :: !(Maybe Text)
    , _clNextPageToken :: !(Maybe Text)
    , _clKind          :: !Text
    , _clItems         :: !(Maybe [CalendarListEntry])
    , _clNextSyncToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
clItems :: Lens' CalendarList [CalendarListEntry]
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

instance FromJSON CalendarList where
        parseJSON
          = withObject "CalendarList"
              (\ o ->
                 CalendarList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "calendar#calendarList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "nextSyncToken"))

instance ToJSON CalendarList where
        toJSON CalendarList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _clEtag,
                  ("nextPageToken" .=) <$> _clNextPageToken,
                  Just ("kind" .= _clKind), ("items" .=) <$> _clItems,
                  ("nextSyncToken" .=) <$> _clNextSyncToken])

-- | A gadget that extends this event.
--
-- /See:/ 'eventGadget' smart constructor.
data EventGadget = EventGadget
    { _egHeight      :: !(Maybe Int32)
    , _egDisplay     :: !(Maybe Text)
    , _egPreferences :: !(Maybe EventGadgetPreferences)
    , _egLink        :: !(Maybe Text)
    , _egIconLink    :: !(Maybe Text)
    , _egWidth       :: !(Maybe Int32)
    , _egTitle       :: !(Maybe Text)
    , _egType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
egPreferences :: Lens' EventGadget (Maybe EventGadgetPreferences)
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

instance FromJSON EventGadget where
        parseJSON
          = withObject "EventGadget"
              (\ o ->
                 EventGadget <$>
                   (o .:? "height") <*> (o .:? "display") <*>
                     (o .:? "preferences")
                     <*> (o .:? "link")
                     <*> (o .:? "iconLink")
                     <*> (o .:? "width")
                     <*> (o .:? "title")
                     <*> (o .:? "type"))

instance ToJSON EventGadget where
        toJSON EventGadget{..}
          = object
              (catMaybes
                 [("height" .=) <$> _egHeight,
                  ("display" .=) <$> _egDisplay,
                  ("preferences" .=) <$> _egPreferences,
                  ("link" .=) <$> _egLink,
                  ("iconLink" .=) <$> _egIconLink,
                  ("width" .=) <$> _egWidth, ("title" .=) <$> _egTitle,
                  ("type" .=) <$> _egType])

-- | Preferences.
--
-- /See:/ 'eventGadgetPreferences' smart constructor.
data EventGadgetPreferences =
    EventGadgetPreferences
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventGadgetPreferences' with the minimum fields required to make a request.
--
eventGadgetPreferences
    :: EventGadgetPreferences
eventGadgetPreferences = EventGadgetPreferences

instance FromJSON EventGadgetPreferences where
        parseJSON
          = withObject "EventGadgetPreferences"
              (\ o -> pure EventGadgetPreferences)

instance ToJSON EventGadgetPreferences where
        toJSON = const (Object mempty)

--
-- /See:/ 'freeBusyRequest' smart constructor.
data FreeBusyRequest = FreeBusyRequest
    { _fCalendarExpansionMax :: !(Maybe Int32)
    , _fTimeMin              :: !(Maybe DateTime')
    , _fItems                :: !(Maybe [FreeBusyRequestItem])
    , _fGroupExpansionMax    :: !(Maybe Int32)
    , _fTimeZone             :: !Text
    , _fTimeMax              :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fCalendarExpansionMax'
--
-- * 'fTimeMin'
--
-- * 'fItems'
--
-- * 'fGroupExpansionMax'
--
-- * 'fTimeZone'
--
-- * 'fTimeMax'
freeBusyRequest
    :: FreeBusyRequest
freeBusyRequest =
    FreeBusyRequest
    { _fCalendarExpansionMax = Nothing
    , _fTimeMin = Nothing
    , _fItems = Nothing
    , _fGroupExpansionMax = Nothing
    , _fTimeZone = "UTC"
    , _fTimeMax = Nothing
    }

-- | Maximal number of calendars for which FreeBusy information is to be
-- provided. Optional.
fCalendarExpansionMax :: Lens' FreeBusyRequest (Maybe Int32)
fCalendarExpansionMax
  = lens _fCalendarExpansionMax
      (\ s a -> s{_fCalendarExpansionMax = a})

-- | The start of the interval for the query.
fTimeMin :: Lens' FreeBusyRequest (Maybe UTCTime)
fTimeMin
  = lens _fTimeMin (\ s a -> s{_fTimeMin = a}) .
      mapping _DateTime

-- | List of calendars and\/or groups to query.
fItems :: Lens' FreeBusyRequest [FreeBusyRequestItem]
fItems
  = lens _fItems (\ s a -> s{_fItems = a}) . _Default .
      _Coerce

-- | Maximal number of calendar identifiers to be provided for a single
-- group. Optional. An error will be returned for a group with more members
-- than this value.
fGroupExpansionMax :: Lens' FreeBusyRequest (Maybe Int32)
fGroupExpansionMax
  = lens _fGroupExpansionMax
      (\ s a -> s{_fGroupExpansionMax = a})

-- | Time zone used in the response. Optional. The default is UTC.
fTimeZone :: Lens' FreeBusyRequest Text
fTimeZone
  = lens _fTimeZone (\ s a -> s{_fTimeZone = a})

-- | The end of the interval for the query.
fTimeMax :: Lens' FreeBusyRequest (Maybe UTCTime)
fTimeMax
  = lens _fTimeMax (\ s a -> s{_fTimeMax = a}) .
      mapping _DateTime

instance FromJSON FreeBusyRequest where
        parseJSON
          = withObject "FreeBusyRequest"
              (\ o ->
                 FreeBusyRequest <$>
                   (o .:? "calendarExpansionMax") <*> (o .:? "timeMin")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "groupExpansionMax")
                     <*> (o .:? "timeZone" .!= "UTC")
                     <*> (o .:? "timeMax"))

instance ToJSON FreeBusyRequest where
        toJSON FreeBusyRequest{..}
          = object
              (catMaybes
                 [("calendarExpansionMax" .=) <$>
                    _fCalendarExpansionMax,
                  ("timeMin" .=) <$> _fTimeMin,
                  ("items" .=) <$> _fItems,
                  ("groupExpansionMax" .=) <$> _fGroupExpansionMax,
                  Just ("timeZone" .= _fTimeZone),
                  ("timeMax" .=) <$> _fTimeMax])

--
-- /See:/ 'aclRule' smart constructor.
data ACLRule = ACLRule
    { _arEtag  :: !(Maybe Text)
    , _arKind  :: !Text
    , _arRole  :: !(Maybe Text)
    , _arScope :: !(Maybe ACLRuleScope)
    , _arId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLRule' with the minimum fields required to make a request.
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
    :: ACLRule
aclRule =
    ACLRule
    { _arEtag = Nothing
    , _arKind = "calendar#aclRule"
    , _arRole = Nothing
    , _arScope = Nothing
    , _arId = Nothing
    }

-- | ETag of the resource.
arEtag :: Lens' ACLRule (Maybe Text)
arEtag = lens _arEtag (\ s a -> s{_arEtag = a})

-- | Type of the resource (\"calendar#aclRule\").
arKind :: Lens' ACLRule Text
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
arRole :: Lens' ACLRule (Maybe Text)
arRole = lens _arRole (\ s a -> s{_arRole = a})

-- | The scope of the rule.
arScope :: Lens' ACLRule (Maybe ACLRuleScope)
arScope = lens _arScope (\ s a -> s{_arScope = a})

-- | Identifier of the ACL rule.
arId :: Lens' ACLRule (Maybe Text)
arId = lens _arId (\ s a -> s{_arId = a})

instance FromJSON ACLRule where
        parseJSON
          = withObject "ACLRule"
              (\ o ->
                 ACLRule <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "calendar#aclRule")
                     <*> (o .:? "role")
                     <*> (o .:? "scope")
                     <*> (o .:? "id"))

instance ToJSON ACLRule where
        toJSON ACLRule{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _arEtag, Just ("kind" .= _arKind),
                  ("role" .=) <$> _arRole, ("scope" .=) <$> _arScope,
                  ("id" .=) <$> _arId])

-- | Properties that are shared between copies of the event on other
-- attendees\' calendars.
--
-- /See:/ 'eventExtendedPropertiesShared' smart constructor.
data EventExtendedPropertiesShared =
    EventExtendedPropertiesShared
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventExtendedPropertiesShared' with the minimum fields required to make a request.
--
eventExtendedPropertiesShared
    :: EventExtendedPropertiesShared
eventExtendedPropertiesShared = EventExtendedPropertiesShared

instance FromJSON EventExtendedPropertiesShared where
        parseJSON
          = withObject "EventExtendedPropertiesShared"
              (\ o -> pure EventExtendedPropertiesShared)

instance ToJSON EventExtendedPropertiesShared where
        toJSON = const (Object mempty)

-- | List of free\/busy information for calendars.
--
-- /See:/ 'freeBusyResponseCalendars' smart constructor.
data FreeBusyResponseCalendars =
    FreeBusyResponseCalendars
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyResponseCalendars' with the minimum fields required to make a request.
--
freeBusyResponseCalendars
    :: FreeBusyResponseCalendars
freeBusyResponseCalendars = FreeBusyResponseCalendars

instance FromJSON FreeBusyResponseCalendars where
        parseJSON
          = withObject "FreeBusyResponseCalendars"
              (\ o -> pure FreeBusyResponseCalendars)

instance ToJSON FreeBusyResponseCalendars where
        toJSON = const (Object mempty)

--
-- /See:/ 'acl' smart constructor.
data ACL = ACL
    { _aEtag          :: !(Maybe Text)
    , _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [ACLRule])
    , _aNextSyncToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aNextPageToken'
--
-- * 'aKind'
--
-- * 'aItems'
--
-- * 'aNextSyncToken'
acl
    :: ACL
acl =
    ACL
    { _aEtag = Nothing
    , _aNextPageToken = Nothing
    , _aKind = "calendar#acl"
    , _aItems = Nothing
    , _aNextSyncToken = Nothing
    }

-- | ETag of the collection.
aEtag :: Lens' ACL (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Token used to access the next page of this result. Omitted if no further
-- results are available, in which case nextSyncToken is provided.
aNextPageToken :: Lens' ACL (Maybe Text)
aNextPageToken
  = lens _aNextPageToken
      (\ s a -> s{_aNextPageToken = a})

-- | Type of the collection (\"calendar#acl\").
aKind :: Lens' ACL Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | List of rules on the access control list.
aItems :: Lens' ACL [ACLRule]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

-- | Token used at a later point in time to retrieve only the entries that
-- have changed since this result was returned. Omitted if further results
-- are available, in which case nextPageToken is provided.
aNextSyncToken :: Lens' ACL (Maybe Text)
aNextSyncToken
  = lens _aNextSyncToken
      (\ s a -> s{_aNextSyncToken = a})

instance FromJSON ACL where
        parseJSON
          = withObject "ACL"
              (\ o ->
                 ACL <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "calendar#acl")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "nextSyncToken"))

instance ToJSON ACL where
        toJSON ACL{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag,
                  ("nextPageToken" .=) <$> _aNextPageToken,
                  Just ("kind" .= _aKind), ("items" .=) <$> _aItems,
                  ("nextSyncToken" .=) <$> _aNextSyncToken])

--
-- /See:/ 'colors' smart constructor.
data Colors = Colors
    { _colEvent    :: !(Maybe ColorsEvent)
    , _colKind     :: !Text
    , _colCalendar :: !(Maybe ColorsCalendar)
    , _colUpdated  :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

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
  = lens _colUpdated (\ s a -> s{_colUpdated = a}) .
      mapping _DateTime

instance FromJSON Colors where
        parseJSON
          = withObject "Colors"
              (\ o ->
                 Colors <$>
                   (o .:? "event") <*>
                     (o .:? "kind" .!= "calendar#colors")
                     <*> (o .:? "calendar")
                     <*> (o .:? "updated"))

instance ToJSON Colors where
        toJSON Colors{..}
          = object
              (catMaybes
                 [("event" .=) <$> _colEvent,
                  Just ("kind" .= _colKind),
                  ("calendar" .=) <$> _colCalendar,
                  ("updated" .=) <$> _colUpdated])

--
-- /See:/ 'freeBusyGroup' smart constructor.
data FreeBusyGroup = FreeBusyGroup
    { _fbgCalendars :: !(Maybe [Text])
    , _fbgErrors    :: !(Maybe [Error'])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
fbgErrors :: Lens' FreeBusyGroup [Error']
fbgErrors
  = lens _fbgErrors (\ s a -> s{_fbgErrors = a}) .
      _Default
      . _Coerce

instance FromJSON FreeBusyGroup where
        parseJSON
          = withObject "FreeBusyGroup"
              (\ o ->
                 FreeBusyGroup <$>
                   (o .:? "calendars" .!= mempty) <*>
                     (o .:? "errors" .!= mempty))

instance ToJSON FreeBusyGroup where
        toJSON FreeBusyGroup{..}
          = object
              (catMaybes
                 [("calendars" .=) <$> _fbgCalendars,
                  ("errors" .=) <$> _fbgErrors])

-- | Source from which the event was created. For example, a web page, an
-- email message or any document identifiable by an URL with HTTP or HTTPS
-- scheme. Can only be seen or modified by the creator of the event.
--
-- /See:/ 'eventSource' smart constructor.
data EventSource = EventSource
    { _esURL   :: !(Maybe Text)
    , _esTitle :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esURL'
--
-- * 'esTitle'
eventSource
    :: EventSource
eventSource =
    EventSource
    { _esURL = Nothing
    , _esTitle = Nothing
    }

-- | URL of the source pointing to a resource. The URL scheme must be HTTP or
-- HTTPS.
esURL :: Lens' EventSource (Maybe Text)
esURL = lens _esURL (\ s a -> s{_esURL = a})

-- | Title of the source; for example a title of a web page or an email
-- subject.
esTitle :: Lens' EventSource (Maybe Text)
esTitle = lens _esTitle (\ s a -> s{_esTitle = a})

instance FromJSON EventSource where
        parseJSON
          = withObject "EventSource"
              (\ o ->
                 EventSource <$> (o .:? "url") <*> (o .:? "title"))

instance ToJSON EventSource where
        toJSON EventSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _esURL, ("title" .=) <$> _esTitle])
