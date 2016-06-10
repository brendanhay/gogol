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
