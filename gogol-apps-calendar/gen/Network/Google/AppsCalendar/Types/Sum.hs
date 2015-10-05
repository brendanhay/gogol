{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsListOrderBy

instance FromText EventsListOrderBy where
    fromText = \case
        "startTime" -> Just StartTime
        "updated" -> Just Updated
        _ -> Nothing

instance ToText EventsListOrderBy where
    toText = \case
        StartTime -> "startTime"
        Updated -> "updated"

instance FromJSON EventsListOrderBy where
    parseJSON = parseJSONText "EventsListOrderBy"

instance ToJSON EventsListOrderBy where
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CalendarListListMinAccessRole

instance FromText CalendarListListMinAccessRole where
    fromText = \case
        "freeBusyReader" -> Just FreeBusyReader
        "owner" -> Just Owner
        "reader" -> Just Reader
        "writer" -> Just Writer
        _ -> Nothing

instance ToText CalendarListListMinAccessRole where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventsWatchOrderBy

instance FromText EventsWatchOrderBy where
    fromText = \case
        "startTime" -> Just EWOBStartTime
        "updated" -> Just EWOBUpdated
        _ -> Nothing

instance ToText EventsWatchOrderBy where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CalendarListWatchMinAccessRole

instance FromText CalendarListWatchMinAccessRole where
    fromText = \case
        "freeBusyReader" -> Just CLWMARFreeBusyReader
        "owner" -> Just CLWMAROwner
        "reader" -> Just CLWMARReader
        "writer" -> Just CLWMARWriter
        _ -> Nothing

instance ToText CalendarListWatchMinAccessRole where
    toText = \case
        CLWMARFreeBusyReader -> "freeBusyReader"
        CLWMAROwner -> "owner"
        CLWMARReader -> "reader"
        CLWMARWriter -> "writer"

instance FromJSON CalendarListWatchMinAccessRole where
    parseJSON = parseJSONText "CalendarListWatchMinAccessRole"

instance ToJSON CalendarListWatchMinAccessRole where
    toJSON = toJSONText
