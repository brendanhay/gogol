{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsCalendar.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsCalendar.Types.Sum where

import           Network.Google.Prelude

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
data CalendarCalendarListListMinAccessRole
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CalendarCalendarListListMinAccessRole

instance FromText CalendarCalendarListListMinAccessRole where
    fromText = \case
        "freeBusyReader" -> Just FreeBusyReader
        "owner" -> Just Owner
        "reader" -> Just Reader
        "writer" -> Just Writer
        _ -> Nothing

instance ToText CalendarCalendarListListMinAccessRole where
    toText = \case
        FreeBusyReader -> "freeBusyReader"
        Owner -> "owner"
        Reader -> "reader"
        Writer -> "writer"

instance FromJSON CalendarCalendarListListMinAccessRole where
    parseJSON = parseJSONText "CalendarCalendarListListMinAccessRole"

instance ToJSON CalendarCalendarListListMinAccessRole where
    toJSON = toJSONText

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
data CalendarCalendarListWatchMinAccessRole
    = CCLWMARFreeBusyReader
      -- ^ @freeBusyReader@
      -- The user can read free\/busy information.
    | CCLWMAROwner
      -- ^ @owner@
      -- The user can read and modify events and access control lists.
    | CCLWMARReader
      -- ^ @reader@
      -- The user can read events that are not private.
    | CCLWMARWriter
      -- ^ @writer@
      -- The user can read and modify events.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CalendarCalendarListWatchMinAccessRole

instance FromText CalendarCalendarListWatchMinAccessRole where
    fromText = \case
        "freeBusyReader" -> Just CCLWMARFreeBusyReader
        "owner" -> Just CCLWMAROwner
        "reader" -> Just CCLWMARReader
        "writer" -> Just CCLWMARWriter
        _ -> Nothing

instance ToText CalendarCalendarListWatchMinAccessRole where
    toText = \case
        CCLWMARFreeBusyReader -> "freeBusyReader"
        CCLWMAROwner -> "owner"
        CCLWMARReader -> "reader"
        CCLWMARWriter -> "writer"

instance FromJSON CalendarCalendarListWatchMinAccessRole where
    parseJSON = parseJSONText "CalendarCalendarListWatchMinAccessRole"

instance ToJSON CalendarCalendarListWatchMinAccessRole where
    toJSON = toJSONText

-- | The order of the events returned in the result. Optional. The default is
-- an unspecified, stable order.
data CalendarEventsWatchOrderBy
    = StartTime
      -- ^ @startTime@
      -- Order by the start date\/time (ascending). This is only available when
      -- querying single events (i.e. the parameter singleEvents is True)
    | Updated
      -- ^ @updated@
      -- Order by last modification time (ascending).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CalendarEventsWatchOrderBy

instance FromText CalendarEventsWatchOrderBy where
    fromText = \case
        "startTime" -> Just StartTime
        "updated" -> Just Updated
        _ -> Nothing

instance ToText CalendarEventsWatchOrderBy where
    toText = \case
        StartTime -> "startTime"
        Updated -> "updated"

instance FromJSON CalendarEventsWatchOrderBy where
    parseJSON = parseJSONText "CalendarEventsWatchOrderBy"

instance ToJSON CalendarEventsWatchOrderBy where
    toJSON = toJSONText

-- | The order of the events returned in the result. Optional. The default is
-- an unspecified, stable order.
data CalendarEventsListOrderBy
    = CELOBStartTime
      -- ^ @startTime@
      -- Order by the start date\/time (ascending). This is only available when
      -- querying single events (i.e. the parameter singleEvents is True)
    | CELOBUpdated
      -- ^ @updated@
      -- Order by last modification time (ascending).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CalendarEventsListOrderBy

instance FromText CalendarEventsListOrderBy where
    fromText = \case
        "startTime" -> Just CELOBStartTime
        "updated" -> Just CELOBUpdated
        _ -> Nothing

instance ToText CalendarEventsListOrderBy where
    toText = \case
        CELOBStartTime -> "startTime"
        CELOBUpdated -> "updated"

instance FromJSON CalendarEventsListOrderBy where
    parseJSON = parseJSONText "CalendarEventsListOrderBy"

instance ToJSON CalendarEventsListOrderBy where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText
