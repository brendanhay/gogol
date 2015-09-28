{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Apps.Calendar.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Apps.Calendar.Types.Sum where

import           Network.Google.Prelude

-- | The order of the events returned in the result. Optional. The default is
-- an unspecified, stable order.
data EventsWatch'OrderBy
    = StartTime
      -- ^ @startTime@
      -- Order by the start date\/time (ascending). This is only available when
      -- querying single events (i.e. the parameter singleEvents is True)
    | Updated
      -- ^ @updated@
      -- Order by last modification time (ascending).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsWatch'OrderBy

instance FromText EventsWatch'OrderBy where
    fromText = \case
        "startTime" -> Just StartTime
        "updated" -> Just Updated
        _ -> Nothing

instance ToText EventsWatch'OrderBy where
    toText = \case
        StartTime -> "startTime"
        Updated -> "updated"

instance FromJSON EventsWatch'OrderBy where
    parseJSON = parseJSONText "EventsWatch'OrderBy"

instance ToJSON EventsWatch'OrderBy where
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

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
data CalendarListList'MinAccessRole
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

instance Hashable CalendarListList'MinAccessRole

instance FromText CalendarListList'MinAccessRole where
    fromText = \case
        "freeBusyReader" -> Just FreeBusyReader
        "owner" -> Just Owner
        "reader" -> Just Reader
        "writer" -> Just Writer
        _ -> Nothing

instance ToText CalendarListList'MinAccessRole where
    toText = \case
        FreeBusyReader -> "freeBusyReader"
        Owner -> "owner"
        Reader -> "reader"
        Writer -> "writer"

instance FromJSON CalendarListList'MinAccessRole where
    parseJSON = parseJSONText "CalendarListList'MinAccessRole"

instance ToJSON CalendarListList'MinAccessRole where
    toJSON = toJSONText

-- | The order of the events returned in the result. Optional. The default is
-- an unspecified, stable order.
data EventsList'OrderBy
    = ELOBStartTime
      -- ^ @startTime@
      -- Order by the start date\/time (ascending). This is only available when
      -- querying single events (i.e. the parameter singleEvents is True)
    | ELOBUpdated
      -- ^ @updated@
      -- Order by last modification time (ascending).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsList'OrderBy

instance FromText EventsList'OrderBy where
    fromText = \case
        "startTime" -> Just ELOBStartTime
        "updated" -> Just ELOBUpdated
        _ -> Nothing

instance ToText EventsList'OrderBy where
    toText = \case
        ELOBStartTime -> "startTime"
        ELOBUpdated -> "updated"

instance FromJSON EventsList'OrderBy where
    parseJSON = parseJSONText "EventsList'OrderBy"

instance ToJSON EventsList'OrderBy where
    toJSON = toJSONText

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
data CalendarListWatch'MinAccessRole
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CalendarListWatch'MinAccessRole

instance FromText CalendarListWatch'MinAccessRole where
    fromText = \case
        "freeBusyReader" -> Just CLWMARFreeBusyReader
        "owner" -> Just CLWMAROwner
        "reader" -> Just CLWMARReader
        "writer" -> Just CLWMARWriter
        _ -> Nothing

instance ToText CalendarListWatch'MinAccessRole where
    toText = \case
        CLWMARFreeBusyReader -> "freeBusyReader"
        CLWMAROwner -> "owner"
        CLWMARReader -> "reader"
        CLWMARWriter -> "writer"

instance FromJSON CalendarListWatch'MinAccessRole where
    parseJSON = parseJSONText "CalendarListWatch'MinAccessRole"

instance ToJSON CalendarListWatch'MinAccessRole where
    toJSON = toJSONText
