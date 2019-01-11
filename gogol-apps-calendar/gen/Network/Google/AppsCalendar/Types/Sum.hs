{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsCalendar.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsCalendar.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Guests who should receive notifications about the event update (for
-- example, title changes, etc.).
data EventsPatchSendUpdates
    = All
      -- ^ @all@
      -- Notifications are sent to all guests.
    | ExternalOnly
      -- ^ @externalOnly@
      -- Notifications are sent to non-Google Calendar guests only.
    | None
      -- ^ @none@
      -- No notifications are sent. This value should only be used for migration
      -- use cases (note that in most migration cases the import method should be
      -- used).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventsPatchSendUpdates

instance FromHttpApiData EventsPatchSendUpdates where
    parseQueryParam = \case
        "all" -> Right All
        "externalOnly" -> Right ExternalOnly
        "none" -> Right None
        x -> Left ("Unable to parse EventsPatchSendUpdates from: " <> x)

instance ToHttpApiData EventsPatchSendUpdates where
    toQueryParam = \case
        All -> "all"
        ExternalOnly -> "externalOnly"
        None -> "none"

instance FromJSON EventsPatchSendUpdates where
    parseJSON = parseJSONText "EventsPatchSendUpdates"

instance ToJSON EventsPatchSendUpdates where
    toJSON = toJSONText

-- | Guests who should receive notifications about the creation of the new
-- event.
data EventsQuickAddSendUpdates
    = EQASUAll
      -- ^ @all@
      -- Notifications are sent to all guests.
    | EQASUExternalOnly
      -- ^ @externalOnly@
      -- Notifications are sent to non-Google Calendar guests only.
    | EQASUNone
      -- ^ @none@
      -- No notifications are sent. This value should only be used for migration
      -- use cases (note that in most migration cases the import method should be
      -- used).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventsQuickAddSendUpdates

instance FromHttpApiData EventsQuickAddSendUpdates where
    parseQueryParam = \case
        "all" -> Right EQASUAll
        "externalOnly" -> Right EQASUExternalOnly
        "none" -> Right EQASUNone
        x -> Left ("Unable to parse EventsQuickAddSendUpdates from: " <> x)

instance ToHttpApiData EventsQuickAddSendUpdates where
    toQueryParam = \case
        EQASUAll -> "all"
        EQASUExternalOnly -> "externalOnly"
        EQASUNone -> "none"

instance FromJSON EventsQuickAddSendUpdates where
    parseJSON = parseJSONText "EventsQuickAddSendUpdates"

instance ToJSON EventsQuickAddSendUpdates where
    toJSON = toJSONText

-- | Guests who should receive notifications about the event update (for
-- example, title changes, etc.).
data EventsUpdateSendUpdates
    = EUSUAll
      -- ^ @all@
      -- Notifications are sent to all guests.
    | EUSUExternalOnly
      -- ^ @externalOnly@
      -- Notifications are sent to non-Google Calendar guests only.
    | EUSUNone
      -- ^ @none@
      -- No notifications are sent. This value should only be used for migration
      -- use cases (note that in most migration cases the import method should be
      -- used).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventsUpdateSendUpdates

instance FromHttpApiData EventsUpdateSendUpdates where
    parseQueryParam = \case
        "all" -> Right EUSUAll
        "externalOnly" -> Right EUSUExternalOnly
        "none" -> Right EUSUNone
        x -> Left ("Unable to parse EventsUpdateSendUpdates from: " <> x)

instance ToHttpApiData EventsUpdateSendUpdates where
    toQueryParam = \case
        EUSUAll -> "all"
        EUSUExternalOnly -> "externalOnly"
        EUSUNone -> "none"

instance FromJSON EventsUpdateSendUpdates where
    parseJSON = parseJSONText "EventsUpdateSendUpdates"

instance ToJSON EventsUpdateSendUpdates where
    toJSON = toJSONText

-- | Guests who should receive notifications about the change of the event\'s
-- organizer.
data EventsMoveSendUpdates
    = EMSUAll
      -- ^ @all@
      -- Notifications are sent to all guests.
    | EMSUExternalOnly
      -- ^ @externalOnly@
      -- Notifications are sent to non-Google Calendar guests only.
    | EMSUNone
      -- ^ @none@
      -- No notifications are sent. This value should only be used for migration
      -- use cases (note that in most migration cases the import method should be
      -- used).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventsMoveSendUpdates

instance FromHttpApiData EventsMoveSendUpdates where
    parseQueryParam = \case
        "all" -> Right EMSUAll
        "externalOnly" -> Right EMSUExternalOnly
        "none" -> Right EMSUNone
        x -> Left ("Unable to parse EventsMoveSendUpdates from: " <> x)

instance ToHttpApiData EventsMoveSendUpdates where
    toQueryParam = \case
        EMSUAll -> "all"
        EMSUExternalOnly -> "externalOnly"
        EMSUNone -> "none"

instance FromJSON EventsMoveSendUpdates where
    parseJSON = parseJSONText "EventsMoveSendUpdates"

instance ToJSON EventsMoveSendUpdates where
    toJSON = toJSONText

-- | The order of the events returned in the result. Optional. The default is
-- an unspecified, stable order.
data EventsListOrderBy
    = StartTime
      -- ^ @startTime@
      -- Order by the start date\/time (ascending). This is only available when
      -- querying single events (i.e. the parameter singleEvents is True)
    | Updated
      -- ^ @updated@
      -- Order by last modification time (ascending).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventsListOrderBy

instance FromHttpApiData EventsListOrderBy where
    parseQueryParam = \case
        "startTime" -> Right StartTime
        "updated" -> Right Updated
        x -> Left ("Unable to parse EventsListOrderBy from: " <> x)

instance ToHttpApiData EventsListOrderBy where
    toQueryParam = \case
        StartTime -> "startTime"
        Updated -> "updated"

instance FromJSON EventsListOrderBy where
    parseJSON = parseJSONText "EventsListOrderBy"

instance ToJSON EventsListOrderBy where
    toJSON = toJSONText

-- | Guests who should receive notifications about the deletion of the event.
data EventsDeleteSendUpdates
    = EDSUAll
      -- ^ @all@
      -- Notifications are sent to all guests.
    | EDSUExternalOnly
      -- ^ @externalOnly@
      -- Notifications are sent to non-Google Calendar guests only.
    | EDSUNone
      -- ^ @none@
      -- No notifications are sent. This value should only be used for migration
      -- use cases (note that in most migration cases the import method should be
      -- used).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventsDeleteSendUpdates

instance FromHttpApiData EventsDeleteSendUpdates where
    parseQueryParam = \case
        "all" -> Right EDSUAll
        "externalOnly" -> Right EDSUExternalOnly
        "none" -> Right EDSUNone
        x -> Left ("Unable to parse EventsDeleteSendUpdates from: " <> x)

instance ToHttpApiData EventsDeleteSendUpdates where
    toQueryParam = \case
        EDSUAll -> "all"
        EDSUExternalOnly -> "externalOnly"
        EDSUNone -> "none"

instance FromJSON EventsDeleteSendUpdates where
    parseJSON = parseJSONText "EventsDeleteSendUpdates"

instance ToJSON EventsDeleteSendUpdates where
    toJSON = toJSONText

-- | Whether to send notifications about the creation of the new event. Note
-- that some emails might still be sent. The default is false.
data EventsInsertSendUpdates
    = EISUAll
      -- ^ @all@
      -- Notifications are sent to all guests.
    | EISUExternalOnly
      -- ^ @externalOnly@
      -- Notifications are sent to non-Google Calendar guests only.
    | EISUNone
      -- ^ @none@
      -- No notifications are sent. This value should only be used for migration
      -- use cases (note that in most migration cases the import method should be
      -- used).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventsInsertSendUpdates

instance FromHttpApiData EventsInsertSendUpdates where
    parseQueryParam = \case
        "all" -> Right EISUAll
        "externalOnly" -> Right EISUExternalOnly
        "none" -> Right EISUNone
        x -> Left ("Unable to parse EventsInsertSendUpdates from: " <> x)

instance ToHttpApiData EventsInsertSendUpdates where
    toQueryParam = \case
        EISUAll -> "all"
        EISUExternalOnly -> "externalOnly"
        EISUNone -> "none"

instance FromJSON EventsInsertSendUpdates where
    parseJSON = parseJSONText "EventsInsertSendUpdates"

instance ToJSON EventsInsertSendUpdates where
    toJSON = toJSONText

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
data CalendarListListMinAccessRole
    = FreeBusyReader
      -- ^ @freeBusyReader@
      -- The user can read free\/busy information.
    | Owner
      -- ^ @owner@
      -- The user can read and modify events and access control lists.
    | Reader
      -- ^ @reader@
      -- The user can read events that are not private.
    | Writer
      -- ^ @writer@
      -- The user can read and modify events.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CalendarListListMinAccessRole

instance FromHttpApiData CalendarListListMinAccessRole where
    parseQueryParam = \case
        "freeBusyReader" -> Right FreeBusyReader
        "owner" -> Right Owner
        "reader" -> Right Reader
        "writer" -> Right Writer
        x -> Left ("Unable to parse CalendarListListMinAccessRole from: " <> x)

instance ToHttpApiData CalendarListListMinAccessRole where
    toQueryParam = \case
        FreeBusyReader -> "freeBusyReader"
        Owner -> "owner"
        Reader -> "reader"
        Writer -> "writer"

instance FromJSON CalendarListListMinAccessRole where
    parseJSON = parseJSONText "CalendarListListMinAccessRole"

instance ToJSON CalendarListListMinAccessRole where
    toJSON = toJSONText

-- | The order of the events returned in the result. Optional. The default is
-- an unspecified, stable order.
data EventsWatchOrderBy
    = EWOBStartTime
      -- ^ @startTime@
      -- Order by the start date\/time (ascending). This is only available when
      -- querying single events (i.e. the parameter singleEvents is True)
    | EWOBUpdated
      -- ^ @updated@
      -- Order by last modification time (ascending).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventsWatchOrderBy

instance FromHttpApiData EventsWatchOrderBy where
    parseQueryParam = \case
        "startTime" -> Right EWOBStartTime
        "updated" -> Right EWOBUpdated
        x -> Left ("Unable to parse EventsWatchOrderBy from: " <> x)

instance ToHttpApiData EventsWatchOrderBy where
    toQueryParam = \case
        EWOBStartTime -> "startTime"
        EWOBUpdated -> "updated"

instance FromJSON EventsWatchOrderBy where
    parseJSON = parseJSONText "EventsWatchOrderBy"

instance ToJSON EventsWatchOrderBy where
    toJSON = toJSONText

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
data CalendarListWatchMinAccessRole
    = CLWMARFreeBusyReader
      -- ^ @freeBusyReader@
      -- The user can read free\/busy information.
    | CLWMAROwner
      -- ^ @owner@
      -- The user can read and modify events and access control lists.
    | CLWMARReader
      -- ^ @reader@
      -- The user can read events that are not private.
    | CLWMARWriter
      -- ^ @writer@
      -- The user can read and modify events.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CalendarListWatchMinAccessRole

instance FromHttpApiData CalendarListWatchMinAccessRole where
    parseQueryParam = \case
        "freeBusyReader" -> Right CLWMARFreeBusyReader
        "owner" -> Right CLWMAROwner
        "reader" -> Right CLWMARReader
        "writer" -> Right CLWMARWriter
        x -> Left ("Unable to parse CalendarListWatchMinAccessRole from: " <> x)

instance ToHttpApiData CalendarListWatchMinAccessRole where
    toQueryParam = \case
        CLWMARFreeBusyReader -> "freeBusyReader"
        CLWMAROwner -> "owner"
        CLWMARReader -> "reader"
        CLWMARWriter -> "writer"

instance FromJSON CalendarListWatchMinAccessRole where
    parseJSON = parseJSONText "CalendarListWatchMinAccessRole"

instance ToJSON CalendarListWatchMinAccessRole where
    toJSON = toJSONText
