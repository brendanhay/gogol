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
data MinAccessRole
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

instance Hashable MinAccessRole

instance FromText MinAccessRole where
    fromText = \case
        "freeBusyReader" -> Just FreeBusyReader
        "owner" -> Just Owner
        "reader" -> Just Reader
        "writer" -> Just Writer
        _ -> Nothing

instance ToText MinAccessRole where
    toText = \case
        FreeBusyReader -> "freeBusyReader"
        Owner -> "owner"
        Reader -> "reader"
        Writer -> "writer"

instance FromJSON MinAccessRole where
    parseJSON = parseJSONText "MinAccessRole"

instance ToJSON MinAccessRole where
    toJSON = toJSONText

-- | The order of the events returned in the result. Optional. The default is
-- an unspecified, stable order.
data OrderBy
    = OBStartTime
      -- ^ @startTime@
      -- Order by the start date\/time (ascending). This is only available when
      -- querying single events (i.e. the parameter singleEvents is True)
    | OBUpdated
      -- ^ @updated@
      -- Order by last modification time (ascending).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderBy

instance FromText OrderBy where
    fromText = \case
        "startTime" -> Just OBStartTime
        "updated" -> Just OBUpdated
        _ -> Nothing

instance ToText OrderBy where
    toText = \case
        OBStartTime -> "startTime"
        OBUpdated -> "updated"

instance FromJSON OrderBy where
    parseJSON = parseJSONText "OrderBy"

instance ToJSON OrderBy where
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
    = CEWOBStartTime
      -- ^ @startTime@
      -- Order by the start date\/time (ascending). This is only available when
      -- querying single events (i.e. the parameter singleEvents is True)
    | CEWOBUpdated
      -- ^ @updated@
      -- Order by last modification time (ascending).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CalendarEventsWatchOrderBy

instance FromText CalendarEventsWatchOrderBy where
    fromText = \case
        "startTime" -> Just CEWOBStartTime
        "updated" -> Just CEWOBUpdated
        _ -> Nothing

instance ToText CalendarEventsWatchOrderBy where
    toText = \case
        CEWOBStartTime -> "startTime"
        CEWOBUpdated -> "updated"

instance FromJSON CalendarEventsWatchOrderBy where
    parseJSON = parseJSONText "CalendarEventsWatchOrderBy"

instance ToJSON CalendarEventsWatchOrderBy where
    toJSON = toJSONText
